Р
ж5Њ5
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ь
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
j
EagerPyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(
B
Equal
x"T
y"T
z
"
Ttype:
2	

,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
#
	LogicalOr
x

y

z

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
Ј
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisintџџџџџџџџџ"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
р
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12b'v1.13.1-0-g6612da8951'Хя
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
:*
shape:
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ
Џ
1pi/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@pi/conv2d/kernel*
dtype0*
_output_shapes
:

/pi/conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *ђъ­О*#
_class
loc:@pi/conv2d/kernel*
dtype0*
_output_shapes
: 

/pi/conv2d/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ђъ­>*#
_class
loc:@pi/conv2d/kernel
љ
9pi/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform1pi/conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*#
_class
loc:@pi/conv2d/kernel*
seed2
о
/pi/conv2d/kernel/Initializer/random_uniform/subSub/pi/conv2d/kernel/Initializer/random_uniform/max/pi/conv2d/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
ј
/pi/conv2d/kernel/Initializer/random_uniform/mulMul9pi/conv2d/kernel/Initializer/random_uniform/RandomUniform/pi/conv2d/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@pi/conv2d/kernel*&
_output_shapes
:
ъ
+pi/conv2d/kernel/Initializer/random_uniformAdd/pi/conv2d/kernel/Initializer/random_uniform/mul/pi/conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*#
_class
loc:@pi/conv2d/kernel
К
pi/conv2d/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d/kernel*#
_class
loc:@pi/conv2d/kernel
q
1pi/conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel*
_output_shapes
: 

pi/conv2d/kernel/AssignAssignVariableOppi/conv2d/kernel+pi/conv2d/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@pi/conv2d/kernel
Ђ
$pi/conv2d/kernel/Read/ReadVariableOpReadVariableOppi/conv2d/kernel*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:

 pi/conv2d/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
Ј
pi/conv2d/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namepi/conv2d/bias*!
_class
loc:@pi/conv2d/bias*
	container *
shape:
m
/pi/conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias*
_output_shapes
: 

pi/conv2d/bias/AssignAssignVariableOppi/conv2d/bias pi/conv2d/bias/Initializer/zeros*
dtype0*!
_class
loc:@pi/conv2d/bias

"pi/conv2d/bias/Read/ReadVariableOpReadVariableOppi/conv2d/bias*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
h
pi/conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
x
pi/conv2d/Conv2D/ReadVariableOpReadVariableOppi/conv2d/kernel*
dtype0*&
_output_shapes
:
ч
pi/conv2d/Conv2DConv2DPlaceholderpi/conv2d/Conv2D/ReadVariableOp*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

k
 pi/conv2d/BiasAdd/ReadVariableOpReadVariableOppi/conv2d/bias*
dtype0*
_output_shapes
:

pi/conv2d/BiasAddBiasAddpi/conv2d/Conv2D pi/conv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:
Z
pi/conv2d/ReluRelupi/conv2d/BiasAdd*
T0*&
_output_shapes
:
Г
3pi/conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_1/kernel*
dtype0*
_output_shapes
:

1pi/conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ьQО*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*
_output_shapes
: 

1pi/conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ьQ>*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*
_output_shapes
: 
џ
;pi/conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*%
_class
loc:@pi/conv2d_1/kernel*
seed2
ц
1pi/conv2d_1/kernel/Initializer/random_uniform/subSub1pi/conv2d_1/kernel/Initializer/random_uniform/max1pi/conv2d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@pi/conv2d_1/kernel

1pi/conv2d_1/kernel/Initializer/random_uniform/mulMul;pi/conv2d_1/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_1/kernel
ђ
-pi/conv2d_1/kernel/Initializer/random_uniformAdd1pi/conv2d_1/kernel/Initializer/random_uniform/mul1pi/conv2d_1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_1/kernel*&
_output_shapes
:
Р
pi/conv2d_1/kernelVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_1/kernel*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:
u
3pi/conv2d_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel*
_output_shapes
: 
Є
pi/conv2d_1/kernel/AssignAssignVariableOppi/conv2d_1/kernel-pi/conv2d_1/kernel/Initializer/random_uniform*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
Ј
&pi/conv2d_1/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_1/kernel

"pi/conv2d_1/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@pi/conv2d_1/bias*
dtype0*
_output_shapes
:
Ў
pi/conv2d_1/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_1/bias*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:
q
1pi/conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias*
_output_shapes
: 

pi/conv2d_1/bias/AssignAssignVariableOppi/conv2d_1/bias"pi/conv2d_1/bias/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0

$pi/conv2d_1/bias/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias
j
pi/conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
!pi/conv2d_1/Conv2D/ReadVariableOpReadVariableOppi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
ю
pi/conv2d_1/Conv2DConv2Dpi/conv2d/Relu!pi/conv2d_1/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

o
"pi/conv2d_1/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_1/bias*
dtype0*
_output_shapes
:

pi/conv2d_1/BiasAddBiasAddpi/conv2d_1/Conv2D"pi/conv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:
^
pi/conv2d_1/ReluRelupi/conv2d_1/BiasAdd*
T0*&
_output_shapes
:
Г
3pi/conv2d_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *%
_class
loc:@pi/conv2d_2/kernel

1pi/conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *{ьН*%
_class
loc:@pi/conv2d_2/kernel

1pi/conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *{ь=*%
_class
loc:@pi/conv2d_2/kernel*
dtype0*
_output_shapes
: 
џ
;pi/conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_2/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@pi/conv2d_2/kernel*
seed24*
dtype0*&
_output_shapes
:*

seed 
ц
1pi/conv2d_2/kernel/Initializer/random_uniform/subSub1pi/conv2d_2/kernel/Initializer/random_uniform/max1pi/conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@pi/conv2d_2/kernel

1pi/conv2d_2/kernel/Initializer/random_uniform/mulMul;pi/conv2d_2/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_2/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@pi/conv2d_2/kernel*&
_output_shapes
:
ђ
-pi/conv2d_2/kernel/Initializer/random_uniformAdd1pi/conv2d_2/kernel/Initializer/random_uniform/mul1pi/conv2d_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_2/kernel*&
_output_shapes
:
Р
pi/conv2d_2/kernelVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_2/kernel*%
_class
loc:@pi/conv2d_2/kernel*
	container *
shape:
u
3pi/conv2d_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/kernel*
_output_shapes
: 
Є
pi/conv2d_2/kernel/AssignAssignVariableOppi/conv2d_2/kernel-pi/conv2d_2/kernel/Initializer/random_uniform*%
_class
loc:@pi/conv2d_2/kernel*
dtype0
Ј
&pi/conv2d_2/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_2/kernel*%
_class
loc:@pi/conv2d_2/kernel*
dtype0*&
_output_shapes
:

"pi/conv2d_2/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@pi/conv2d_2/bias*
dtype0*
_output_shapes
:
Ў
pi/conv2d_2/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_2/bias*#
_class
loc:@pi/conv2d_2/bias*
	container 
q
1pi/conv2d_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias*
_output_shapes
: 

pi/conv2d_2/bias/AssignAssignVariableOppi/conv2d_2/bias"pi/conv2d_2/bias/Initializer/zeros*#
_class
loc:@pi/conv2d_2/bias*
dtype0

$pi/conv2d_2/bias/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_2/bias
j
pi/conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
!pi/conv2d_2/Conv2D/ReadVariableOpReadVariableOppi/conv2d_2/kernel*
dtype0*&
_output_shapes
:
№
pi/conv2d_2/Conv2DConv2Dpi/conv2d_1/Relu!pi/conv2d_2/Conv2D/ReadVariableOp*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
o
"pi/conv2d_2/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_2/bias*
dtype0*
_output_shapes
:

pi/conv2d_2/BiasAddBiasAddpi/conv2d_2/Conv2D"pi/conv2d_2/BiasAdd/ReadVariableOp*
data_formatNHWC*&
_output_shapes
:*
T0
^
pi/conv2d_2/ReluRelupi/conv2d_2/BiasAdd*&
_output_shapes
:*
T0
Г
3pi/conv2d_3/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *%
_class
loc:@pi/conv2d_3/kernel

1pi/conv2d_3/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *эучН*%
_class
loc:@pi/conv2d_3/kernel

1pi/conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *эуч=*%
_class
loc:@pi/conv2d_3/kernel*
dtype0*
_output_shapes
: 
џ
;pi/conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*%
_class
loc:@pi/conv2d_3/kernel*
seed2J
ц
1pi/conv2d_3/kernel/Initializer/random_uniform/subSub1pi/conv2d_3/kernel/Initializer/random_uniform/max1pi/conv2d_3/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_3/kernel*
_output_shapes
: 

1pi/conv2d_3/kernel/Initializer/random_uniform/mulMul;pi/conv2d_3/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_3/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@pi/conv2d_3/kernel*&
_output_shapes
:
ђ
-pi/conv2d_3/kernel/Initializer/random_uniformAdd1pi/conv2d_3/kernel/Initializer/random_uniform/mul1pi/conv2d_3/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_3/kernel*&
_output_shapes
:
Р
pi/conv2d_3/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_3/kernel*%
_class
loc:@pi/conv2d_3/kernel
u
3pi/conv2d_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/kernel*
_output_shapes
: 
Є
pi/conv2d_3/kernel/AssignAssignVariableOppi/conv2d_3/kernel-pi/conv2d_3/kernel/Initializer/random_uniform*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
Ј
&pi/conv2d_3/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel*%
_class
loc:@pi/conv2d_3/kernel*
dtype0*&
_output_shapes
:

"pi/conv2d_3/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@pi/conv2d_3/bias*
dtype0*
_output_shapes
:
Ў
pi/conv2d_3/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_3/bias*#
_class
loc:@pi/conv2d_3/bias*
	container 
q
1pi/conv2d_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/bias*
_output_shapes
: 

pi/conv2d_3/bias/AssignAssignVariableOppi/conv2d_3/bias"pi/conv2d_3/bias/Initializer/zeros*#
_class
loc:@pi/conv2d_3/bias*
dtype0

$pi/conv2d_3/bias/Read/ReadVariableOpReadVariableOppi/conv2d_3/bias*#
_class
loc:@pi/conv2d_3/bias*
dtype0*
_output_shapes
:
j
pi/conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
!pi/conv2d_3/Conv2D/ReadVariableOpReadVariableOppi/conv2d_3/kernel*
dtype0*&
_output_shapes
:
№
pi/conv2d_3/Conv2DConv2Dpi/conv2d_2/Relu!pi/conv2d_3/Conv2D/ReadVariableOp*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

o
"pi/conv2d_3/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_3/bias*
dtype0*
_output_shapes
:

pi/conv2d_3/BiasAddBiasAddpi/conv2d_3/Conv2D"pi/conv2d_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:
^
pi/conv2d_3/ReluRelupi/conv2d_3/BiasAdd*
T0*&
_output_shapes
:
Г
3pi/conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_4/kernel*
dtype0*
_output_shapes
:

1pi/conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *эучН*%
_class
loc:@pi/conv2d_4/kernel*
dtype0*
_output_shapes
: 

1pi/conv2d_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *эуч=*%
_class
loc:@pi/conv2d_4/kernel*
dtype0*
_output_shapes
: 
џ
;pi/conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_4/kernel/Initializer/random_uniform/shape*

seed *
T0*%
_class
loc:@pi/conv2d_4/kernel*
seed2`*
dtype0*&
_output_shapes
:
ц
1pi/conv2d_4/kernel/Initializer/random_uniform/subSub1pi/conv2d_4/kernel/Initializer/random_uniform/max1pi/conv2d_4/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@pi/conv2d_4/kernel

1pi/conv2d_4/kernel/Initializer/random_uniform/mulMul;pi/conv2d_4/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_4/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@pi/conv2d_4/kernel*&
_output_shapes
:
ђ
-pi/conv2d_4/kernel/Initializer/random_uniformAdd1pi/conv2d_4/kernel/Initializer/random_uniform/mul1pi/conv2d_4/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_4/kernel*&
_output_shapes
:
Р
pi/conv2d_4/kernelVarHandleOp*#
shared_namepi/conv2d_4/kernel*%
_class
loc:@pi/conv2d_4/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
u
3pi/conv2d_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/kernel*
_output_shapes
: 
Є
pi/conv2d_4/kernel/AssignAssignVariableOppi/conv2d_4/kernel-pi/conv2d_4/kernel/Initializer/random_uniform*%
_class
loc:@pi/conv2d_4/kernel*
dtype0
Ј
&pi/conv2d_4/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_4/kernel*%
_class
loc:@pi/conv2d_4/kernel*
dtype0*&
_output_shapes
:

"pi/conv2d_4/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@pi/conv2d_4/bias*
dtype0*
_output_shapes
:
Ў
pi/conv2d_4/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_4/bias*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:
q
1pi/conv2d_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/bias*
_output_shapes
: 

pi/conv2d_4/bias/AssignAssignVariableOppi/conv2d_4/bias"pi/conv2d_4/bias/Initializer/zeros*#
_class
loc:@pi/conv2d_4/bias*
dtype0

$pi/conv2d_4/bias/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_4/bias
j
pi/conv2d_4/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
|
!pi/conv2d_4/Conv2D/ReadVariableOpReadVariableOppi/conv2d_4/kernel*
dtype0*&
_output_shapes
:
№
pi/conv2d_4/Conv2DConv2Dpi/conv2d_3/Relu!pi/conv2d_4/Conv2D/ReadVariableOp*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
o
"pi/conv2d_4/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_4/bias*
dtype0*
_output_shapes
:

pi/conv2d_4/BiasAddBiasAddpi/conv2d_4/Conv2D"pi/conv2d_4/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:
^
pi/conv2d_4/ReluRelupi/conv2d_4/BiasAdd*
T0*&
_output_shapes
:
Г
3pi/conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_5/kernel*
dtype0*
_output_shapes
:

1pi/conv2d_5/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *эучН*%
_class
loc:@pi/conv2d_5/kernel

1pi/conv2d_5/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *эуч=*%
_class
loc:@pi/conv2d_5/kernel
џ
;pi/conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_5/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@pi/conv2d_5/kernel*
seed2v*
dtype0*&
_output_shapes
:*

seed 
ц
1pi/conv2d_5/kernel/Initializer/random_uniform/subSub1pi/conv2d_5/kernel/Initializer/random_uniform/max1pi/conv2d_5/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_5/kernel*
_output_shapes
: 

1pi/conv2d_5/kernel/Initializer/random_uniform/mulMul;pi/conv2d_5/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_5/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@pi/conv2d_5/kernel*&
_output_shapes
:
ђ
-pi/conv2d_5/kernel/Initializer/random_uniformAdd1pi/conv2d_5/kernel/Initializer/random_uniform/mul1pi/conv2d_5/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_5/kernel*&
_output_shapes
:
Р
pi/conv2d_5/kernelVarHandleOp*%
_class
loc:@pi/conv2d_5/kernel*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_5/kernel
u
3pi/conv2d_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel*
_output_shapes
: 
Є
pi/conv2d_5/kernel/AssignAssignVariableOppi/conv2d_5/kernel-pi/conv2d_5/kernel/Initializer/random_uniform*%
_class
loc:@pi/conv2d_5/kernel*
dtype0
Ј
&pi/conv2d_5/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*&
_output_shapes
:

"pi/conv2d_5/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@pi/conv2d_5/bias*
dtype0*
_output_shapes
:
Ў
pi/conv2d_5/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_5/bias*#
_class
loc:@pi/conv2d_5/bias
q
1pi/conv2d_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias*
_output_shapes
: 

pi/conv2d_5/bias/AssignAssignVariableOppi/conv2d_5/bias"pi/conv2d_5/bias/Initializer/zeros*#
_class
loc:@pi/conv2d_5/bias*
dtype0

$pi/conv2d_5/bias/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_5/bias
j
pi/conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
!pi/conv2d_5/Conv2D/ReadVariableOpReadVariableOppi/conv2d_5/kernel*
dtype0*&
_output_shapes
:
№
pi/conv2d_5/Conv2DConv2Dpi/conv2d_4/Relu!pi/conv2d_5/Conv2D/ReadVariableOp*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
o
"pi/conv2d_5/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_5/bias*
dtype0*
_output_shapes
:

pi/conv2d_5/BiasAddBiasAddpi/conv2d_5/Conv2D"pi/conv2d_5/BiasAdd/ReadVariableOp*
data_formatNHWC*&
_output_shapes
:*
T0
^
pi/conv2d_5/ReluRelupi/conv2d_5/BiasAdd*
T0*&
_output_shapes
:
Г
3pi/conv2d_6/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_6/kernel*
dtype0*
_output_shapes
:

1pi/conv2d_6/kernel/Initializer/random_uniform/minConst*
valueB
 *эучН*%
_class
loc:@pi/conv2d_6/kernel*
dtype0*
_output_shapes
: 

1pi/conv2d_6/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *эуч=*%
_class
loc:@pi/conv2d_6/kernel

;pi/conv2d_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_6/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*%
_class
loc:@pi/conv2d_6/kernel*
seed2
ц
1pi/conv2d_6/kernel/Initializer/random_uniform/subSub1pi/conv2d_6/kernel/Initializer/random_uniform/max1pi/conv2d_6/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_6/kernel*
_output_shapes
: 

1pi/conv2d_6/kernel/Initializer/random_uniform/mulMul;pi/conv2d_6/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_6/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@pi/conv2d_6/kernel*&
_output_shapes
:
ђ
-pi/conv2d_6/kernel/Initializer/random_uniformAdd1pi/conv2d_6/kernel/Initializer/random_uniform/mul1pi/conv2d_6/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_6/kernel*&
_output_shapes
:
Р
pi/conv2d_6/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_6/kernel*%
_class
loc:@pi/conv2d_6/kernel*
	container 
u
3pi/conv2d_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/kernel*
_output_shapes
: 
Є
pi/conv2d_6/kernel/AssignAssignVariableOppi/conv2d_6/kernel-pi/conv2d_6/kernel/Initializer/random_uniform*%
_class
loc:@pi/conv2d_6/kernel*
dtype0
Ј
&pi/conv2d_6/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_6/kernel*%
_class
loc:@pi/conv2d_6/kernel*
dtype0*&
_output_shapes
:

"pi/conv2d_6/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@pi/conv2d_6/bias*
dtype0*
_output_shapes
:
Ў
pi/conv2d_6/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_6/bias*#
_class
loc:@pi/conv2d_6/bias*
	container 
q
1pi/conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias*
_output_shapes
: 

pi/conv2d_6/bias/AssignAssignVariableOppi/conv2d_6/bias"pi/conv2d_6/bias/Initializer/zeros*#
_class
loc:@pi/conv2d_6/bias*
dtype0

$pi/conv2d_6/bias/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias*#
_class
loc:@pi/conv2d_6/bias*
dtype0*
_output_shapes
:
j
pi/conv2d_6/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
!pi/conv2d_6/Conv2D/ReadVariableOpReadVariableOppi/conv2d_6/kernel*
dtype0*&
_output_shapes
:
№
pi/conv2d_6/Conv2DConv2Dpi/conv2d_5/Relu!pi/conv2d_6/Conv2D/ReadVariableOp*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
o
"pi/conv2d_6/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_6/bias*
dtype0*
_output_shapes
:

pi/conv2d_6/BiasAddBiasAddpi/conv2d_6/Conv2D"pi/conv2d_6/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:
^
pi/conv2d_6/ReluRelupi/conv2d_6/BiasAdd*
T0*&
_output_shapes
:
Г
3pi/conv2d_7/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *%
_class
loc:@pi/conv2d_7/kernel

1pi/conv2d_7/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *эучН*%
_class
loc:@pi/conv2d_7/kernel

1pi/conv2d_7/kernel/Initializer/random_uniform/maxConst*
valueB
 *эуч=*%
_class
loc:@pi/conv2d_7/kernel*
dtype0*
_output_shapes
: 

;pi/conv2d_7/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_7/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*%
_class
loc:@pi/conv2d_7/kernel*
seed2Ђ
ц
1pi/conv2d_7/kernel/Initializer/random_uniform/subSub1pi/conv2d_7/kernel/Initializer/random_uniform/max1pi/conv2d_7/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_7/kernel*
_output_shapes
: 

1pi/conv2d_7/kernel/Initializer/random_uniform/mulMul;pi/conv2d_7/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_7/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_7/kernel
ђ
-pi/conv2d_7/kernel/Initializer/random_uniformAdd1pi/conv2d_7/kernel/Initializer/random_uniform/mul1pi/conv2d_7/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_7/kernel*&
_output_shapes
:
Р
pi/conv2d_7/kernelVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_7/kernel*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:
u
3pi/conv2d_7/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/kernel*
_output_shapes
: 
Є
pi/conv2d_7/kernel/AssignAssignVariableOppi/conv2d_7/kernel-pi/conv2d_7/kernel/Initializer/random_uniform*
dtype0*%
_class
loc:@pi/conv2d_7/kernel
Ј
&pi/conv2d_7/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel*%
_class
loc:@pi/conv2d_7/kernel*
dtype0*&
_output_shapes
:

"pi/conv2d_7/bias/Initializer/zerosConst*
valueB*    *#
_class
loc:@pi/conv2d_7/bias*
dtype0*
_output_shapes
:
Ў
pi/conv2d_7/biasVarHandleOp*#
_class
loc:@pi/conv2d_7/bias*
	container *
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_7/bias
q
1pi/conv2d_7/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias*
_output_shapes
: 

pi/conv2d_7/bias/AssignAssignVariableOppi/conv2d_7/bias"pi/conv2d_7/bias/Initializer/zeros*#
_class
loc:@pi/conv2d_7/bias*
dtype0

$pi/conv2d_7/bias/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_7/bias
j
pi/conv2d_7/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
!pi/conv2d_7/Conv2D/ReadVariableOpReadVariableOppi/conv2d_7/kernel*
dtype0*&
_output_shapes
:
№
pi/conv2d_7/Conv2DConv2Dpi/conv2d_6/Relu!pi/conv2d_7/Conv2D/ReadVariableOp*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
o
"pi/conv2d_7/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_7/bias*
dtype0*
_output_shapes
:

pi/conv2d_7/BiasAddBiasAddpi/conv2d_7/Conv2D"pi/conv2d_7/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:
^
pi/conv2d_7/ReluRelupi/conv2d_7/BiasAdd*
T0*&
_output_shapes
:
i
pi/Max/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:

pi/MaxMaxpi/conv2d_7/Relupi/Max/reduction_indices*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0
Ѕ
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:

.pi/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *Ђ]О*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 

.pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ђ]>*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
№
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*"
_class
loc:@pi/dense/kernel*
seed2К
к
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
э
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	
п
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	
А
pi/dense/kernelVarHandleOp* 
shared_namepi/dense/kernel*"
_class
loc:@pi/dense/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
o
0pi/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel*
_output_shapes
: 

pi/dense/kernel/AssignAssignVariableOppi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*"
_class
loc:@pi/dense/kernel*
dtype0

#pi/dense/kernel/Read/ReadVariableOpReadVariableOppi/dense/kernel*
dtype0*
_output_shapes
:	*"
_class
loc:@pi/dense/kernel

pi/dense/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes	
:
І
pi/dense/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namepi/dense/bias* 
_class
loc:@pi/dense/bias*
	container *
shape:
k
.pi/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias*
_output_shapes
: 

pi/dense/bias/AssignAssignVariableOppi/dense/biaspi/dense/bias/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0

!pi/dense/bias/Read/ReadVariableOpReadVariableOppi/dense/bias* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes	
:
o
pi/dense/MatMul/ReadVariableOpReadVariableOppi/dense/kernel*
dtype0*
_output_shapes
:	

pi/dense/MatMulMatMulpi/Maxpi/dense/MatMul/ReadVariableOp*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a( 
j
pi/dense/BiasAdd/ReadVariableOpReadVariableOppi/dense/bias*
dtype0*
_output_shapes	
:

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/BiasAdd/ReadVariableOp*
data_formatNHWC*
_output_shapes
:	*
T0
Q
pi/dense/ReluRelupi/dense/BiasAdd*
T0*
_output_shapes
:	
Љ
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *О*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
і
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*

seed *
T0*$
_class
loc:@pi/dense_1/kernel*
seed2Я*
dtype0*
_output_shapes
:	
т
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
ѕ
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
:	
ч
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
:	
Ж
pi/dense_1/kernelVarHandleOp*"
shared_namepi/dense_1/kernel*$
_class
loc:@pi/dense_1/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
s
2pi/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel*
_output_shapes
: 
 
pi/dense_1/kernel/AssignAssignVariableOppi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
dtype0*$
_class
loc:@pi/dense_1/kernel

%pi/dense_1/kernel/Read/ReadVariableOpReadVariableOppi/dense_1/kernel*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:	

!pi/dense_1/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
Ћ
pi/dense_1/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: * 
shared_namepi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
	container 
o
0pi/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias*
_output_shapes
: 

pi/dense_1/bias/AssignAssignVariableOppi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
dtype0*"
_class
loc:@pi/dense_1/bias

#pi/dense_1/bias/Read/ReadVariableOpReadVariableOppi/dense_1/bias*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias
s
 pi/dense_1/MatMul/ReadVariableOpReadVariableOppi/dense_1/kernel*
dtype0*
_output_shapes
:	

pi/dense_1/MatMulMatMulpi/dense/Relu pi/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
m
!pi/dense_1/BiasAdd/ReadVariableOpReadVariableOppi/dense_1/bias*
dtype0*
_output_shapes
:

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMul!pi/dense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*
_output_shapes

:
Z
pi/dense_1/SoftmaxSoftmaxpi/dense_1/BiasAdd*
T0*
_output_shapes

:
X
pi/LogSoftmax
LogSoftmaxpi/dense_1/Softmax*
_output_shapes

:*
T0
h
&pi/categorical/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
М
pi/categorical/MultinomialMultinomialpi/dense_1/Softmax&pi/categorical/Multinomial/num_samples*
T0*
_output_shapes

:*
seed2т*

seed *
output_dtype0	
m

pi/SqueezeSqueezepi/categorical/Multinomial*
squeeze_dims
*
T0	*
_output_shapes
:
X
pi/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
pi/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
pi/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
Ј

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
T0*
axisџџџџџџџџџ*
TI0*
_output_shapes

:
Q
pi/mulMul
pi/one_hotpi/LogSoftmax*
T0*
_output_shapes

:
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
q
pi/SumSumpi/mulpi/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
J
pi/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
T
pi/split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
o
pi/splitSplitpi/split/split_dimpi/Sum*
T0*&
_output_shapes
:::*
	num_split
Z
pi/one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
pi/one_hot_1/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
T
pi/one_hot_1/depthConst*
dtype0*
_output_shapes
: *
value	B :
А
pi/one_hot_1OneHotPlaceholder_1pi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
T0*
axisџџџџџџџџџ*
TI0*
_output_shapes

:
U
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*
_output_shapes

:
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
w
pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
L

pi/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
V
pi/split_1/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
u

pi/split_1Splitpi/split_1/split_dimpi/Sum_1*
T0*&
_output_shapes
:::*
	num_split
Z
pi/one_hot_2/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
pi/one_hot_2/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
T
pi/one_hot_2/depthConst*
dtype0*
_output_shapes
: *
value	B :
­
pi/one_hot_2OneHot
pi/Squeezepi/one_hot_2/depthpi/one_hot_2/on_valuepi/one_hot_2/off_value*
T0*
axisџџџџџџџџџ*
TI0	*
_output_shapes

:
U
pi/mul_2Mulpi/one_hot_2pi/LogSoftmax*
T0*
_output_shapes

:
\
pi/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
w
pi/Sum_2Sumpi/mul_2pi/Sum_2/reduction_indices*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ї
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
:

/v/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *Ђ]О*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
: 

/v/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ђ]>*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
: 
ѓ
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*#
_class
loc:@v/dense_2/kernel*
seed2
о
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 
ё
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
:	
у
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
:	
Г
v/dense_2/kernelVarHandleOp*#
_class
loc:@v/dense_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: *!
shared_namev/dense_2/kernel
q
1v/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/kernel*
_output_shapes
: 

v/dense_2/kernel/AssignAssignVariableOpv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*#
_class
loc:@v/dense_2/kernel*
dtype0

$v/dense_2/kernel/Read/ReadVariableOpReadVariableOpv/dense_2/kernel*
dtype0*
_output_shapes
:	*#
_class
loc:@v/dense_2/kernel

 v/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *!
_class
loc:@v/dense_2/bias
Љ
v/dense_2/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namev/dense_2/bias*!
_class
loc:@v/dense_2/bias*
	container *
shape:
m
/v/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/bias*
_output_shapes
: 

v/dense_2/bias/AssignAssignVariableOpv/dense_2/bias v/dense_2/bias/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
dtype0

"v/dense_2/bias/Read/ReadVariableOpReadVariableOpv/dense_2/bias*
dtype0*
_output_shapes	
:*!
_class
loc:@v/dense_2/bias
q
v/dense_2/MatMul/ReadVariableOpReadVariableOpv/dense_2/kernel*
dtype0*
_output_shapes
:	

v/dense_2/MatMulMatMulpi/Maxv/dense_2/MatMul/ReadVariableOp*
transpose_b( *
T0*
_output_shapes
:	*
transpose_a( 
l
 v/dense_2/BiasAdd/ReadVariableOpReadVariableOpv/dense_2/bias*
dtype0*
_output_shapes	
:

v/dense_2/BiasAddBiasAddv/dense_2/MatMul v/dense_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*
_output_shapes
:	
S
v/dense_2/ReluReluv/dense_2/BiasAdd*
_output_shapes
:	*
T0
Ї
1v/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"      *#
_class
loc:@v/dense_3/kernel*
dtype0*
_output_shapes
:

/v/dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *IvО*#
_class
loc:@v/dense_3/kernel*
dtype0*
_output_shapes
: 

/v/dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *Iv>*#
_class
loc:@v/dense_3/kernel*
dtype0*
_output_shapes
: 
ѓ
9v/dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_3/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	*

seed *
T0*#
_class
loc:@v/dense_3/kernel*
seed2
о
/v/dense_3/kernel/Initializer/random_uniform/subSub/v/dense_3/kernel/Initializer/random_uniform/max/v/dense_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_3/kernel
ё
/v/dense_3/kernel/Initializer/random_uniform/mulMul9v/dense_3/kernel/Initializer/random_uniform/RandomUniform/v/dense_3/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_3/kernel*
_output_shapes
:	
у
+v/dense_3/kernel/Initializer/random_uniformAdd/v/dense_3/kernel/Initializer/random_uniform/mul/v/dense_3/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_3/kernel*
_output_shapes
:	
Г
v/dense_3/kernelVarHandleOp*
shape:	*
dtype0*
_output_shapes
: *!
shared_namev/dense_3/kernel*#
_class
loc:@v/dense_3/kernel*
	container 
q
1v/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/kernel*
_output_shapes
: 

v/dense_3/kernel/AssignAssignVariableOpv/dense_3/kernel+v/dense_3/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@v/dense_3/kernel

$v/dense_3/kernel/Read/ReadVariableOpReadVariableOpv/dense_3/kernel*#
_class
loc:@v/dense_3/kernel*
dtype0*
_output_shapes
:	

 v/dense_3/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_3/bias*
dtype0*
_output_shapes
:
Ј
v/dense_3/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namev/dense_3/bias*!
_class
loc:@v/dense_3/bias*
	container *
shape:
m
/v/dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/bias*
_output_shapes
: 

v/dense_3/bias/AssignAssignVariableOpv/dense_3/bias v/dense_3/bias/Initializer/zeros*
dtype0*!
_class
loc:@v/dense_3/bias

"v/dense_3/bias/Read/ReadVariableOpReadVariableOpv/dense_3/bias*!
_class
loc:@v/dense_3/bias*
dtype0*
_output_shapes
:
q
v/dense_3/MatMul/ReadVariableOpReadVariableOpv/dense_3/kernel*
dtype0*
_output_shapes
:	

v/dense_3/MatMulMatMulv/dense_2/Reluv/dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
k
 v/dense_3/BiasAdd/ReadVariableOpReadVariableOpv/dense_3/bias*
dtype0*
_output_shapes
:

v/dense_3/BiasAddBiasAddv/dense_3/MatMul v/dense_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*
_output_shapes

:
c
	v/SqueezeSqueezev/dense_3/BiasAdd*
T0*
_output_shapes
:*
squeeze_dims

Q
subSubpi/splitPlaceholder_4*
T0*#
_output_shapes
:џџџџџџџџџ
=
ExpExpsub*
T0*#
_output_shapes
:џџџџџџџџџ
W
sub_1Subpi/split_1:1Placeholder_4*
T0*#
_output_shapes
:џџџџџџџџџ
A
Exp_1Expsub_1*
T0*#
_output_shapes
:џџџџџџџџџ
D
addAddExpExp_1*
T0*#
_output_shapes
:џџџџџџџџџ
N
	truediv/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
P
truedivRealDivadd	truediv/y*#
_output_shapes
:џџџџџџџџџ*
T0
N
	Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
GreaterGreaterPlaceholder_2	Greater/y*
T0*#
_output_shapes
:џџџџџџџџџ
J
mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *?
N
mulMulmul/xPlaceholder_2*
T0*#
_output_shapes
:џџџџџџџџџ
L
mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЭЬL?
R
mul_1Mulmul_1/xPlaceholder_2*#
_output_shapes
:џџџџџџџџџ*
T0
S
SelectSelectGreatermulmul_1*
T0*#
_output_shapes
:џџџџџџџџџ
R
mul_2MultruedivPlaceholder_2*
T0*#
_output_shapes
:џџџџџџџџџ
O
MinimumMinimummul_2Select*#
_output_shapes
:џџџџџџџџџ*
T0
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
Z
MeanMeanMinimumConst*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
1
NegNegMean*
T0*
_output_shapes
: 
Z
pi_loss/summaries/ConstConst*
valueB *
dtype0*
_output_shapes
: 
z
pi_loss/summaries/MeanMeanNegpi_loss/summaries/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
v
pi_loss/summaries/mean_1/tagsConst*)
value B Bpi_loss/summaries/mean_1*
dtype0*
_output_shapes
: 

pi_loss/summaries/mean_1ScalarSummarypi_loss/summaries/mean_1/tagspi_loss/summaries/Mean*
_output_shapes
: *
T0
a
pi_loss/summaries/stddev/subSubNegpi_loss/summaries/Mean*
_output_shapes
: *
T0
h
pi_loss/summaries/stddev/SquareSquarepi_loss/summaries/stddev/sub*
T0*
_output_shapes
: 
a
pi_loss/summaries/stddev/ConstConst*
dtype0*
_output_shapes
: *
valueB 
Є
pi_loss/summaries/stddev/MeanMeanpi_loss/summaries/stddev/Squarepi_loss/summaries/stddev/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
e
pi_loss/summaries/stddev/SqrtSqrtpi_loss/summaries/stddev/Mean*
_output_shapes
: *
T0
z
pi_loss/summaries/stddev_1/tagsConst*+
value"B  Bpi_loss/summaries/stddev_1*
dtype0*
_output_shapes
: 

pi_loss/summaries/stddev_1ScalarSummarypi_loss/summaries/stddev_1/tagspi_loss/summaries/stddev/Sqrt*
T0*
_output_shapes
: 
\
pi_loss/summaries/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
z
pi_loss/summaries/MaxMaxNegpi_loss/summaries/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
t
pi_loss/summaries/max_1/tagsConst*(
valueB Bpi_loss/summaries/max_1*
dtype0*
_output_shapes
: 
~
pi_loss/summaries/max_1ScalarSummarypi_loss/summaries/max_1/tagspi_loss/summaries/Max*
T0*
_output_shapes
: 
\
pi_loss/summaries/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
z
pi_loss/summaries/MinMinNegpi_loss/summaries/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
t
pi_loss/summaries/min_1/tagsConst*(
valueB Bpi_loss/summaries/min_1*
dtype0*
_output_shapes
: 
~
pi_loss/summaries/min_1ScalarSummarypi_loss/summaries/min_1/tagspi_loss/summaries/Min*
T0*
_output_shapes
: 
{
pi_loss/summaries/histogram/tagConst*
dtype0*
_output_shapes
: *,
value#B! Bpi_loss/summaries/histogram
v
pi_loss/summaries/histogramHistogramSummarypi_loss/summaries/histogram/tagNeg*
T0*
_output_shapes
: 
T
sub_2SubPlaceholder_3	v/Squeeze*
T0*#
_output_shapes
:џџџџџџџџџ
J
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
F
powPowsub_2pow/y*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Z
Mean_1MeanpowConst_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
S
sub_3SubPlaceholder_4pi/split*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2Meansub_3Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
W
sub_4SubPlaceholder_4pi/split_1:1*
T0*#
_output_shapes
:џџџџџџџџџ
Q
Const_3Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_3Meansub_4Const_3*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
=
add_1AddMean_2Mean_3*
T0*
_output_shapes
: 
P
truediv_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
I
	truediv_1RealDivadd_1truediv_1/y*
T0*
_output_shapes
: 
;
Neg_1Negpi/split*
_output_shapes
:*
T0
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_4MeanNeg_1Const_4*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
?
Neg_2Negpi/split_1:1*
T0*
_output_shapes
:
Q
Const_5Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_5MeanNeg_2Const_5*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
=
add_2AddMean_4Mean_5*
T0*
_output_shapes
: 
P
Greater_1/yConst*
valueB
 *?*
dtype0*
_output_shapes
: 
X
	Greater_1GreatertruedivGreater_1/y*
T0*#
_output_shapes
:џџџџџџџџџ
K
Less/yConst*
valueB
 *ЭЬL?*
dtype0*
_output_shapes
: 
K
LessLesstruedivLess/y*
T0*#
_output_shapes
:џџџџџџџџџ
L
	LogicalOr	LogicalOr	Greater_1Less*#
_output_shapes
:џџџџџџџџџ
d
CastCast	LogicalOr*

SrcT0
*
Truncate( *#
_output_shapes
:џџџџџџџџџ*

DstT0
Q
Const_6Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_6MeanCastConst_6*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:

gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients/Mean_grad/ShapeShapeMinimum*
T0*
out_type0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ
b
gradients/Mean_grad/Shape_1ShapeMinimum*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
a
gradients/Minimum_grad/ShapeShapemul_2*
T0*
out_type0*
_output_shapes
:
d
gradients/Minimum_grad/Shape_1ShapeSelect*
T0*
out_type0*
_output_shapes
:
y
gradients/Minimum_grad/Shape_2Shapegradients/Mean_grad/truediv*
_output_shapes
:*
T0*
out_type0
g
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ј
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0*#
_output_shapes
:џџџџџџџџџ
j
 gradients/Minimum_grad/LessEqual	LessEqualmul_2Select*
T0*#
_output_shapes
:џџџџџџџџџ
Р
,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
В
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0*#
_output_shapes
:џџџџџџџџџ
Д
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zerosgradients/Mean_grad/truediv*#
_output_shapes
:џџџџџџџџџ*
T0
Ў
gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
Д
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ѕ
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
ц
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
ь
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
a
gradients/mul_2_grad/ShapeShapetruediv*
T0*
out_type0*
_output_shapes
:
i
gradients/mul_2_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
К
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/mul_2_grad/MulMul/gradients/Minimum_grad/tuple/control_dependencyPlaceholder_2*#
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ

gradients/mul_2_grad/Mul_1Multruediv/gradients/Minimum_grad/tuple/control_dependency*#
_output_shapes
:џџџџџџџџџ*
T0
Ћ
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
о
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
ф
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
_
gradients/truediv_grad/ShapeShapeadd*
_output_shapes
:*
T0*
out_type0
a
gradients/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Р
,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

gradients/truediv_grad/RealDivRealDiv-gradients/mul_2_grad/tuple/control_dependency	truediv/y*#
_output_shapes
:џџџџџџџџџ*
T0
Џ
gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
T
gradients/truediv_grad/NegNegadd*
T0*#
_output_shapes
:џџџџџџџџџ

 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Neg	truediv/y*#
_output_shapes
:џџџџџџџџџ*
T0

 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1	truediv/y*#
_output_shapes
:џџџџџџџџџ*
T0
 
gradients/truediv_grad/mulMul-gradients/mul_2_grad/tuple/control_dependency gradients/truediv_grad/RealDiv_2*#
_output_shapes
:џџџџџџџџџ*
T0
Џ
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
ц
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
п
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1*
_output_shapes
: 
[
gradients/add_grad/ShapeShapeExp*
T0*
out_type0*
_output_shapes
:
_
gradients/add_grad/Shape_1ShapeExp_1*
T0*
out_type0*
_output_shapes
:
Д
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
И
gradients/add_grad/SumSum/gradients/truediv_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
М
gradients/add_grad/Sum_1Sum/gradients/truediv_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
ж
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
м
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
}
gradients/Exp_grad/mulMul+gradients/add_grad/tuple/control_dependencyExp*
T0*#
_output_shapes
:џџџџџџџџџ

gradients/Exp_1_grad/mulMul-gradients/add_grad/tuple/control_dependency_1Exp_1*#
_output_shapes
:џџџџџџџџџ*
T0
b
gradients/sub_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
g
gradients/sub_grad/Shape_1ShapePlaceholder_4*
_output_shapes
:*
T0*
out_type0
Д
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/sub_grad/SumSumgradients/Exp_grad/mul(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Ѓ
gradients/sub_grad/Sum_1Sumgradients/Exp_grad/mul*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
_output_shapes
:*
T0

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Э
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:
м
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
d
gradients/sub_1_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
i
gradients/sub_1_grad/Shape_1ShapePlaceholder_4*
T0*
out_type0*
_output_shapes
:
К
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
Ѕ
gradients/sub_1_grad/SumSumgradients/Exp_1_grad/mul*gradients/sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Љ
gradients/sub_1_grad/Sum_1Sumgradients/Exp_1_grad/mul,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
^
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0*
_output_shapes
:

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
е
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*
_output_shapes
:
ф
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ
R
gradients/zeros_like	ZerosLike
pi/split:1*
T0*
_output_shapes
:
T
gradients/zeros_like_1	ZerosLike
pi/split:2*
T0*
_output_shapes
:
г
gradients/pi/split_grad/concatConcatV2+gradients/sub_grad/tuple/control_dependencygradients/zeros_likegradients/zeros_like_1pi/split/split_dim*
N*
_output_shapes
:*

Tidx0*
T0
T
gradients/zeros_like_2	ZerosLike
pi/split_1*
_output_shapes
:*
T0
V
gradients/zeros_like_3	ZerosLikepi/split_1:2*
_output_shapes
:*
T0
л
 gradients/pi/split_1_grad/concatConcatV2gradients/zeros_like_2-gradients/sub_1_grad/tuple/control_dependencygradients/zeros_like_3pi/split_1/split_dim*
T0*
N*
_output_shapes
:*

Tidx0
l
gradients/pi/Sum_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      

gradients/pi/Sum_grad/SizeConst*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ї
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
­
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 

gradients/pi/Sum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *.
_class$
" loc:@gradients/pi/Sum_grad/Shape

!gradients/pi/Sum_grad/range/startConst*
value	B : *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 

!gradients/pi/Sum_grad/range/deltaConst*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
о
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:*

Tidx0

 gradients/pi/Sum_grad/Fill/valueConst*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ц
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*
T0*

index_type0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 

#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
N*
_output_shapes
:

gradients/pi/Sum_grad/Maximum/yConst*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
У
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
_output_shapes
:*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
Л
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
Є
gradients/pi/Sum_grad/ReshapeReshapegradients/pi/split_grad/concat#gradients/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes

:

gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*
_output_shapes

:
n
gradients/pi/Sum_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:

gradients/pi/Sum_1_grad/SizeConst*
value	B :*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
Џ
gradients/pi/Sum_1_grad/addAddpi/Sum_1/reduction_indicesgradients/pi/Sum_1_grad/Size*
T0*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
_output_shapes
: 
Е
gradients/pi/Sum_1_grad/modFloorModgradients/pi/Sum_1_grad/addgradients/pi/Sum_1_grad/Size*
_output_shapes
: *
T0*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape

gradients/pi/Sum_1_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape

#gradients/pi/Sum_1_grad/range/startConst*
value	B : *0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 

#gradients/pi/Sum_1_grad/range/deltaConst*
value	B :*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
ш
gradients/pi/Sum_1_grad/rangeRange#gradients/pi/Sum_1_grad/range/startgradients/pi/Sum_1_grad/Size#gradients/pi/Sum_1_grad/range/delta*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
_output_shapes
:*

Tidx0

"gradients/pi/Sum_1_grad/Fill/valueConst*
value	B :*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
Ю
gradients/pi/Sum_1_grad/FillFillgradients/pi/Sum_1_grad/Shape_1"gradients/pi/Sum_1_grad/Fill/value*
T0*

index_type0*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
_output_shapes
: 

%gradients/pi/Sum_1_grad/DynamicStitchDynamicStitchgradients/pi/Sum_1_grad/rangegradients/pi/Sum_1_grad/modgradients/pi/Sum_1_grad/Shapegradients/pi/Sum_1_grad/Fill*
T0*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
N*
_output_shapes
:

!gradients/pi/Sum_1_grad/Maximum/yConst*
value	B :*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
Ы
gradients/pi/Sum_1_grad/MaximumMaximum%gradients/pi/Sum_1_grad/DynamicStitch!gradients/pi/Sum_1_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
_output_shapes
:
У
 gradients/pi/Sum_1_grad/floordivFloorDivgradients/pi/Sum_1_grad/Shapegradients/pi/Sum_1_grad/Maximum*
T0*0
_class&
$"loc:@gradients/pi/Sum_1_grad/Shape*
_output_shapes
:
Њ
gradients/pi/Sum_1_grad/ReshapeReshape gradients/pi/split_1_grad/concat%gradients/pi/Sum_1_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes

:
Ђ
gradients/pi/Sum_1_grad/TileTilegradients/pi/Sum_1_grad/Reshape gradients/pi/Sum_1_grad/floordiv*
_output_shapes

:*

Tmultiples0*
T0
l
gradients/pi/mul_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
gradients/pi/mul_grad/Shape_1Const*
valueB"      *
dtype0*
_output_shapes
:
Н
+gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_grad/Shapegradients/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
t
gradients/pi/mul_grad/MulMulgradients/pi/Sum_grad/Tilepi/LogSoftmax*
T0*
_output_shapes

:
Ў
gradients/pi/mul_grad/SumSumgradients/pi/mul_grad/Mul+gradients/pi/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes

:*
	keep_dims( *

Tidx0

gradients/pi/mul_grad/ReshapeReshapegradients/pi/mul_grad/Sumgradients/pi/mul_grad/Shape*
_output_shapes

:*
T0*
Tshape0
s
gradients/pi/mul_grad/Mul_1Mul
pi/one_hotgradients/pi/Sum_grad/Tile*
T0*
_output_shapes

:
А
gradients/pi/mul_grad/Sum_1Sumgradients/pi/mul_grad/Mul_1-gradients/pi/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/pi/mul_grad/Reshape_1Reshapegradients/pi/mul_grad/Sum_1gradients/pi/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
p
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Reshape ^gradients/pi/mul_grad/Reshape_1
н
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Reshape'^gradients/pi/mul_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/mul_grad/Reshape*
_output_shapes

:
у
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Reshape_1'^gradients/pi/mul_grad/tuple/group_deps*
_output_shapes

:*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1
n
gradients/pi/mul_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
p
gradients/pi/mul_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB"      
У
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0
x
gradients/pi/mul_1_grad/MulMulgradients/pi/Sum_1_grad/Tilepi/LogSoftmax*
T0*
_output_shapes

:
Д
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes

:

gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:
y
gradients/pi/mul_1_grad/Mul_1Mulpi/one_hot_1gradients/pi/Sum_1_grad/Tile*
T0*
_output_shapes

:
Ж
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ѓ
!gradients/pi/mul_1_grad/Reshape_1Reshapegradients/pi/mul_1_grad/Sum_1gradients/pi/mul_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes

:
v
(gradients/pi/mul_1_grad/tuple/group_depsNoOp ^gradients/pi/mul_1_grad/Reshape"^gradients/pi/mul_1_grad/Reshape_1
х
0gradients/pi/mul_1_grad/tuple/control_dependencyIdentitygradients/pi/mul_1_grad/Reshape)^gradients/pi/mul_1_grad/tuple/group_deps*
_output_shapes

:*
T0*2
_class(
&$loc:@gradients/pi/mul_1_grad/Reshape
ы
2gradients/pi/mul_1_grad/tuple/control_dependency_1Identity!gradients/pi/mul_1_grad/Reshape_1)^gradients/pi/mul_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1*
_output_shapes

:
т
gradients/AddNAddN0gradients/pi/mul_grad/tuple/control_dependency_12gradients/pi/mul_1_grad/tuple/control_dependency_1*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1*
N*
_output_shapes

:
_
 gradients/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*
_output_shapes

:
}
2gradients/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
Б
 gradients/pi/LogSoftmax_grad/SumSumgradients/AddN2gradients/pi/LogSoftmax_grad/Sum/reduction_indices*
_output_shapes

:*
	keep_dims(*

Tidx0*
T0

 gradients/pi/LogSoftmax_grad/mulMul gradients/pi/LogSoftmax_grad/Sum gradients/pi/LogSoftmax_grad/Exp*
T0*
_output_shapes

:

 gradients/pi/LogSoftmax_grad/subSubgradients/AddN gradients/pi/LogSoftmax_grad/mul*
T0*
_output_shapes

:

%gradients/pi/dense_1/Softmax_grad/mulMul gradients/pi/LogSoftmax_grad/subpi/dense_1/Softmax*
T0*
_output_shapes

:

7gradients/pi/dense_1/Softmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
в
%gradients/pi/dense_1/Softmax_grad/SumSum%gradients/pi/dense_1/Softmax_grad/mul7gradients/pi/dense_1/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

%gradients/pi/dense_1/Softmax_grad/subSub gradients/pi/LogSoftmax_grad/sub%gradients/pi/dense_1/Softmax_grad/Sum*
_output_shapes

:*
T0

'gradients/pi/dense_1/Softmax_grad/mul_1Mul%gradients/pi/dense_1/Softmax_grad/subpi/dense_1/Softmax*
T0*
_output_shapes

:
Ё
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_1/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:*
T0

2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense_1/Softmax_grad/mul_1

:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/Softmax_grad/mul_13^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/Softmax_grad/mul_1*
_output_shapes

:

<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
п
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency pi/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b(
Ю
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 

1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1

9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*
_output_shapes
:	

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1
Ѕ
%gradients/pi/dense/Relu_grad/ReluGradReluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Relu*
_output_shapes
:	*
T0

+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad&^gradients/pi/dense/Relu_grad/ReluGrad

8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/pi/dense/Relu_grad/ReluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
_output_shapes
:	*
T0*8
_class.
,*loc:@gradients/pi/dense/Relu_grad/ReluGrad

:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
и
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
У
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulpi/Max8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 

/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1
џ
7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul*
_output_shapes

:

9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1*
_output_shapes
:	
t
gradients/pi/Max_grad/ShapeConst*%
valueB"            *
dtype0*
_output_shapes
:
\
gradients/pi/Max_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
{
gradients/pi/Max_grad/addAddpi/Max/reduction_indicesgradients/pi/Max_grad/Size*
T0*
_output_shapes
:

gradients/pi/Max_grad/modFloorModgradients/pi/Max_grad/addgradients/pi/Max_grad/Size*
_output_shapes
:*
T0
g
gradients/pi/Max_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
c
!gradients/pi/Max_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
c
!gradients/pi/Max_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ў
gradients/pi/Max_grad/rangeRange!gradients/pi/Max_grad/range/startgradients/pi/Max_grad/Size!gradients/pi/Max_grad/range/delta*
_output_shapes
:*

Tidx0
b
 gradients/pi/Max_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :

gradients/pi/Max_grad/FillFillgradients/pi/Max_grad/Shape_1 gradients/pi/Max_grad/Fill/value*
T0*

index_type0*
_output_shapes
:
г
#gradients/pi/Max_grad/DynamicStitchDynamicStitchgradients/pi/Max_grad/rangegradients/pi/Max_grad/modgradients/pi/Max_grad/Shapegradients/pi/Max_grad/Fill*
T0*
N*
_output_shapes
:

gradients/pi/Max_grad/ReshapeReshapepi/Max#gradients/pi/Max_grad/DynamicStitch*&
_output_shapes
:*
T0*
Tshape0
Ч
gradients/pi/Max_grad/Reshape_1Reshape7gradients/pi/dense/MatMul_grad/tuple/control_dependency#gradients/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:

gradients/pi/Max_grad/EqualEqualgradients/pi/Max_grad/Reshapepi/conv2d_7/Relu*
T0*&
_output_shapes
:

gradients/pi/Max_grad/CastCastgradients/pi/Max_grad/Equal*

SrcT0
*
Truncate( *&
_output_shapes
:*

DstT0

gradients/pi/Max_grad/SumSumgradients/pi/Max_grad/Castpi/Max/reduction_indices*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
Љ
gradients/pi/Max_grad/Reshape_2Reshapegradients/pi/Max_grad/Sum#gradients/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:

gradients/pi/Max_grad/divRealDivgradients/pi/Max_grad/Castgradients/pi/Max_grad/Reshape_2*&
_output_shapes
:*
T0

gradients/pi/Max_grad/mulMulgradients/pi/Max_grad/divgradients/pi/Max_grad/Reshape_1*
T0*&
_output_shapes
:

(gradients/pi/conv2d_7/Relu_grad/ReluGradReluGradgradients/pi/Max_grad/mulpi/conv2d_7/Relu*
T0*&
_output_shapes
:
Ѓ
.gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_7/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_7/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_7/Relu_grad/ReluGrad

;gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_7/Relu_grad/ReluGrad4^gradients/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:*
T0*;
_class1
/-loc:@gradients/pi/conv2d_7/Relu_grad/ReluGrad

=gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_7/Conv2D_grad/ShapeNShapeNpi/conv2d_6/Relu!pi/conv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ѕ
5gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_7/Conv2D_grad/ShapeN!pi/conv2d_7/Conv2D/ReadVariableOp;gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ш
6gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_6/Relu*gradients/pi/conv2d_7/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Ћ
2gradients/pi/conv2d_7/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_7/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_7/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Б
<gradients/pi/conv2d_7/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_7/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Г
(gradients/pi/conv2d_6/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_7/Conv2D_grad/tuple/control_dependencypi/conv2d_6/Relu*
T0*&
_output_shapes
:
Ѓ
.gradients/pi/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_6/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_6/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_6/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_6/Relu_grad/ReluGrad

;gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_6/Relu_grad/ReluGrad4^gradients/pi/conv2d_6/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:*
T0*;
_class1
/-loc:@gradients/pi/conv2d_6/Relu_grad/ReluGrad

=gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_6/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_6/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_6/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_6/Conv2D_grad/ShapeNShapeNpi/conv2d_5/Relu!pi/conv2d_6/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0
ѕ
5gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_6/Conv2D_grad/ShapeN!pi/conv2d_6/Conv2D/ReadVariableOp;gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
ш
6gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_5/Relu*gradients/pi/conv2d_6/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
Ћ
2gradients/pi/conv2d_6/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_6/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Б
<gradients/pi/conv2d_6/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Г
(gradients/pi/conv2d_5/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_6/Conv2D_grad/tuple/control_dependencypi/conv2d_5/Relu*
T0*&
_output_shapes
:
Ѓ
.gradients/pi/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_5/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_5/Relu_grad/ReluGrad

;gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_5/Relu_grad/ReluGrad4^gradients/pi/conv2d_5/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:*
T0*;
_class1
/-loc:@gradients/pi/conv2d_5/Relu_grad/ReluGrad

=gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_5/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_5/Conv2D_grad/ShapeNShapeNpi/conv2d_4/Relu!pi/conv2d_5/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ѕ
5gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_5/Conv2D_grad/ShapeN!pi/conv2d_5/Conv2D/ReadVariableOp;gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
ш
6gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_4/Relu*gradients/pi/conv2d_5/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Ћ
2gradients/pi/conv2d_5/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Б
<gradients/pi/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Г
(gradients/pi/conv2d_4/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_5/Conv2D_grad/tuple/control_dependencypi/conv2d_4/Relu*
T0*&
_output_shapes
:
Ѓ
.gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_4/Relu_grad/ReluGrad

;gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_4/Relu_grad/ReluGrad4^gradients/pi/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/pi/conv2d_4/Relu_grad/ReluGrad*&
_output_shapes
:

=gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_4/Conv2D_grad/ShapeNShapeNpi/conv2d_3/Relu!pi/conv2d_4/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0
ѕ
5gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_4/Conv2D_grad/ShapeN!pi/conv2d_4/Conv2D/ReadVariableOp;gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
ш
6gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_3/Relu*gradients/pi/conv2d_4/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ћ
2gradients/pi/conv2d_4/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_4/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Б
<gradients/pi/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Г
(gradients/pi/conv2d_3/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_4/Conv2D_grad/tuple/control_dependencypi/conv2d_3/Relu*
T0*&
_output_shapes
:
Ѓ
.gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_3/Relu_grad/ReluGrad

;gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_3/Relu_grad/ReluGrad4^gradients/pi/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/pi/conv2d_3/Relu_grad/ReluGrad*&
_output_shapes
:

=gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_3/Conv2D_grad/ShapeNShapeNpi/conv2d_2/Relu!pi/conv2d_3/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0
ѕ
5gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_3/Conv2D_grad/ShapeN!pi/conv2d_3/Conv2D/ReadVariableOp;gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
ш
6gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_2/Relu*gradients/pi/conv2d_3/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Ћ
2gradients/pi/conv2d_3/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Б
<gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Г
(gradients/pi/conv2d_2/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependencypi/conv2d_2/Relu*
T0*&
_output_shapes
:
Ѓ
.gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0

3gradients/pi/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_2/Relu_grad/ReluGrad

;gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_2/Relu_grad/ReluGrad4^gradients/pi/conv2d_2/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:*
T0*;
_class1
/-loc:@gradients/pi/conv2d_2/Relu_grad/ReluGrad

=gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_2/Conv2D_grad/ShapeNShapeNpi/conv2d_1/Relu!pi/conv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ѕ
5gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_2/Conv2D_grad/ShapeN!pi/conv2d_2/Conv2D/ReadVariableOp;gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
ш
6gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_1/Relu*gradients/pi/conv2d_2/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ћ
2gradients/pi/conv2d_2/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_2/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Б
<gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Г
(gradients/pi/conv2d_1/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependencypi/conv2d_1/Relu*&
_output_shapes
:*
T0
Ѓ
.gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0

3gradients/pi/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_1/Relu_grad/ReluGrad

;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_1/Relu_grad/ReluGrad4^gradients/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/pi/conv2d_1/Relu_grad/ReluGrad*&
_output_shapes
:

=gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Љ
(gradients/pi/conv2d_1/Conv2D_grad/ShapeNShapeNpi/conv2d/Relu!pi/conv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ѕ
5gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_1/Conv2D_grad/ShapeN!pi/conv2d_1/Conv2D/ReadVariableOp;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
ц
6gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d/Relu*gradients/pi/conv2d_1/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Ћ
2gradients/pi/conv2d_1/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*H
_class>
<:loc:@gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Б
<gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Џ
&gradients/pi/conv2d/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependencypi/conv2d/Relu*&
_output_shapes
:*
T0

,gradients/pi/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/pi/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

1gradients/pi/conv2d/BiasAdd_grad/tuple/group_depsNoOp-^gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad'^gradients/pi/conv2d/Relu_grad/ReluGrad

9gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/pi/conv2d/Relu_grad/ReluGrad2^gradients/pi/conv2d/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/pi/conv2d/Relu_grad/ReluGrad

;gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad2^gradients/pi/conv2d/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*?
_class5
31loc:@gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad
Ђ
&gradients/pi/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderpi/conv2d/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
э
3gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput&gradients/pi/conv2d/Conv2D_grad/ShapeNpi/conv2d/Conv2D/ReadVariableOp9gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

н
4gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder(gradients/pi/conv2d/Conv2D_grad/ShapeN:19gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ѕ
0gradients/pi/conv2d/Conv2D_grad/tuple/group_depsNoOp5^gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter4^gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput
Ѕ
8gradients/pi/conv2d/Conv2D_grad/tuple/control_dependencyIdentity3gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput1^gradients/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Љ
:gradients/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Identity4gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
`
Reshape/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

ReshapeReshape:gradients/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes
:0
b
Reshape_1/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_1Reshape;gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

	Reshape_2Reshape<gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:	
b
Reshape_3/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_3Reshape=gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_4/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_4Reshape<gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes	
:№+*
T0*
Tshape0
b
Reshape_5/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_5Reshape=gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_6/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

	Reshape_6Reshape<gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependency_1Reshape_6/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
b
Reshape_7/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_7Reshape=gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Reshape_7/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_8/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_8Reshape<gradients/pi/conv2d_4/Conv2D_grad/tuple/control_dependency_1Reshape_8/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
b
Reshape_9/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_9Reshape=gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Reshape_9/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_10/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_10Reshape<gradients/pi/conv2d_5/Conv2D_grad/tuple/control_dependency_1Reshape_10/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
c
Reshape_11/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_11Reshape=gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Reshape_11/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_12/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_12Reshape<gradients/pi/conv2d_6/Conv2D_grad/tuple/control_dependency_1Reshape_12/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
c
Reshape_13/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_13Reshape=gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Reshape_13/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_14/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_14Reshape<gradients/pi/conv2d_7/Conv2D_grad/tuple/control_dependency_1Reshape_14/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
c
Reshape_15/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_15Reshape=gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Reshape_15/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_16/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_16Reshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape_16/shape*
T0*
Tshape0*
_output_shapes	
:4
c
Reshape_17/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_17Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_17/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_18/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_18Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_19/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_19Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_19/shape*
_output_shapes
:*
T0*
Tshape0
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
П
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6	Reshape_7	Reshape_8	Reshape_9
Reshape_10
Reshape_11
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17
Reshape_18
Reshape_19concat/axis*

Tidx0*
T0*
N*
_output_shapes

:Ит
r
EagerPyFuncEagerPyFuncconcat*
_output_shapes

:Ит*
Tin
2*
Tout
2*
token
pyfunc_0
 
Const_7Const*e
value\BZ"P0           №     Ф     Ф     Ф     Ф     Ф                 *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
ї
splitSplitVEagerPyFuncConst_7split/split_dim*
T0*
_output_shapes
:0::	::№+::Ф/::Ф/::Ф/::Ф/::Ф/::4:::*
	num_split*

Tlen0
i
Reshape_20/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
m

Reshape_20ReshapesplitReshape_20/shape*&
_output_shapes
:*
T0*
Tshape0
Z
Reshape_21/shapeConst*
dtype0*
_output_shapes
:*
valueB:
c

Reshape_21Reshapesplit:1Reshape_21/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_22/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_22Reshapesplit:2Reshape_22/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_23/shapeConst*
dtype0*
_output_shapes
:*
valueB:
c

Reshape_23Reshapesplit:3Reshape_23/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_24/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_24Reshapesplit:4Reshape_24/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_25/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_25Reshapesplit:5Reshape_25/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_26/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_26Reshapesplit:6Reshape_26/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_27/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_27Reshapesplit:7Reshape_27/shape*
_output_shapes
:*
T0*
Tshape0
i
Reshape_28/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_28Reshapesplit:8Reshape_28/shape*&
_output_shapes
:*
T0*
Tshape0
Z
Reshape_29/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_29Reshapesplit:9Reshape_29/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_30/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
p

Reshape_30Reshapesplit:10Reshape_30/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_31/shapeConst*
dtype0*
_output_shapes
:*
valueB:
d

Reshape_31Reshapesplit:11Reshape_31/shape*
_output_shapes
:*
T0*
Tshape0
i
Reshape_32/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
p

Reshape_32Reshapesplit:12Reshape_32/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_33/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_33Reshapesplit:13Reshape_33/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_34/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
p

Reshape_34Reshapesplit:14Reshape_34/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_35/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_35Reshapesplit:15Reshape_35/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_36/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_36Reshapesplit:16Reshape_36/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_37/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_37Reshapesplit:17Reshape_37/shape*
_output_shapes	
:*
T0*
Tshape0
a
Reshape_38/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
i

Reshape_38Reshapesplit:18Reshape_38/shape*
T0*
Tshape0*
_output_shapes
:	
Z
Reshape_39/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_39Reshapesplit:19Reshape_39/shape*
T0*
Tshape0*
_output_shapes
:

%beta1_power/Initializer/initial_valueConst*!
_class
loc:@pi/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 

beta1_powerVarHandleOp*
dtype0*
_output_shapes
: *
shared_namebeta1_power*!
_class
loc:@pi/conv2d/bias*
	container *
shape: 

,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 

beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*
dtype0*!
_class
loc:@pi/conv2d/bias

beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias

%beta2_power/Initializer/initial_valueConst*!
_class
loc:@pi/conv2d/bias*
valueB
 *wО?*
dtype0*
_output_shapes
: 

beta2_powerVarHandleOp*!
_class
loc:@pi/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namebeta2_power

,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias

beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*
dtype0*!
_class
loc:@pi/conv2d/bias

beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
Б
'pi/conv2d/kernel/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Ф
pi/conv2d/kernel/AdamVarHandleOp*&
shared_namepi/conv2d/kernel/Adam*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
 
6pi/conv2d/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
Ђ
pi/conv2d/kernel/Adam/AssignAssignVariableOppi/conv2d/kernel/Adam'pi/conv2d/kernel/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d/kernel*
dtype0
Ќ
)pi/conv2d/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam*
dtype0*&
_output_shapes
:*#
_class
loc:@pi/conv2d/kernel
Г
)pi/conv2d/kernel/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Ш
pi/conv2d/kernel/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_1*#
_class
loc:@pi/conv2d/kernel*
	container 
Є
8pi/conv2d/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam_1*
_output_shapes
: *#
_class
loc:@pi/conv2d/kernel
Ј
pi/conv2d/kernel/Adam_1/AssignAssignVariableOppi/conv2d/kernel/Adam_1)pi/conv2d/kernel/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d/kernel*
dtype0
А
+pi/conv2d/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_1*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:

