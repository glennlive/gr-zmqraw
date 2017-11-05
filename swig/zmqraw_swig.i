/* -*- c++ -*- */

#define ZMQRAW_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "zmqraw_swig_doc.i"

%{
#include "zmqraw/sub_msg_source.h"
#include "zmqraw/pub_msg_sink.h"
%}


%include "zmqraw/sub_msg_source.h"
GR_SWIG_BLOCK_MAGIC2(zmqraw, sub_msg_source);
%include "zmqraw/pub_msg_sink.h"
GR_SWIG_BLOCK_MAGIC2(zmqraw, pub_msg_sink);
