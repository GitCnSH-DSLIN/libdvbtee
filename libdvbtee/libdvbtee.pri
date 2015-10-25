INCLUDEPATH += $$PWD

olddecoder {
    QMAKE_CXXFLAGS += -DOLD_DECODER=1
    SOURCES += desc.cpp
} else {
    QMAKE_CXXFLAGS += -DOLD_DECODER=0

    include ( value/value.pri )
    include ( decode/decode.pri )

    SOURCES += $$DECODER_SOURCES
}

SOURCES += \
    atsctext.cpp \
    channels.cpp \
    decode.cpp \
    demux.cpp \
    feed.cpp \
    functions.cpp \
    listen.cpp \
    log.cpp \
    output.cpp \
    parse.cpp \
    rbuf.cpp \
    stats.cpp \
    tune.cpp \
    hdhr_tuner.cpp \
    hlsfeed.cpp \
    curlhttpget.cpp

HEADERS += \
    atsctext.h \
    channels.h \
    decode.h \
    demux.h \
    feed.h \
    functions.h \
    listen.h \
    log.h \
    output.h \
    parse.h \
    rbuf.h \
    stats.h \
    tune.h \
    hdhr_tuner.h \
    hlsfeed.h \
    curlhttpget.h

unix:!macx:!symbian {
    HEADERS += linuxtv_tuner.h
    SOURCES += linuxtv_tuner.cpp
}