%pi/conv2d/bias/Adam/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
В
pi/conv2d/bias/AdamVarHandleOp*$
shared_namepi/conv2d/bias/Adam*!
_class
loc:@pi/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
: 

4pi/conv2d/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias

pi/conv2d/bias/Adam/AssignAssignVariableOppi/conv2d/bias/Adam%pi/conv2d/bias/Adam/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0

'pi/conv2d/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:

'pi/conv2d/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@pi/conv2d/bias*
valueB*    
Ж
pi/conv2d/bias/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_1*!
_class
loc:@pi/conv2d/bias*
	container 

6pi/conv2d/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_1*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
 
pi/conv2d/bias/Adam_1/AssignAssignVariableOppi/conv2d/bias/Adam_1'pi/conv2d/bias/Adam_1/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0

)pi/conv2d/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_1*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
Й
9pi/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            

/pi/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    

)pi/conv2d_1/kernel/Adam/Initializer/zerosFill9pi/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
Ъ
pi/conv2d_1/kernel/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_1/kernel/Adam*%
_class
loc:@pi/conv2d_1/kernel
І
8pi/conv2d_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel
Њ
pi/conv2d_1/kernel/Adam/AssignAssignVariableOppi/conv2d_1/kernel/Adam)pi/conv2d_1/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
В
+pi/conv2d_1/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_1/kernel
Л
;pi/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_1/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0
Ю
pi/conv2d_1/kernel/Adam_1VarHandleOp*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_1/kernel/Adam_1
Њ
:pi/conv2d_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_1*%
_class
loc:@pi/conv2d_1/kernel*
_output_shapes
: 
А
 pi/conv2d_1/kernel/Adam_1/AssignAssignVariableOppi/conv2d_1/kernel/Adam_1+pi/conv2d_1/kernel/Adam_1/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_1/kernel
Ж
-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_1*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:

'pi/conv2d_1/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias*
valueB*    
И
pi/conv2d_1/bias/AdamVarHandleOp*&
shared_namepi/conv2d_1/bias/Adam*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
 
6pi/conv2d_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam*#
_class
loc:@pi/conv2d_1/bias*
_output_shapes
: 
Ђ
pi/conv2d_1/bias/Adam/AssignAssignVariableOppi/conv2d_1/bias/Adam'pi/conv2d_1/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
 
)pi/conv2d_1/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias

)pi/conv2d_1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_1/bias/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_1/bias/Adam_1*#
_class
loc:@pi/conv2d_1/bias
Є
8pi/conv2d_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_1*
_output_shapes
: *#
_class
loc:@pi/conv2d_1/bias
Ј
pi/conv2d_1/bias/Adam_1/AssignAssignVariableOppi/conv2d_1/bias/Adam_1)pi/conv2d_1/bias/Adam_1/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_1/bias
Є
+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_1*#
_class
loc:@pi/conv2d_1/bias*
dtype0*
_output_shapes
:
Й
9pi/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_2/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)pi/conv2d_2/kernel/Adam/Initializer/zerosFill9pi/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_2/kernel*

index_type0*&
_output_shapes
:
Ъ
pi/conv2d_2/kernel/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_2/kernel/Adam*%
_class
loc:@pi/conv2d_2/kernel
І
8pi/conv2d_2/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/kernel/Adam*%
_class
loc:@pi/conv2d_2/kernel*
_output_shapes
: 
Њ
pi/conv2d_2/kernel/Adam/AssignAssignVariableOppi/conv2d_2/kernel/Adam)pi/conv2d_2/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_2/kernel*
dtype0
В
+pi/conv2d_2/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam*%
_class
loc:@pi/conv2d_2/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_2/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_2/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_2/kernel*

