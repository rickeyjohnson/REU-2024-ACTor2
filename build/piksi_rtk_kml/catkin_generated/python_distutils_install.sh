#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/reu-actor/actor_ws/src/ethz_piksi_ros/piksi_rtk_kml"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/reu-actor/actor_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/reu-actor/actor_ws/install/lib/python3/dist-packages:/home/reu-actor/actor_ws/build/piksi_rtk_kml/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/reu-actor/actor_ws/build/piksi_rtk_kml" \
    "/usr/bin/python3" \
    "/home/reu-actor/actor_ws/src/ethz_piksi_ros/piksi_rtk_kml/setup.py" \
     \
    build --build-base "/home/reu-actor/actor_ws/build/piksi_rtk_kml" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/reu-actor/actor_ws/install" --install-scripts="/home/reu-actor/actor_ws/install/bin"