index_type0
Ю
pi/conv2d_2/kernel/Adam_1VarHandleOp**
shared_namepi/conv2d_2/kernel/Adam_1*%
_class
loc:@pi/conv2d_2/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
Њ
:pi/conv2d_2/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/kernel/Adam_1*%
_class
loc:@pi/conv2d_2/kernel*
_output_shapes
: 
А
 pi/conv2d_2/kernel/Adam_1/AssignAssignVariableOppi/conv2d_2/kernel/Adam_1+pi/conv2d_2/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_2/kernel*
dtype0
Ж
-pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_1*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_2/kernel

'pi/conv2d_2/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_2/bias*
valueB*    *
dtype0*
_output_shapes
:
И
pi/conv2d_2/bias/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_2/bias/Adam*#
_class
loc:@pi/conv2d_2/bias*
	container 
 
6pi/conv2d_2/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias/Adam*#
_class
loc:@pi/conv2d_2/bias*
_output_shapes
: 
Ђ
pi/conv2d_2/bias/Adam/AssignAssignVariableOppi/conv2d_2/bias/Adam'pi/conv2d_2/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_2/bias*
dtype0
 
)pi/conv2d_2/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_2/bias

)pi/conv2d_2/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_2/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_2/bias/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_2/bias/Adam_1*#
_class
loc:@pi/conv2d_2/bias
Є
8pi/conv2d_2/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias/Adam_1*#
_class
loc:@pi/conv2d_2/bias*
_output_shapes
: 
Ј
pi/conv2d_2/bias/Adam_1/AssignAssignVariableOppi/conv2d_2/bias/Adam_1)pi/conv2d_2/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_2/bias*
dtype0
Є
+pi/conv2d_2/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_1*#
_class
loc:@pi/conv2d_2/bias*
dtype0*
_output_shapes
:
Й
9pi/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)pi/conv2d_3/kernel/Adam/Initializer/zerosFill9pi/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_3/kernel*

index_type0*&
_output_shapes
:
Ъ
pi/conv2d_3/kernel/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_3/kernel/Adam*%
_class
loc:@pi/conv2d_3/kernel
І
8pi/conv2d_3/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/kernel/Adam*%
_class
loc:@pi/conv2d_3/kernel*
_output_shapes
: 
Њ
pi/conv2d_3/kernel/Adam/AssignAssignVariableOppi/conv2d_3/kernel/Adam)pi/conv2d_3/kernel/Adam/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_3/kernel
В
+pi/conv2d_3/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam*%
_class
loc:@pi/conv2d_3/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_3/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_3/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_3/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_3/kernel/Adam_1*%
_class
loc:@pi/conv2d_3/kernel*
	container *
shape:
Њ
:pi/conv2d_3/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/kernel/Adam_1*%
_class
loc:@pi/conv2d_3/kernel*
_output_shapes
: 
А
 pi/conv2d_3/kernel/Adam_1/AssignAssignVariableOppi/conv2d_3/kernel/Adam_1+pi/conv2d_3/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
Ж
-pi/conv2d_3/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_1*%
_class
loc:@pi/conv2d_3/kernel*
dtype0*&
_output_shapes
:

'pi/conv2d_3/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes
:
И
pi/conv2d_3/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_3/bias/Adam*#
_class
loc:@pi/conv2d_3/bias*
	container *
shape:
 
6pi/conv2d_3/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/bias/Adam*#
_class
loc:@pi/conv2d_3/bias*
_output_shapes
: 
Ђ
pi/conv2d_3/bias/Adam/AssignAssignVariableOppi/conv2d_3/bias/Adam'pi/conv2d_3/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_3/bias*
dtype0
 
)pi/conv2d_3/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam*#
_class
loc:@pi/conv2d_3/bias*
dtype0*
_output_shapes
:

)pi/conv2d_3/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_3/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_3/bias/Adam_1*#
_class
loc:@pi/conv2d_3/bias*
	container *
shape:
Є
8pi/conv2d_3/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/bias/Adam_1*#
_class
loc:@pi/conv2d_3/bias*
_output_shapes
: 
Ј
pi/conv2d_3/bias/Adam_1/AssignAssignVariableOppi/conv2d_3/bias/Adam_1)pi/conv2d_3/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_3/bias*
dtype0
Є
+pi/conv2d_3/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_1*#
_class
loc:@pi/conv2d_3/bias*
dtype0*
_output_shapes
:
Й
9pi/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)pi/conv2d_4/kernel/Adam/Initializer/zerosFill9pi/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_4/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_4/kernel*

index_type0
Ъ
pi/conv2d_4/kernel/AdamVarHandleOp*(
shared_namepi/conv2d_4/kernel/Adam*%
_class
loc:@pi/conv2d_4/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
І
8pi/conv2d_4/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/kernel/Adam*%
_class
loc:@pi/conv2d_4/kernel*
_output_shapes
: 
Њ
pi/conv2d_4/kernel/Adam/AssignAssignVariableOppi/conv2d_4/kernel/Adam)pi/conv2d_4/kernel/Adam/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_4/kernel
В
+pi/conv2d_4/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam*%
_class
loc:@pi/conv2d_4/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_4/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_4/kernel*

index_type0
Ю
pi/conv2d_4/kernel/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_4/kernel/Adam_1*%
_class
loc:@pi/conv2d_4/kernel
Њ
:pi/conv2d_4/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/kernel/Adam_1*%
_class
loc:@pi/conv2d_4/kernel*
_output_shapes
: 
А
 pi/conv2d_4/kernel/Adam_1/AssignAssignVariableOppi/conv2d_4/kernel/Adam_1+pi/conv2d_4/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_4/kernel*
dtype0
Ж
-pi/conv2d_4/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam_1*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_4/kernel

'pi/conv2d_4/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes
:
И
pi/conv2d_4/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_4/bias/Adam*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:
 
6pi/conv2d_4/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/bias/Adam*#
_class
loc:@pi/conv2d_4/bias*
_output_shapes
: 
Ђ
pi/conv2d_4/bias/Adam/AssignAssignVariableOppi/conv2d_4/bias/Adam'pi/conv2d_4/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_4/bias*
dtype0
 
)pi/conv2d_4/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam*#
_class
loc:@pi/conv2d_4/bias*
dtype0*
_output_shapes
:

)pi/conv2d_4/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_4/bias*
valueB*    
М
pi/conv2d_4/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_4/bias/Adam_1*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:
Є
8pi/conv2d_4/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/bias/Adam_1*#
_class
loc:@pi/conv2d_4/bias*
_output_shapes
: 
Ј
pi/conv2d_4/bias/Adam_1/AssignAssignVariableOppi/conv2d_4/bias/Adam_1)pi/conv2d_4/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_4/bias*
dtype0
Є
+pi/conv2d_4/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_1*#
_class
loc:@pi/conv2d_4/bias*
dtype0*
_output_shapes
:
Й
9pi/conv2d_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_5/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_5/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_5/kernel*
valueB
 *    

)pi/conv2d_5/kernel/Adam/Initializer/zerosFill9pi/conv2d_5/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_5/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_5/kernel*

index_type0*&
_output_shapes
:
Ъ
pi/conv2d_5/kernel/AdamVarHandleOp*(
shared_namepi/conv2d_5/kernel/Adam*%
_class
loc:@pi/conv2d_5/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
І
8pi/conv2d_5/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel/Adam*
_output_shapes
: *%
_class
loc:@pi/conv2d_5/kernel
Њ
pi/conv2d_5/kernel/Adam/AssignAssignVariableOppi/conv2d_5/kernel/Adam)pi/conv2d_5/kernel/Adam/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_5/kernel
В
+pi/conv2d_5/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_5/kernel*%
valueB"            

1pi/conv2d_5/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_5/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_5/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_5/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_5/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_5/kernel/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_5/kernel/Adam_1*%
_class
loc:@pi/conv2d_5/kernel
Њ
:pi/conv2d_5/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel/Adam_1*%
_class
loc:@pi/conv2d_5/kernel*
_output_shapes
: 
А
 pi/conv2d_5/kernel/Adam_1/AssignAssignVariableOppi/conv2d_5/kernel/Adam_1+pi/conv2d_5/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_5/kernel*
dtype0
Ж
-pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_1*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_5/kernel

'pi/conv2d_5/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_5/bias*
valueB*    *
dtype0*
_output_shapes
:
И
pi/conv2d_5/bias/AdamVarHandleOp*&
shared_namepi/conv2d_5/bias/Adam*#
_class
loc:@pi/conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
 
6pi/conv2d_5/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam*#
_class
loc:@pi/conv2d_5/bias*
_output_shapes
: 
Ђ
pi/conv2d_5/bias/Adam/AssignAssignVariableOppi/conv2d_5/bias/Adam'pi/conv2d_5/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_5/bias*
dtype0
 
)pi/conv2d_5/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam*#
_class
loc:@pi/conv2d_5/bias*
dtype0*
_output_shapes
:

)pi/conv2d_5/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_5/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_5/bias/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_5/bias/Adam_1*#
_class
loc:@pi/conv2d_5/bias*
	container 
Є
8pi/conv2d_5/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam_1*
_output_shapes
: *#
_class
loc:@pi/conv2d_5/bias
Ј
pi/conv2d_5/bias/Adam_1/AssignAssignVariableOppi/conv2d_5/bias/Adam_1)pi/conv2d_5/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_5/bias*
dtype0
Є
+pi/conv2d_5/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_1*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_5/bias
Й
9pi/conv2d_6/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_6/kernel*%
valueB"            

/pi/conv2d_6/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_6/kernel*
valueB
 *    

)pi/conv2d_6/kernel/Adam/Initializer/zerosFill9pi/conv2d_6/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_6/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_6/kernel*

index_type0
Ъ
pi/conv2d_6/kernel/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_6/kernel/Adam*%
_class
loc:@pi/conv2d_6/kernel*
	container 
І
8pi/conv2d_6/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/kernel/Adam*%
_class
loc:@pi/conv2d_6/kernel*
_output_shapes
: 
Њ
pi/conv2d_6/kernel/Adam/AssignAssignVariableOppi/conv2d_6/kernel/Adam)pi/conv2d_6/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_6/kernel*
dtype0
В
+pi/conv2d_6/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam*%
_class
loc:@pi/conv2d_6/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_6/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_6/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_6/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_6/kernel*
valueB
 *    

+pi/conv2d_6/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_6/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_6/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_6/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_6/kernel/Adam_1VarHandleOp**
shared_namepi/conv2d_6/kernel/Adam_1*%
_class
loc:@pi/conv2d_6/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
Њ
:pi/conv2d_6/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/kernel/Adam_1*%
_class
loc:@pi/conv2d_6/kernel*
_output_shapes
: 
А
 pi/conv2d_6/kernel/Adam_1/AssignAssignVariableOppi/conv2d_6/kernel/Adam_1+pi/conv2d_6/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_6/kernel*
dtype0
Ж
-pi/conv2d_6/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_1*%
_class
loc:@pi/conv2d_6/kernel*
dtype0*&
_output_shapes
:

'pi/conv2d_6/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_6/bias*
valueB*    
И
pi/conv2d_6/bias/AdamVarHandleOp*&
shared_namepi/conv2d_6/bias/Adam*#
_class
loc:@pi/conv2d_6/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
 
6pi/conv2d_6/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias/Adam*#
_class
loc:@pi/conv2d_6/bias*
_output_shapes
: 
Ђ
pi/conv2d_6/bias/Adam/AssignAssignVariableOppi/conv2d_6/bias/Adam'pi/conv2d_6/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_6/bias*
dtype0
 
)pi/conv2d_6/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_6/bias

)pi/conv2d_6/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_6/bias*
valueB*    
М
pi/conv2d_6/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_6/bias/Adam_1*#
_class
loc:@pi/conv2d_6/bias*
	container *
shape:
Є
8pi/conv2d_6/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias/Adam_1*#
_class
loc:@pi/conv2d_6/bias*
_output_shapes
: 
Ј
pi/conv2d_6/bias/Adam_1/AssignAssignVariableOppi/conv2d_6/bias/Adam_1)pi/conv2d_6/bias/Adam_1/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_6/bias
Є
+pi/conv2d_6/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_1*#
_class
loc:@pi/conv2d_6/bias*
dtype0*
_output_shapes
:
Й
9pi/conv2d_7/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_7/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_7/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_7/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)pi/conv2d_7/kernel/Adam/Initializer/zerosFill9pi/conv2d_7/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_7/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_7/kernel*

index_type0
Ъ
pi/conv2d_7/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_7/kernel/Adam*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:
І
8pi/conv2d_7/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/kernel/Adam*%
_class
loc:@pi/conv2d_7/kernel*
_output_shapes
: 
Њ
pi/conv2d_7/kernel/Adam/AssignAssignVariableOppi/conv2d_7/kernel/Adam)pi/conv2d_7/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_7/kernel*
dtype0
В
+pi/conv2d_7/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam*%
_class
loc:@pi/conv2d_7/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_7/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_7/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_7/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_7/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_7/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_7/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_7/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_7/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_7/kernel/Adam_1VarHandleOp*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_7/kernel/Adam_1
Њ
:pi/conv2d_7/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/kernel/Adam_1*%
_class
loc:@pi/conv2d_7/kernel*
_output_shapes
: 
А
 pi/conv2d_7/kernel/Adam_1/AssignAssignVariableOppi/conv2d_7/kernel/Adam_1+pi/conv2d_7/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_7/kernel*
dtype0
Ж
-pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_1*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_7/kernel

'pi/conv2d_7/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_7/bias*
valueB*    *
dtype0*
_output_shapes
:
И
pi/conv2d_7/bias/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_7/bias/Adam*#
_class
loc:@pi/conv2d_7/bias
 
6pi/conv2d_7/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias/Adam*#
_class
loc:@pi/conv2d_7/bias*
_output_shapes
: 
Ђ
pi/conv2d_7/bias/Adam/AssignAssignVariableOppi/conv2d_7/bias/Adam'pi/conv2d_7/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_7/bias*
dtype0
 
)pi/conv2d_7/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam*#
_class
loc:@pi/conv2d_7/bias*
dtype0*
_output_shapes
:

)pi/conv2d_7/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_7/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_7/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_7/bias/Adam_1*#
_class
loc:@pi/conv2d_7/bias*
	container *
shape:
Є
8pi/conv2d_7/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias/Adam_1*#
_class
loc:@pi/conv2d_7/bias*
_output_shapes
: 
Ј
pi/conv2d_7/bias/Adam_1/AssignAssignVariableOppi/conv2d_7/bias/Adam_1)pi/conv2d_7/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_7/bias*
dtype0
Є
+pi/conv2d_7/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_1*#
_class
loc:@pi/conv2d_7/bias*
dtype0*
_output_shapes
:
Ћ
6pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@pi/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

,pi/dense/kernel/Adam/Initializer/zeros/ConstConst*"
_class
loc:@pi/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
є
&pi/dense/kernel/Adam/Initializer/zerosFill6pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,pi/dense/kernel/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@pi/dense/kernel*

index_type0*
_output_shapes
:	
К
pi/dense/kernel/AdamVarHandleOp*
	container *
shape:	*
dtype0*
_output_shapes
: *%
shared_namepi/dense/kernel/Adam*"
_class
loc:@pi/dense/kernel

5pi/dense/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

pi/dense/kernel/Adam/AssignAssignVariableOppi/dense/kernel/Adam&pi/dense/kernel/Adam/Initializer/zeros*
dtype0*"
_class
loc:@pi/dense/kernel
Ђ
(pi/dense/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense/kernel/Adam*
dtype0*
_output_shapes
:	*"
_class
loc:@pi/dense/kernel
­
8pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@pi/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

.pi/dense/kernel/Adam_1/Initializer/zeros/ConstConst*"
_class
loc:@pi/dense/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
њ
(pi/dense/kernel/Adam_1/Initializer/zerosFill8pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.pi/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@pi/dense/kernel*

index_type0*
_output_shapes
:	
О
pi/dense/kernel/Adam_1VarHandleOp*"
_class
loc:@pi/dense/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: *'
shared_namepi/dense/kernel/Adam_1
Ё
7pi/dense/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam_1*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
Є
pi/dense/kernel/Adam_1/AssignAssignVariableOppi/dense/kernel/Adam_1(pi/dense/kernel/Adam_1/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
dtype0
І
*pi/dense/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/dense/kernel/Adam_1*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:	

$pi/dense/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes	
:* 
_class
loc:@pi/dense/bias*
valueB*    
А
pi/dense/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namepi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
	container *
shape:

3pi/dense/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

pi/dense/bias/Adam/AssignAssignVariableOppi/dense/bias/Adam$pi/dense/bias/Adam/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0

&pi/dense/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes	
:

&pi/dense/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
Д
pi/dense/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *%
shared_namepi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
	container *
shape:

5pi/dense/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

pi/dense/bias/Adam_1/AssignAssignVariableOppi/dense/bias/Adam_1&pi/dense/bias/Adam_1/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0

(pi/dense/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes	
:
Џ
8pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*$
_class
loc:@pi/dense_1/kernel*
valueB"      

.pi/dense_1/kernel/Adam/Initializer/zeros/ConstConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ќ
(pi/dense_1/kernel/Adam/Initializer/zerosFill8pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor.pi/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@pi/dense_1/kernel*

index_type0*
_output_shapes
:	
Р
pi/dense_1/kernel/AdamVarHandleOp*
shape:	*
dtype0*
_output_shapes
: *'
shared_namepi/dense_1/kernel/Adam*$
_class
loc:@pi/dense_1/kernel*
	container 
Ѓ
7pi/dense_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel/Adam*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
І
pi/dense_1/kernel/Adam/AssignAssignVariableOppi/dense_1/kernel/Adam(pi/dense_1/kernel/Adam/Initializer/zeros*$
_class
loc:@pi/dense_1/kernel*
dtype0
Ј
*pi/dense_1/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:	
Б
:pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@pi/dense_1/kernel*
valueB"      *
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*$
_class
loc:@pi/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

*pi/dense_1/kernel/Adam_1/Initializer/zerosFill:pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor0pi/dense_1/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	*
T0*$
_class
loc:@pi/dense_1/kernel*

index_type0
Ф
pi/dense_1/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_namepi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
	container *
shape:	
Ї
9pi/dense_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
Ќ
pi/dense_1/kernel/Adam_1/AssignAssignVariableOppi/dense_1/kernel/Adam_1*pi/dense_1/kernel/Adam_1/Initializer/zeros*$
_class
loc:@pi/dense_1/kernel*
dtype0
Ќ
,pi/dense_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:	

&pi/dense_1/bias/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Е
pi/dense_1/bias/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *%
shared_namepi/dense_1/bias/Adam*"
_class
loc:@pi/dense_1/bias

5pi/dense_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias/Adam*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 

pi/dense_1/bias/Adam/AssignAssignVariableOppi/dense_1/bias/Adam&pi/dense_1/bias/Adam/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
dtype0

(pi/dense_1/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:

(pi/dense_1/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
Й
pi/dense_1/bias/Adam_1VarHandleOp*'
shared_namepi/dense_1/bias/Adam_1*"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Ё
7pi/dense_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias/Adam_1*
_output_shapes
: *"
_class
loc:@pi/dense_1/bias
Є
pi/dense_1/bias/Adam_1/AssignAssignVariableOppi/dense_1/bias/Adam_1(pi/dense_1/bias/Adam_1/Initializer/zeros*
dtype0*"
_class
loc:@pi/dense_1/bias
Ё
*pi/dense_1/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_1*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *RI9*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
dtype0*
_output_shapes
: *
valueB
 *wО?
Q
Adam/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 

=Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d/kernelpi/conv2d/kernel/Adampi/conv2d/kernel/Adam_1=Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_20*
T0*#
_class
loc:@pi/conv2d/kernel*
use_nesterov( *
use_locking( 

;Adam/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

=Adam/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 

,Adam/update_pi/conv2d/bias/ResourceApplyAdamResourceApplyAdampi/conv2d/biaspi/conv2d/bias/Adampi/conv2d/bias/Adam_1;Adam/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp=Adam/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_21*
use_locking( *
T0*!
_class
loc:@pi/conv2d/bias*
use_nesterov( 

?Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

AAdam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ў
0Adam/update_pi/conv2d_1/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_1/kernelpi/conv2d_1/kernel/Adampi/conv2d_1/kernel/Adam_1?Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_22*
use_locking( *
T0*%
_class
loc:@pi/conv2d_1/kernel*
use_nesterov( 

=Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_1/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_1/biaspi/conv2d_1/bias/Adampi/conv2d_1/bias/Adam_1=Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_23*
use_locking( *
T0*#
_class
loc:@pi/conv2d_1/bias*
use_nesterov( 

?Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

AAdam/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ў
0Adam/update_pi/conv2d_2/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_2/kernelpi/conv2d_2/kernel/Adampi/conv2d_2/kernel/Adam_1?Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_24*
use_locking( *
T0*%
_class
loc:@pi/conv2d_2/kernel*
use_nesterov( 

=Adam/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_2/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_2/biaspi/conv2d_2/bias/Adampi/conv2d_2/bias/Adam_1=Adam/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_25*
use_locking( *
T0*#
_class
loc:@pi/conv2d_2/bias*
use_nesterov( 

?Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

AAdam/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ў
0Adam/update_pi/conv2d_3/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_3/kernelpi/conv2d_3/kernel/Adampi/conv2d_3/kernel/Adam_1?Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_26*
T0*%
_class
loc:@pi/conv2d_3/kernel*
use_nesterov( *
use_locking( 

=Adam/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_3/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_3/biaspi/conv2d_3/bias/Adampi/conv2d_3/bias/Adam_1=Adam/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_27*
use_locking( *
T0*#
_class
loc:@pi/conv2d_3/bias*
use_nesterov( 

?Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

AAdam/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ў
0Adam/update_pi/conv2d_4/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_4/kernelpi/conv2d_4/kernel/Adampi/conv2d_4/kernel/Adam_1?Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_28*
use_locking( *
T0*%
_class
loc:@pi/conv2d_4/kernel*
use_nesterov( 

=Adam/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_4/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_4/biaspi/conv2d_4/bias/Adampi/conv2d_4/bias/Adam_1=Adam/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_29*
use_locking( *
T0*#
_class
loc:@pi/conv2d_4/bias*
use_nesterov( 

?Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

AAdam/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ў
0Adam/update_pi/conv2d_5/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_5/kernelpi/conv2d_5/kernel/Adampi/conv2d_5/kernel/Adam_1?Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_30*
use_locking( *
T0*%
_class
loc:@pi/conv2d_5/kernel*
use_nesterov( 

=Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_5/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_5/biaspi/conv2d_5/bias/Adampi/conv2d_5/bias/Adam_1=Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_31*
use_nesterov( *
use_locking( *
T0*#
_class
loc:@pi/conv2d_5/bias

?Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

AAdam/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ў
0Adam/update_pi/conv2d_6/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_6/kernelpi/conv2d_6/kernel/Adampi/conv2d_6/kernel/Adam_1?Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_32*
T0*%
_class
loc:@pi/conv2d_6/kernel*
use_nesterov( *
use_locking( 

=Adam/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_6/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_6/biaspi/conv2d_6/bias/Adampi/conv2d_6/bias/Adam_1=Adam/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_33*
use_locking( *
T0*#
_class
loc:@pi/conv2d_6/bias*
use_nesterov( 

?Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

AAdam/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ў
0Adam/update_pi/conv2d_7/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_7/kernelpi/conv2d_7/kernel/Adampi/conv2d_7/kernel/Adam_1?Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_34*
use_locking( *
T0*%
_class
loc:@pi/conv2d_7/kernel*
use_nesterov( 

=Adam/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

?Adam/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_7/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_7/biaspi/conv2d_7/bias/Adampi/conv2d_7/bias/Adam_1=Adam/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_35*
use_locking( *
T0*#
_class
loc:@pi/conv2d_7/bias*
use_nesterov( 

<Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

>Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 

-Adam/update_pi/dense/kernel/ResourceApplyAdamResourceApplyAdampi/dense/kernelpi/dense/kernel/Adampi/dense/kernel/Adam_1<Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp>Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_36*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@pi/dense/kernel
~
:Adam/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

<Adam/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 

+Adam/update_pi/dense/bias/ResourceApplyAdamResourceApplyAdampi/dense/biaspi/dense/bias/Adampi/dense/bias/Adam_1:Adam/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp<Adam/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_37*
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
use_locking( 

>Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

@Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
Ї
/Adam/update_pi/dense_1/kernel/ResourceApplyAdamResourceApplyAdampi/dense_1/kernelpi/dense_1/kernel/Adampi/dense_1/kernel/Adam_1>Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp@Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_38*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( 

<Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 

>Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 

-Adam/update_pi/dense_1/bias/ResourceApplyAdamResourceApplyAdampi/dense_1/biaspi/dense_1/bias/Adampi/dense_1/bias/Adam_1<Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp>Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_39*
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( 
Г
Adam/ReadVariableOpReadVariableOpbeta1_power-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_2/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_3/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_4/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_5/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_6/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_7/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
t
Adam/mulMulAdam/ReadVariableOp
Adam/beta1*
T0*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
p
Adam/AssignVariableOpAssignVariableOpbeta1_powerAdam/mul*!
_class
loc:@pi/conv2d/bias*
dtype0
№
Adam/ReadVariableOp_1ReadVariableOpbeta1_power^Adam/AssignVariableOp-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_2/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_3/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_4/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_5/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_6/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_7/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
Е
Adam/ReadVariableOp_2ReadVariableOpbeta2_power-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_2/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_3/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_4/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_5/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_6/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_7/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
x

Adam/mul_1MulAdam/ReadVariableOp_2
Adam/beta2*
T0*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
t
Adam/AssignVariableOp_1AssignVariableOpbeta2_power
Adam/mul_1*
dtype0*!
_class
loc:@pi/conv2d/bias
ђ
Adam/ReadVariableOp_3ReadVariableOpbeta2_power^Adam/AssignVariableOp_1-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_2/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_3/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_4/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_5/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_6/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_7/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias

AdamNoOp^Adam/ReadVariableOp_1^Adam/ReadVariableOp_3-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_2/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_3/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_4/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_5/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_6/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_7/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam
y
Reshape_40/ReadVariableOpReadVariableOppi/conv2d/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_40/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_40ReshapeReshape_40/ReadVariableOpReshape_40/shape*
_output_shapes
:0*
T0*
Tshape0
k
Reshape_41/ReadVariableOpReadVariableOppi/conv2d/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_41/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_41ReshapeReshape_41/ReadVariableOpReshape_41/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_42/ReadVariableOpReadVariableOppi/conv2d_1/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_42/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_42ReshapeReshape_42/ReadVariableOpReshape_42/shape*
_output_shapes	
:	*
T0*
Tshape0
m
Reshape_43/ReadVariableOpReadVariableOppi/conv2d_1/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_43/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_43ReshapeReshape_43/ReadVariableOpReshape_43/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_44/ReadVariableOpReadVariableOppi/conv2d_2/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_44/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_44ReshapeReshape_44/ReadVariableOpReshape_44/shape*
T0*
Tshape0*
_output_shapes	
:№+
m
Reshape_45/ReadVariableOpReadVariableOppi/conv2d_2/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_45/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_45ReshapeReshape_45/ReadVariableOpReshape_45/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_46/ReadVariableOpReadVariableOppi/conv2d_3/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_46/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_46ReshapeReshape_46/ReadVariableOpReshape_46/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
m
Reshape_47/ReadVariableOpReadVariableOppi/conv2d_3/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_47/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_47ReshapeReshape_47/ReadVariableOpReshape_47/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_48/ReadVariableOpReadVariableOppi/conv2d_4/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_48/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_48ReshapeReshape_48/ReadVariableOpReshape_48/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
m
Reshape_49/ReadVariableOpReadVariableOppi/conv2d_4/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_49/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_49ReshapeReshape_49/ReadVariableOpReshape_49/shape*
_output_shapes
:*
T0*
Tshape0
{
Reshape_50/ReadVariableOpReadVariableOppi/conv2d_5/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_50/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
v

Reshape_50ReshapeReshape_50/ReadVariableOpReshape_50/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
m
Reshape_51/ReadVariableOpReadVariableOppi/conv2d_5/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_51/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_51ReshapeReshape_51/ReadVariableOpReshape_51/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_52/ReadVariableOpReadVariableOppi/conv2d_6/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_52/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_52ReshapeReshape_52/ReadVariableOpReshape_52/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
m
Reshape_53/ReadVariableOpReadVariableOppi/conv2d_6/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_53/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_53ReshapeReshape_53/ReadVariableOpReshape_53/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_54/ReadVariableOpReadVariableOppi/conv2d_7/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_54/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_54ReshapeReshape_54/ReadVariableOpReshape_54/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
m
Reshape_55/ReadVariableOpReadVariableOppi/conv2d_7/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_55/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_55ReshapeReshape_55/ReadVariableOpReshape_55/shape*
T0*
Tshape0*
_output_shapes
:
q
Reshape_56/ReadVariableOpReadVariableOppi/dense/kernel^Adam*
dtype0*
_output_shapes
:	
j
Reshape_56/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_56ReshapeReshape_56/ReadVariableOpReshape_56/shape*
T0*
Tshape0*
_output_shapes	
:4
k
Reshape_57/ReadVariableOpReadVariableOppi/dense/bias^Adam*
dtype0*
_output_shapes	
:
j
Reshape_57/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
v

Reshape_57ReshapeReshape_57/ReadVariableOpReshape_57/shape*
T0*
Tshape0*
_output_shapes	
:
s
Reshape_58/ReadVariableOpReadVariableOppi/dense_1/kernel^Adam*
dtype0*
_output_shapes
:	
j
Reshape_58/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_58ReshapeReshape_58/ReadVariableOpReshape_58/shape*
T0*
Tshape0*
_output_shapes	
:
l
Reshape_59/ReadVariableOpReadVariableOppi/dense_1/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_59/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_59ReshapeReshape_59/ReadVariableOpReshape_59/shape*
T0*
Tshape0*
_output_shapes
:
V
concat_1/axisConst^Adam*
value	B : *
dtype0*
_output_shapes
: 
Я
concat_1ConcatV2
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45
Reshape_46
Reshape_47
Reshape_48
Reshape_49
Reshape_50
Reshape_51
Reshape_52
Reshape_53
Reshape_54
Reshape_55
Reshape_56
Reshape_57
Reshape_58
Reshape_59concat_1/axis*

Tidx0*
T0*
N*
_output_shapes

:Ит
r
EagerPyFunc_1EagerPyFuncconcat_1*
Tout
2*
token
pyfunc_1*
_output_shapes
:*
Tin
2
Ї
Const_8Const^Adam*e
value\BZ"P0           №     Ф     Ф     Ф     Ф     Ф                 *
dtype0*
_output_shapes
:
Z
split_1/split_dimConst^Adam*
value	B : *
dtype0*
_output_shapes
: 
Ш
split_1SplitVEagerPyFunc_1Const_8split_1/split_dim*
T0*d
_output_shapesR
P::::::::::::::::::::*
	num_split*

Tlen0
p
Reshape_60/shapeConst^Adam*
dtype0*
_output_shapes
:*%
valueB"            
o

Reshape_60Reshapesplit_1Reshape_60/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_61/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_61Reshape	split_1:1Reshape_61/shape*
_output_shapes
:*
T0*
Tshape0
p
Reshape_62/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
q

Reshape_62Reshape	split_1:2Reshape_62/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_63/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_63Reshape	split_1:3Reshape_63/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_64/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
q

Reshape_64Reshape	split_1:4Reshape_64/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_65/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_65Reshape	split_1:5Reshape_65/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_66/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
q

Reshape_66Reshape	split_1:6Reshape_66/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_67/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_67Reshape	split_1:7Reshape_67/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_68/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
q

Reshape_68Reshape	split_1:8Reshape_68/shape*&
_output_shapes
:*
T0*
Tshape0
a
Reshape_69/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_69Reshape	split_1:9Reshape_69/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_70/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
r

Reshape_70Reshape
split_1:10Reshape_70/shape*&
_output_shapes
:*
T0*
Tshape0
a
Reshape_71/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_71Reshape
split_1:11Reshape_71/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_72/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
r

Reshape_72Reshape
split_1:12Reshape_72/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_73/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_73Reshape
split_1:13Reshape_73/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_74/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
r

Reshape_74Reshape
split_1:14Reshape_74/shape*&
_output_shapes
:*
T0*
Tshape0
a
Reshape_75/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_75Reshape
split_1:15Reshape_75/shape*
T0*
Tshape0*
_output_shapes
:
h
Reshape_76/shapeConst^Adam*
valueB"      *
dtype0*
_output_shapes
:
k

Reshape_76Reshape
split_1:16Reshape_76/shape*
T0*
Tshape0*
_output_shapes
:	
b
Reshape_77/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
g

Reshape_77Reshape
split_1:17Reshape_77/shape*
_output_shapes	
:*
T0*
Tshape0
h
Reshape_78/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB"      
k

Reshape_78Reshape
split_1:18Reshape_78/shape*
T0*
Tshape0*
_output_shapes
:	
a
Reshape_79/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_79Reshape
split_1:19Reshape_79/shape*
_output_shapes
:*
T0*
Tshape0
O
AssignVariableOpAssignVariableOppi/conv2d/kernel
Reshape_60*
dtype0

ReadVariableOpReadVariableOppi/conv2d/kernel^Adam^AssignVariableOp*
dtype0*&
_output_shapes
:
O
AssignVariableOp_1AssignVariableOppi/conv2d/bias
Reshape_61*
dtype0
w
ReadVariableOp_1ReadVariableOppi/conv2d/bias^Adam^AssignVariableOp_1*
dtype0*
_output_shapes
:
S
AssignVariableOp_2AssignVariableOppi/conv2d_1/kernel
Reshape_62*
dtype0

ReadVariableOp_2ReadVariableOppi/conv2d_1/kernel^Adam^AssignVariableOp_2*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_3AssignVariableOppi/conv2d_1/bias
Reshape_63*
dtype0
y
ReadVariableOp_3ReadVariableOppi/conv2d_1/bias^Adam^AssignVariableOp_3*
dtype0*
_output_shapes
:
S
AssignVariableOp_4AssignVariableOppi/conv2d_2/kernel
Reshape_64*
dtype0

ReadVariableOp_4ReadVariableOppi/conv2d_2/kernel^Adam^AssignVariableOp_4*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_5AssignVariableOppi/conv2d_2/bias
Reshape_65*
dtype0
y
ReadVariableOp_5ReadVariableOppi/conv2d_2/bias^Adam^AssignVariableOp_5*
dtype0*
_output_shapes
:
S
AssignVariableOp_6AssignVariableOppi/conv2d_3/kernel
Reshape_66*
dtype0

ReadVariableOp_6ReadVariableOppi/conv2d_3/kernel^Adam^AssignVariableOp_6*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_7AssignVariableOppi/conv2d_3/bias
Reshape_67*
dtype0
y
ReadVariableOp_7ReadVariableOppi/conv2d_3/bias^Adam^AssignVariableOp_7*
dtype0*
_output_shapes
:
S
AssignVariableOp_8AssignVariableOppi/conv2d_4/kernel
Reshape_68*
dtype0

ReadVariableOp_8ReadVariableOppi/conv2d_4/kernel^Adam^AssignVariableOp_8*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_9AssignVariableOppi/conv2d_4/bias
Reshape_69*
dtype0
y
ReadVariableOp_9ReadVariableOppi/conv2d_4/bias^Adam^AssignVariableOp_9*
dtype0*
_output_shapes
:
T
AssignVariableOp_10AssignVariableOppi/conv2d_5/kernel
Reshape_70*
dtype0

ReadVariableOp_10ReadVariableOppi/conv2d_5/kernel^Adam^AssignVariableOp_10*
dtype0*&
_output_shapes
:
R
AssignVariableOp_11AssignVariableOppi/conv2d_5/bias
Reshape_71*
dtype0
{
ReadVariableOp_11ReadVariableOppi/conv2d_5/bias^Adam^AssignVariableOp_11*
dtype0*
_output_shapes
:
T
AssignVariableOp_12AssignVariableOppi/conv2d_6/kernel
Reshape_72*
dtype0

ReadVariableOp_12ReadVariableOppi/conv2d_6/kernel^Adam^AssignVariableOp_12*
dtype0*&
_output_shapes
:
R
AssignVariableOp_13AssignVariableOppi/conv2d_6/bias
Reshape_73*
dtype0
{
ReadVariableOp_13ReadVariableOppi/conv2d_6/bias^Adam^AssignVariableOp_13*
dtype0*
_output_shapes
:
T
AssignVariableOp_14AssignVariableOppi/conv2d_7/kernel
Reshape_74*
dtype0

ReadVariableOp_14ReadVariableOppi/conv2d_7/kernel^Adam^AssignVariableOp_14*
dtype0*&
_output_shapes
:
R
AssignVariableOp_15AssignVariableOppi/conv2d_7/bias
Reshape_75*
dtype0
{
ReadVariableOp_15ReadVariableOppi/conv2d_7/bias^Adam^AssignVariableOp_15*
dtype0*
_output_shapes
:
Q
AssignVariableOp_16AssignVariableOppi/dense/kernel
Reshape_76*
dtype0

ReadVariableOp_16ReadVariableOppi/dense/kernel^Adam^AssignVariableOp_16*
dtype0*
_output_shapes
:	
O
AssignVariableOp_17AssignVariableOppi/dense/bias
Reshape_77*
dtype0
y
ReadVariableOp_17ReadVariableOppi/dense/bias^Adam^AssignVariableOp_17*
dtype0*
_output_shapes	
:
S
AssignVariableOp_18AssignVariableOppi/dense_1/kernel
Reshape_78*
dtype0

ReadVariableOp_18ReadVariableOppi/dense_1/kernel^Adam^AssignVariableOp_18*
dtype0*
_output_shapes
:	
Q
AssignVariableOp_19AssignVariableOppi/dense_1/bias
Reshape_79*
dtype0
z
ReadVariableOp_19ReadVariableOppi/dense_1/bias^Adam^AssignVariableOp_19*
dtype0*
_output_shapes
:


group_depsNoOp^Adam^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_10^ReadVariableOp_11^ReadVariableOp_12^ReadVariableOp_13^ReadVariableOp_14^ReadVariableOp_15^ReadVariableOp_16^ReadVariableOp_17^ReadVariableOp_18^ReadVariableOp_19^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8^ReadVariableOp_9
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
_output_shapes
: *
T0*

index_type0
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:

gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients_1/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:
Є
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:џџџџџџџџџ
b
gradients_1/Mean_1_grad/Shape_1Shapepow*
T0*
out_type0*
_output_shapes
:
b
gradients_1/Mean_1_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
g
gradients_1/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Ђ
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
i
gradients_1/Mean_1_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
І
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
c
!gradients_1/Mean_1_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :

gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 

 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 

gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*#
_output_shapes
:џџџџџџџџџ*
T0
_
gradients_1/pow_grad/ShapeShapesub_2*
T0*
out_type0*
_output_shapes
:
_
gradients_1/pow_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
К
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:џџџџџџџџџ
_
gradients_1/pow_grad/sub/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
_output_shapes
: *
T0
n
gradients_1/pow_grad/PowPowsub_2gradients_1/pow_grad/sub*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*#
_output_shapes
:џџџџџџџџџ*
T0
Ї
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
c
gradients_1/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
gradients_1/pow_grad/GreaterGreatersub_2gradients_1/pow_grad/Greater/y*
T0*#
_output_shapes
:џџџџџџџџџ
i
$gradients_1/pow_grad/ones_like/ShapeShapesub_2*
T0*
out_type0*
_output_shapes
:
i
$gradients_1/pow_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
В
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*#
_output_shapes
:џџџџџџџџџ*
T0*

index_type0

gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersub_2gradients_1/pow_grad/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*#
_output_shapes
:џџџџџџџџџ*
T0
a
gradients_1/pow_grad/zeros_like	ZerosLikesub_2*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*#
_output_shapes
:џџџџџџџџџ*
T0
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
о
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape
з
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1*
_output_shapes
: 
i
gradients_1/sub_2_grad/ShapeShapePlaceholder_3*
T0*
out_type0*
_output_shapes
:
h
gradients_1/sub_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Р
,gradients_1/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_2_grad/Shapegradients_1/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
gradients_1/sub_2_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_2_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients_1/sub_2_grad/ReshapeReshapegradients_1/sub_2_grad/Sumgradients_1/sub_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
Т
gradients_1/sub_2_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency.gradients_1/sub_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
b
gradients_1/sub_2_grad/NegNeggradients_1/sub_2_grad/Sum_1*
T0*
_output_shapes
:

 gradients_1/sub_2_grad/Reshape_1Reshapegradients_1/sub_2_grad/Neggradients_1/sub_2_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
s
'gradients_1/sub_2_grad/tuple/group_depsNoOp^gradients_1/sub_2_grad/Reshape!^gradients_1/sub_2_grad/Reshape_1
ц
/gradients_1/sub_2_grad/tuple/control_dependencyIdentitygradients_1/sub_2_grad/Reshape(^gradients_1/sub_2_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*1
_class'
%#loc:@gradients_1/sub_2_grad/Reshape
у
1gradients_1/sub_2_grad/tuple/control_dependency_1Identity gradients_1/sub_2_grad/Reshape_1(^gradients_1/sub_2_grad/tuple/group_deps*
_output_shapes
:*
T0*3
_class)
'%loc:@gradients_1/sub_2_grad/Reshape_1
q
 gradients_1/v/Squeeze_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
Й
"gradients_1/v/Squeeze_grad/ReshapeReshape1gradients_1/sub_2_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
_output_shapes

:*
T0*
Tshape0

.gradients_1/v/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

3gradients_1/v/dense_3/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_3/BiasAdd_grad/BiasAddGrad

;gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_3/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape*
_output_shapes

:

=gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_3/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_3/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
р
(gradients_1/v/dense_3/MatMul_grad/MatMulMatMul;gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependencyv/dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes
:	*
transpose_a( *
transpose_b(
б
*gradients_1/v/dense_3/MatMul_grad/MatMul_1MatMulv/dense_2/Relu;gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 

2gradients_1/v/dense_3/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_3/MatMul_grad/MatMul+^gradients_1/v/dense_3/MatMul_grad/MatMul_1

:gradients_1/v/dense_3/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_3/MatMul_grad/MatMul3^gradients_1/v/dense_3/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*;
_class1
/-loc:@gradients_1/v/dense_3/MatMul_grad/MatMul

<gradients_1/v/dense_3/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_3/MatMul_grad/MatMul_13^gradients_1/v/dense_3/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_3/MatMul_grad/MatMul_1*
_output_shapes
:	
Њ
(gradients_1/v/dense_2/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_3/MatMul_grad/tuple/control_dependencyv/dense_2/Relu*
T0*
_output_shapes
:	
Є
.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/v/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

3gradients_1/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad)^gradients_1/v/dense_2/Relu_grad/ReluGrad

;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/Relu_grad/ReluGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_2/Relu_grad/ReluGrad*
_output_shapes
:	

=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
п
(gradients_1/v/dense_2/MatMul_grad/MatMulMatMul;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
Щ
*gradients_1/v/dense_2/MatMul_grad/MatMul_1MatMulpi/Max;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	*
transpose_a(*
transpose_b( 

2gradients_1/v/dense_2/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_2/MatMul_grad/MatMul+^gradients_1/v/dense_2/MatMul_grad/MatMul_1

:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/MatMul_grad/MatMul3^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_2/MatMul_grad/MatMul*
_output_shapes

:

<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_2/MatMul_grad/MatMul_13^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*=
_class3
1/loc:@gradients_1/v/dense_2/MatMul_grad/MatMul_1
v
gradients_1/pi/Max_grad/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"            
^
gradients_1/pi/Max_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/pi/Max_grad/addAddpi/Max/reduction_indicesgradients_1/pi/Max_grad/Size*
T0*
_output_shapes
:

gradients_1/pi/Max_grad/modFloorModgradients_1/pi/Max_grad/addgradients_1/pi/Max_grad/Size*
T0*
_output_shapes
:
i
gradients_1/pi/Max_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
e
#gradients_1/pi/Max_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#gradients_1/pi/Max_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ж
gradients_1/pi/Max_grad/rangeRange#gradients_1/pi/Max_grad/range/startgradients_1/pi/Max_grad/Size#gradients_1/pi/Max_grad/range/delta*
_output_shapes
:*

Tidx0
d
"gradients_1/pi/Max_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
 
gradients_1/pi/Max_grad/FillFillgradients_1/pi/Max_grad/Shape_1"gradients_1/pi/Max_grad/Fill/value*
T0*

index_type0*
_output_shapes
:
н
%gradients_1/pi/Max_grad/DynamicStitchDynamicStitchgradients_1/pi/Max_grad/rangegradients_1/pi/Max_grad/modgradients_1/pi/Max_grad/Shapegradients_1/pi/Max_grad/Fill*
T0*
N*
_output_shapes
:

gradients_1/pi/Max_grad/ReshapeReshapepi/Max%gradients_1/pi/Max_grad/DynamicStitch*&
_output_shapes
:*
T0*
Tshape0
Ю
!gradients_1/pi/Max_grad/Reshape_1Reshape:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency%gradients_1/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:

gradients_1/pi/Max_grad/EqualEqualgradients_1/pi/Max_grad/Reshapepi/conv2d_7/Relu*
T0*&
_output_shapes
:

gradients_1/pi/Max_grad/CastCastgradients_1/pi/Max_grad/Equal*
Truncate( *&
_output_shapes
:*

DstT0*

SrcT0

 
gradients_1/pi/Max_grad/SumSumgradients_1/pi/Max_grad/Castpi/Max/reduction_indices*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
Џ
!gradients_1/pi/Max_grad/Reshape_2Reshapegradients_1/pi/Max_grad/Sum%gradients_1/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:

gradients_1/pi/Max_grad/divRealDivgradients_1/pi/Max_grad/Cast!gradients_1/pi/Max_grad/Reshape_2*&
_output_shapes
:*
T0

gradients_1/pi/Max_grad/mulMulgradients_1/pi/Max_grad/div!gradients_1/pi/Max_grad/Reshape_1*
T0*&
_output_shapes
:

*gradients_1/pi/conv2d_7/Relu_grad/ReluGradReluGradgradients_1/pi/Max_grad/mulpi/conv2d_7/Relu*
T0*&
_output_shapes
:
Ї
0gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0

5gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_7/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_7/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_7/Relu_grad/ReluGrad

?gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
­
*gradients_1/pi/conv2d_7/Conv2D_grad/ShapeNShapeNpi/conv2d_6/Relu!pi/conv2d_7/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_7/Conv2D_grad/ShapeN!pi/conv2d_7/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
ю
8gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_6/Relu,gradients_1/pi/conv2d_7/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Б
4gradients_1/pi/conv2d_7/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_7/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_7/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Й
>gradients_1/pi/conv2d_7/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_7/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter
З
*gradients_1/pi/conv2d_6/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_7/Conv2D_grad/tuple/control_dependencypi/conv2d_6/Relu*&
_output_shapes
:*
T0
Ї
0gradients_1/pi/conv2d_6/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_6/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0

5gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_6/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_6/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_6/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_6/Relu_grad/ReluGrad*&
_output_shapes
:

?gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_6/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_6/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
­
*gradients_1/pi/conv2d_6/Conv2D_grad/ShapeNShapeNpi/conv2d_5/Relu!pi/conv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_6/Conv2D_grad/ShapeN!pi/conv2d_6/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

ю
8gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_5/Relu,gradients_1/pi/conv2d_6/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Б
4gradients_1/pi/conv2d_6/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_6/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Й
>gradients_1/pi/conv2d_6/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
З
*gradients_1/pi/conv2d_5/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_6/Conv2D_grad/tuple/control_dependencypi/conv2d_5/Relu*
T0*&
_output_shapes
:
Ї
0gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_5/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_5/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_5/Relu_grad/ReluGrad*&
_output_shapes
:

?gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGrad
­
*gradients_1/pi/conv2d_5/Conv2D_grad/ShapeNShapeNpi/conv2d_4/Relu!pi/conv2d_5/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_5/Conv2D_grad/ShapeN!pi/conv2d_5/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
ю
8gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_4/Relu,gradients_1/pi/conv2d_5/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
Б
4gradients_1/pi/conv2d_5/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_5/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput
Й
>gradients_1/pi/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
З
*gradients_1/pi/conv2d_4/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_5/Conv2D_grad/tuple/control_dependencypi/conv2d_4/Relu*
T0*&
_output_shapes
:
Ї
0gradients_1/pi/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_4/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_4/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_4/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_4/Relu_grad/ReluGrad*&
_output_shapes
:

?gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_4/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
­
*gradients_1/pi/conv2d_4/Conv2D_grad/ShapeNShapeNpi/conv2d_3/Relu!pi/conv2d_4/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_4/Conv2D_grad/ShapeN!pi/conv2d_4/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ю
8gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_3/Relu,gradients_1/pi/conv2d_4/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Б
4gradients_1/pi/conv2d_4/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Й
>gradients_1/pi/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
З
*gradients_1/pi/conv2d_3/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_4/Conv2D_grad/tuple/control_dependencypi/conv2d_3/Relu*
T0*&
_output_shapes
:
Ї
0gradients_1/pi/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_3/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_3/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_3/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_3/Relu_grad/ReluGrad

?gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_3/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
­
*gradients_1/pi/conv2d_3/Conv2D_grad/ShapeNShapeNpi/conv2d_2/Relu!pi/conv2d_3/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_3/Conv2D_grad/ShapeN!pi/conv2d_3/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
ю
8gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_2/Relu,gradients_1/pi/conv2d_3/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Б
4gradients_1/pi/conv2d_3/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_3/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Й
>gradients_1/pi/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
З
*gradients_1/pi/conv2d_2/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_3/Conv2D_grad/tuple/control_dependencypi/conv2d_2/Relu*
T0*&
_output_shapes
:
Ї
0gradients_1/pi/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_2/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_2/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_2/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_2/Relu_grad/ReluGrad*&
_output_shapes
:

?gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_2/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_2/BiasAdd_grad/BiasAddGrad
­
*gradients_1/pi/conv2d_2/Conv2D_grad/ShapeNShapeNpi/conv2d_1/Relu!pi/conv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_2/Conv2D_grad/ShapeN!pi/conv2d_2/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations

ю
8gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_1/Relu,gradients_1/pi/conv2d_2/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Б
4gradients_1/pi/conv2d_2/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Й
>gradients_1/pi/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_2/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter
З
*gradients_1/pi/conv2d_1/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_2/Conv2D_grad/tuple/control_dependencypi/conv2d_1/Relu*&
_output_shapes
:*
T0
Ї
0gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_1/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_1/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_1/Relu_grad/ReluGrad*&
_output_shapes
:

?gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
*gradients_1/pi/conv2d_1/Conv2D_grad/ShapeNShapeNpi/conv2d/Relu!pi/conv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_1/Conv2D_grad/ShapeN!pi/conv2d_1/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ь
8gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d/Relu,gradients_1/pi/conv2d_1/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
Б
4gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Й
>gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Г
(gradients_1/pi/conv2d/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependencypi/conv2d/Relu*
T0*&
_output_shapes
:
Ѓ
.gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/pi/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients_1/pi/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGrad)^gradients_1/pi/conv2d/Relu_grad/ReluGrad

;gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/pi/conv2d/Relu_grad/ReluGrad4^gradients_1/pi/conv2d/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/pi/conv2d/Relu_grad/ReluGrad*&
_output_shapes
:

=gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGrad4^gradients_1/pi/conv2d/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Є
(gradients_1/pi/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderpi/conv2d/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ѓ
5gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients_1/pi/conv2d/Conv2D_grad/ShapeNpi/conv2d/Conv2D/ReadVariableOp;gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
у
6gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder*gradients_1/pi/conv2d/Conv2D_grad/ShapeN:1;gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Ћ
2gradients_1/pi/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput
­
:gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients_1/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
Б
<gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients_1/pi/conv2d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*I
_class?
=;loc:@gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter
c
Reshape_80/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_80Reshape<gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Reshape_80/shape*
T0*
Tshape0*
_output_shapes
:0
c
Reshape_81/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_81Reshape=gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Reshape_81/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_82/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_82Reshape>gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Reshape_82/shape*
_output_shapes	
:	*
T0*
Tshape0
c
Reshape_83/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_83Reshape?gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Reshape_83/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_84/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_84Reshape>gradients_1/pi/conv2d_2/Conv2D_grad/tuple/control_dependency_1Reshape_84/shape*
T0*
Tshape0*
_output_shapes	
:№+
c
Reshape_85/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_85Reshape?gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Reshape_85/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_86/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_86Reshape>gradients_1/pi/conv2d_3/Conv2D_grad/tuple/control_dependency_1Reshape_86/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
c
Reshape_87/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_87Reshape?gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Reshape_87/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_88/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_88Reshape>gradients_1/pi/conv2d_4/Conv2D_grad/tuple/control_dependency_1Reshape_88/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
c
Reshape_89/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_89Reshape?gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Reshape_89/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_90/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_90Reshape>gradients_1/pi/conv2d_5/Conv2D_grad/tuple/control_dependency_1Reshape_90/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
c
Reshape_91/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_91Reshape?gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Reshape_91/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_92/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_92Reshape>gradients_1/pi/conv2d_6/Conv2D_grad/tuple/control_dependency_1Reshape_92/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
c
Reshape_93/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_93Reshape?gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Reshape_93/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_94/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_94Reshape>gradients_1/pi/conv2d_7/Conv2D_grad/tuple/control_dependency_1Reshape_94/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
c
Reshape_95/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_95Reshape?gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Reshape_95/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_96/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_96Reshape<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_96/shape*
T0*
Tshape0*
_output_shapes	
:4
c
Reshape_97/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_97Reshape=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_97/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_98/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ


Reshape_98Reshape<gradients_1/v/dense_3/MatMul_grad/tuple/control_dependency_1Reshape_98/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_99/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_99Reshape=gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependency_1Reshape_99/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Я
concat_2ConcatV2
Reshape_80
Reshape_81
Reshape_82
Reshape_83
Reshape_84
Reshape_85
Reshape_86
Reshape_87
Reshape_88
Reshape_89
Reshape_90
Reshape_91
Reshape_92
Reshape_93
Reshape_94
Reshape_95
Reshape_96
Reshape_97
Reshape_98
Reshape_99concat_2/axis*

Tidx0*
T0*
N*
_output_shapes

:Ем
v
EagerPyFunc_2EagerPyFuncconcat_2*
_output_shapes

:Ем*
Tin
2*
Tout
2*
token
pyfunc_2
 
Const_9Const*e
value\BZ"P0           №     Ф     Ф     Ф     Ф     Ф                 *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
§
split_2SplitVEagerPyFunc_2Const_9split_2/split_dim*
T0*
_output_shapes
:0::	::№+::Ф/::Ф/::Ф/::Ф/::Ф/::4:::*
	num_split*

Tlen0
j
Reshape_100/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
q
Reshape_100Reshapesplit_2Reshape_100/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_101/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_101Reshape	split_2:1Reshape_101/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_102/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
s
Reshape_102Reshape	split_2:2Reshape_102/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_103/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_103Reshape	split_2:3Reshape_103/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_104/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
s
Reshape_104Reshape	split_2:4Reshape_104/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_105/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_105Reshape	split_2:5Reshape_105/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_106/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_106Reshape	split_2:6Reshape_106/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_107/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_107Reshape	split_2:7Reshape_107/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_108/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
s
Reshape_108Reshape	split_2:8Reshape_108/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_109/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_109Reshape	split_2:9Reshape_109/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_110/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_110Reshape
split_2:10Reshape_110/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_111/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_111Reshape
split_2:11Reshape_111/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_112/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_112Reshape
split_2:12Reshape_112/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_113/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_113Reshape
split_2:13Reshape_113/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_114/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_114Reshape
split_2:14Reshape_114/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_115/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_115Reshape
split_2:15Reshape_115/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_116/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_116Reshape
split_2:16Reshape_116/shape*
_output_shapes
:	*
T0*
Tshape0
\
Reshape_117/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_117Reshape
split_2:17Reshape_117/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_118/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_118Reshape
split_2:18Reshape_118/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_119/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_119Reshape
split_2:19Reshape_119/shape*
T0*
Tshape0*
_output_shapes
:

'beta1_power_1/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias*
valueB
 *fff?
Ђ
beta1_power_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_namebeta1_power_1*!
_class
loc:@pi/conv2d/bias*
	container *
shape: 

.beta1_power_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power_1*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 

beta1_power_1/AssignAssignVariableOpbeta1_power_1'beta1_power_1/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0

!beta1_power_1/Read/ReadVariableOpReadVariableOpbeta1_power_1*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 

'beta2_power_1/Initializer/initial_valueConst*!
_class
loc:@pi/conv2d/bias*
valueB
 *wО?*
dtype0*
_output_shapes
: 
Ђ
beta2_power_1VarHandleOp*
shared_namebeta2_power_1*!
_class
loc:@pi/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 

.beta2_power_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power_1*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 

beta2_power_1/AssignAssignVariableOpbeta2_power_1'beta2_power_1/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0

!beta2_power_1/Read/ReadVariableOpReadVariableOpbeta2_power_1*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
Г
)pi/conv2d/kernel/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Ш
pi/conv2d/kernel/Adam_2VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_2*#
_class
loc:@pi/conv2d/kernel*
	container 
Є
8pi/conv2d/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam_2*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
Ј
pi/conv2d/kernel/Adam_2/AssignAssignVariableOppi/conv2d/kernel/Adam_2)pi/conv2d/kernel/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d/kernel*
dtype0
А
+pi/conv2d/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_2*
dtype0*&
_output_shapes
:*#
_class
loc:@pi/conv2d/kernel
Г
)pi/conv2d/kernel/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Ш
pi/conv2d/kernel/Adam_3VarHandleOp*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_3
Є
8pi/conv2d/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam_3*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
Ј
pi/conv2d/kernel/Adam_3/AssignAssignVariableOppi/conv2d/kernel/Adam_3)pi/conv2d/kernel/Adam_3/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d/kernel
А
+pi/conv2d/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_3*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:

'pi/conv2d/bias/Adam_2/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Ж
pi/conv2d/bias/Adam_2VarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_2*!
_class
loc:@pi/conv2d/bias*
	container 

6pi/conv2d/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_2*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
 
pi/conv2d/bias/Adam_2/AssignAssignVariableOppi/conv2d/bias/Adam_2'pi/conv2d/bias/Adam_2/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0

)pi/conv2d/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_2*
dtype0*
_output_shapes
:*!
_class
loc:@pi/conv2d/bias

'pi/conv2d/bias/Adam_3/Initializer/zerosConst*
dtype0*
_output_shapes
:*!
_class
loc:@pi/conv2d/bias*
valueB*    
Ж
pi/conv2d/bias/Adam_3VarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_3*!
_class
loc:@pi/conv2d/bias*
	container 

6pi/conv2d/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_3*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
 
pi/conv2d/bias/Adam_3/AssignAssignVariableOppi/conv2d/bias/Adam_3'pi/conv2d/bias/Adam_3/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0

)pi/conv2d/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_3*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
Л
;pi/conv2d_1/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_1/kernel/Adam_2/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_1/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_1/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_1/kernel/Adam_2/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_1/kernel/Adam_2VarHandleOp**
shared_namepi/conv2d_1/kernel/Adam_2*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
Њ
:pi/conv2d_1/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_2*%
_class
loc:@pi/conv2d_1/kernel*
_output_shapes
: 
А
 pi/conv2d_1/kernel/Adam_2/AssignAssignVariableOppi/conv2d_1/kernel/Adam_2+pi/conv2d_1/kernel/Adam_2/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_1/kernel
Ж
-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_2*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_1/kernel
Л
;pi/conv2d_1/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_1/kernel/Adam_3/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    

+pi/conv2d_1/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_1/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_1/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_1/kernel/Adam_3VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_1/kernel/Adam_3*%
_class
loc:@pi/conv2d_1/kernel
Њ
:pi/conv2d_1/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_3*%
_class
loc:@pi/conv2d_1/kernel*
_output_shapes
: 
А
 pi/conv2d_1/kernel/Adam_3/AssignAssignVariableOppi/conv2d_1/kernel/Adam_3+pi/conv2d_1/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
Ж
-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_3*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_1/kernel

)pi/conv2d_1/bias/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_1/bias/Adam_2VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_1/bias/Adam_2*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:
Є
8pi/conv2d_1/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_2*
_output_shapes
: *#
_class
loc:@pi/conv2d_1/bias
Ј
pi/conv2d_1/bias/Adam_2/AssignAssignVariableOppi/conv2d_1/bias/Adam_2)pi/conv2d_1/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
Є
+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_2*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias

)pi/conv2d_1/bias/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_1/bias/Adam_3VarHandleOp*(
shared_namepi/conv2d_1/bias/Adam_3*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Є
8pi/conv2d_1/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_3*#
_class
loc:@pi/conv2d_1/bias*
_output_shapes
: 
Ј
pi/conv2d_1/bias/Adam_3/AssignAssignVariableOppi/conv2d_1/bias/Adam_3)pi/conv2d_1/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
Є
+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_3*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias
Л
;pi/conv2d_2/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_2/kernel*%
valueB"            

1pi/conv2d_2/kernel/Adam_2/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_2/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_2/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_2/kernel/Adam_2/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_2/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_2/kernel/Adam_2VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_2/kernel/Adam_2*%
_class
loc:@pi/conv2d_2/kernel*
	container *
shape:
Њ
:pi/conv2d_2/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/kernel/Adam_2*%
_class
loc:@pi/conv2d_2/kernel*
_output_shapes
: 
А
 pi/conv2d_2/kernel/Adam_2/AssignAssignVariableOppi/conv2d_2/kernel/Adam_2+pi/conv2d_2/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_2/kernel*
dtype0
Ж
-pi/conv2d_2/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_2*%
_class
loc:@pi/conv2d_2/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_2/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_2/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_2/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_2/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_2/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_2/kernel/Adam_3/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_2/kernel*

index_type0
Ю
pi/conv2d_2/kernel/Adam_3VarHandleOp**
shared_namepi/conv2d_2/kernel/Adam_3*%
_class
loc:@pi/conv2d_2/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
Њ
:pi/conv2d_2/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/kernel/Adam_3*%
_class
loc:@pi/conv2d_2/kernel*
_output_shapes
: 
А
 pi/conv2d_2/kernel/Adam_3/AssignAssignVariableOppi/conv2d_2/kernel/Adam_3+pi/conv2d_2/kernel/Adam_3/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_2/kernel
Ж
-pi/conv2d_2/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_3*%
_class
loc:@pi/conv2d_2/kernel*
dtype0*&
_output_shapes
:

)pi/conv2d_2/bias/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d_2/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_2/bias/Adam_2VarHandleOp*(
shared_namepi/conv2d_2/bias/Adam_2*#
_class
loc:@pi/conv2d_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Є
8pi/conv2d_2/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias/Adam_2*#
_class
loc:@pi/conv2d_2/bias*
_output_shapes
: 
Ј
pi/conv2d_2/bias/Adam_2/AssignAssignVariableOppi/conv2d_2/bias/Adam_2)pi/conv2d_2/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_2/bias*
dtype0
Є
+pi/conv2d_2/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_2*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_2/bias

)pi/conv2d_2/bias/Adam_3/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_2/bias*
valueB*    
М
pi/conv2d_2/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_2/bias/Adam_3*#
_class
loc:@pi/conv2d_2/bias*
	container *
shape:
Є
8pi/conv2d_2/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias/Adam_3*#
_class
loc:@pi/conv2d_2/bias*
_output_shapes
: 
Ј
pi/conv2d_2/bias/Adam_3/AssignAssignVariableOppi/conv2d_2/bias/Adam_3)pi/conv2d_2/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_2/bias*
dtype0
Є
+pi/conv2d_2/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_3*#
_class
loc:@pi/conv2d_2/bias*
dtype0*
_output_shapes
:
Л
;pi/conv2d_3/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_3/kernel/Adam_2/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_3/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_3/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_3/kernel/Adam_2/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_3/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_3/kernel/Adam_2VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_3/kernel/Adam_2*%
_class
loc:@pi/conv2d_3/kernel*
	container *
shape:
Њ
:pi/conv2d_3/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/kernel/Adam_2*%
_class
loc:@pi/conv2d_3/kernel*
_output_shapes
: 
А
 pi/conv2d_3/kernel/Adam_2/AssignAssignVariableOppi/conv2d_3/kernel/Adam_2+pi/conv2d_3/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
Ж
-pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_2*%
_class
loc:@pi/conv2d_3/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_3/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_3/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_3/kernel/Adam_3/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_3/kernel*
valueB
 *    

+pi/conv2d_3/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_3/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_3/kernel/Adam_3/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_3/kernel*

index_type0
Ю
pi/conv2d_3/kernel/Adam_3VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_3/kernel/Adam_3*%
_class
loc:@pi/conv2d_3/kernel*
	container *
shape:
Њ
:pi/conv2d_3/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/kernel/Adam_3*%
_class
loc:@pi/conv2d_3/kernel*
_output_shapes
: 
А
 pi/conv2d_3/kernel/Adam_3/AssignAssignVariableOppi/conv2d_3/kernel/Adam_3+pi/conv2d_3/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
Ж
-pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_3*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_3/kernel

)pi/conv2d_3/bias/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_3/bias/Adam_2VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_3/bias/Adam_2*#
_class
loc:@pi/conv2d_3/bias*
	container *
shape:
Є
8pi/conv2d_3/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/bias/Adam_2*#
_class
loc:@pi/conv2d_3/bias*
_output_shapes
: 
Ј
pi/conv2d_3/bias/Adam_2/AssignAssignVariableOppi/conv2d_3/bias/Adam_2)pi/conv2d_3/bias/Adam_2/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_3/bias
Є
+pi/conv2d_3/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_2*#
_class
loc:@pi/conv2d_3/bias*
dtype0*
_output_shapes
:

)pi/conv2d_3/bias/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d_3/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_3/bias/Adam_3VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_3/bias/Adam_3*#
_class
loc:@pi/conv2d_3/bias*
	container 
Є
8pi/conv2d_3/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/bias/Adam_3*
_output_shapes
: *#
_class
loc:@pi/conv2d_3/bias
Ј
pi/conv2d_3/bias/Adam_3/AssignAssignVariableOppi/conv2d_3/bias/Adam_3)pi/conv2d_3/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_3/bias*
dtype0
Є
+pi/conv2d_3/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_3*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_3/bias
Л
;pi/conv2d_4/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_4/kernel*%
valueB"            

1pi/conv2d_4/kernel/Adam_2/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_4/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_4/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_4/kernel/Adam_2/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_4/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_4/kernel/Adam_2VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_4/kernel/Adam_2*%
_class
loc:@pi/conv2d_4/kernel*
	container *
shape:
Њ
:pi/conv2d_4/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/kernel/Adam_2*%
_class
loc:@pi/conv2d_4/kernel*
_output_shapes
: 
А
 pi/conv2d_4/kernel/Adam_2/AssignAssignVariableOppi/conv2d_4/kernel/Adam_2+pi/conv2d_4/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_4/kernel*
dtype0
Ж
-pi/conv2d_4/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam_2*%
_class
loc:@pi/conv2d_4/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_4/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_4/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_4/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_4/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_4/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_4/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_4/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_4/kernel/Adam_3VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_4/kernel/Adam_3*%
_class
loc:@pi/conv2d_4/kernel*
	container *
shape:
Њ
:pi/conv2d_4/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/kernel/Adam_3*%
_class
loc:@pi/conv2d_4/kernel*
_output_shapes
: 
А
 pi/conv2d_4/kernel/Adam_3/AssignAssignVariableOppi/conv2d_4/kernel/Adam_3+pi/conv2d_4/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_4/kernel*
dtype0
Ж
-pi/conv2d_4/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam_3*%
_class
loc:@pi/conv2d_4/kernel*
dtype0*&
_output_shapes
:

)pi/conv2d_4/bias/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_4/bias/Adam_2VarHandleOp*(
shared_namepi/conv2d_4/bias/Adam_2*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Є
8pi/conv2d_4/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/bias/Adam_2*#
_class
loc:@pi/conv2d_4/bias*
_output_shapes
: 
Ј
pi/conv2d_4/bias/Adam_2/AssignAssignVariableOppi/conv2d_4/bias/Adam_2)pi/conv2d_4/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_4/bias*
dtype0
Є
+pi/conv2d_4/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_2*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_4/bias

)pi/conv2d_4/bias/Adam_3/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_4/bias*
valueB*    
М
pi/conv2d_4/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_4/bias/Adam_3*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:
Є
8pi/conv2d_4/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/bias/Adam_3*#
_class
loc:@pi/conv2d_4/bias*
_output_shapes
: 
Ј
pi/conv2d_4/bias/Adam_3/AssignAssignVariableOppi/conv2d_4/bias/Adam_3)pi/conv2d_4/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_4/bias*
dtype0
Є
+pi/conv2d_4/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_3*#
_class
loc:@pi/conv2d_4/bias*
dtype0*
_output_shapes
:
Л
;pi/conv2d_5/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_5/kernel*%
valueB"            

1pi/conv2d_5/kernel/Adam_2/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_5/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_5/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_5/kernel/Adam_2/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_5/kernel*

index_type0
Ю
pi/conv2d_5/kernel/Adam_2VarHandleOp**
shared_namepi/conv2d_5/kernel/Adam_2*%
_class
loc:@pi/conv2d_5/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
Њ
:pi/conv2d_5/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel/Adam_2*
_output_shapes
: *%
_class
loc:@pi/conv2d_5/kernel
А
 pi/conv2d_5/kernel/Adam_2/AssignAssignVariableOppi/conv2d_5/kernel/Adam_2+pi/conv2d_5/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_5/kernel*
dtype0
Ж
-pi/conv2d_5/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_2*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_5/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_5/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_5/kernel/Adam_3/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_5/kernel*
valueB
 *    

+pi/conv2d_5/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_5/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_5/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_5/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_5/kernel/Adam_3VarHandleOp*%
_class
loc:@pi/conv2d_5/kernel*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_5/kernel/Adam_3
Њ
:pi/conv2d_5/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel/Adam_3*%
_class
loc:@pi/conv2d_5/kernel*
_output_shapes
: 
А
 pi/conv2d_5/kernel/Adam_3/AssignAssignVariableOppi/conv2d_5/kernel/Adam_3+pi/conv2d_5/kernel/Adam_3/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_5/kernel
Ж
-pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_3*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*&
_output_shapes
:

)pi/conv2d_5/bias/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d_5/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_5/bias/Adam_2VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_5/bias/Adam_2*#
_class
loc:@pi/conv2d_5/bias*
	container 
Є
8pi/conv2d_5/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam_2*#
_class
loc:@pi/conv2d_5/bias*
_output_shapes
: 
Ј
pi/conv2d_5/bias/Adam_2/AssignAssignVariableOppi/conv2d_5/bias/Adam_2)pi/conv2d_5/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_5/bias*
dtype0
Є
+pi/conv2d_5/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_2*#
_class
loc:@pi/conv2d_5/bias*
dtype0*
_output_shapes
:

)pi/conv2d_5/bias/Adam_3/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_5/bias*
valueB*    
М
pi/conv2d_5/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_5/bias/Adam_3*#
_class
loc:@pi/conv2d_5/bias*
	container *
shape:
Є
8pi/conv2d_5/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam_3*
_output_shapes
: *#
_class
loc:@pi/conv2d_5/bias
Ј
pi/conv2d_5/bias/Adam_3/AssignAssignVariableOppi/conv2d_5/bias/Adam_3)pi/conv2d_5/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_5/bias*
dtype0
Є
+pi/conv2d_5/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_3*#
_class
loc:@pi/conv2d_5/bias*
dtype0*
_output_shapes
:
Л
;pi/conv2d_6/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_6/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_6/kernel/Adam_2/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_6/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_6/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_6/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_6/kernel/Adam_2/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_6/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_6/kernel/Adam_2VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_6/kernel/Adam_2*%
_class
loc:@pi/conv2d_6/kernel
Њ
:pi/conv2d_6/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/kernel/Adam_2*
_output_shapes
: *%
_class
loc:@pi/conv2d_6/kernel
А
 pi/conv2d_6/kernel/Adam_2/AssignAssignVariableOppi/conv2d_6/kernel/Adam_2+pi/conv2d_6/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_6/kernel*
dtype0
Ж
-pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_2*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_6/kernel
Л
;pi/conv2d_6/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_6/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_6/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_6/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_6/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_6/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_6/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_6/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_6/kernel/Adam_3VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_6/kernel/Adam_3*%
_class
loc:@pi/conv2d_6/kernel*
	container *
shape:
Њ
:pi/conv2d_6/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/kernel/Adam_3*%
_class
loc:@pi/conv2d_6/kernel*
_output_shapes
: 
А
 pi/conv2d_6/kernel/Adam_3/AssignAssignVariableOppi/conv2d_6/kernel/Adam_3+pi/conv2d_6/kernel/Adam_3/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_6/kernel
Ж
-pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_3*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_6/kernel

)pi/conv2d_6/bias/Adam_2/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_6/bias*
valueB*    
М
pi/conv2d_6/bias/Adam_2VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_6/bias/Adam_2*#
_class
loc:@pi/conv2d_6/bias*
	container 
Є
8pi/conv2d_6/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias/Adam_2*#
_class
loc:@pi/conv2d_6/bias*
_output_shapes
: 
Ј
pi/conv2d_6/bias/Adam_2/AssignAssignVariableOppi/conv2d_6/bias/Adam_2)pi/conv2d_6/bias/Adam_2/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_6/bias
Є
+pi/conv2d_6/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_2*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_6/bias

)pi/conv2d_6/bias/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d_6/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_6/bias/Adam_3VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_6/bias/Adam_3*#
_class
loc:@pi/conv2d_6/bias
Є
8pi/conv2d_6/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias/Adam_3*
_output_shapes
: *#
_class
loc:@pi/conv2d_6/bias
Ј
pi/conv2d_6/bias/Adam_3/AssignAssignVariableOppi/conv2d_6/bias/Adam_3)pi/conv2d_6/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_6/bias*
dtype0
Є
+pi/conv2d_6/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_3*#
_class
loc:@pi/conv2d_6/bias*
dtype0*
_output_shapes
:
Л
;pi/conv2d_7/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_7/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_7/kernel/Adam_2/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_7/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_7/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_7/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_7/kernel/Adam_2/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_7/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_7/kernel/Adam_2VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_7/kernel/Adam_2*%
_class
loc:@pi/conv2d_7/kernel
Њ
:pi/conv2d_7/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/kernel/Adam_2*%
_class
loc:@pi/conv2d_7/kernel*
_output_shapes
: 
А
 pi/conv2d_7/kernel/Adam_2/AssignAssignVariableOppi/conv2d_7/kernel/Adam_2+pi/conv2d_7/kernel/Adam_2/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_7/kernel
Ж
-pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_2*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_7/kernel
Л
;pi/conv2d_7/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_7/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_7/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_7/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_7/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_7/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_7/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_7/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_7/kernel/Adam_3VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_7/kernel/Adam_3*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:
Њ
:pi/conv2d_7/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/kernel/Adam_3*%
_class
loc:@pi/conv2d_7/kernel*
_output_shapes
: 
А
 pi/conv2d_7/kernel/Adam_3/AssignAssignVariableOppi/conv2d_7/kernel/Adam_3+pi/conv2d_7/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_7/kernel*
dtype0
Ж
-pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_3*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_7/kernel

)pi/conv2d_7/bias/Adam_2/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_7/bias*
valueB*    
М
pi/conv2d_7/bias/Adam_2VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_7/bias/Adam_2*#
_class
loc:@pi/conv2d_7/bias
Є
8pi/conv2d_7/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias/Adam_2*#
_class
loc:@pi/conv2d_7/bias*
_output_shapes
: 
Ј
pi/conv2d_7/bias/Adam_2/AssignAssignVariableOppi/conv2d_7/bias/Adam_2)pi/conv2d_7/bias/Adam_2/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_7/bias
Є
+pi/conv2d_7/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_2*#
_class
loc:@pi/conv2d_7/bias*
dtype0*
_output_shapes
:

)pi/conv2d_7/bias/Adam_3/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_7/bias*
valueB*    
М
pi/conv2d_7/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_7/bias/Adam_3*#
_class
loc:@pi/conv2d_7/bias*
	container *
shape:
Є
8pi/conv2d_7/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias/Adam_3*
_output_shapes
: *#
_class
loc:@pi/conv2d_7/bias
Ј
pi/conv2d_7/bias/Adam_3/AssignAssignVariableOppi/conv2d_7/bias/Adam_3)pi/conv2d_7/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_7/bias*
dtype0
Є
+pi/conv2d_7/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_3*#
_class
loc:@pi/conv2d_7/bias*
dtype0*
_output_shapes
:
­
7v/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

-v/dense_2/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel*
valueB
 *    
ј
'v/dense_2/kernel/Adam/Initializer/zerosFill7v/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_2/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@v/dense_2/kernel*

index_type0*
_output_shapes
:	
Н
v/dense_2/kernel/AdamVarHandleOp*
	container *
shape:	*
dtype0*
_output_shapes
: *&
shared_namev/dense_2/kernel/Adam*#
_class
loc:@v/dense_2/kernel
 
6v/dense_2/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/kernel/Adam*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 
Ђ
v/dense_2/kernel/Adam/AssignAssignVariableOpv/dense_2/kernel/Adam'v/dense_2/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_2/kernel*
dtype0
Ѕ
)v/dense_2/kernel/Adam/Read/ReadVariableOpReadVariableOpv/dense_2/kernel/Adam*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
:	
Џ
9v/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_2/kernel*
valueB"      *
dtype0*
_output_shapes
:

/v/dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*#
_class
loc:@v/dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ў
)v/dense_2/kernel/Adam_1/Initializer/zerosFill9v/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@v/dense_2/kernel*

index_type0*
_output_shapes
:	
С
v/dense_2/kernel/Adam_1VarHandleOp*#
_class
loc:@v/dense_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: *(
shared_namev/dense_2/kernel/Adam_1
Є
8v/dense_2/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/kernel/Adam_1*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 
Ј
v/dense_2/kernel/Adam_1/AssignAssignVariableOpv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*#
_class
loc:@v/dense_2/kernel*
dtype0
Љ
+v/dense_2/kernel/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:	*#
_class
loc:@v/dense_2/kernel

%v/dense_2/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0*
_output_shapes	
:
Г
v/dense_2/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namev/dense_2/bias/Adam*!
_class
loc:@v/dense_2/bias*
	container *
shape:

4v/dense_2/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/bias/Adam*!
_class
loc:@v/dense_2/bias*
_output_shapes
: 

v/dense_2/bias/Adam/AssignAssignVariableOpv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*
dtype0*!
_class
loc:@v/dense_2/bias

'v/dense_2/bias/Adam/Read/ReadVariableOpReadVariableOpv/dense_2/bias/Adam*!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes	
:

'v/dense_2/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0*
_output_shapes	
:
З
v/dense_2/bias/Adam_1VarHandleOp*!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namev/dense_2/bias/Adam_1

6v/dense_2/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/bias/Adam_1*!
_class
loc:@v/dense_2/bias*
_output_shapes
: 
 
v/dense_2/bias/Adam_1/AssignAssignVariableOpv/dense_2/bias/Adam_1'v/dense_2/bias/Adam_1/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
dtype0

)v/dense_2/bias/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_2/bias/Adam_1*!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes	
:
Ѓ
'v/dense_3/kernel/Adam/Initializer/zerosConst*#
_class
loc:@v/dense_3/kernel*
valueB	*    *
dtype0*
_output_shapes
:	
Н
v/dense_3/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namev/dense_3/kernel/Adam*#
_class
loc:@v/dense_3/kernel*
	container *
shape:	
 
6v/dense_3/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/kernel/Adam*#
_class
loc:@v/dense_3/kernel*
_output_shapes
: 
Ђ
v/dense_3/kernel/Adam/AssignAssignVariableOpv/dense_3/kernel/Adam'v/dense_3/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_3/kernel*
dtype0
Ѕ
)v/dense_3/kernel/Adam/Read/ReadVariableOpReadVariableOpv/dense_3/kernel/Adam*#
_class
loc:@v/dense_3/kernel*
dtype0*
_output_shapes
:	
Ѕ
)v/dense_3/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:	*#
_class
loc:@v/dense_3/kernel*
valueB	*    
С
v/dense_3/kernel/Adam_1VarHandleOp*(
shared_namev/dense_3/kernel/Adam_1*#
_class
loc:@v/dense_3/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
Є
8v/dense_3/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/kernel/Adam_1*#
_class
loc:@v/dense_3/kernel*
_output_shapes
: 
Ј
v/dense_3/kernel/Adam_1/AssignAssignVariableOpv/dense_3/kernel/Adam_1)v/dense_3/kernel/Adam_1/Initializer/zeros*
dtype0*#
_class
loc:@v/dense_3/kernel
Љ
+v/dense_3/kernel/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:	*#
_class
loc:@v/dense_3/kernel

%v/dense_3/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:
В
v/dense_3/bias/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *$
shared_namev/dense_3/bias/Adam*!
_class
loc:@v/dense_3/bias

4v/dense_3/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/bias/Adam*!
_class
loc:@v/dense_3/bias*
_output_shapes
: 

v/dense_3/bias/Adam/AssignAssignVariableOpv/dense_3/bias/Adam%v/dense_3/bias/Adam/Initializer/zeros*!
_class
loc:@v/dense_3/bias*
dtype0

'v/dense_3/bias/Adam/Read/ReadVariableOpReadVariableOpv/dense_3/bias/Adam*
dtype0*
_output_shapes
:*!
_class
loc:@v/dense_3/bias

'v/dense_3/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:
Ж
v/dense_3/bias/Adam_1VarHandleOp*&
shared_namev/dense_3/bias/Adam_1*!
_class
loc:@v/dense_3/bias*
	container *
shape:*
dtype0*
_output_shapes
: 

6v/dense_3/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/bias/Adam_1*!
_class
loc:@v/dense_3/bias*
_output_shapes
: 
 
v/dense_3/bias/Adam_1/AssignAssignVariableOpv/dense_3/bias/Adam_1'v/dense_3/bias/Adam_1/Initializer/zeros*
dtype0*!
_class
loc:@v/dense_3/bias

)v/dense_3/bias/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_3/bias/Adam_1*!
_class
loc:@v/dense_3/bias*
dtype0*
_output_shapes
:
Y
Adam_1/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
Q
Adam_1/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Q
Adam_1/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
S
Adam_1/epsilonConst*
valueB
 *wЬ+2*
dtype0*
_output_shapes
: 

?Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d/kernelpi/conv2d/kernel/Adam_2pi/conv2d/kernel/Adam_3?Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_100*
use_locking( *
T0*#
_class
loc:@pi/conv2d/kernel*
use_nesterov( 

=Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

?Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Ѓ
.Adam_1/update_pi/conv2d/bias/ResourceApplyAdamResourceApplyAdampi/conv2d/biaspi/conv2d/bias/Adam_2pi/conv2d/bias/Adam_3=Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_101*
use_locking( *
T0*!
_class
loc:@pi/conv2d/bias*
use_nesterov( 

AAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
П
2Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_1/kernelpi/conv2d_1/kernel/Adam_2pi/conv2d_1/kernel/Adam_3AAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_102*
use_locking( *
T0*%
_class
loc:@pi/conv2d_1/kernel*
use_nesterov( 

?Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_1/biaspi/conv2d_1/bias/Adam_2pi/conv2d_1/bias/Adam_3?Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_103*
T0*#
_class
loc:@pi/conv2d_1/bias*
use_nesterov( *
use_locking( 

AAdam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
П
2Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_2/kernelpi/conv2d_2/kernel/Adam_2pi/conv2d_2/kernel/Adam_3AAdam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_104*
use_locking( *
T0*%
_class
loc:@pi/conv2d_2/kernel*
use_nesterov( 

?Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_2/biaspi/conv2d_2/bias/Adam_2pi/conv2d_2/bias/Adam_3?Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_105*
use_locking( *
T0*#
_class
loc:@pi/conv2d_2/bias*
use_nesterov( 

AAdam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
П
2Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_3/kernelpi/conv2d_3/kernel/Adam_2pi/conv2d_3/kernel/Adam_3AAdam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_106*
use_nesterov( *
use_locking( *
T0*%
_class
loc:@pi/conv2d_3/kernel

?Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_3/biaspi/conv2d_3/bias/Adam_2pi/conv2d_3/bias/Adam_3?Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_107*
use_locking( *
T0*#
_class
loc:@pi/conv2d_3/bias*
use_nesterov( 

AAdam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
П
2Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_4/kernelpi/conv2d_4/kernel/Adam_2pi/conv2d_4/kernel/Adam_3AAdam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_108*
use_locking( *
T0*%
_class
loc:@pi/conv2d_4/kernel*
use_nesterov( 

?Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_4/biaspi/conv2d_4/bias/Adam_2pi/conv2d_4/bias/Adam_3?Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_109*
T0*#
_class
loc:@pi/conv2d_4/bias*
use_nesterov( *
use_locking( 

AAdam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
П
2Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_5/kernelpi/conv2d_5/kernel/Adam_2pi/conv2d_5/kernel/Adam_3AAdam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_110*
T0*%
_class
loc:@pi/conv2d_5/kernel*
use_nesterov( *
use_locking( 

?Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_5/biaspi/conv2d_5/bias/Adam_2pi/conv2d_5/bias/Adam_3?Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_111*
T0*#
_class
loc:@pi/conv2d_5/bias*
use_nesterov( *
use_locking( 

AAdam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
П
2Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_6/kernelpi/conv2d_6/kernel/Adam_2pi/conv2d_6/kernel/Adam_3AAdam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_112*
use_nesterov( *
use_locking( *
T0*%
_class
loc:@pi/conv2d_6/kernel

?Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_6/biaspi/conv2d_6/bias/Adam_2pi/conv2d_6/bias/Adam_3?Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_113*
T0*#
_class
loc:@pi/conv2d_6/bias*
use_nesterov( *
use_locking( 

AAdam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
П
2Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_7/kernelpi/conv2d_7/kernel/Adam_2pi/conv2d_7/kernel/Adam_3AAdam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_114*
use_locking( *
T0*%
_class
loc:@pi/conv2d_7/kernel*
use_nesterov( 

?Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Б
0Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_7/biaspi/conv2d_7/bias/Adam_2pi/conv2d_7/bias/Adam_3?Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_115*
use_locking( *
T0*#
_class
loc:@pi/conv2d_7/bias*
use_nesterov( 

?Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_v/dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Џ
0Adam_1/update_v/dense_2/kernel/ResourceApplyAdamResourceApplyAdamv/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1?Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/ReadVariableOpAAdam_1/update_v/dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_116*
use_locking( *
T0*#
_class
loc:@v/dense_2/kernel*
use_nesterov( 

=Adam_1/update_v/dense_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

?Adam_1/update_v/dense_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Ё
.Adam_1/update_v/dense_2/bias/ResourceApplyAdamResourceApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1=Adam_1/update_v/dense_2/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_v/dense_2/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_117*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@v/dense_2/bias

?Adam_1/update_v/dense_3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

AAdam_1/update_v/dense_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Џ
0Adam_1/update_v/dense_3/kernel/ResourceApplyAdamResourceApplyAdamv/dense_3/kernelv/dense_3/kernel/Adamv/dense_3/kernel/Adam_1?Adam_1/update_v/dense_3/kernel/ResourceApplyAdam/ReadVariableOpAAdam_1/update_v/dense_3/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_118*
use_locking( *
T0*#
_class
loc:@v/dense_3/kernel*
use_nesterov( 

=Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

?Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Ё
.Adam_1/update_v/dense_3/bias/ResourceApplyAdamResourceApplyAdamv/dense_3/biasv/dense_3/bias/Adamv/dense_3/bias/Adam_1=Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_119*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@v/dense_3/bias
п
Adam_1/ReadVariableOpReadVariableOpbeta1_power_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_2/bias/ResourceApplyAdam1^Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_3/bias/ResourceApplyAdam1^Adam_1/update_v/dense_3/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
z

Adam_1/mulMulAdam_1/ReadVariableOpAdam_1/beta1*
T0*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
v
Adam_1/AssignVariableOpAssignVariableOpbeta1_power_1
Adam_1/mul*!
_class
loc:@pi/conv2d/bias*
dtype0
	
Adam_1/ReadVariableOp_1ReadVariableOpbeta1_power_1^Adam_1/AssignVariableOp/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_2/bias/ResourceApplyAdam1^Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_3/bias/ResourceApplyAdam1^Adam_1/update_v/dense_3/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
с
Adam_1/ReadVariableOp_2ReadVariableOpbeta2_power_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_2/bias/ResourceApplyAdam1^Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_3/bias/ResourceApplyAdam1^Adam_1/update_v/dense_3/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
~
Adam_1/mul_1MulAdam_1/ReadVariableOp_2Adam_1/beta2*
T0*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
z
Adam_1/AssignVariableOp_1AssignVariableOpbeta2_power_1Adam_1/mul_1*!
_class
loc:@pi/conv2d/bias*
dtype0
 	
Adam_1/ReadVariableOp_3ReadVariableOpbeta2_power_1^Adam_1/AssignVariableOp_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_2/bias/ResourceApplyAdam1^Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_3/bias/ResourceApplyAdam1^Adam_1/update_v/dense_3/kernel/ResourceApplyAdam*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
Ц
Adam_1NoOp^Adam_1/ReadVariableOp_1^Adam_1/ReadVariableOp_3/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_2/bias/ResourceApplyAdam1^Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_3/bias/ResourceApplyAdam1^Adam_1/update_v/dense_3/kernel/ResourceApplyAdam
|
Reshape_120/ReadVariableOpReadVariableOppi/conv2d/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_120/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_120ReshapeReshape_120/ReadVariableOpReshape_120/shape*
T0*
Tshape0*
_output_shapes
:0
n
Reshape_121/ReadVariableOpReadVariableOppi/conv2d/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_121/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_121ReshapeReshape_121/ReadVariableOpReshape_121/shape*
T0*
Tshape0*
_output_shapes
:
~
Reshape_122/ReadVariableOpReadVariableOppi/conv2d_1/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_122/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_122ReshapeReshape_122/ReadVariableOpReshape_122/shape*
T0*
Tshape0*
_output_shapes	
:	
p
Reshape_123/ReadVariableOpReadVariableOppi/conv2d_1/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_123/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_123ReshapeReshape_123/ReadVariableOpReshape_123/shape*
T0*
Tshape0*
_output_shapes
:
~
Reshape_124/ReadVariableOpReadVariableOppi/conv2d_2/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_124/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_124ReshapeReshape_124/ReadVariableOpReshape_124/shape*
_output_shapes	
:№+*
T0*
Tshape0
p
Reshape_125/ReadVariableOpReadVariableOppi/conv2d_2/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_125/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_125ReshapeReshape_125/ReadVariableOpReshape_125/shape*
T0*
Tshape0*
_output_shapes
:
~
Reshape_126/ReadVariableOpReadVariableOppi/conv2d_3/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_126/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_126ReshapeReshape_126/ReadVariableOpReshape_126/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
p
Reshape_127/ReadVariableOpReadVariableOppi/conv2d_3/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_127/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_127ReshapeReshape_127/ReadVariableOpReshape_127/shape*
T0*
Tshape0*
_output_shapes
:
~
Reshape_128/ReadVariableOpReadVariableOppi/conv2d_4/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_128/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_128ReshapeReshape_128/ReadVariableOpReshape_128/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
p
Reshape_129/ReadVariableOpReadVariableOppi/conv2d_4/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_129/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_129ReshapeReshape_129/ReadVariableOpReshape_129/shape*
T0*
Tshape0*
_output_shapes
:
~
Reshape_130/ReadVariableOpReadVariableOppi/conv2d_5/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_130/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_130ReshapeReshape_130/ReadVariableOpReshape_130/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
p
Reshape_131/ReadVariableOpReadVariableOppi/conv2d_5/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_131/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_131ReshapeReshape_131/ReadVariableOpReshape_131/shape*
_output_shapes
:*
T0*
Tshape0
~
Reshape_132/ReadVariableOpReadVariableOppi/conv2d_6/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_132/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_132ReshapeReshape_132/ReadVariableOpReshape_132/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
p
Reshape_133/ReadVariableOpReadVariableOppi/conv2d_6/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_133/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_133ReshapeReshape_133/ReadVariableOpReshape_133/shape*
T0*
Tshape0*
_output_shapes
:
~
Reshape_134/ReadVariableOpReadVariableOppi/conv2d_7/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_134/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_134ReshapeReshape_134/ReadVariableOpReshape_134/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
p
Reshape_135/ReadVariableOpReadVariableOppi/conv2d_7/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_135/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_135ReshapeReshape_135/ReadVariableOpReshape_135/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_136/ReadVariableOpReadVariableOpv/dense_2/kernel^Adam_1*
dtype0*
_output_shapes
:	
m
Reshape_136/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_136ReshapeReshape_136/ReadVariableOpReshape_136/shape*
_output_shapes	
:4*
T0*
Tshape0
o
Reshape_137/ReadVariableOpReadVariableOpv/dense_2/bias^Adam_1*
dtype0*
_output_shapes	
:
m
Reshape_137/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_137ReshapeReshape_137/ReadVariableOpReshape_137/shape*
_output_shapes	
:*
T0*
Tshape0
u
Reshape_138/ReadVariableOpReadVariableOpv/dense_3/kernel^Adam_1*
dtype0*
_output_shapes
:	
m
Reshape_138/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_138ReshapeReshape_138/ReadVariableOpReshape_138/shape*
T0*
Tshape0*
_output_shapes	
:
n
Reshape_139/ReadVariableOpReadVariableOpv/dense_3/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_139/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_139ReshapeReshape_139/ReadVariableOpReshape_139/shape*
T0*
Tshape0*
_output_shapes
:
X
concat_3/axisConst^Adam_1*
value	B : *
dtype0*
_output_shapes
: 
у
concat_3ConcatV2Reshape_120Reshape_121Reshape_122Reshape_123Reshape_124Reshape_125Reshape_126Reshape_127Reshape_128Reshape_129Reshape_130Reshape_131Reshape_132Reshape_133Reshape_134Reshape_135Reshape_136Reshape_137Reshape_138Reshape_139concat_3/axis*
N*
_output_shapes

:Ем*

Tidx0*
T0
r
EagerPyFunc_3EagerPyFuncconcat_3*
_output_shapes
:*
Tin
2*
Tout
2*
token
pyfunc_3
Њ
Const_10Const^Adam_1*e
value\BZ"P0           №     Ф     Ф     Ф     Ф     Ф                 *
dtype0*
_output_shapes
:
\
split_3/split_dimConst^Adam_1*
value	B : *
dtype0*
_output_shapes
: 
Щ
split_3SplitVEagerPyFunc_3Const_10split_3/split_dim*
T0*d
_output_shapesR
P::::::::::::::::::::*
	num_split*

Tlen0
s
Reshape_140/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
q
Reshape_140Reshapesplit_3Reshape_140/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_141/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
g
Reshape_141Reshape	split_3:1Reshape_141/shape*
_output_shapes
:*
T0*
Tshape0
s
Reshape_142/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_142Reshape	split_3:2Reshape_142/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_143/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_143Reshape	split_3:3Reshape_143/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_144/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_144Reshape	split_3:4Reshape_144/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_145/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
g
Reshape_145Reshape	split_3:5Reshape_145/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_146/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_146Reshape	split_3:6Reshape_146/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_147/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_147Reshape	split_3:7Reshape_147/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_148/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_148Reshape	split_3:8Reshape_148/shape*&
_output_shapes
:*
T0*
Tshape0
d
Reshape_149/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_149Reshape	split_3:9Reshape_149/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_150/shapeConst^Adam_1*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_150Reshape
split_3:10Reshape_150/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_151/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_151Reshape
split_3:11Reshape_151/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_152/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_152Reshape
split_3:12Reshape_152/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_153/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_153Reshape
split_3:13Reshape_153/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_154/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_154Reshape
split_3:14Reshape_154/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_155/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_155Reshape
split_3:15Reshape_155/shape*
_output_shapes
:*
T0*
Tshape0
k
Reshape_156/shapeConst^Adam_1*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_156Reshape
split_3:16Reshape_156/shape*
_output_shapes
:	*
T0*
Tshape0
e
Reshape_157/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_157Reshape
split_3:17Reshape_157/shape*
T0*
Tshape0*
_output_shapes	
:
k
Reshape_158/shapeConst^Adam_1*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_158Reshape
split_3:18Reshape_158/shape*
_output_shapes
:	*
T0*
Tshape0
d
Reshape_159/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_159Reshape
split_3:19Reshape_159/shape*
T0*
Tshape0*
_output_shapes
:
S
AssignVariableOp_20AssignVariableOppi/conv2d/kernelReshape_140*
dtype0

ReadVariableOp_20ReadVariableOppi/conv2d/kernel^Adam_1^AssignVariableOp_20*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_21AssignVariableOppi/conv2d/biasReshape_141*
dtype0
{
ReadVariableOp_21ReadVariableOppi/conv2d/bias^Adam_1^AssignVariableOp_21*
dtype0*
_output_shapes
:
U
AssignVariableOp_22AssignVariableOppi/conv2d_1/kernelReshape_142*
dtype0

ReadVariableOp_22ReadVariableOppi/conv2d_1/kernel^Adam_1^AssignVariableOp_22*
dtype0*&
_output_shapes
:
S
AssignVariableOp_23AssignVariableOppi/conv2d_1/biasReshape_143*
dtype0
}
ReadVariableOp_23ReadVariableOppi/conv2d_1/bias^Adam_1^AssignVariableOp_23*
dtype0*
_output_shapes
:
U
AssignVariableOp_24AssignVariableOppi/conv2d_2/kernelReshape_144*
dtype0

ReadVariableOp_24ReadVariableOppi/conv2d_2/kernel^Adam_1^AssignVariableOp_24*
dtype0*&
_output_shapes
:
S
AssignVariableOp_25AssignVariableOppi/conv2d_2/biasReshape_145*
dtype0
}
ReadVariableOp_25ReadVariableOppi/conv2d_2/bias^Adam_1^AssignVariableOp_25*
dtype0*
_output_shapes
:
U
AssignVariableOp_26AssignVariableOppi/conv2d_3/kernelReshape_146*
dtype0

ReadVariableOp_26ReadVariableOppi/conv2d_3/kernel^Adam_1^AssignVariableOp_26*
dtype0*&
_output_shapes
:
S
AssignVariableOp_27AssignVariableOppi/conv2d_3/biasReshape_147*
dtype0
}
ReadVariableOp_27ReadVariableOppi/conv2d_3/bias^Adam_1^AssignVariableOp_27*
dtype0*
_output_shapes
:
U
AssignVariableOp_28AssignVariableOppi/conv2d_4/kernelReshape_148*
dtype0

ReadVariableOp_28ReadVariableOppi/conv2d_4/kernel^Adam_1^AssignVariableOp_28*
dtype0*&
_output_shapes
:
S
AssignVariableOp_29AssignVariableOppi/conv2d_4/biasReshape_149*
dtype0
}
ReadVariableOp_29ReadVariableOppi/conv2d_4/bias^Adam_1^AssignVariableOp_29*
dtype0*
_output_shapes
:
U
AssignVariableOp_30AssignVariableOppi/conv2d_5/kernelReshape_150*
dtype0

ReadVariableOp_30ReadVariableOppi/conv2d_5/kernel^Adam_1^AssignVariableOp_30*
dtype0*&
_output_shapes
:
S
AssignVariableOp_31AssignVariableOppi/conv2d_5/biasReshape_151*
dtype0
}
ReadVariableOp_31ReadVariableOppi/conv2d_5/bias^Adam_1^AssignVariableOp_31*
dtype0*
_output_shapes
:
U
AssignVariableOp_32AssignVariableOppi/conv2d_6/kernelReshape_152*
dtype0

ReadVariableOp_32ReadVariableOppi/conv2d_6/kernel^Adam_1^AssignVariableOp_32*
dtype0*&
_output_shapes
:
S
AssignVariableOp_33AssignVariableOppi/conv2d_6/biasReshape_153*
dtype0
}
ReadVariableOp_33ReadVariableOppi/conv2d_6/bias^Adam_1^AssignVariableOp_33*
dtype0*
_output_shapes
:
U
AssignVariableOp_34AssignVariableOppi/conv2d_7/kernelReshape_154*
dtype0

ReadVariableOp_34ReadVariableOppi/conv2d_7/kernel^Adam_1^AssignVariableOp_34*
dtype0*&
_output_shapes
:
S
AssignVariableOp_35AssignVariableOppi/conv2d_7/biasReshape_155*
dtype0
}
ReadVariableOp_35ReadVariableOppi/conv2d_7/bias^Adam_1^AssignVariableOp_35*
dtype0*
_output_shapes
:
S
AssignVariableOp_36AssignVariableOpv/dense_2/kernelReshape_156*
dtype0

ReadVariableOp_36ReadVariableOpv/dense_2/kernel^Adam_1^AssignVariableOp_36*
dtype0*
_output_shapes
:	
Q
AssignVariableOp_37AssignVariableOpv/dense_2/biasReshape_157*
dtype0
|
ReadVariableOp_37ReadVariableOpv/dense_2/bias^Adam_1^AssignVariableOp_37*
dtype0*
_output_shapes	
:
S
AssignVariableOp_38AssignVariableOpv/dense_3/kernelReshape_158*
dtype0

ReadVariableOp_38ReadVariableOpv/dense_3/kernel^Adam_1^AssignVariableOp_38*
dtype0*
_output_shapes
:	
Q
AssignVariableOp_39AssignVariableOpv/dense_3/biasReshape_159*
dtype0
{
ReadVariableOp_39ReadVariableOpv/dense_3/bias^Adam_1^AssignVariableOp_39*
dtype0*
_output_shapes
:
­
group_deps_2NoOp^Adam_1^ReadVariableOp_20^ReadVariableOp_21^ReadVariableOp_22^ReadVariableOp_23^ReadVariableOp_24^ReadVariableOp_25^ReadVariableOp_26^ReadVariableOp_27^ReadVariableOp_28^ReadVariableOp_29^ReadVariableOp_30^ReadVariableOp_31^ReadVariableOp_32^ReadVariableOp_33^ReadVariableOp_34^ReadVariableOp_35^ReadVariableOp_36^ReadVariableOp_37^ReadVariableOp_38^ReadVariableOp_39
,
group_deps_3NoOp^Adam_1^group_deps_2
Ш
Merge/MergeSummaryMergeSummarypi_loss/summaries/mean_1pi_loss/summaries/stddev_1pi_loss/summaries/max_1pi_loss/summaries/min_1pi_loss/summaries/histogram*
N*
_output_shapes
: 

initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta2_power/Assign^beta2_power_1/Assign^pi/conv2d/bias/Adam/Assign^pi/conv2d/bias/Adam_1/Assign^pi/conv2d/bias/Adam_2/Assign^pi/conv2d/bias/Adam_3/Assign^pi/conv2d/bias/Assign^pi/conv2d/kernel/Adam/Assign^pi/conv2d/kernel/Adam_1/Assign^pi/conv2d/kernel/Adam_2/Assign^pi/conv2d/kernel/Adam_3/Assign^pi/conv2d/kernel/Assign^pi/conv2d_1/bias/Adam/Assign^pi/conv2d_1/bias/Adam_1/Assign^pi/conv2d_1/bias/Adam_2/Assign^pi/conv2d_1/bias/Adam_3/Assign^pi/conv2d_1/bias/Assign^pi/conv2d_1/kernel/Adam/Assign!^pi/conv2d_1/kernel/Adam_1/Assign!^pi/conv2d_1/kernel/Adam_2/Assign!^pi/conv2d_1/kernel/Adam_3/Assign^pi/conv2d_1/kernel/Assign^pi/conv2d_2/bias/Adam/Assign^pi/conv2d_2/bias/Adam_1/Assign^pi/conv2d_2/bias/Adam_2/Assign^pi/conv2d_2/bias/Adam_3/Assign^pi/conv2d_2/bias/Assign^pi/conv2d_2/kernel/Adam/Assign!^pi/conv2d_2/kernel/Adam_1/Assign!^pi/conv2d_2/kernel/Adam_2/Assign!^pi/conv2d_2/kernel/Adam_3/Assign^pi/conv2d_2/kernel/Assign^pi/conv2d_3/bias/Adam/Assign^pi/conv2d_3/bias/Adam_1/Assign^pi/conv2d_3/bias/Adam_2/Assign^pi/conv2d_3/bias/Adam_3/Assign^pi/conv2d_3/bias/Assign^pi/conv2d_3/kernel/Adam/Assign!^pi/conv2d_3/kernel/Adam_1/Assign!^pi/conv2d_3/kernel/Adam_2/Assign!^pi/conv2d_3/kernel/Adam_3/Assign^pi/conv2d_3/kernel/Assign^pi/conv2d_4/bias/Adam/Assign^pi/conv2d_4/bias/Adam_1/Assign^pi/conv2d_4/bias/Adam_2/Assign^pi/conv2d_4/bias/Adam_3/Assign^pi/conv2d_4/bias/Assign^pi/conv2d_4/kernel/Adam/Assign!^pi/conv2d_4/kernel/Adam_1/Assign!^pi/conv2d_4/kernel/Adam_2/Assign!^pi/conv2d_4/kernel/Adam_3/Assign^pi/conv2d_4/kernel/Assign^pi/conv2d_5/bias/Adam/Assign^pi/conv2d_5/bias/Adam_1/Assign^pi/conv2d_5/bias/Adam_2/Assign^pi/conv2d_5/bias/Adam_3/Assign^pi/conv2d_5/bias/Assign^pi/conv2d_5/kernel/Adam/Assign!^pi/conv2d_5/kernel/Adam_1/Assign!^pi/conv2d_5/kernel/Adam_2/Assign!^pi/conv2d_5/kernel/Adam_3/Assign^pi/conv2d_5/kernel/Assign^pi/conv2d_6/bias/Adam/Assign^pi/conv2d_6/bias/Adam_1/Assign^pi/conv2d_6/bias/Adam_2/Assign^pi/conv2d_6/bias/Adam_3/Assign^pi/conv2d_6/bias/Assign^pi/conv2d_6/kernel/Adam/Assign!^pi/conv2d_6/kernel/Adam_1/Assign!^pi/conv2d_6/kernel/Adam_2/Assign!^pi/conv2d_6/kernel/Adam_3/Assign^pi/conv2d_6/kernel/Assign^pi/conv2d_7/bias/Adam/Assign^pi/conv2d_7/bias/Adam_1/Assign^pi/conv2d_7/bias/Adam_2/Assign^pi/conv2d_7/bias/Adam_3/Assign^pi/conv2d_7/bias/Assign^pi/conv2d_7/kernel/Adam/Assign!^pi/conv2d_7/kernel/Adam_1/Assign!^pi/conv2d_7/kernel/Adam_2/Assign!^pi/conv2d_7/kernel/Adam_3/Assign^pi/conv2d_7/kernel/Assign^pi/dense/bias/Adam/Assign^pi/dense/bias/Adam_1/Assign^pi/dense/bias/Assign^pi/dense/kernel/Adam/Assign^pi/dense/kernel/Adam_1/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Adam/Assign^pi/dense_1/bias/Adam_1/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Adam/Assign ^pi/dense_1/kernel/Adam_1/Assign^pi/dense_1/kernel/Assign^v/dense_2/bias/Adam/Assign^v/dense_2/bias/Adam_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/Adam/Assign^v/dense_2/kernel/Adam_1/Assign^v/dense_2/kernel/Assign^v/dense_3/bias/Adam/Assign^v/dense_3/bias/Adam_1/Assign^v/dense_3/bias/Assign^v/dense_3/kernel/Adam/Assign^v/dense_3/kernel/Adam_1/Assign^v/dense_3/kernel/Assign
s
Reshape_160/ReadVariableOpReadVariableOppi/conv2d/kernel*
dtype0*&
_output_shapes
:
d
Reshape_160/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_160ReshapeReshape_160/ReadVariableOpReshape_160/shape*
T0*
Tshape0*
_output_shapes
:0
e
Reshape_161/ReadVariableOpReadVariableOppi/conv2d/bias*
dtype0*
_output_shapes
:
d
Reshape_161/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_161ReshapeReshape_161/ReadVariableOpReshape_161/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_162/ReadVariableOpReadVariableOppi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
d
Reshape_162/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_162ReshapeReshape_162/ReadVariableOpReshape_162/shape*
_output_shapes	
:	*
T0*
Tshape0
g
Reshape_163/ReadVariableOpReadVariableOppi/conv2d_1/bias*
dtype0*
_output_shapes
:
d
Reshape_163/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_163ReshapeReshape_163/ReadVariableOpReshape_163/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_164/ReadVariableOpReadVariableOppi/conv2d_2/kernel*
dtype0*&
_output_shapes
:
d
Reshape_164/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_164ReshapeReshape_164/ReadVariableOpReshape_164/shape*
T0*
Tshape0*
_output_shapes	
:№+
g
Reshape_165/ReadVariableOpReadVariableOppi/conv2d_2/bias*
dtype0*
_output_shapes
:
d
Reshape_165/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_165ReshapeReshape_165/ReadVariableOpReshape_165/shape*
_output_shapes
:*
T0*
Tshape0
u
Reshape_166/ReadVariableOpReadVariableOppi/conv2d_3/kernel*
dtype0*&
_output_shapes
:
d
Reshape_166/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_166ReshapeReshape_166/ReadVariableOpReshape_166/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
g
Reshape_167/ReadVariableOpReadVariableOppi/conv2d_3/bias*
dtype0*
_output_shapes
:
d
Reshape_167/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_167ReshapeReshape_167/ReadVariableOpReshape_167/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_168/ReadVariableOpReadVariableOppi/conv2d_4/kernel*
dtype0*&
_output_shapes
:
d
Reshape_168/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_168ReshapeReshape_168/ReadVariableOpReshape_168/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
g
Reshape_169/ReadVariableOpReadVariableOppi/conv2d_4/bias*
dtype0*
_output_shapes
:
d
Reshape_169/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_169ReshapeReshape_169/ReadVariableOpReshape_169/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_170/ReadVariableOpReadVariableOppi/conv2d_5/kernel*
dtype0*&
_output_shapes
:
d
Reshape_170/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_170ReshapeReshape_170/ReadVariableOpReshape_170/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
g
Reshape_171/ReadVariableOpReadVariableOppi/conv2d_5/bias*
dtype0*
_output_shapes
:
d
Reshape_171/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_171ReshapeReshape_171/ReadVariableOpReshape_171/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_172/ReadVariableOpReadVariableOppi/conv2d_6/kernel*
dtype0*&
_output_shapes
:
d
Reshape_172/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_172ReshapeReshape_172/ReadVariableOpReshape_172/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
g
Reshape_173/ReadVariableOpReadVariableOppi/conv2d_6/bias*
dtype0*
_output_shapes
:
d
Reshape_173/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_173ReshapeReshape_173/ReadVariableOpReshape_173/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_174/ReadVariableOpReadVariableOppi/conv2d_7/kernel*
dtype0*&
_output_shapes
:
d
Reshape_174/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_174ReshapeReshape_174/ReadVariableOpReshape_174/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
g
Reshape_175/ReadVariableOpReadVariableOppi/conv2d_7/bias*
dtype0*
_output_shapes
:
d
Reshape_175/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_175ReshapeReshape_175/ReadVariableOpReshape_175/shape*
T0*
Tshape0*
_output_shapes
:
k
Reshape_176/ReadVariableOpReadVariableOppi/dense/kernel*
dtype0*
_output_shapes
:	
d
Reshape_176/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_176ReshapeReshape_176/ReadVariableOpReshape_176/shape*
T0*
Tshape0*
_output_shapes	
:4
e
Reshape_177/ReadVariableOpReadVariableOppi/dense/bias*
dtype0*
_output_shapes	
:
d
Reshape_177/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_177ReshapeReshape_177/ReadVariableOpReshape_177/shape*
T0*
Tshape0*
_output_shapes	
:
m
Reshape_178/ReadVariableOpReadVariableOppi/dense_1/kernel*
dtype0*
_output_shapes
:	
d
Reshape_178/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_178ReshapeReshape_178/ReadVariableOpReshape_178/shape*
T0*
Tshape0*
_output_shapes	
:
f
Reshape_179/ReadVariableOpReadVariableOppi/dense_1/bias*
dtype0*
_output_shapes
:
d
Reshape_179/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_179ReshapeReshape_179/ReadVariableOpReshape_179/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_180/ReadVariableOpReadVariableOpv/dense_2/kernel*
dtype0*
_output_shapes
:	
d
Reshape_180/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_180ReshapeReshape_180/ReadVariableOpReshape_180/shape*
T0*
Tshape0*
_output_shapes	
:4
f
Reshape_181/ReadVariableOpReadVariableOpv/dense_2/bias*
dtype0*
_output_shapes	
:
d
Reshape_181/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_181ReshapeReshape_181/ReadVariableOpReshape_181/shape*
_output_shapes	
:*
T0*
Tshape0
l
Reshape_182/ReadVariableOpReadVariableOpv/dense_3/kernel*
dtype0*
_output_shapes
:	
d
Reshape_182/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_182ReshapeReshape_182/ReadVariableOpReshape_182/shape*
T0*
Tshape0*
_output_shapes	
:
e
Reshape_183/ReadVariableOpReadVariableOpv/dense_3/bias*
dtype0*
_output_shapes
:
d
Reshape_183/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_183ReshapeReshape_183/ReadVariableOpReshape_183/shape*
T0*
Tshape0*
_output_shapes
:
^
Reshape_184/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
d
Reshape_184/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_184ReshapeReshape_184/ReadVariableOpReshape_184/shape*
_output_shapes
:*
T0*
Tshape0
^
Reshape_185/ReadVariableOpReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
d
Reshape_185/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_185ReshapeReshape_185/ReadVariableOpReshape_185/shape*
T0*
Tshape0*
_output_shapes
:
x
Reshape_186/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_186/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_186ReshapeReshape_186/ReadVariableOpReshape_186/shape*
T0*
Tshape0*
_output_shapes
:0
z
Reshape_187/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_187/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_187ReshapeReshape_187/ReadVariableOpReshape_187/shape*
T0*
Tshape0*
_output_shapes
:0
j
Reshape_188/ReadVariableOpReadVariableOppi/conv2d/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_188/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_188ReshapeReshape_188/ReadVariableOpReshape_188/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_189/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_189/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_189ReshapeReshape_189/ReadVariableOpReshape_189/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_190/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_190/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_190ReshapeReshape_190/ReadVariableOpReshape_190/shape*
_output_shapes	
:	*
T0*
Tshape0
|
Reshape_191/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_191/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_191ReshapeReshape_191/ReadVariableOpReshape_191/shape*
_output_shapes	
:	*
T0*
Tshape0
l
Reshape_192/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_192/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_192ReshapeReshape_192/ReadVariableOpReshape_192/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_193/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_193/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_193ReshapeReshape_193/ReadVariableOpReshape_193/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_194/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_194/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_194ReshapeReshape_194/ReadVariableOpReshape_194/shape*
_output_shapes	
:№+*
T0*
Tshape0
|
Reshape_195/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_195/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_195ReshapeReshape_195/ReadVariableOpReshape_195/shape*
T0*
Tshape0*
_output_shapes	
:№+
l
Reshape_196/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_196/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_196ReshapeReshape_196/ReadVariableOpReshape_196/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_197/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_197/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_197ReshapeReshape_197/ReadVariableOpReshape_197/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_198/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_198/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_198ReshapeReshape_198/ReadVariableOpReshape_198/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_199/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_199/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_199ReshapeReshape_199/ReadVariableOpReshape_199/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
l
Reshape_200/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_200/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_200ReshapeReshape_200/ReadVariableOpReshape_200/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_201/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_201/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_201ReshapeReshape_201/ReadVariableOpReshape_201/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_202/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_202/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_202ReshapeReshape_202/ReadVariableOpReshape_202/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_203/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_203/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_203ReshapeReshape_203/ReadVariableOpReshape_203/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
l
Reshape_204/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_204/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_204ReshapeReshape_204/ReadVariableOpReshape_204/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_205/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_205/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_205ReshapeReshape_205/ReadVariableOpReshape_205/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_206/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_206/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_206ReshapeReshape_206/ReadVariableOpReshape_206/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_207/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_207/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_207ReshapeReshape_207/ReadVariableOpReshape_207/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
l
Reshape_208/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_208/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_208ReshapeReshape_208/ReadVariableOpReshape_208/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_209/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_209/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_209ReshapeReshape_209/ReadVariableOpReshape_209/shape*
_output_shapes
:*
T0*
Tshape0
z
Reshape_210/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_210/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_210ReshapeReshape_210/ReadVariableOpReshape_210/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_211/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_211/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_211ReshapeReshape_211/ReadVariableOpReshape_211/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
l
Reshape_212/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_212/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_212ReshapeReshape_212/ReadVariableOpReshape_212/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_213/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_213/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_213ReshapeReshape_213/ReadVariableOpReshape_213/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_214/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_214/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_214ReshapeReshape_214/ReadVariableOpReshape_214/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_215/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_215/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_215ReshapeReshape_215/ReadVariableOpReshape_215/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
l
Reshape_216/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_216/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_216ReshapeReshape_216/ReadVariableOpReshape_216/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_217/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_217/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_217ReshapeReshape_217/ReadVariableOpReshape_217/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_218/ReadVariableOpReadVariableOppi/dense/kernel/Adam*
dtype0*
_output_shapes
:	
d
Reshape_218/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_218ReshapeReshape_218/ReadVariableOpReshape_218/shape*
T0*
Tshape0*
_output_shapes	
:4
r
Reshape_219/ReadVariableOpReadVariableOppi/dense/kernel/Adam_1*
dtype0*
_output_shapes
:	
d
Reshape_219/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_219ReshapeReshape_219/ReadVariableOpReshape_219/shape*
T0*
Tshape0*
_output_shapes	
:4
j
Reshape_220/ReadVariableOpReadVariableOppi/dense/bias/Adam*
dtype0*
_output_shapes	
:
d
Reshape_220/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_220ReshapeReshape_220/ReadVariableOpReshape_220/shape*
T0*
Tshape0*
_output_shapes	
:
l
Reshape_221/ReadVariableOpReadVariableOppi/dense/bias/Adam_1*
dtype0*
_output_shapes	
:
d
Reshape_221/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_221ReshapeReshape_221/ReadVariableOpReshape_221/shape*
T0*
Tshape0*
_output_shapes	
:
r
Reshape_222/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam*
dtype0*
_output_shapes
:	
d
Reshape_222/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_222ReshapeReshape_222/ReadVariableOpReshape_222/shape*
T0*
Tshape0*
_output_shapes	
:
t
Reshape_223/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:	
d
Reshape_223/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_223ReshapeReshape_223/ReadVariableOpReshape_223/shape*
T0*
Tshape0*
_output_shapes	
:
k
Reshape_224/ReadVariableOpReadVariableOppi/dense_1/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_224/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_224ReshapeReshape_224/ReadVariableOpReshape_224/shape*
T0*
Tshape0*
_output_shapes
:
m
Reshape_225/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_225/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_225ReshapeReshape_225/ReadVariableOpReshape_225/shape*
_output_shapes
:*
T0*
Tshape0
`
Reshape_226/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
d
Reshape_226/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_226ReshapeReshape_226/ReadVariableOpReshape_226/shape*
T0*
Tshape0*
_output_shapes
:
`
Reshape_227/ReadVariableOpReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
d
Reshape_227/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_227ReshapeReshape_227/ReadVariableOpReshape_227/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_228/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_228/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_228ReshapeReshape_228/ReadVariableOpReshape_228/shape*
T0*
Tshape0*
_output_shapes
:0
z
Reshape_229/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_229/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_229ReshapeReshape_229/ReadVariableOpReshape_229/shape*
T0*
Tshape0*
_output_shapes
:0
l
Reshape_230/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_230/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_230ReshapeReshape_230/ReadVariableOpReshape_230/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_231/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_231/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_231ReshapeReshape_231/ReadVariableOpReshape_231/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_232/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_232/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_232ReshapeReshape_232/ReadVariableOpReshape_232/shape*
T0*
Tshape0*
_output_shapes	
:	
|
Reshape_233/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_233/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_233ReshapeReshape_233/ReadVariableOpReshape_233/shape*
T0*
Tshape0*
_output_shapes	
:	
n
Reshape_234/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_234/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_234ReshapeReshape_234/ReadVariableOpReshape_234/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_235/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_235/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_235ReshapeReshape_235/ReadVariableOpReshape_235/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_236/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_236/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_236ReshapeReshape_236/ReadVariableOpReshape_236/shape*
_output_shapes	
:№+*
T0*
Tshape0
|
Reshape_237/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_237/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_237ReshapeReshape_237/ReadVariableOpReshape_237/shape*
T0*
Tshape0*
_output_shapes	
:№+
n
Reshape_238/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_238/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_238ReshapeReshape_238/ReadVariableOpReshape_238/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_239/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_239/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_239ReshapeReshape_239/ReadVariableOpReshape_239/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_240/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_240/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_240ReshapeReshape_240/ReadVariableOpReshape_240/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_241/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_241/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_241ReshapeReshape_241/ReadVariableOpReshape_241/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
n
Reshape_242/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_242/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_242ReshapeReshape_242/ReadVariableOpReshape_242/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_243/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_243/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_243ReshapeReshape_243/ReadVariableOpReshape_243/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_244/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_244/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_244ReshapeReshape_244/ReadVariableOpReshape_244/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_245/ReadVariableOpReadVariableOppi/conv2d_4/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_245/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_245ReshapeReshape_245/ReadVariableOpReshape_245/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
n
Reshape_246/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_246/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_246ReshapeReshape_246/ReadVariableOpReshape_246/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_247/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_247/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_247ReshapeReshape_247/ReadVariableOpReshape_247/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_248/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_248/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_248ReshapeReshape_248/ReadVariableOpReshape_248/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_249/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_249/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_249ReshapeReshape_249/ReadVariableOpReshape_249/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
n
Reshape_250/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_250/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_250ReshapeReshape_250/ReadVariableOpReshape_250/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_251/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_251/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_251ReshapeReshape_251/ReadVariableOpReshape_251/shape*
_output_shapes
:*
T0*
Tshape0
|
Reshape_252/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_252/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_252ReshapeReshape_252/ReadVariableOpReshape_252/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
|
Reshape_253/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_253/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_253ReshapeReshape_253/ReadVariableOpReshape_253/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
n
Reshape_254/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_254/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_254ReshapeReshape_254/ReadVariableOpReshape_254/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_255/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_255/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_255ReshapeReshape_255/ReadVariableOpReshape_255/shape*
_output_shapes
:*
T0*
Tshape0
|
Reshape_256/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_256/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_256ReshapeReshape_256/ReadVariableOpReshape_256/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
|
Reshape_257/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_257/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_257ReshapeReshape_257/ReadVariableOpReshape_257/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
n
Reshape_258/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_258/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_258ReshapeReshape_258/ReadVariableOpReshape_258/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_259/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_259/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_259ReshapeReshape_259/ReadVariableOpReshape_259/shape*
T0*
Tshape0*
_output_shapes
:
q
Reshape_260/ReadVariableOpReadVariableOpv/dense_2/kernel/Adam*
dtype0*
_output_shapes
:	
d
Reshape_260/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_260ReshapeReshape_260/ReadVariableOpReshape_260/shape*
T0*
Tshape0*
_output_shapes	
:4
s
Reshape_261/ReadVariableOpReadVariableOpv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:	
d
Reshape_261/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_261ReshapeReshape_261/ReadVariableOpReshape_261/shape*
_output_shapes	
:4*
T0*
Tshape0
k
Reshape_262/ReadVariableOpReadVariableOpv/dense_2/bias/Adam*
dtype0*
_output_shapes	
:
d
Reshape_262/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_262ReshapeReshape_262/ReadVariableOpReshape_262/shape*
T0*
Tshape0*
_output_shapes	
:
m
Reshape_263/ReadVariableOpReadVariableOpv/dense_2/bias/Adam_1*
dtype0*
_output_shapes	
:
d
Reshape_263/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_263ReshapeReshape_263/ReadVariableOpReshape_263/shape*
T0*
Tshape0*
_output_shapes	
:
q
Reshape_264/ReadVariableOpReadVariableOpv/dense_3/kernel/Adam*
dtype0*
_output_shapes
:	
d
Reshape_264/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_264ReshapeReshape_264/ReadVariableOpReshape_264/shape*
T0*
Tshape0*
_output_shapes	
:
s
Reshape_265/ReadVariableOpReadVariableOpv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:	
d
Reshape_265/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_265ReshapeReshape_265/ReadVariableOpReshape_265/shape*
T0*
Tshape0*
_output_shapes	
:
j
Reshape_266/ReadVariableOpReadVariableOpv/dense_3/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_266/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_266ReshapeReshape_266/ReadVariableOpReshape_266/shape*
_output_shapes
:*
T0*
Tshape0
l
Reshape_267/ReadVariableOpReadVariableOpv/dense_3/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_267/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_267ReshapeReshape_267/ReadVariableOpReshape_267/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
л
concat_4ConcatV2Reshape_160Reshape_161Reshape_162Reshape_163Reshape_164Reshape_165Reshape_166Reshape_167Reshape_168Reshape_169Reshape_170Reshape_171Reshape_172Reshape_173Reshape_174Reshape_175Reshape_176Reshape_177Reshape_178Reshape_179Reshape_180Reshape_181Reshape_182Reshape_183Reshape_184Reshape_185Reshape_186Reshape_187Reshape_188Reshape_189Reshape_190Reshape_191Reshape_192Reshape_193Reshape_194Reshape_195Reshape_196Reshape_197Reshape_198Reshape_199Reshape_200Reshape_201Reshape_202Reshape_203Reshape_204Reshape_205Reshape_206Reshape_207Reshape_208Reshape_209Reshape_210Reshape_211Reshape_212Reshape_213Reshape_214Reshape_215Reshape_216Reshape_217Reshape_218Reshape_219Reshape_220Reshape_221Reshape_222Reshape_223Reshape_224Reshape_225Reshape_226Reshape_227Reshape_228Reshape_229Reshape_230Reshape_231Reshape_232Reshape_233Reshape_234Reshape_235Reshape_236Reshape_237Reshape_238Reshape_239Reshape_240Reshape_241Reshape_242Reshape_243Reshape_244Reshape_245Reshape_246Reshape_247Reshape_248Reshape_249Reshape_250Reshape_251Reshape_252Reshape_253Reshape_254Reshape_255Reshape_256Reshape_257Reshape_258Reshape_259Reshape_260Reshape_261Reshape_262Reshape_263Reshape_264Reshape_265Reshape_266Reshape_267concat_4/axis*
Nl*
_output_shapes

:*

Tidx0*
T0
r
EagerPyFunc_4EagerPyFuncconcat_4*
_output_shapes
:*
Tin
2*
Tout
2*
token
pyfunc_4

Const_11Const*Ш
valueОBЛl"А0           №     Ф     Ф     Ф     Ф     Ф                                   0   0                   №  №        Ф  Ф        Ф  Ф        Ф  Ф        Ф  Ф        Ф  Ф                                      0   0                   №  №        Ф  Ф        Ф  Ф        Ф  Ф        Ф  Ф        Ф  Ф                                *
dtype0*
_output_shapes
:l
S
split_4/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ќ
split_4SplitVEagerPyFunc_4Const_11split_4/split_dim*
T0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_splitl*

Tlen0
j
Reshape_268/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
q
Reshape_268Reshapesplit_4Reshape_268/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_269/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_269Reshape	split_4:1Reshape_269/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_270/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
s
Reshape_270Reshape	split_4:2Reshape_270/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_271/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_271Reshape	split_4:3Reshape_271/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_272/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_272Reshape	split_4:4Reshape_272/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_273/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_273Reshape	split_4:5Reshape_273/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_274/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
s
Reshape_274Reshape	split_4:6Reshape_274/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_275/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_275Reshape	split_4:7Reshape_275/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_276/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_276Reshape	split_4:8Reshape_276/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_277/shapeConst*
dtype0*
_output_shapes
:*
valueB:
g
Reshape_277Reshape	split_4:9Reshape_277/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_278/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_278Reshape
split_4:10Reshape_278/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_279/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_279Reshape
split_4:11Reshape_279/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_280/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_280Reshape
split_4:12Reshape_280/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_281/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_281Reshape
split_4:13Reshape_281/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_282/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_282Reshape
split_4:14Reshape_282/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_283/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_283Reshape
split_4:15Reshape_283/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_284/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_284Reshape
split_4:16Reshape_284/shape*
T0*
Tshape0*
_output_shapes
:	
\
Reshape_285/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_285Reshape
split_4:17Reshape_285/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_286/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_286Reshape
split_4:18Reshape_286/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_287/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_287Reshape
split_4:19Reshape_287/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_288/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_288Reshape
split_4:20Reshape_288/shape*
T0*
Tshape0*
_output_shapes
:	
\
Reshape_289/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_289Reshape
split_4:21Reshape_289/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_290/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_290Reshape
split_4:22Reshape_290/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_291/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_291Reshape
split_4:23Reshape_291/shape*
_output_shapes
:*
T0*
Tshape0
T
Reshape_292/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_292Reshape
split_4:24Reshape_292/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_293/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_293Reshape
split_4:25Reshape_293/shape*
T0*
Tshape0*
_output_shapes
: 
j
Reshape_294/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_294Reshape
split_4:26Reshape_294/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_295/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_295Reshape
split_4:27Reshape_295/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_296/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_296Reshape
split_4:28Reshape_296/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_297/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_297Reshape
split_4:29Reshape_297/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_298/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_298Reshape
split_4:30Reshape_298/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_299/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_299Reshape
split_4:31Reshape_299/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_300/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_300Reshape
split_4:32Reshape_300/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_301/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_301Reshape
split_4:33Reshape_301/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_302/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_302Reshape
split_4:34Reshape_302/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_303/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_303Reshape
split_4:35Reshape_303/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_304/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_304Reshape
split_4:36Reshape_304/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_305/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_305Reshape
split_4:37Reshape_305/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_306/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_306Reshape
split_4:38Reshape_306/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_307/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_307Reshape
split_4:39Reshape_307/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_308/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_308Reshape
split_4:40Reshape_308/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_309/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_309Reshape
split_4:41Reshape_309/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_310/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_310Reshape
split_4:42Reshape_310/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_311/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_311Reshape
split_4:43Reshape_311/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_312/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_312Reshape
split_4:44Reshape_312/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_313/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_313Reshape
split_4:45Reshape_313/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_314/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_314Reshape
split_4:46Reshape_314/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_315/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_315Reshape
split_4:47Reshape_315/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_316/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_316Reshape
split_4:48Reshape_316/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_317/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_317Reshape
split_4:49Reshape_317/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_318/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_318Reshape
split_4:50Reshape_318/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_319/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_319Reshape
split_4:51Reshape_319/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_320/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_320Reshape
split_4:52Reshape_320/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_321/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_321Reshape
split_4:53Reshape_321/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_322/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_322Reshape
split_4:54Reshape_322/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_323/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_323Reshape
split_4:55Reshape_323/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_324/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_324Reshape
split_4:56Reshape_324/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_325/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_325Reshape
split_4:57Reshape_325/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_326/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_326Reshape
split_4:58Reshape_326/shape*
T0*
Tshape0*
_output_shapes
:	
b
Reshape_327/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_327Reshape
split_4:59Reshape_327/shape*
T0*
Tshape0*
_output_shapes
:	
\
Reshape_328/shapeConst*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_328Reshape
split_4:60Reshape_328/shape*
T0*
Tshape0*
_output_shapes	
:
\
Reshape_329/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_329Reshape
split_4:61Reshape_329/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_330/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_330Reshape
split_4:62Reshape_330/shape*
T0*
Tshape0*
_output_shapes
:	
b
Reshape_331/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_331Reshape
split_4:63Reshape_331/shape*
_output_shapes
:	*
T0*
Tshape0
[
Reshape_332/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_332Reshape
split_4:64Reshape_332/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_333/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_333Reshape
split_4:65Reshape_333/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_334/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_334Reshape
split_4:66Reshape_334/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_335/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_335Reshape
split_4:67Reshape_335/shape*
T0*
Tshape0*
_output_shapes
: 
j
Reshape_336/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_336Reshape
split_4:68Reshape_336/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_337/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_337Reshape
split_4:69Reshape_337/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_338/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_338Reshape
split_4:70Reshape_338/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_339/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_339Reshape
split_4:71Reshape_339/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_340/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_340Reshape
split_4:72Reshape_340/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_341/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_341Reshape
split_4:73Reshape_341/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_342/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_342Reshape
split_4:74Reshape_342/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_343/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_343Reshape
split_4:75Reshape_343/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_344/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_344Reshape
split_4:76Reshape_344/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_345/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_345Reshape
split_4:77Reshape_345/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_346/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_346Reshape
split_4:78Reshape_346/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_347/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_347Reshape
split_4:79Reshape_347/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_348/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_348Reshape
split_4:80Reshape_348/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_349/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_349Reshape
split_4:81Reshape_349/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_350/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_350Reshape
split_4:82Reshape_350/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_351/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_351Reshape
split_4:83Reshape_351/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_352/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_352Reshape
split_4:84Reshape_352/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_353/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_353Reshape
split_4:85Reshape_353/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_354/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_354Reshape
split_4:86Reshape_354/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_355/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_355Reshape
split_4:87Reshape_355/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_356/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_356Reshape
split_4:88Reshape_356/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_357/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_357Reshape
split_4:89Reshape_357/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_358/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_358Reshape
split_4:90Reshape_358/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_359/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_359Reshape
split_4:91Reshape_359/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_360/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_360Reshape
split_4:92Reshape_360/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_361/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_361Reshape
split_4:93Reshape_361/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_362/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_362Reshape
split_4:94Reshape_362/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_363/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_363Reshape
split_4:95Reshape_363/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_364/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_364Reshape
split_4:96Reshape_364/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_365/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_365Reshape
split_4:97Reshape_365/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_366/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_366Reshape
split_4:98Reshape_366/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_367/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_367Reshape
split_4:99Reshape_367/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_368/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
n
Reshape_368Reshapesplit_4:100Reshape_368/shape*
T0*
Tshape0*
_output_shapes
:	
b
Reshape_369/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_369Reshapesplit_4:101Reshape_369/shape*
_output_shapes
:	*
T0*
Tshape0
\
Reshape_370/shapeConst*
valueB:*
dtype0*
_output_shapes
:
j
Reshape_370Reshapesplit_4:102Reshape_370/shape*
_output_shapes	
:*
T0*
Tshape0
\
Reshape_371/shapeConst*
valueB:*
dtype0*
_output_shapes
:
j
Reshape_371Reshapesplit_4:103Reshape_371/shape*
_output_shapes	
:*
T0*
Tshape0
b
Reshape_372/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_372Reshapesplit_4:104Reshape_372/shape*
T0*
Tshape0*
_output_shapes
:	
b
Reshape_373/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
n
Reshape_373Reshapesplit_4:105Reshape_373/shape*
T0*
Tshape0*
_output_shapes
:	
[
Reshape_374/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_374Reshapesplit_4:106Reshape_374/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_375/shapeConst*
valueB:*
dtype0*
_output_shapes
:
i
Reshape_375Reshapesplit_4:107Reshape_375/shape*
T0*
Tshape0*
_output_shapes
:
S
AssignVariableOp_40AssignVariableOppi/conv2d/kernelReshape_268*
dtype0

ReadVariableOp_40ReadVariableOppi/conv2d/kernel^AssignVariableOp_40*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_41AssignVariableOppi/conv2d/biasReshape_269*
dtype0
r
ReadVariableOp_41ReadVariableOppi/conv2d/bias^AssignVariableOp_41*
dtype0*
_output_shapes
:
U
AssignVariableOp_42AssignVariableOppi/conv2d_1/kernelReshape_270*
dtype0

ReadVariableOp_42ReadVariableOppi/conv2d_1/kernel^AssignVariableOp_42*
dtype0*&
_output_shapes
:
S
AssignVariableOp_43AssignVariableOppi/conv2d_1/biasReshape_271*
dtype0
t
ReadVariableOp_43ReadVariableOppi/conv2d_1/bias^AssignVariableOp_43*
dtype0*
_output_shapes
:
U
AssignVariableOp_44AssignVariableOppi/conv2d_2/kernelReshape_272*
dtype0

ReadVariableOp_44ReadVariableOppi/conv2d_2/kernel^AssignVariableOp_44*
dtype0*&
_output_shapes
:
S
AssignVariableOp_45AssignVariableOppi/conv2d_2/biasReshape_273*
dtype0
t
ReadVariableOp_45ReadVariableOppi/conv2d_2/bias^AssignVariableOp_45*
dtype0*
_output_shapes
:
U
AssignVariableOp_46AssignVariableOppi/conv2d_3/kernelReshape_274*
dtype0

ReadVariableOp_46ReadVariableOppi/conv2d_3/kernel^AssignVariableOp_46*
dtype0*&
_output_shapes
:
S
AssignVariableOp_47AssignVariableOppi/conv2d_3/biasReshape_275*
dtype0
t
ReadVariableOp_47ReadVariableOppi/conv2d_3/bias^AssignVariableOp_47*
dtype0*
_output_shapes
:
U
AssignVariableOp_48AssignVariableOppi/conv2d_4/kernelReshape_276*
dtype0

ReadVariableOp_48ReadVariableOppi/conv2d_4/kernel^AssignVariableOp_48*
dtype0*&
_output_shapes
:
S
AssignVariableOp_49AssignVariableOppi/conv2d_4/biasReshape_277*
dtype0
t
ReadVariableOp_49ReadVariableOppi/conv2d_4/bias^AssignVariableOp_49*
dtype0*
_output_shapes
:
U
AssignVariableOp_50AssignVariableOppi/conv2d_5/kernelReshape_278*
dtype0

ReadVariableOp_50ReadVariableOppi/conv2d_5/kernel^AssignVariableOp_50*
dtype0*&
_output_shapes
:
S
AssignVariableOp_51AssignVariableOppi/conv2d_5/biasReshape_279*
dtype0
t
ReadVariableOp_51ReadVariableOppi/conv2d_5/bias^AssignVariableOp_51*
dtype0*
_output_shapes
:
U
AssignVariableOp_52AssignVariableOppi/conv2d_6/kernelReshape_280*
dtype0

ReadVariableOp_52ReadVariableOppi/conv2d_6/kernel^AssignVariableOp_52*
dtype0*&
_output_shapes
:
S
AssignVariableOp_53AssignVariableOppi/conv2d_6/biasReshape_281*
dtype0
t
ReadVariableOp_53ReadVariableOppi/conv2d_6/bias^AssignVariableOp_53*
dtype0*
_output_shapes
:
U
AssignVariableOp_54AssignVariableOppi/conv2d_7/kernelReshape_282*
dtype0

ReadVariableOp_54ReadVariableOppi/conv2d_7/kernel^AssignVariableOp_54*
dtype0*&
_output_shapes
:
S
AssignVariableOp_55AssignVariableOppi/conv2d_7/biasReshape_283*
dtype0
t
ReadVariableOp_55ReadVariableOppi/conv2d_7/bias^AssignVariableOp_55*
dtype0*
_output_shapes
:
R
AssignVariableOp_56AssignVariableOppi/dense/kernelReshape_284*
dtype0
x
ReadVariableOp_56ReadVariableOppi/dense/kernel^AssignVariableOp_56*
dtype0*
_output_shapes
:	
P
AssignVariableOp_57AssignVariableOppi/dense/biasReshape_285*
dtype0
r
ReadVariableOp_57ReadVariableOppi/dense/bias^AssignVariableOp_57*
dtype0*
_output_shapes	
:
T
AssignVariableOp_58AssignVariableOppi/dense_1/kernelReshape_286*
dtype0
z
ReadVariableOp_58ReadVariableOppi/dense_1/kernel^AssignVariableOp_58*
dtype0*
_output_shapes
:	
R
AssignVariableOp_59AssignVariableOppi/dense_1/biasReshape_287*
dtype0
s
ReadVariableOp_59ReadVariableOppi/dense_1/bias^AssignVariableOp_59*
dtype0*
_output_shapes
:
S
AssignVariableOp_60AssignVariableOpv/dense_2/kernelReshape_288*
dtype0
y
ReadVariableOp_60ReadVariableOpv/dense_2/kernel^AssignVariableOp_60*
dtype0*
_output_shapes
:	
Q
AssignVariableOp_61AssignVariableOpv/dense_2/biasReshape_289*
dtype0
s
ReadVariableOp_61ReadVariableOpv/dense_2/bias^AssignVariableOp_61*
dtype0*
_output_shapes	
:
S
AssignVariableOp_62AssignVariableOpv/dense_3/kernelReshape_290*
dtype0
y
ReadVariableOp_62ReadVariableOpv/dense_3/kernel^AssignVariableOp_62*
dtype0*
_output_shapes
:	
Q
AssignVariableOp_63AssignVariableOpv/dense_3/biasReshape_291*
dtype0
r
ReadVariableOp_63ReadVariableOpv/dense_3/bias^AssignVariableOp_63*
dtype0*
_output_shapes
:
N
AssignVariableOp_64AssignVariableOpbeta1_powerReshape_292*
dtype0
k
ReadVariableOp_64ReadVariableOpbeta1_power^AssignVariableOp_64*
dtype0*
_output_shapes
: 
N
AssignVariableOp_65AssignVariableOpbeta2_powerReshape_293*
dtype0
k
ReadVariableOp_65ReadVariableOpbeta2_power^AssignVariableOp_65*
dtype0*
_output_shapes
: 
X
AssignVariableOp_66AssignVariableOppi/conv2d/kernel/AdamReshape_294*
dtype0

ReadVariableOp_66ReadVariableOppi/conv2d/kernel/Adam^AssignVariableOp_66*
dtype0*&
_output_shapes
:
Z
AssignVariableOp_67AssignVariableOppi/conv2d/kernel/Adam_1Reshape_295*
dtype0

ReadVariableOp_67ReadVariableOppi/conv2d/kernel/Adam_1^AssignVariableOp_67*
dtype0*&
_output_shapes
:
V
AssignVariableOp_68AssignVariableOppi/conv2d/bias/AdamReshape_296*
dtype0
w
ReadVariableOp_68ReadVariableOppi/conv2d/bias/Adam^AssignVariableOp_68*
dtype0*
_output_shapes
:
X
AssignVariableOp_69AssignVariableOppi/conv2d/bias/Adam_1Reshape_297*
dtype0
y
ReadVariableOp_69ReadVariableOppi/conv2d/bias/Adam_1^AssignVariableOp_69*
dtype0*
_output_shapes
:
Z
AssignVariableOp_70AssignVariableOppi/conv2d_1/kernel/AdamReshape_298*
dtype0

ReadVariableOp_70ReadVariableOppi/conv2d_1/kernel/Adam^AssignVariableOp_70*
dtype0*&
_output_shapes
:
\
AssignVariableOp_71AssignVariableOppi/conv2d_1/kernel/Adam_1Reshape_299*
dtype0

ReadVariableOp_71ReadVariableOppi/conv2d_1/kernel/Adam_1^AssignVariableOp_71*
dtype0*&
_output_shapes
:
X
AssignVariableOp_72AssignVariableOppi/conv2d_1/bias/AdamReshape_300*
dtype0
y
ReadVariableOp_72ReadVariableOppi/conv2d_1/bias/Adam^AssignVariableOp_72*
dtype0*
_output_shapes
:
Z
AssignVariableOp_73AssignVariableOppi/conv2d_1/bias/Adam_1Reshape_301*
dtype0
{
ReadVariableOp_73ReadVariableOppi/conv2d_1/bias/Adam_1^AssignVariableOp_73*
dtype0*
_output_shapes
:
Z
AssignVariableOp_74AssignVariableOppi/conv2d_2/kernel/AdamReshape_302*
dtype0

ReadVariableOp_74ReadVariableOppi/conv2d_2/kernel/Adam^AssignVariableOp_74*
dtype0*&
_output_shapes
:
\
AssignVariableOp_75AssignVariableOppi/conv2d_2/kernel/Adam_1Reshape_303*
dtype0

ReadVariableOp_75ReadVariableOppi/conv2d_2/kernel/Adam_1^AssignVariableOp_75*
dtype0*&
_output_shapes
:
X
AssignVariableOp_76AssignVariableOppi/conv2d_2/bias/AdamReshape_304*
dtype0
y
ReadVariableOp_76ReadVariableOppi/conv2d_2/bias/Adam^AssignVariableOp_76*
dtype0*
_output_shapes
:
Z
AssignVariableOp_77AssignVariableOppi/conv2d_2/bias/Adam_1Reshape_305*
dtype0
{
ReadVariableOp_77ReadVariableOppi/conv2d_2/bias/Adam_1^AssignVariableOp_77*
dtype0*
_output_shapes
:
Z
AssignVariableOp_78AssignVariableOppi/conv2d_3/kernel/AdamReshape_306*
dtype0

ReadVariableOp_78ReadVariableOppi/conv2d_3/kernel/Adam^AssignVariableOp_78*
dtype0*&
_output_shapes
:
\
AssignVariableOp_79AssignVariableOppi/conv2d_3/kernel/Adam_1Reshape_307*
dtype0

ReadVariableOp_79ReadVariableOppi/conv2d_3/kernel/Adam_1^AssignVariableOp_79*
dtype0*&
_output_shapes
:
X
AssignVariableOp_80AssignVariableOppi/conv2d_3/bias/AdamReshape_308*
dtype0
y
ReadVariableOp_80ReadVariableOppi/conv2d_3/bias/Adam^AssignVariableOp_80*
dtype0*
_output_shapes
:
Z
AssignVariableOp_81AssignVariableOppi/conv2d_3/bias/Adam_1Reshape_309*
dtype0
{
ReadVariableOp_81ReadVariableOppi/conv2d_3/bias/Adam_1^AssignVariableOp_81*
dtype0*
_output_shapes
:
Z
AssignVariableOp_82AssignVariableOppi/conv2d_4/kernel/AdamReshape_310*
dtype0

ReadVariableOp_82ReadVariableOppi/conv2d_4/kernel/Adam^AssignVariableOp_82*
dtype0*&
_output_shapes
:
\
AssignVariableOp_83AssignVariableOppi/conv2d_4/kernel/Adam_1Reshape_311*
dtype0

ReadVariableOp_83ReadVariableOppi/conv2d_4/kernel/Adam_1^AssignVariableOp_83*
dtype0*&
_output_shapes
:
X
AssignVariableOp_84AssignVariableOppi/conv2d_4/bias/AdamReshape_312*
dtype0
y
ReadVariableOp_84ReadVariableOppi/conv2d_4/bias/Adam^AssignVariableOp_84*
dtype0*
_output_shapes
:
Z
AssignVariableOp_85AssignVariableOppi/conv2d_4/bias/Adam_1Reshape_313*
dtype0
{
ReadVariableOp_85ReadVariableOppi/conv2d_4/bias/Adam_1^AssignVariableOp_85*
dtype0*
_output_shapes
:
Z
AssignVariableOp_86AssignVariableOppi/conv2d_5/kernel/AdamReshape_314*
dtype0

ReadVariableOp_86ReadVariableOppi/conv2d_5/kernel/Adam^AssignVariableOp_86*
dtype0*&
_output_shapes
:
\
AssignVariableOp_87AssignVariableOppi/conv2d_5/kernel/Adam_1Reshape_315*
dtype0

ReadVariableOp_87ReadVariableOppi/conv2d_5/kernel/Adam_1^AssignVariableOp_87*
dtype0*&
_output_shapes
:
X
AssignVariableOp_88AssignVariableOppi/conv2d_5/bias/AdamReshape_316*
dtype0
y
ReadVariableOp_88ReadVariableOppi/conv2d_5/bias/Adam^AssignVariableOp_88*
dtype0*
_output_shapes
:
Z
AssignVariableOp_89AssignVariableOppi/conv2d_5/bias/Adam_1Reshape_317*
dtype0
{
ReadVariableOp_89ReadVariableOppi/conv2d_5/bias/Adam_1^AssignVariableOp_89*
dtype0*
_output_shapes
:
Z
AssignVariableOp_90AssignVariableOppi/conv2d_6/kernel/AdamReshape_318*
dtype0

ReadVariableOp_90ReadVariableOppi/conv2d_6/kernel/Adam^AssignVariableOp_90*
dtype0*&
_output_shapes
:
\
AssignVariableOp_91AssignVariableOppi/conv2d_6/kernel/Adam_1Reshape_319*
dtype0

ReadVariableOp_91ReadVariableOppi/conv2d_6/kernel/Adam_1^AssignVariableOp_91*
dtype0*&
_output_shapes
:
X
AssignVariableOp_92AssignVariableOppi/conv2d_6/bias/AdamReshape_320*
dtype0
y
ReadVariableOp_92ReadVariableOppi/conv2d_6/bias/Adam^AssignVariableOp_92*
dtype0*
_output_shapes
:
Z
AssignVariableOp_93AssignVariableOppi/conv2d_6/bias/Adam_1Reshape_321*
dtype0
{
ReadVariableOp_93ReadVariableOppi/conv2d_6/bias/Adam_1^AssignVariableOp_93*
dtype0*
_output_shapes
:
Z
AssignVariableOp_94AssignVariableOppi/conv2d_7/kernel/AdamReshape_322*
dtype0

ReadVariableOp_94ReadVariableOppi/conv2d_7/kernel/Adam^AssignVariableOp_94*
dtype0*&
_output_shapes
:
\
AssignVariableOp_95AssignVariableOppi/conv2d_7/kernel/Adam_1Reshape_323*
dtype0

ReadVariableOp_95ReadVariableOppi/conv2d_7/kernel/Adam_1^AssignVariableOp_95*
dtype0*&
_output_shapes
:
X
AssignVariableOp_96AssignVariableOppi/conv2d_7/bias/AdamReshape_324*
dtype0
y
ReadVariableOp_96ReadVariableOppi/conv2d_7/bias/Adam^AssignVariableOp_96*
dtype0*
_output_shapes
:
Z
AssignVariableOp_97AssignVariableOppi/conv2d_7/bias/Adam_1Reshape_325*
dtype0
{
ReadVariableOp_97ReadVariableOppi/conv2d_7/bias/Adam_1^AssignVariableOp_97*
dtype0*
_output_shapes
:
W
AssignVariableOp_98AssignVariableOppi/dense/kernel/AdamReshape_326*
dtype0
}
ReadVariableOp_98ReadVariableOppi/dense/kernel/Adam^AssignVariableOp_98*
dtype0*
_output_shapes
:	
Y
AssignVariableOp_99AssignVariableOppi/dense/kernel/Adam_1Reshape_327*
dtype0

ReadVariableOp_99ReadVariableOppi/dense/kernel/Adam_1^AssignVariableOp_99*
dtype0*
_output_shapes
:	
V
AssignVariableOp_100AssignVariableOppi/dense/bias/AdamReshape_328*
dtype0
y
ReadVariableOp_100ReadVariableOppi/dense/bias/Adam^AssignVariableOp_100*
dtype0*
_output_shapes	
:
X
AssignVariableOp_101AssignVariableOppi/dense/bias/Adam_1Reshape_329*
dtype0
{
ReadVariableOp_101ReadVariableOppi/dense/bias/Adam_1^AssignVariableOp_101*
dtype0*
_output_shapes	
:
Z
AssignVariableOp_102AssignVariableOppi/dense_1/kernel/AdamReshape_330*
dtype0

ReadVariableOp_102ReadVariableOppi/dense_1/kernel/Adam^AssignVariableOp_102*
dtype0*
_output_shapes
:	
\
AssignVariableOp_103AssignVariableOppi/dense_1/kernel/Adam_1Reshape_331*
dtype0

ReadVariableOp_103ReadVariableOppi/dense_1/kernel/Adam_1^AssignVariableOp_103*
dtype0*
_output_shapes
:	
X
AssignVariableOp_104AssignVariableOppi/dense_1/bias/AdamReshape_332*
dtype0
z
ReadVariableOp_104ReadVariableOppi/dense_1/bias/Adam^AssignVariableOp_104*
dtype0*
_output_shapes
:
Z
AssignVariableOp_105AssignVariableOppi/dense_1/bias/Adam_1Reshape_333*
dtype0
|
ReadVariableOp_105ReadVariableOppi/dense_1/bias/Adam_1^AssignVariableOp_105*
dtype0*
_output_shapes
:
Q
AssignVariableOp_106AssignVariableOpbeta1_power_1Reshape_334*
dtype0
o
ReadVariableOp_106ReadVariableOpbeta1_power_1^AssignVariableOp_106*
dtype0*
_output_shapes
: 
Q
AssignVariableOp_107AssignVariableOpbeta2_power_1Reshape_335*
dtype0
o
ReadVariableOp_107ReadVariableOpbeta2_power_1^AssignVariableOp_107*
dtype0*
_output_shapes
: 
[
AssignVariableOp_108AssignVariableOppi/conv2d/kernel/Adam_2Reshape_336*
dtype0

ReadVariableOp_108ReadVariableOppi/conv2d/kernel/Adam_2^AssignVariableOp_108*
dtype0*&
_output_shapes
:
[
AssignVariableOp_109AssignVariableOppi/conv2d/kernel/Adam_3Reshape_337*
dtype0

ReadVariableOp_109ReadVariableOppi/conv2d/kernel/Adam_3^AssignVariableOp_109*
dtype0*&
_output_shapes
:
Y
AssignVariableOp_110AssignVariableOppi/conv2d/bias/Adam_2Reshape_338*
dtype0
{
ReadVariableOp_110ReadVariableOppi/conv2d/bias/Adam_2^AssignVariableOp_110*
dtype0*
_output_shapes
:
Y
AssignVariableOp_111AssignVariableOppi/conv2d/bias/Adam_3Reshape_339*
dtype0
{
ReadVariableOp_111ReadVariableOppi/conv2d/bias/Adam_3^AssignVariableOp_111*
dtype0*
_output_shapes
:
]
AssignVariableOp_112AssignVariableOppi/conv2d_1/kernel/Adam_2Reshape_340*
dtype0

ReadVariableOp_112ReadVariableOppi/conv2d_1/kernel/Adam_2^AssignVariableOp_112*
dtype0*&
_output_shapes
:
]
AssignVariableOp_113AssignVariableOppi/conv2d_1/kernel/Adam_3Reshape_341*
dtype0

ReadVariableOp_113ReadVariableOppi/conv2d_1/kernel/Adam_3^AssignVariableOp_113*
dtype0*&
_output_shapes
:
[
AssignVariableOp_114AssignVariableOppi/conv2d_1/bias/Adam_2Reshape_342*
dtype0
}
ReadVariableOp_114ReadVariableOppi/conv2d_1/bias/Adam_2^AssignVariableOp_114*
dtype0*
_output_shapes
:
[
AssignVariableOp_115AssignVariableOppi/conv2d_1/bias/Adam_3Reshape_343*
dtype0
}
ReadVariableOp_115ReadVariableOppi/conv2d_1/bias/Adam_3^AssignVariableOp_115*
dtype0*
_output_shapes
:
]
AssignVariableOp_116AssignVariableOppi/conv2d_2/kernel/Adam_2Reshape_344*
dtype0

ReadVariableOp_116ReadVariableOppi/conv2d_2/kernel/Adam_2^AssignVariableOp_116*
dtype0*&
_output_shapes
:
]
AssignVariableOp_117AssignVariableOppi/conv2d_2/kernel/Adam_3Reshape_345*
dtype0

ReadVariableOp_117ReadVariableOppi/conv2d_2/kernel/Adam_3^AssignVariableOp_117*
dtype0*&
_output_shapes
:
[
AssignVariableOp_118AssignVariableOppi/conv2d_2/bias/Adam_2Reshape_346*
dtype0
}
ReadVariableOp_118ReadVariableOppi/conv2d_2/bias/Adam_2^AssignVariableOp_118*
dtype0*
_output_shapes
:
[
AssignVariableOp_119AssignVariableOppi/conv2d_2/bias/Adam_3Reshape_347*
dtype0
}
ReadVariableOp_119ReadVariableOppi/conv2d_2/bias/Adam_3^AssignVariableOp_119*
dtype0*
_output_shapes
:
]
AssignVariableOp_120AssignVariableOppi/conv2d_3/kernel/Adam_2Reshape_348*
dtype0

ReadVariableOp_120ReadVariableOppi/conv2d_3/kernel/Adam_2^AssignVariableOp_120*
dtype0*&
_output_shapes
:
]
AssignVariableOp_121AssignVariableOppi/conv2d_3/kernel/Adam_3Reshape_349*
dtype0

ReadVariableOp_121ReadVariableOppi/conv2d_3/kernel/Adam_3^AssignVariableOp_121*
dtype0*&
_output_shapes
:
[
AssignVariableOp_122AssignVariableOppi/conv2d_3/bias/Adam_2Reshape_350*
dtype0
}
ReadVariableOp_122ReadVariableOppi/conv2d_3/bias/Adam_2^AssignVariableOp_122*
dtype0*
_output_shapes
:
[
AssignVariableOp_123AssignVariableOppi/conv2d_3/bias/Adam_3Reshape_351*
dtype0
}
ReadVariableOp_123ReadVariableOppi/conv2d_3/bias/Adam_3^AssignVariableOp_123*
dtype0*
_output_shapes
:
]
AssignVariableOp_124AssignVariableOppi/conv2d_4/kernel/Adam_2Reshape_352*
dtype0

ReadVariableOp_124ReadVariableOppi/conv2d_4/kernel/Adam_2^AssignVariableOp_124*
dtype0*&
_output_shapes
:
]
AssignVariableOp_125AssignVariableOppi/conv2d_4/kernel/Adam_3Reshape_353*
dtype0

ReadVariableOp_125ReadVariableOppi/conv2d_4/kernel/Adam_3^AssignVariableOp_125*
dtype0*&
_output_shapes
:
[
AssignVariableOp_126AssignVariableOppi/conv2d_4/bias/Adam_2Reshape_354*
dtype0
}
ReadVariableOp_126ReadVariableOppi/conv2d_4/bias/Adam_2^AssignVariableOp_126*
dtype0*
_output_shapes
:
[
AssignVariableOp_127AssignVariableOppi/conv2d_4/bias/Adam_3Reshape_355*
dtype0
}
ReadVariableOp_127ReadVariableOppi/conv2d_4/bias/Adam_3^AssignVariableOp_127*
dtype0*
_output_shapes
:
]
AssignVariableOp_128AssignVariableOppi/conv2d_5/kernel/Adam_2Reshape_356*
dtype0

ReadVariableOp_128ReadVariableOppi/conv2d_5/kernel/Adam_2^AssignVariableOp_128*
dtype0*&
_output_shapes
:
]
AssignVariableOp_129AssignVariableOppi/conv2d_5/kernel/Adam_3Reshape_357*
dtype0

ReadVariableOp_129ReadVariableOppi/conv2d_5/kernel/Adam_3^AssignVariableOp_129*
dtype0*&
_output_shapes
:
[
AssignVariableOp_130AssignVariableOppi/conv2d_5/bias/Adam_2Reshape_358*
dtype0
}
ReadVariableOp_130ReadVariableOppi/conv2d_5/bias/Adam_2^AssignVariableOp_130*
dtype0*
_output_shapes
:
[
AssignVariableOp_131AssignVariableOppi/conv2d_5/bias/Adam_3Reshape_359*
dtype0
}
ReadVariableOp_131ReadVariableOppi/conv2d_5/bias/Adam_3^AssignVariableOp_131*
dtype0*
_output_shapes
:
]
AssignVariableOp_132AssignVariableOppi/conv2d_6/kernel/Adam_2Reshape_360*
dtype0

ReadVariableOp_132ReadVariableOppi/conv2d_6/kernel/Adam_2^AssignVariableOp_132*
dtype0*&
_output_shapes
:
]
AssignVariableOp_133AssignVariableOppi/conv2d_6/kernel/Adam_3Reshape_361*
dtype0

ReadVariableOp_133ReadVariableOppi/conv2d_6/kernel/Adam_3^AssignVariableOp_133*
dtype0*&
_output_shapes
:
[
AssignVariableOp_134AssignVariableOppi/conv2d_6/bias/Adam_2Reshape_362*
dtype0
}
ReadVariableOp_134ReadVariableOppi/conv2d_6/bias/Adam_2^AssignVariableOp_134*
dtype0*
_output_shapes
:
[
AssignVariableOp_135AssignVariableOppi/conv2d_6/bias/Adam_3Reshape_363*
dtype0
}
ReadVariableOp_135ReadVariableOppi/conv2d_6/bias/Adam_3^AssignVariableOp_135*
dtype0*
_output_shapes
:
]
AssignVariableOp_136AssignVariableOppi/conv2d_7/kernel/Adam_2Reshape_364*
dtype0

ReadVariableOp_136ReadVariableOppi/conv2d_7/kernel/Adam_2^AssignVariableOp_136*
dtype0*&
_output_shapes
:
]
AssignVariableOp_137AssignVariableOppi/conv2d_7/kernel/Adam_3Reshape_365*
dtype0

ReadVariableOp_137ReadVariableOppi/conv2d_7/kernel/Adam_3^AssignVariableOp_137*
dtype0*&
_output_shapes
:
[
AssignVariableOp_138AssignVariableOppi/conv2d_7/bias/Adam_2Reshape_366*
dtype0
}
ReadVariableOp_138ReadVariableOppi/conv2d_7/bias/Adam_2^AssignVariableOp_138*
dtype0*
_output_shapes
:
[
AssignVariableOp_139AssignVariableOppi/conv2d_7/bias/Adam_3Reshape_367*
dtype0
}
ReadVariableOp_139ReadVariableOppi/conv2d_7/bias/Adam_3^AssignVariableOp_139*
dtype0*
_output_shapes
:
Y
AssignVariableOp_140AssignVariableOpv/dense_2/kernel/AdamReshape_368*
dtype0

ReadVariableOp_140ReadVariableOpv/dense_2/kernel/Adam^AssignVariableOp_140*
dtype0*
_output_shapes
:	
[
AssignVariableOp_141AssignVariableOpv/dense_2/kernel/Adam_1Reshape_369*
dtype0

ReadVariableOp_141ReadVariableOpv/dense_2/kernel/Adam_1^AssignVariableOp_141*
dtype0*
_output_shapes
:	
W
AssignVariableOp_142AssignVariableOpv/dense_2/bias/AdamReshape_370*
dtype0
z
ReadVariableOp_142ReadVariableOpv/dense_2/bias/Adam^AssignVariableOp_142*
dtype0*
_output_shapes	
:
Y
AssignVariableOp_143AssignVariableOpv/dense_2/bias/Adam_1Reshape_371*
dtype0
|
ReadVariableOp_143ReadVariableOpv/dense_2/bias/Adam_1^AssignVariableOp_143*
dtype0*
_output_shapes	
:
Y
AssignVariableOp_144AssignVariableOpv/dense_3/kernel/AdamReshape_372*
dtype0

ReadVariableOp_144ReadVariableOpv/dense_3/kernel/Adam^AssignVariableOp_144*
dtype0*
_output_shapes
:	
[
AssignVariableOp_145AssignVariableOpv/dense_3/kernel/Adam_1Reshape_373*
dtype0

ReadVariableOp_145ReadVariableOpv/dense_3/kernel/Adam_1^AssignVariableOp_145*
dtype0*
_output_shapes
:	
W
AssignVariableOp_146AssignVariableOpv/dense_3/bias/AdamReshape_374*
dtype0
y
ReadVariableOp_146ReadVariableOpv/dense_3/bias/Adam^AssignVariableOp_146*
dtype0*
_output_shapes
:
Y
AssignVariableOp_147AssignVariableOpv/dense_3/bias/Adam_1Reshape_375*
dtype0
{
ReadVariableOp_147ReadVariableOpv/dense_3/bias/Adam_1^AssignVariableOp_147*
dtype0*
_output_shapes
:
Д
group_deps_4NoOp^ReadVariableOp_100^ReadVariableOp_101^ReadVariableOp_102^ReadVariableOp_103^ReadVariableOp_104^ReadVariableOp_105^ReadVariableOp_106^ReadVariableOp_107^ReadVariableOp_108^ReadVariableOp_109^ReadVariableOp_110^ReadVariableOp_111^ReadVariableOp_112^ReadVariableOp_113^ReadVariableOp_114^ReadVariableOp_115^ReadVariableOp_116^ReadVariableOp_117^ReadVariableOp_118^ReadVariableOp_119^ReadVariableOp_120^ReadVariableOp_121^ReadVariableOp_122^ReadVariableOp_123^ReadVariableOp_124^ReadVariableOp_125^ReadVariableOp_126^ReadVariableOp_127^ReadVariableOp_128^ReadVariableOp_129^ReadVariableOp_130^ReadVariableOp_131^ReadVariableOp_132^ReadVariableOp_133^ReadVariableOp_134^ReadVariableOp_135^ReadVariableOp_136^ReadVariableOp_137^ReadVariableOp_138^ReadVariableOp_139^ReadVariableOp_140^ReadVariableOp_141^ReadVariableOp_142^ReadVariableOp_143^ReadVariableOp_144^ReadVariableOp_145^ReadVariableOp_146^ReadVariableOp_147^ReadVariableOp_40^ReadVariableOp_41^ReadVariableOp_42^ReadVariableOp_43^ReadVariableOp_44^ReadVariableOp_45^ReadVariableOp_46^ReadVariableOp_47^ReadVariableOp_48^ReadVariableOp_49^ReadVariableOp_50^ReadVariableOp_51^ReadVariableOp_52^ReadVariableOp_53^ReadVariableOp_54^ReadVariableOp_55^ReadVariableOp_56^ReadVariableOp_57^ReadVariableOp_58^ReadVariableOp_59^ReadVariableOp_60^ReadVariableOp_61^ReadVariableOp_62^ReadVariableOp_63^ReadVariableOp_64^ReadVariableOp_65^ReadVariableOp_66^ReadVariableOp_67^ReadVariableOp_68^ReadVariableOp_69^ReadVariableOp_70^ReadVariableOp_71^ReadVariableOp_72^ReadVariableOp_73^ReadVariableOp_74^ReadVariableOp_75^ReadVariableOp_76^ReadVariableOp_77^ReadVariableOp_78^ReadVariableOp_79^ReadVariableOp_80^ReadVariableOp_81^ReadVariableOp_82^ReadVariableOp_83^ReadVariableOp_84^ReadVariableOp_85^ReadVariableOp_86^ReadVariableOp_87^ReadVariableOp_88^ReadVariableOp_89^ReadVariableOp_90^ReadVariableOp_91^ReadVariableOp_92^ReadVariableOp_93^ReadVariableOp_94^ReadVariableOp_95^ReadVariableOp_96^ReadVariableOp_97^ReadVariableOp_98^ReadVariableOp_99
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_45ca906b4afa46de998f598dfde0cc51/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 

save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:l*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1
О
save/SaveV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
ћ%
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOp"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_2/bias/Read/ReadVariableOp)pi/conv2d_2/bias/Adam/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_2/kernel/Read/ReadVariableOp+pi/conv2d_2/kernel/Adam/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_3/bias/Read/ReadVariableOp)pi/conv2d_3/bias/Adam/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_3/kernel/Read/ReadVariableOp+pi/conv2d_3/kernel/Adam/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_4/bias/Read/ReadVariableOp)pi/conv2d_4/bias/Adam/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_4/kernel/Read/ReadVariableOp+pi/conv2d_4/kernel/Adam/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_5/bias/Read/ReadVariableOp)pi/conv2d_5/bias/Adam/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_5/kernel/Read/ReadVariableOp+pi/conv2d_5/kernel/Adam/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_6/bias/Read/ReadVariableOp)pi/conv2d_6/bias/Adam/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_6/kernel/Read/ReadVariableOp+pi/conv2d_6/kernel/Adam/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_7/bias/Read/ReadVariableOp)pi/conv2d_7/bias/Adam/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_7/kernel/Read/ReadVariableOp+pi/conv2d_7/kernel/Adam/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp"v/dense_2/bias/Read/ReadVariableOp'v/dense_2/bias/Adam/Read/ReadVariableOp)v/dense_2/bias/Adam_1/Read/ReadVariableOp$v/dense_2/kernel/Read/ReadVariableOp)v/dense_2/kernel/Adam/Read/ReadVariableOp+v/dense_2/kernel/Adam_1/Read/ReadVariableOp"v/dense_3/bias/Read/ReadVariableOp'v/dense_3/bias/Adam/Read/ReadVariableOp)v/dense_3/bias/Adam_1/Read/ReadVariableOp$v/dense_3/kernel/Read/ReadVariableOp)v/dense_3/kernel/Adam/Read/ReadVariableOp+v/dense_3/kernel/Adam_1/Read/ReadVariableOp*z
dtypesp
n2l

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:l
С
save/RestoreV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
Њ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*z
dtypesp
n2l
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpbeta1_powersave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
X
save/AssignVariableOp_1AssignVariableOpbeta1_power_1save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
_output_shapes
:*
T0
V
save/AssignVariableOp_2AssignVariableOpbeta2_powersave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
X
save/AssignVariableOp_3AssignVariableOpbeta2_power_1save/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
Y
save/AssignVariableOp_4AssignVariableOppi/conv2d/biassave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
^
save/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
_output_shapes
:*
T0
`
save/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
_output_shapes
:*
T0
`
save/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
`
save/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
\
save/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
b
save/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
d
save/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
d
save/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
d
save/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
_output_shapes
:*
T0
]
save/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
b
save/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
d
save/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
d
save/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
_output_shapes
:*
T0
d
save/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
_
save/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
d
save/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
f
save/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
f
save/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
f
save/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
_output_shapes
:*
T0
]
save/AssignVariableOp_24AssignVariableOppi/conv2d_2/biassave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
b
save/AssignVariableOp_25AssignVariableOppi/conv2d_2/bias/Adamsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
_output_shapes
:*
T0
d
save/AssignVariableOp_26AssignVariableOppi/conv2d_2/bias/Adam_1save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
d
save/AssignVariableOp_27AssignVariableOppi/conv2d_2/bias/Adam_2save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
d
save/AssignVariableOp_28AssignVariableOppi/conv2d_2/bias/Adam_3save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
_
save/AssignVariableOp_29AssignVariableOppi/conv2d_2/kernelsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
d
save/AssignVariableOp_30AssignVariableOppi/conv2d_2/kernel/Adamsave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
f
save/AssignVariableOp_31AssignVariableOppi/conv2d_2/kernel/Adam_1save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
f
save/AssignVariableOp_32AssignVariableOppi/conv2d_2/kernel/Adam_2save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
f
save/AssignVariableOp_33AssignVariableOppi/conv2d_2/kernel/Adam_3save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
]
save/AssignVariableOp_34AssignVariableOppi/conv2d_3/biassave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
b
save/AssignVariableOp_35AssignVariableOppi/conv2d_3/bias/Adamsave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
d
save/AssignVariableOp_36AssignVariableOppi/conv2d_3/bias/Adam_1save/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
d
save/AssignVariableOp_37AssignVariableOppi/conv2d_3/bias/Adam_2save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
d
save/AssignVariableOp_38AssignVariableOppi/conv2d_3/bias/Adam_3save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
_
save/AssignVariableOp_39AssignVariableOppi/conv2d_3/kernelsave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
d
save/AssignVariableOp_40AssignVariableOppi/conv2d_3/kernel/Adamsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
f
save/AssignVariableOp_41AssignVariableOppi/conv2d_3/kernel/Adam_1save/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
_output_shapes
:*
T0
f
save/AssignVariableOp_42AssignVariableOppi/conv2d_3/kernel/Adam_2save/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
_output_shapes
:*
T0
f
save/AssignVariableOp_43AssignVariableOppi/conv2d_3/kernel/Adam_3save/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
]
save/AssignVariableOp_44AssignVariableOppi/conv2d_4/biassave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
_output_shapes
:*
T0
b
save/AssignVariableOp_45AssignVariableOppi/conv2d_4/bias/Adamsave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
d
save/AssignVariableOp_46AssignVariableOppi/conv2d_4/bias/Adam_1save/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
d
save/AssignVariableOp_47AssignVariableOppi/conv2d_4/bias/Adam_2save/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
d
save/AssignVariableOp_48AssignVariableOppi/conv2d_4/bias/Adam_3save/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
T0*
_output_shapes
:
_
save/AssignVariableOp_49AssignVariableOppi/conv2d_4/kernelsave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
T0*
_output_shapes
:
d
save/AssignVariableOp_50AssignVariableOppi/conv2d_4/kernel/Adamsave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
_output_shapes
:*
T0
f
save/AssignVariableOp_51AssignVariableOppi/conv2d_4/kernel/Adam_1save/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
_output_shapes
:*
T0
f
save/AssignVariableOp_52AssignVariableOppi/conv2d_4/kernel/Adam_2save/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:
f
save/AssignVariableOp_53AssignVariableOppi/conv2d_4/kernel/Adam_3save/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
_output_shapes
:*
T0
]
save/AssignVariableOp_54AssignVariableOppi/conv2d_5/biassave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
T0*
_output_shapes
:
b
save/AssignVariableOp_55AssignVariableOppi/conv2d_5/bias/Adamsave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:
d
save/AssignVariableOp_56AssignVariableOppi/conv2d_5/bias/Adam_1save/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:57*
_output_shapes
:*
T0
d
save/AssignVariableOp_57AssignVariableOppi/conv2d_5/bias/Adam_2save/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:58*
_output_shapes
:*
T0
d
save/AssignVariableOp_58AssignVariableOppi/conv2d_5/bias/Adam_3save/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:59*
_output_shapes
:*
T0
_
save/AssignVariableOp_59AssignVariableOppi/conv2d_5/kernelsave/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:60*
T0*
_output_shapes
:
d
save/AssignVariableOp_60AssignVariableOppi/conv2d_5/kernel/Adamsave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:61*
_output_shapes
:*
T0
f
save/AssignVariableOp_61AssignVariableOppi/conv2d_5/kernel/Adam_1save/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
_output_shapes
:*
T0
f
save/AssignVariableOp_62AssignVariableOppi/conv2d_5/kernel/Adam_2save/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
T0*
_output_shapes
:
f
save/AssignVariableOp_63AssignVariableOppi/conv2d_5/kernel/Adam_3save/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
]
save/AssignVariableOp_64AssignVariableOppi/conv2d_6/biassave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
b
save/AssignVariableOp_65AssignVariableOppi/conv2d_6/bias/Adamsave/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
d
save/AssignVariableOp_66AssignVariableOppi/conv2d_6/bias/Adam_1save/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:67*
_output_shapes
:*
T0
d
save/AssignVariableOp_67AssignVariableOppi/conv2d_6/bias/Adam_2save/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
d
save/AssignVariableOp_68AssignVariableOppi/conv2d_6/bias/Adam_3save/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:69*
T0*
_output_shapes
:
_
save/AssignVariableOp_69AssignVariableOppi/conv2d_6/kernelsave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:70*
T0*
_output_shapes
:
d
save/AssignVariableOp_70AssignVariableOppi/conv2d_6/kernel/Adamsave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:71*
T0*
_output_shapes
:
f
save/AssignVariableOp_71AssignVariableOppi/conv2d_6/kernel/Adam_1save/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
_output_shapes
:*
T0
f
save/AssignVariableOp_72AssignVariableOppi/conv2d_6/kernel/Adam_2save/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
_output_shapes
:*
T0
f
save/AssignVariableOp_73AssignVariableOppi/conv2d_6/kernel/Adam_3save/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:74*
T0*
_output_shapes
:
]
save/AssignVariableOp_74AssignVariableOppi/conv2d_7/biassave/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
b
save/AssignVariableOp_75AssignVariableOppi/conv2d_7/bias/Adamsave/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:
d
save/AssignVariableOp_76AssignVariableOppi/conv2d_7/bias/Adam_1save/Identity_77*
dtype0
R
save/Identity_78Identitysave/RestoreV2:77*
_output_shapes
:*
T0
d
save/AssignVariableOp_77AssignVariableOppi/conv2d_7/bias/Adam_2save/Identity_78*
dtype0
R
save/Identity_79Identitysave/RestoreV2:78*
T0*
_output_shapes
:
d
save/AssignVariableOp_78AssignVariableOppi/conv2d_7/bias/Adam_3save/Identity_79*
dtype0
R
save/Identity_80Identitysave/RestoreV2:79*
T0*
_output_shapes
:
_
save/AssignVariableOp_79AssignVariableOppi/conv2d_7/kernelsave/Identity_80*
dtype0
R
save/Identity_81Identitysave/RestoreV2:80*
_output_shapes
:*
T0
d
save/AssignVariableOp_80AssignVariableOppi/conv2d_7/kernel/Adamsave/Identity_81*
dtype0
R
save/Identity_82Identitysave/RestoreV2:81*
T0*
_output_shapes
:
f
save/AssignVariableOp_81AssignVariableOppi/conv2d_7/kernel/Adam_1save/Identity_82*
dtype0
R
save/Identity_83Identitysave/RestoreV2:82*
T0*
_output_shapes
:
f
save/AssignVariableOp_82AssignVariableOppi/conv2d_7/kernel/Adam_2save/Identity_83*
dtype0
R
save/Identity_84Identitysave/RestoreV2:83*
T0*
_output_shapes
:
f
save/AssignVariableOp_83AssignVariableOppi/conv2d_7/kernel/Adam_3save/Identity_84*
dtype0
R
save/Identity_85Identitysave/RestoreV2:84*
T0*
_output_shapes
:
Z
save/AssignVariableOp_84AssignVariableOppi/dense/biassave/Identity_85*
dtype0
R
save/Identity_86Identitysave/RestoreV2:85*
_output_shapes
:*
T0
_
save/AssignVariableOp_85AssignVariableOppi/dense/bias/Adamsave/Identity_86*
dtype0
R
save/Identity_87Identitysave/RestoreV2:86*
T0*
_output_shapes
:
a
save/AssignVariableOp_86AssignVariableOppi/dense/bias/Adam_1save/Identity_87*
dtype0
R
save/Identity_88Identitysave/RestoreV2:87*
T0*
_output_shapes
:
\
save/AssignVariableOp_87AssignVariableOppi/dense/kernelsave/Identity_88*
dtype0
R
save/Identity_89Identitysave/RestoreV2:88*
_output_shapes
:*
T0
a
save/AssignVariableOp_88AssignVariableOppi/dense/kernel/Adamsave/Identity_89*
dtype0
R
save/Identity_90Identitysave/RestoreV2:89*
T0*
_output_shapes
:
c
save/AssignVariableOp_89AssignVariableOppi/dense/kernel/Adam_1save/Identity_90*
dtype0
R
save/Identity_91Identitysave/RestoreV2:90*
T0*
_output_shapes
:
\
save/AssignVariableOp_90AssignVariableOppi/dense_1/biassave/Identity_91*
dtype0
R
save/Identity_92Identitysave/RestoreV2:91*
_output_shapes
:*
T0
a
save/AssignVariableOp_91AssignVariableOppi/dense_1/bias/Adamsave/Identity_92*
dtype0
R
save/Identity_93Identitysave/RestoreV2:92*
T0*
_output_shapes
:
c
save/AssignVariableOp_92AssignVariableOppi/dense_1/bias/Adam_1save/Identity_93*
dtype0
R
save/Identity_94Identitysave/RestoreV2:93*
T0*
_output_shapes
:
^
save/AssignVariableOp_93AssignVariableOppi/dense_1/kernelsave/Identity_94*
dtype0
R
save/Identity_95Identitysave/RestoreV2:94*
T0*
_output_shapes
:
c
save/AssignVariableOp_94AssignVariableOppi/dense_1/kernel/Adamsave/Identity_95*
dtype0
R
save/Identity_96Identitysave/RestoreV2:95*
T0*
_output_shapes
:
e
save/AssignVariableOp_95AssignVariableOppi/dense_1/kernel/Adam_1save/Identity_96*
dtype0
R
save/Identity_97Identitysave/RestoreV2:96*
T0*
_output_shapes
:
[
save/AssignVariableOp_96AssignVariableOpv/dense_2/biassave/Identity_97*
dtype0
R
save/Identity_98Identitysave/RestoreV2:97*
_output_shapes
:*
T0
`
save/AssignVariableOp_97AssignVariableOpv/dense_2/bias/Adamsave/Identity_98*
dtype0
R
save/Identity_99Identitysave/RestoreV2:98*
T0*
_output_shapes
:
b
save/AssignVariableOp_98AssignVariableOpv/dense_2/bias/Adam_1save/Identity_99*
dtype0
S
save/Identity_100Identitysave/RestoreV2:99*
T0*
_output_shapes
:
^
save/AssignVariableOp_99AssignVariableOpv/dense_2/kernelsave/Identity_100*
dtype0
T
save/Identity_101Identitysave/RestoreV2:100*
T0*
_output_shapes
:
d
save/AssignVariableOp_100AssignVariableOpv/dense_2/kernel/Adamsave/Identity_101*
dtype0
T
save/Identity_102Identitysave/RestoreV2:101*
T0*
_output_shapes
:
f
save/AssignVariableOp_101AssignVariableOpv/dense_2/kernel/Adam_1save/Identity_102*
dtype0
T
save/Identity_103Identitysave/RestoreV2:102*
T0*
_output_shapes
:
]
save/AssignVariableOp_102AssignVariableOpv/dense_3/biassave/Identity_103*
dtype0
T
save/Identity_104Identitysave/RestoreV2:103*
T0*
_output_shapes
:
b
save/AssignVariableOp_103AssignVariableOpv/dense_3/bias/Adamsave/Identity_104*
dtype0
T
save/Identity_105Identitysave/RestoreV2:104*
T0*
_output_shapes
:
d
save/AssignVariableOp_104AssignVariableOpv/dense_3/bias/Adam_1save/Identity_105*
dtype0
T
save/Identity_106Identitysave/RestoreV2:105*
T0*
_output_shapes
:
_
save/AssignVariableOp_105AssignVariableOpv/dense_3/kernelsave/Identity_106*
dtype0
T
save/Identity_107Identitysave/RestoreV2:106*
_output_shapes
:*
T0
d
save/AssignVariableOp_106AssignVariableOpv/dense_3/kernel/Adamsave/Identity_107*
dtype0
T
save/Identity_108Identitysave/RestoreV2:107*
T0*
_output_shapes
:
f
save/AssignVariableOp_107AssignVariableOpv/dense_3/kernel/Adam_1save/Identity_108*
dtype0
њ
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_9^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
-
save/restore_allNoOp^save/restore_shard "<
save/Const:0save/Identity:0save/restore_all (5 @F8"Л
trainable_variablesЃ 

pi/conv2d/kernel:0pi/conv2d/kernel/Assign&pi/conv2d/kernel/Read/ReadVariableOp:0(2-pi/conv2d/kernel/Initializer/random_uniform:08
w
pi/conv2d/bias:0pi/conv2d/bias/Assign$pi/conv2d/bias/Read/ReadVariableOp:0(2"pi/conv2d/bias/Initializer/zeros:08

pi/conv2d_1/kernel:0pi/conv2d_1/kernel/Assign(pi/conv2d_1/kernel/Read/ReadVariableOp:0(2/pi/conv2d_1/kernel/Initializer/random_uniform:08

pi/conv2d_1/bias:0pi/conv2d_1/bias/Assign&pi/conv2d_1/bias/Read/ReadVariableOp:0(2$pi/conv2d_1/bias/Initializer/zeros:08

pi/conv2d_2/kernel:0pi/conv2d_2/kernel/Assign(pi/conv2d_2/kernel/Read/ReadVariableOp:0(2/pi/conv2d_2/kernel/Initializer/random_uniform:08

pi/conv2d_2/bias:0pi/conv2d_2/bias/Assign&pi/conv2d_2/bias/Read/ReadVariableOp:0(2$pi/conv2d_2/bias/Initializer/zeros:08

pi/conv2d_3/kernel:0pi/conv2d_3/kernel/Assign(pi/conv2d_3/kernel/Read/ReadVariableOp:0(2/pi/conv2d_3/kernel/Initializer/random_uniform:08

pi/conv2d_3/bias:0pi/conv2d_3/bias/Assign&pi/conv2d_3/bias/Read/ReadVariableOp:0(2$pi/conv2d_3/bias/Initializer/zeros:08

pi/conv2d_4/kernel:0pi/conv2d_4/kernel/Assign(pi/conv2d_4/kernel/Read/ReadVariableOp:0(2/pi/conv2d_4/kernel/Initializer/random_uniform:08

pi/conv2d_4/bias:0pi/conv2d_4/bias/Assign&pi/conv2d_4/bias/Read/ReadVariableOp:0(2$pi/conv2d_4/bias/Initializer/zeros:08

pi/conv2d_5/kernel:0pi/conv2d_5/kernel/Assign(pi/conv2d_5/kernel/Read/ReadVariableOp:0(2/pi/conv2d_5/kernel/Initializer/random_uniform:08

pi/conv2d_5/bias:0pi/conv2d_5/bias/Assign&pi/conv2d_5/bias/Read/ReadVariableOp:0(2$pi/conv2d_5/bias/Initializer/zeros:08

pi/conv2d_6/kernel:0pi/conv2d_6/kernel/Assign(pi/conv2d_6/kernel/Read/ReadVariableOp:0(2/pi/conv2d_6/kernel/Initializer/random_uniform:08

pi/conv2d_6/bias:0pi/conv2d_6/bias/Assign&pi/conv2d_6/bias/Read/ReadVariableOp:0(2$pi/conv2d_6/bias/Initializer/zeros:08

pi/conv2d_7/kernel:0pi/conv2d_7/kernel/Assign(pi/conv2d_7/kernel/Read/ReadVariableOp:0(2/pi/conv2d_7/kernel/Initializer/random_uniform:08

pi/conv2d_7/bias:0pi/conv2d_7/bias/Assign&pi/conv2d_7/bias/Read/ReadVariableOp:0(2$pi/conv2d_7/bias/Initializer/zeros:08

pi/dense/kernel:0pi/dense/kernel/Assign%pi/dense/kernel/Read/ReadVariableOp:0(2,pi/dense/kernel/Initializer/random_uniform:08
s
pi/dense/bias:0pi/dense/bias/Assign#pi/dense/bias/Read/ReadVariableOp:0(2!pi/dense/bias/Initializer/zeros:08

pi/dense_1/kernel:0pi/dense_1/kernel/Assign'pi/dense_1/kernel/Read/ReadVariableOp:0(2.pi/dense_1/kernel/Initializer/random_uniform:08
{
pi/dense_1/bias:0pi/dense_1/bias/Assign%pi/dense_1/bias/Read/ReadVariableOp:0(2#pi/dense_1/bias/Initializer/zeros:08

v/dense_2/kernel:0v/dense_2/kernel/Assign&v/dense_2/kernel/Read/ReadVariableOp:0(2-v/dense_2/kernel/Initializer/random_uniform:08
w
v/dense_2/bias:0v/dense_2/bias/Assign$v/dense_2/bias/Read/ReadVariableOp:0(2"v/dense_2/bias/Initializer/zeros:08

v/dense_3/kernel:0v/dense_3/kernel/Assign&v/dense_3/kernel/Read/ReadVariableOp:0(2-v/dense_3/kernel/Initializer/random_uniform:08
w
v/dense_3/bias:0v/dense_3/bias/Assign$v/dense_3/bias/Read/ReadVariableOp:0(2"v/dense_3/bias/Initializer/zeros:08" 
	summaries

pi_loss/summaries/mean_1:0
pi_loss/summaries/stddev_1:0
pi_loss/summaries/max_1:0
pi_loss/summaries/min_1:0
pi_loss/summaries/histogram:0"
train_op

Adam
Adam_1"~
	variablesџ}ќ}

pi/conv2d/kernel:0pi/conv2d/kernel/Assign&pi/conv2d/kernel/Read/ReadVariableOp:0(2-pi/conv2d/kernel/Initializer/random_uniform:08
w
pi/conv2d/bias:0pi/conv2d/bias/Assign$pi/conv2d/bias/Read/ReadVariableOp:0(2"pi/conv2d/bias/Initializer/zeros:08

pi/conv2d_1/kernel:0pi/conv2d_1/kernel/Assign(pi/conv2d_1/kernel/Read/ReadVariableOp:0(2/pi/conv2d_1/kernel/Initializer/random_uniform:08

pi/conv2d_1/bias:0pi/conv2d_1/bias/Assign&pi/conv2d_1/bias/Read/ReadVariableOp:0(2$pi/conv2d_1/bias/Initializer/zeros:08

pi/conv2d_2/kernel:0pi/conv2d_2/kernel/Assign(pi/conv2d_2/kernel/Read/ReadVariableOp:0(2/pi/conv2d_2/kernel/Initializer/random_uniform:08

pi/conv2d_2/bias:0pi/conv2d_2/bias/Assign&pi/conv2d_2/bias/Read/ReadVariableOp:0(2$pi/conv2d_2/bias/Initializer/zeros:08

pi/conv2d_3/kernel:0pi/conv2d_3/kernel/Assign(pi/conv2d_3/kernel/Read/ReadVariableOp:0(2/pi/conv2d_3/kernel/Initializer/random_uniform:08

pi/conv2d_3/bias:0pi/conv2d_3/bias/Assign&pi/conv2d_3/bias/Read/ReadVariableOp:0(2$pi/conv2d_3/bias/Initializer/zeros:08

pi/conv2d_4/kernel:0pi/conv2d_4/kernel/Assign(pi/conv2d_4/kernel/Read/ReadVariableOp:0(2/pi/conv2d_4/kernel/Initializer/random_uniform:08

pi/conv2d_4/bias:0pi/conv2d_4/bias/Assign&pi/conv2d_4/bias/Read/ReadVariableOp:0(2$pi/conv2d_4/bias/Initializer/zeros:08

pi/conv2d_5/kernel:0pi/conv2d_5/kernel/Assign(pi/conv2d_5/kernel/Read/ReadVariableOp:0(2/pi/conv2d_5/kernel/Initializer/random_uniform:08

pi/conv2d_5/bias:0pi/conv2d_5/bias/Assign&pi/conv2d_5/bias/Read/ReadVariableOp:0(2$pi/conv2d_5/bias/Initializer/zeros:08

pi/conv2d_6/kernel:0pi/conv2d_6/kernel/Assign(pi/conv2d_6/kernel/Read/ReadVariableOp:0(2/pi/conv2d_6/kernel/Initializer/random_uniform:08

pi/conv2d_6/bias:0pi/conv2d_6/bias/Assign&pi/conv2d_6/bias/Read/ReadVariableOp:0(2$pi/conv2d_6/bias/Initializer/zeros:08

pi/conv2d_7/kernel:0pi/conv2d_7/kernel/Assign(pi/conv2d_7/kernel/Read/ReadVariableOp:0(2/pi/conv2d_7/kernel/Initializer/random_uniform:08

pi/conv2d_7/bias:0pi/conv2d_7/bias/Assign&pi/conv2d_7/bias/Read/ReadVariableOp:0(2$pi/conv2d_7/bias/Initializer/zeros:08

pi/dense/kernel:0pi/dense/kernel/Assign%pi/dense/kernel/Read/ReadVariableOp:0(2,pi/dense/kernel/Initializer/random_uniform:08
s
pi/dense/bias:0pi/dense/bias/Assign#pi/dense/bias/Read/ReadVariableOp:0(2!pi/dense/bias/Initializer/zeros:08

pi/dense_1/kernel:0pi/dense_1/kernel/Assign'pi/dense_1/kernel/Read/ReadVariableOp:0(2.pi/dense_1/kernel/Initializer/random_uniform:08
{
pi/dense_1/bias:0pi/dense_1/bias/Assign%pi/dense_1/bias/Read/ReadVariableOp:0(2#pi/dense_1/bias/Initializer/zeros:08

v/dense_2/kernel:0v/dense_2/kernel/Assign&v/dense_2/kernel/Read/ReadVariableOp:0(2-v/dense_2/kernel/Initializer/random_uniform:08
w
v/dense_2/bias:0v/dense_2/bias/Assign$v/dense_2/bias/Read/ReadVariableOp:0(2"v/dense_2/bias/Initializer/zeros:08

v/dense_3/kernel:0v/dense_3/kernel/Assign&v/dense_3/kernel/Read/ReadVariableOp:0(2-v/dense_3/kernel/Initializer/random_uniform:08
w
v/dense_3/bias:0v/dense_3/bias/Assign$v/dense_3/bias/Read/ReadVariableOp:0(2"v/dense_3/bias/Initializer/zeros:08
q
beta1_power:0beta1_power/Assign!beta1_power/Read/ReadVariableOp:0(2'beta1_power/Initializer/initial_value:0
q
beta2_power:0beta2_power/Assign!beta2_power/Read/ReadVariableOp:0(2'beta2_power/Initializer/initial_value:0

pi/conv2d/kernel/Adam:0pi/conv2d/kernel/Adam/Assign+pi/conv2d/kernel/Adam/Read/ReadVariableOp:0(2)pi/conv2d/kernel/Adam/Initializer/zeros:0

pi/conv2d/kernel/Adam_1:0pi/conv2d/kernel/Adam_1/Assign-pi/conv2d/kernel/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d/kernel/Adam_1/Initializer/zeros:0

pi/conv2d/bias/Adam:0pi/conv2d/bias/Adam/Assign)pi/conv2d/bias/Adam/Read/ReadVariableOp:0(2'pi/conv2d/bias/Adam/Initializer/zeros:0

pi/conv2d/bias/Adam_1:0pi/conv2d/bias/Adam_1/Assign+pi/conv2d/bias/Adam_1/Read/ReadVariableOp:0(2)pi/conv2d/bias/Adam_1/Initializer/zeros:0

pi/conv2d_1/kernel/Adam:0pi/conv2d_1/kernel/Adam/Assign-pi/conv2d_1/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_1/kernel/Adam/Initializer/zeros:0
Ё
pi/conv2d_1/kernel/Adam_1:0 pi/conv2d_1/kernel/Adam_1/Assign/pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_1/kernel/Adam_1/Initializer/zeros:0

pi/conv2d_1/bias/Adam:0pi/conv2d_1/bias/Adam/Assign+pi/conv2d_1/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_1/bias/Adam/Initializer/zeros:0

pi/conv2d_1/bias/Adam_1:0pi/conv2d_1/bias/Adam_1/Assign-pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_1/bias/Adam_1/Initializer/zeros:0

pi/conv2d_2/kernel/Adam:0pi/conv2d_2/kernel/Adam/Assign-pi/conv2d_2/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_2/kernel/Adam/Initializer/zeros:0
Ё
pi/conv2d_2/kernel/Adam_1:0 pi/conv2d_2/kernel/Adam_1/Assign/pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_2/kernel/Adam_1/Initializer/zeros:0

pi/conv2d_2/bias/Adam:0pi/conv2d_2/bias/Adam/Assign+pi/conv2d_2/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_2/bias/Adam/Initializer/zeros:0

pi/conv2d_2/bias/Adam_1:0pi/conv2d_2/bias/Adam_1/Assign-pi/conv2d_2/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_2/bias/Adam_1/Initializer/zeros:0

pi/conv2d_3/kernel/Adam:0pi/conv2d_3/kernel/Adam/Assign-pi/conv2d_3/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_3/kernel/Adam/Initializer/zeros:0
Ё
pi/conv2d_3/kernel/Adam_1:0 pi/conv2d_3/kernel/Adam_1/Assign/pi/conv2d_3/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_3/kernel/Adam_1/Initializer/zeros:0

pi/conv2d_3/bias/Adam:0pi/conv2d_3/bias/Adam/Assign+pi/conv2d_3/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_3/bias/Adam/Initializer/zeros:0

pi/conv2d_3/bias/Adam_1:0pi/conv2d_3/bias/Adam_1/Assign-pi/conv2d_3/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_3/bias/Adam_1/Initializer/zeros:0

pi/conv2d_4/kernel/Adam:0pi/conv2d_4/kernel/Adam/Assign-pi/conv2d_4/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_4/kernel/Adam/Initializer/zeros:0
Ё
pi/conv2d_4/kernel/Adam_1:0 pi/conv2d_4/kernel/Adam_1/Assign/pi/conv2d_4/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_4/kernel/Adam_1/Initializer/zeros:0

pi/conv2d_4/bias/Adam:0pi/conv2d_4/bias/Adam/Assign+pi/conv2d_4/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_4/bias/Adam/Initializer/zeros:0

pi/conv2d_4/bias/Adam_1:0pi/conv2d_4/bias/Adam_1/Assign-pi/conv2d_4/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_4/bias/Adam_1/Initializer/zeros:0

pi/conv2d_5/kernel/Adam:0pi/conv2d_5/kernel/Adam/Assign-pi/conv2d_5/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_5/kernel/Adam/Initializer/zeros:0
Ё
pi/conv2d_5/kernel/Adam_1:0 pi/conv2d_5/kernel/Adam_1/Assign/pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_5/kernel/Adam_1/Initializer/zeros:0

pi/conv2d_5/bias/Adam:0pi/conv2d_5/bias/Adam/Assign+pi/conv2d_5/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_5/bias/Adam/Initializer/zeros:0

pi/conv2d_5/bias/Adam_1:0pi/conv2d_5/bias/Adam_1/Assign-pi/conv2d_5/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_5/bias/Adam_1/Initializer/zeros:0

pi/conv2d_6/kernel/Adam:0pi/conv2d_6/kernel/Adam/Assign-pi/conv2d_6/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_6/kernel/Adam/Initializer/zeros:0
Ё
pi/conv2d_6/kernel/Adam_1:0 pi/conv2d_6/kernel/Adam_1/Assign/pi/conv2d_6/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_6/kernel/Adam_1/Initializer/zeros:0

pi/conv2d_6/bias/Adam:0pi/conv2d_6/bias/Adam/Assign+pi/conv2d_6/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_6/bias/Adam/Initializer/zeros:0

pi/conv2d_6/bias/Adam_1:0pi/conv2d_6/bias/Adam_1/Assign-pi/conv2d_6/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_6/bias/Adam_1/Initializer/zeros:0

pi/conv2d_7/kernel/Adam:0pi/conv2d_7/kernel/Adam/Assign-pi/conv2d_7/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_7/kernel/Adam/Initializer/zeros:0
Ё
pi/conv2d_7/kernel/Adam_1:0 pi/conv2d_7/kernel/Adam_1/Assign/pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_7/kernel/Adam_1/Initializer/zeros:0

pi/conv2d_7/bias/Adam:0pi/conv2d_7/bias/Adam/Assign+pi/conv2d_7/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_7/bias/Adam/Initializer/zeros:0

pi/conv2d_7/bias/Adam_1:0pi/conv2d_7/bias/Adam_1/Assign-pi/conv2d_7/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_7/bias/Adam_1/Initializer/zeros:0

pi/dense/kernel/Adam:0pi/dense/kernel/Adam/Assign*pi/dense/kernel/Adam/Read/ReadVariableOp:0(2(pi/dense/kernel/Adam/Initializer/zeros:0

pi/dense/kernel/Adam_1:0pi/dense/kernel/Adam_1/Assign,pi/dense/kernel/Adam_1/Read/ReadVariableOp:0(2*pi/dense/kernel/Adam_1/Initializer/zeros:0

pi/dense/bias/Adam:0pi/dense/bias/Adam/Assign(pi/dense/bias/Adam/Read/ReadVariableOp:0(2&pi/dense/bias/Adam/Initializer/zeros:0

pi/dense/bias/Adam_1:0pi/dense/bias/Adam_1/Assign*pi/dense/bias/Adam_1/Read/ReadVariableOp:0(2(pi/dense/bias/Adam_1/Initializer/zeros:0

pi/dense_1/kernel/Adam:0pi/dense_1/kernel/Adam/Assign,pi/dense_1/kernel/Adam/Read/ReadVariableOp:0(2*pi/dense_1/kernel/Adam/Initializer/zeros:0

pi/dense_1/kernel/Adam_1:0pi/dense_1/kernel/Adam_1/Assign.pi/dense_1/kernel/Adam_1/Read/ReadVariableOp:0(2,pi/dense_1/kernel/Adam_1/Initializer/zeros:0

pi/dense_1/bias/Adam:0pi/dense_1/bias/Adam/Assign*pi/dense_1/bias/Adam/Read/ReadVariableOp:0(2(pi/dense_1/bias/Adam/Initializer/zeros:0

pi/dense_1/bias/Adam_1:0pi/dense_1/bias/Adam_1/Assign,pi/dense_1/bias/Adam_1/Read/ReadVariableOp:0(2*pi/dense_1/bias/Adam_1/Initializer/zeros:0
y
beta1_power_1:0beta1_power_1/Assign#beta1_power_1/Read/ReadVariableOp:0(2)beta1_power_1/Initializer/initial_value:0
y
beta2_power_1:0beta2_power_1/Assign#beta2_power_1/Read/ReadVariableOp:0(2)beta2_power_1/Initializer/initial_value:0

pi/conv2d/kernel/Adam_2:0pi/conv2d/kernel/Adam_2/Assign-pi/conv2d/kernel/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d/kernel/Adam_2/Initializer/zeros:0

pi/conv2d/kernel/Adam_3:0pi/conv2d/kernel/Adam_3/Assign-pi/conv2d/kernel/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d/kernel/Adam_3/Initializer/zeros:0

pi/conv2d/bias/Adam_2:0pi/conv2d/bias/Adam_2/Assign+pi/conv2d/bias/Adam_2/Read/ReadVariableOp:0(2)pi/conv2d/bias/Adam_2/Initializer/zeros:0

pi/conv2d/bias/Adam_3:0pi/conv2d/bias/Adam_3/Assign+pi/conv2d/bias/Adam_3/Read/ReadVariableOp:0(2)pi/conv2d/bias/Adam_3/Initializer/zeros:0
Ё
pi/conv2d_1/kernel/Adam_2:0 pi/conv2d_1/kernel/Adam_2/Assign/pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_1/kernel/Adam_2/Initializer/zeros:0
Ё
pi/conv2d_1/kernel/Adam_3:0 pi/conv2d_1/kernel/Adam_3/Assign/pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_1/kernel/Adam_3/Initializer/zeros:0

pi/conv2d_1/bias/Adam_2:0pi/conv2d_1/bias/Adam_2/Assign-pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_1/bias/Adam_2/Initializer/zeros:0

pi/conv2d_1/bias/Adam_3:0pi/conv2d_1/bias/Adam_3/Assign-pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_1/bias/Adam_3/Initializer/zeros:0
Ё
pi/conv2d_2/kernel/Adam_2:0 pi/conv2d_2/kernel/Adam_2/Assign/pi/conv2d_2/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_2/kernel/Adam_2/Initializer/zeros:0
Ё
pi/conv2d_2/kernel/Adam_3:0 pi/conv2d_2/kernel/Adam_3/Assign/pi/conv2d_2/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_2/kernel/Adam_3/Initializer/zeros:0

pi/conv2d_2/bias/Adam_2:0pi/conv2d_2/bias/Adam_2/Assign-pi/conv2d_2/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_2/bias/Adam_2/Initializer/zeros:0

pi/conv2d_2/bias/Adam_3:0pi/conv2d_2/bias/Adam_3/Assign-pi/conv2d_2/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_2/bias/Adam_3/Initializer/zeros:0
Ё
pi/conv2d_3/kernel/Adam_2:0 pi/conv2d_3/kernel/Adam_2/Assign/pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_3/kernel/Adam_2/Initializer/zeros:0
Ё
pi/conv2d_3/kernel/Adam_3:0 pi/conv2d_3/kernel/Adam_3/Assign/pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_3/kernel/Adam_3/Initializer/zeros:0

pi/conv2d_3/bias/Adam_2:0pi/conv2d_3/bias/Adam_2/Assign-pi/conv2d_3/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_3/bias/Adam_2/Initializer/zeros:0

pi/conv2d_3/bias/Adam_3:0pi/conv2d_3/bias/Adam_3/Assign-pi/conv2d_3/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_3/bias/Adam_3/Initializer/zeros:0
Ё
pi/conv2d_4/kernel/Adam_2:0 pi/conv2d_4/kernel/Adam_2/Assign/pi/conv2d_4/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_4/kernel/Adam_2/Initializer/zeros:0
Ё
pi/conv2d_4/kernel/Adam_3:0 pi/conv2d_4/kernel/Adam_3/Assign/pi/conv2d_4/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_4/kernel/Adam_3/Initializer/zeros:0

pi/conv2d_4/bias/Adam_2:0pi/conv2d_4/bias/Adam_2/Assign-pi/conv2d_4/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_4/bias/Adam_2/Initializer/zeros:0

pi/conv2d_4/bias/Adam_3:0pi/conv2d_4/bias/Adam_3/Assign-pi/conv2d_4/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_4/bias/Adam_3/Initializer/zeros:0
Ё
pi/conv2d_5/kernel/Adam_2:0 pi/conv2d_5/kernel/Adam_2/Assign/pi/conv2d_5/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_5/kernel/Adam_2/Initializer/zeros:0
Ё
pi/conv2d_5/kernel/Adam_3:0 pi/conv2d_5/kernel/Adam_3/Assign/pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_5/kernel/Adam_3/Initializer/zeros:0

pi/conv2d_5/bias/Adam_2:0pi/conv2d_5/bias/Adam_2/Assign-pi/conv2d_5/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_5/bias/Adam_2/Initializer/zeros:0

pi/conv2d_5/bias/Adam_3:0pi/conv2d_5/bias/Adam_3/Assign-pi/conv2d_5/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_5/bias/Adam_3/Initializer/zeros:0
Ё
pi/conv2d_6/kernel/Adam_2:0 pi/conv2d_6/kernel/Adam_2/Assign/pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_6/kernel/Adam_2/Initializer/zeros:0
Ё
pi/conv2d_6/kernel/Adam_3:0 pi/conv2d_6/kernel/Adam_3/Assign/pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_6/kernel/Adam_3/Initializer/zeros:0

pi/conv2d_6/bias/Adam_2:0pi/conv2d_6/bias/Adam_2/Assign-pi/conv2d_6/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_6/bias/Adam_2/Initializer/zeros:0

pi/conv2d_6/bias/Adam_3:0pi/conv2d_6/bias/Adam_3/Assign-pi/conv2d_6/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_6/bias/Adam_3/Initializer/zeros:0
Ё
pi/conv2d_7/kernel/Adam_2:0 pi/conv2d_7/kernel/Adam_2/Assign/pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_7/kernel/Adam_2/Initializer/zeros:0
Ё
pi/conv2d_7/kernel/Adam_3:0 pi/conv2d_7/kernel/Adam_3/Assign/pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_7/kernel/Adam_3/Initializer/zeros:0

pi/conv2d_7/bias/Adam_2:0pi/conv2d_7/bias/Adam_2/Assign-pi/conv2d_7/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_7/bias/Adam_2/Initializer/zeros:0

pi/conv2d_7/bias/Adam_3:0pi/conv2d_7/bias/Adam_3/Assign-pi/conv2d_7/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_7/bias/Adam_3/Initializer/zeros:0

v/dense_2/kernel/Adam:0v/dense_2/kernel/Adam/Assign+v/dense_2/kernel/Adam/Read/ReadVariableOp:0(2)v/dense_2/kernel/Adam/Initializer/zeros:0

v/dense_2/kernel/Adam_1:0v/dense_2/kernel/Adam_1/Assign-v/dense_2/kernel/Adam_1/Read/ReadVariableOp:0(2+v/dense_2/kernel/Adam_1/Initializer/zeros:0

v/dense_2/bias/Adam:0v/dense_2/bias/Adam/Assign)v/dense_2/bias/Adam/Read/ReadVariableOp:0(2'v/dense_2/bias/Adam/Initializer/zeros:0

v/dense_2/bias/Adam_1:0v/dense_2/bias/Adam_1/Assign+v/dense_2/bias/Adam_1/Read/ReadVariableOp:0(2)v/dense_2/bias/Adam_1/Initializer/zeros:0

v/dense_3/kernel/Adam:0v/dense_3/kernel/Adam/Assign+v/dense_3/kernel/Adam/Read/ReadVariableOp:0(2)v/dense_3/kernel/Adam/Initializer/zeros:0

v/dense_3/kernel/Adam_1:0v/dense_3/kernel/Adam_1/Assign-v/dense_3/kernel/Adam_1/Read/ReadVariableOp:0(2+v/dense_3/kernel/Adam_1/Initializer/zeros:0

v/dense_3/bias/Adam:0v/dense_3/bias/Adam/Assign)v/dense_3/bias/Adam/Read/ReadVariableOp:0(2'v/dense_3/bias/Adam/Initializer/zeros:0

v/dense_3/bias/Adam_1:0v/dense_3/bias/Adam_1/Assign+v/dense_3/bias/Adam_1/Read/ReadVariableOp:0(2)v/dense_3/bias/Adam_1/Initializer/zeros:0*
serving_default
(
x#
Placeholder:0
v
v/Squeeze:0
pi
pi/Squeeze:0	tensorflow/serving/predict