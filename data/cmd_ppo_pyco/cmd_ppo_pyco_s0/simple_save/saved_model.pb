Ц%
4є3
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
Ttype"serve*1.13.12
b'unknown'ї#
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
:
*
shape:

V
Placeholder_1Placeholder*
shape:*
dtype0*
_output_shapes
:
h
Placeholder_2Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
h
Placeholder_3Placeholder*#
_output_shapes
:џџџџџџџџџ*
shape:џџџџџџџџџ*
dtype0
h
Placeholder_4Placeholder*
shape:џџџџџџџџџ*
dtype0*#
_output_shapes
:џџџџџџџџџ
Џ
1pi/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@pi/conv2d/kernel*
dtype0*
_output_shapes
:

/pi/conv2d/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *ђъ­О*#
_class
loc:@pi/conv2d/kernel*
dtype0

/pi/conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *ђъ­>*#
_class
loc:@pi/conv2d/kernel*
dtype0*
_output_shapes
: 
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
/pi/conv2d/kernel/Initializer/random_uniform/mulMul9pi/conv2d/kernel/Initializer/random_uniform/RandomUniform/pi/conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*#
_class
loc:@pi/conv2d/kernel
ъ
+pi/conv2d/kernel/Initializer/random_uniformAdd/pi/conv2d/kernel/Initializer/random_uniform/mul/pi/conv2d/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*#
_class
loc:@pi/conv2d/kernel
К
pi/conv2d/kernelVarHandleOp*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d/kernel
q
1pi/conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel*
_output_shapes
: 

pi/conv2d/kernel/AssignAssignVariableOppi/conv2d/kernel+pi/conv2d/kernel/Initializer/random_uniform*#
_class
loc:@pi/conv2d/kernel*
dtype0
Ђ
$pi/conv2d/kernel/Read/ReadVariableOpReadVariableOppi/conv2d/kernel*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:

 pi/conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *!
_class
loc:@pi/conv2d/bias
Ј
pi/conv2d/biasVarHandleOp*
shape:*
dtype0*
_output_shapes
: *
shared_namepi/conv2d/bias*!
_class
loc:@pi/conv2d/bias*
	container 
m
/pi/conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias*
_output_shapes
: 

pi/conv2d/bias/AssignAssignVariableOppi/conv2d/bias pi/conv2d/bias/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0

"pi/conv2d/bias/Read/ReadVariableOpReadVariableOppi/conv2d/bias*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
h
pi/conv2d/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0
x
pi/conv2d/Conv2D/ReadVariableOpReadVariableOppi/conv2d/kernel*
dtype0*&
_output_shapes
:
ч
pi/conv2d/Conv2DConv2DPlaceholderpi/conv2d/Conv2D/ReadVariableOp*&
_output_shapes
:
*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
k
 pi/conv2d/BiasAdd/ReadVariableOpReadVariableOppi/conv2d/bias*
dtype0*
_output_shapes
:

pi/conv2d/BiasAddBiasAddpi/conv2d/Conv2D pi/conv2d/BiasAdd/ReadVariableOp*
data_formatNHWC*&
_output_shapes
:
*
T0
Z
pi/conv2d/ReluRelupi/conv2d/BiasAdd*&
_output_shapes
:
*
T0
Г
3pi/conv2d_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *%
_class
loc:@pi/conv2d_1/kernel
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
1pi/conv2d_1/kernel/Initializer/random_uniform/subSub1pi/conv2d_1/kernel/Initializer/random_uniform/max1pi/conv2d_1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_1/kernel*
_output_shapes
: 

1pi/conv2d_1/kernel/Initializer/random_uniform/mulMul;pi/conv2d_1/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_1/kernel
ђ
-pi/conv2d_1/kernel/Initializer/random_uniformAdd1pi/conv2d_1/kernel/Initializer/random_uniform/mul1pi/conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_1/kernel
Р
pi/conv2d_1/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_1/kernel*%
_class
loc:@pi/conv2d_1/kernel
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
&pi/conv2d_1/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
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
$pi/conv2d_1/bias/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias*#
_class
loc:@pi/conv2d_1/bias*
dtype0*
_output_shapes
:
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
:
*
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
:

^
pi/conv2d_1/ReluRelupi/conv2d_1/BiasAdd*
T0*&
_output_shapes
:

Г
3pi/conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_2/kernel*
dtype0*
_output_shapes
:

1pi/conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *{ьН*%
_class
loc:@pi/conv2d_2/kernel*
dtype0*
_output_shapes
: 
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
;pi/conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed *
T0*%
_class
loc:@pi/conv2d_2/kernel*
seed24
ц
1pi/conv2d_2/kernel/Initializer/random_uniform/subSub1pi/conv2d_2/kernel/Initializer/random_uniform/max1pi/conv2d_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_2/kernel*
_output_shapes
: 

1pi/conv2d_2/kernel/Initializer/random_uniform/mulMul;pi/conv2d_2/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_2/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_2/kernel
ђ
-pi/conv2d_2/kernel/Initializer/random_uniformAdd1pi/conv2d_2/kernel/Initializer/random_uniform/mul1pi/conv2d_2/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_2/kernel*&
_output_shapes
:
Р
pi/conv2d_2/kernelVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_2/kernel*%
_class
loc:@pi/conv2d_2/kernel
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
pi/conv2d_2/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_2/bias*#
_class
loc:@pi/conv2d_2/bias*
	container *
shape:
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
$pi/conv2d_2/bias/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias*#
_class
loc:@pi/conv2d_2/bias*
dtype0*
_output_shapes
:
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
pi/conv2d_2/Conv2DConv2Dpi/conv2d_1/Relu!pi/conv2d_2/Conv2D/ReadVariableOp*&
_output_shapes
:
*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
o
"pi/conv2d_2/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_2/bias*
dtype0*
_output_shapes
:

pi/conv2d_2/BiasAddBiasAddpi/conv2d_2/Conv2D"pi/conv2d_2/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:

^
pi/conv2d_2/ReluRelupi/conv2d_2/BiasAdd*
T0*&
_output_shapes
:

Г
3pi/conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_3/kernel*
dtype0*
_output_shapes
:

1pi/conv2d_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *эучН*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
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
;pi/conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_3/kernel/Initializer/random_uniform/shape*
T0*%
_class
loc:@pi/conv2d_3/kernel*
seed2J*
dtype0*&
_output_shapes
:*

seed 
ц
1pi/conv2d_3/kernel/Initializer/random_uniform/subSub1pi/conv2d_3/kernel/Initializer/random_uniform/max1pi/conv2d_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*%
_class
loc:@pi/conv2d_3/kernel
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
pi/conv2d_3/kernelVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/conv2d_3/kernel*%
_class
loc:@pi/conv2d_3/kernel*
	container 
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
&pi/conv2d_3/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel*&
_output_shapes
:*%
_class
loc:@pi/conv2d_3/kernel*
dtype0

"pi/conv2d_3/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *#
_class
loc:@pi/conv2d_3/bias
Ў
pi/conv2d_3/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_3/bias*#
_class
loc:@pi/conv2d_3/bias*
	container *
shape:
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
pi/conv2d_3/Conv2DConv2Dpi/conv2d_2/Relu!pi/conv2d_3/Conv2D/ReadVariableOp*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
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
:

^
pi/conv2d_3/ReluRelupi/conv2d_3/BiasAdd*
T0*&
_output_shapes
:

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
dtype0*&
_output_shapes
:*

seed *
T0*%
_class
loc:@pi/conv2d_4/kernel*
seed2`
ц
1pi/conv2d_4/kernel/Initializer/random_uniform/subSub1pi/conv2d_4/kernel/Initializer/random_uniform/max1pi/conv2d_4/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_4/kernel*
_output_shapes
: 

1pi/conv2d_4/kernel/Initializer/random_uniform/mulMul;pi/conv2d_4/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_4/kernel/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_4/kernel
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
pi/conv2d_4/biasVarHandleOp*!
shared_namepi/conv2d_4/bias*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
$pi/conv2d_4/bias/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias*#
_class
loc:@pi/conv2d_4/bias*
dtype0*
_output_shapes
:
j
pi/conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
|
!pi/conv2d_4/Conv2D/ReadVariableOpReadVariableOppi/conv2d_4/kernel*&
_output_shapes
:*
dtype0
№
pi/conv2d_4/Conv2DConv2Dpi/conv2d_3/Relu!pi/conv2d_4/Conv2D/ReadVariableOp*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:

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
:

^
pi/conv2d_4/ReluRelupi/conv2d_4/BiasAdd*
T0*&
_output_shapes
:

Г
3pi/conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_5/kernel*
dtype0*
_output_shapes
:

1pi/conv2d_5/kernel/Initializer/random_uniform/minConst*
valueB
 *эучН*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*
_output_shapes
: 

1pi/conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *эуч=*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*
_output_shapes
: 
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
pi/conv2d_5/biasVarHandleOp*
_output_shapes
: *!
shared_namepi/conv2d_5/bias*#
_class
loc:@pi/conv2d_5/bias*
	container *
shape:*
dtype0
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
$pi/conv2d_5/bias/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias*#
_class
loc:@pi/conv2d_5/bias*
dtype0*
_output_shapes
:
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
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:

o
"pi/conv2d_5/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_5/bias*
dtype0*
_output_shapes
:

pi/conv2d_5/BiasAddBiasAddpi/conv2d_5/Conv2D"pi/conv2d_5/BiasAdd/ReadVariableOp*
data_formatNHWC*&
_output_shapes
:
*
T0
^
pi/conv2d_5/ReluRelupi/conv2d_5/BiasAdd*
T0*&
_output_shapes
:

Г
3pi/conv2d_6/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *%
_class
loc:@pi/conv2d_6/kernel
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
1pi/conv2d_6/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *эуч=*%
_class
loc:@pi/conv2d_6/kernel*
dtype0
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
pi/conv2d_6/kernelVarHandleOp*#
shared_namepi/conv2d_6/kernel*%
_class
loc:@pi/conv2d_6/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
pi/conv2d_6/biasVarHandleOp*#
_class
loc:@pi/conv2d_6/bias*
	container *
shape:*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_6/bias
q
1pi/conv2d_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias*
_output_shapes
: 

pi/conv2d_6/bias/AssignAssignVariableOppi/conv2d_6/bias"pi/conv2d_6/bias/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_6/bias
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
:
*
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
:

^
pi/conv2d_6/ReluRelupi/conv2d_6/BiasAdd*
T0*&
_output_shapes
:

Г
3pi/conv2d_7/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *%
_class
loc:@pi/conv2d_7/kernel

1pi/conv2d_7/kernel/Initializer/random_uniform/minConst*
valueB
 *эучН*%
_class
loc:@pi/conv2d_7/kernel*
dtype0*
_output_shapes
: 
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
1pi/conv2d_7/kernel/Initializer/random_uniform/subSub1pi/conv2d_7/kernel/Initializer/random_uniform/max1pi/conv2d_7/kernel/Initializer/random_uniform/min*%
_class
loc:@pi/conv2d_7/kernel*
_output_shapes
: *
T0

1pi/conv2d_7/kernel/Initializer/random_uniform/mulMul;pi/conv2d_7/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_7/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@pi/conv2d_7/kernel*&
_output_shapes
:
ђ
-pi/conv2d_7/kernel/Initializer/random_uniformAdd1pi/conv2d_7/kernel/Initializer/random_uniform/mul1pi/conv2d_7/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_7/kernel*&
_output_shapes
:
Р
pi/conv2d_7/kernelVarHandleOp*#
shared_namepi/conv2d_7/kernel*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
pi/conv2d_7/biasVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d_7/bias*#
_class
loc:@pi/conv2d_7/bias*
	container *
shape:
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
$pi/conv2d_7/bias/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias*#
_class
loc:@pi/conv2d_7/bias*
dtype0*
_output_shapes
:
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
:
*
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
:

^
pi/conv2d_7/ReluRelupi/conv2d_7/BiasAdd*
T0*&
_output_shapes
:

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
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      *"
_class
loc:@pi/dense/kernel*
dtype0
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
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*"
_class
loc:@pi/dense/kernel*
_output_shapes
:	*
T0
п
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*"
_class
loc:@pi/dense/kernel
А
pi/dense/kernelVarHandleOp*
	container *
shape:	*
dtype0*
_output_shapes
: * 
shared_namepi/dense/kernel*"
_class
loc:@pi/dense/kernel
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
#pi/dense/kernel/Read/ReadVariableOpReadVariableOppi/dense/kernel*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:	
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
shared_namepi/dense/bias* 
_class
loc:@pi/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
pi/dense/MatMulMatMulpi/Maxpi/dense/MatMul/ReadVariableOp*
_output_shapes
:	*
transpose_a( *
transpose_b( *
T0
j
pi/dense/BiasAdd/ReadVariableOpReadVariableOppi/dense/bias*
dtype0*
_output_shapes	
:

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/BiasAdd/ReadVariableOp*
_output_shapes
:	*
T0*
data_formatNHWC
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
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *>*$
_class
loc:@pi/dense_1/kernel
і
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*$
_class
loc:@pi/dense_1/kernel*
seed2Я*
dtype0*
_output_shapes
:	*

seed *
T0
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
pi/dense_1/kernelVarHandleOp*$
_class
loc:@pi/dense_1/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: *"
shared_namepi/dense_1/kernel
s
2pi/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel*
_output_shapes
: 
 
pi/dense_1/kernel/AssignAssignVariableOppi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*$
_class
loc:@pi/dense_1/kernel*
dtype0
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
pi/dense_1/biasVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namepi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
	container *
shape:
o
0pi/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias*
_output_shapes
: 

pi/dense_1/bias/AssignAssignVariableOppi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
dtype0

#pi/dense_1/bias/Read/ReadVariableOpReadVariableOppi/dense_1/bias*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias*
dtype0
s
 pi/dense_1/MatMul/ReadVariableOpReadVariableOppi/dense_1/kernel*
_output_shapes
:	*
dtype0

pi/dense_1/MatMulMatMulpi/dense/Relu pi/dense_1/MatMul/ReadVariableOp*
_output_shapes

:*
transpose_a( *
transpose_b( *
T0
m
!pi/dense_1/BiasAdd/ReadVariableOpReadVariableOppi/dense_1/bias*
_output_shapes
:*
dtype0

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMul!pi/dense_1/BiasAdd/ReadVariableOp*
data_formatNHWC*
_output_shapes

:*
T0
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
pi/categorical/MultinomialMultinomialpi/dense_1/Softmax&pi/categorical/Multinomial/num_samples*

seed *
output_dtype0	*
T0*
_output_shapes

:*
seed2т
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

:
Q
pi/mulMul
pi/one_hotpi/LogSoftmax*
T0*
_output_shapes

:
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
:
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
pi/one_hot_1/depthConst*
value	B :*
dtype0*
_output_shapes
: 
­
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
T0*
axisџџџџџџџџџ*
TI0	*
_output_shapes

:
U
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*
_output_shapes

:
\
pi/Sum_1/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
w
pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*
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
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
T0*#
_class
loc:@v/dense_2/kernel*
seed2і*
dtype0*
_output_shapes
:	*

seed 
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
v/dense_2/kernelVarHandleOp*
	container *
shape:	*
dtype0*
_output_shapes
: *!
shared_namev/dense_2/kernel*#
_class
loc:@v/dense_2/kernel
q
1v/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/kernel*
_output_shapes
: 

v/dense_2/kernel/AssignAssignVariableOpv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
dtype0*#
_class
loc:@v/dense_2/kernel

$v/dense_2/kernel/Read/ReadVariableOpReadVariableOpv/dense_2/kernel*
dtype0*
_output_shapes
:	*#
_class
loc:@v/dense_2/kernel

 v/dense_2/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes	
:
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
"v/dense_2/bias/Read/ReadVariableOpReadVariableOpv/dense_2/bias*!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes	
:
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
/v/dense_3/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *IvО*#
_class
loc:@v/dense_3/kernel*
dtype0
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
seed2
о
/v/dense_3/kernel/Initializer/random_uniform/subSub/v/dense_3/kernel/Initializer/random_uniform/max/v/dense_3/kernel/Initializer/random_uniform/min*#
_class
loc:@v/dense_3/kernel*
_output_shapes
: *
T0
ё
/v/dense_3/kernel/Initializer/random_uniform/mulMul9v/dense_3/kernel/Initializer/random_uniform/RandomUniform/v/dense_3/kernel/Initializer/random_uniform/sub*
_output_shapes
:	*
T0*#
_class
loc:@v/dense_3/kernel
у
+v/dense_3/kernel/Initializer/random_uniformAdd/v/dense_3/kernel/Initializer/random_uniform/mul/v/dense_3/kernel/Initializer/random_uniform/min*
_output_shapes
:	*
T0*#
_class
loc:@v/dense_3/kernel
Г
v/dense_3/kernelVarHandleOp*!
shared_namev/dense_3/kernel*#
_class
loc:@v/dense_3/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
q
1v/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/kernel*
_output_shapes
: 

v/dense_3/kernel/AssignAssignVariableOpv/dense_3/kernel+v/dense_3/kernel/Initializer/random_uniform*#
_class
loc:@v/dense_3/kernel*
dtype0
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
v/dense_3/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_namev/dense_3/bias*!
_class
loc:@v/dense_3/bias
m
/v/dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/bias*
_output_shapes
: 

v/dense_3/bias/AssignAssignVariableOpv/dense_3/bias v/dense_3/bias/Initializer/zeros*!
_class
loc:@v/dense_3/bias*
dtype0

"v/dense_3/bias/Read/ReadVariableOpReadVariableOpv/dense_3/bias*
_output_shapes
:*!
_class
loc:@v/dense_3/bias*
dtype0
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
O
subSubpi/SumPlaceholder_4*
T0*#
_output_shapes
:џџџџџџџџџ
=
ExpExpsub*
T0*#
_output_shapes
:џџџџџџџџџ
N
	Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
GreaterGreaterPlaceholder_2	Greater/y*#
_output_shapes
:џџџџџџџџџ*
T0
J
mul/xConst*
valueB
 *?*
dtype0*
_output_shapes
: 
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
mul_1Mulmul_1/xPlaceholder_2*
T0*#
_output_shapes
:џџџџџџџџџ
S
SelectSelectGreatermulmul_1*
T0*#
_output_shapes
:џџџџџџџџџ
N
mul_2MulExpPlaceholder_2*
T0*#
_output_shapes
:џџџџџџџџџ
O
MinimumMinimummul_2Select*
T0*#
_output_shapes
:џџџџџџџџџ
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
Z
MeanMeanMinimumConst*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
1
NegNegMean*
_output_shapes
: *
T0
Z
pi_loss/summaries/ConstConst*
valueB *
dtype0*
_output_shapes
: 
z
pi_loss/summaries/MeanMeanNegpi_loss/summaries/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
v
pi_loss/summaries/mean_1/tagsConst*)
value B Bpi_loss/summaries/mean_1*
dtype0*
_output_shapes
: 

pi_loss/summaries/mean_1ScalarSummarypi_loss/summaries/mean_1/tagspi_loss/summaries/Mean*
T0*
_output_shapes
: 
a
pi_loss/summaries/stddev/subSubNegpi_loss/summaries/Mean*
_output_shapes
: *
T0
h
pi_loss/summaries/stddev/SquareSquarepi_loss/summaries/stddev/sub*
_output_shapes
: *
T0
a
pi_loss/summaries/stddev/ConstConst*
dtype0*
_output_shapes
: *
valueB 
Є
pi_loss/summaries/stddev/MeanMeanpi_loss/summaries/stddev/Squarepi_loss/summaries/stddev/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
pi_loss/summaries/stddev/SqrtSqrtpi_loss/summaries/stddev/Mean*
T0*
_output_shapes
: 
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
pi_loss/summaries/MaxMaxNegpi_loss/summaries/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
pi_loss/summaries/Const_2Const*
dtype0*
_output_shapes
: *
valueB 
z
pi_loss/summaries/MinMinNegpi_loss/summaries/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
t
pi_loss/summaries/min_1/tagsConst*
_output_shapes
: *(
valueB Bpi_loss/summaries/min_1*
dtype0
~
pi_loss/summaries/min_1ScalarSummarypi_loss/summaries/min_1/tagspi_loss/summaries/Min*
_output_shapes
: *
T0
{
pi_loss/summaries/histogram/tagConst*
_output_shapes
: *,
value#B! Bpi_loss/summaries/histogram*
dtype0
v
pi_loss/summaries/histogramHistogramSummarypi_loss/summaries/histogram/tagNeg*
T0*
_output_shapes
: 
T
sub_1SubPlaceholder_3	v/Squeeze*
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
powPowsub_1pow/y*#
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
Q
sub_2SubPlaceholder_4pi/Sum*#
_output_shapes
:џџџџџџџџџ*
T0
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2Meansub_2Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
9
Neg_1Negpi/Sum*
_output_shapes
:*
T0
Q
Const_3Const*
_output_shapes
:*
valueB: *
dtype0
\
Mean_3MeanNeg_1Const_3*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
P
Greater_1/yConst*
valueB
 *?*
dtype0*
_output_shapes
: 
T
	Greater_1GreaterExpGreater_1/y*
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
G
LessLessExpLess/y*#
_output_shapes
:џџџџџџџџџ*
T0
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
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_4MeanCastConst_4*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
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
gradients/Mean_grad/ShapeShapeMinimum*
_output_shapes
:*
T0*
out_type0
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
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
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
gradients/Minimum_grad/ShapeShapemul_2*
_output_shapes
:*
T0*
out_type0
d
gradients/Minimum_grad/Shape_1ShapeSelect*
_output_shapes
:*
T0*
out_type0
y
gradients/Minimum_grad/Shape_2Shapegradients/Mean_grad/truediv*
T0*
out_type0*
_output_shapes
:
g
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ј
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*

index_type0*#
_output_shapes
:џџџџџџџџџ*
T0
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
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*#
_output_shapes
:џџџџџџџџџ*
T0
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
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
Д
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ѕ
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:џџџџџџџџџ
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
ц
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
ь
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
]
gradients/mul_2_grad/ShapeShapeExp*
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
gradients/mul_2_grad/MulMul/gradients/Minimum_grad/tuple/control_dependencyPlaceholder_2*
T0*#
_output_shapes
:џџџџџџџџџ
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

gradients/mul_2_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*#
_output_shapes
:џџџџџџџџџ*
T0
Ћ
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
о
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*#
_output_shapes
:џџџџџџџџџ*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
ф
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ

gradients/Exp_grad/mulMul-gradients/mul_2_grad/tuple/control_dependencyExp*
T0*#
_output_shapes
:џџџџџџџџџ
b
gradients/sub_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
g
gradients/sub_grad/Shape_1ShapePlaceholder_4*
T0*
out_type0*
_output_shapes
:
Д
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ*
T0

gradients/sub_grad/SumSumgradients/Exp_grad/mul(gradients/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Ѓ
gradients/sub_grad/Sum_1Sumgradients/Exp_grad/mul*gradients/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
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
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*#
_output_shapes
:џџџџџџџџџ*
T0
l
gradients/pi/Sum_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      

gradients/pi/Sum_grad/SizeConst*
_output_shapes
: *
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0
Ї
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: *
T0
­
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 

gradients/pi/Sum_grad/Shape_1Const*
valueB *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
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
gradients/pi/Sum_grad/Maximum/yConst*
_output_shapes
: *
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0
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
Б
gradients/pi/Sum_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
_output_shapes

:*
T0*
Tshape0

gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*
_output_shapes

:
t
gradients/pi/mul_grad/MulMulgradients/pi/Sum_grad/Tilepi/LogSoftmax*
T0*
_output_shapes

:
s
gradients/pi/mul_grad/Mul_1Mulgradients/pi/Sum_grad/Tile
pi/one_hot*
_output_shapes

:*
T0
h
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Mul^gradients/pi/mul_grad/Mul_1
е
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Mul'^gradients/pi/mul_grad/tuple/group_deps*
_output_shapes

:*
T0*,
_class"
 loc:@gradients/pi/mul_grad/Mul
л
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Mul_1'^gradients/pi/mul_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/pi/mul_grad/Mul_1*
_output_shapes

:
_
 gradients/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
_output_shapes

:*
T0
}
2gradients/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
џџџџџџџџџ*
dtype0*
_output_shapes
: 
г
 gradients/pi/LogSoftmax_grad/SumSum0gradients/pi/mul_grad/tuple/control_dependency_12gradients/pi/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:

 gradients/pi/LogSoftmax_grad/mulMul gradients/pi/LogSoftmax_grad/Sum gradients/pi/LogSoftmax_grad/Exp*
T0*
_output_shapes

:
Є
 gradients/pi/LogSoftmax_grad/subSub0gradients/pi/mul_grad/tuple/control_dependency_1 gradients/pi/LogSoftmax_grad/mul*
T0*
_output_shapes

:

%gradients/pi/dense_1/Softmax_grad/mulMul gradients/pi/LogSoftmax_grad/subpi/dense_1/Softmax*
_output_shapes

:*
T0
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
%gradients/pi/dense_1/Softmax_grad/subSub gradients/pi/LogSoftmax_grad/sub%gradients/pi/dense_1/Softmax_grad/Sum*
T0*
_output_shapes

:

'gradients/pi/dense_1/Softmax_grad/mul_1Mul%gradients/pi/dense_1/Softmax_grad/subpi/dense_1/Softmax*
_output_shapes

:*
T0
Ё
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_1/Softmax_grad/mul_1*
_output_shapes
:*
T0*
data_formatNHWC
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
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency pi/dense_1/MatMul/ReadVariableOp*
_output_shapes
:	*
transpose_a( *
transpose_b(*
T0
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
9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*
_output_shapes
:	*
T0

;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1*
_output_shapes
:	
Ѕ
%gradients/pi/dense/Relu_grad/ReluGradReluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Relu*
T0*
_output_shapes
:	

+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad&^gradients/pi/dense/Relu_grad/ReluGrad

8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/pi/dense/Relu_grad/ReluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense/Relu_grad/ReluGrad*
_output_shapes
:	

:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
и
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/MatMul/ReadVariableOp*
transpose_b(*
T0*
_output_shapes

:*
transpose_a( 
У
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulpi/Max8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_a(*
transpose_b( *
T0
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
gradients/pi/Max_grad/ShapeConst*
_output_shapes
:*%
valueB"   
         *
dtype0
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
 gradients/pi/Max_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/pi/Max_grad/FillFillgradients/pi/Max_grad/Shape_1 gradients/pi/Max_grad/Fill/value*
T0*

index_type0*
_output_shapes
:
г
#gradients/pi/Max_grad/DynamicStitchDynamicStitchgradients/pi/Max_grad/rangegradients/pi/Max_grad/modgradients/pi/Max_grad/Shapegradients/pi/Max_grad/Fill*
N*
_output_shapes
:*
T0

gradients/pi/Max_grad/ReshapeReshapepi/Max#gradients/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:
Ч
gradients/pi/Max_grad/Reshape_1Reshape7gradients/pi/dense/MatMul_grad/tuple/control_dependency#gradients/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:

gradients/pi/Max_grad/EqualEqualgradients/pi/Max_grad/Reshapepi/conv2d_7/Relu*&
_output_shapes
:
*
T0

gradients/pi/Max_grad/CastCastgradients/pi/Max_grad/Equal*

SrcT0
*
Truncate( *&
_output_shapes
:
*

DstT0

gradients/pi/Max_grad/SumSumgradients/pi/Max_grad/Castpi/Max/reduction_indices*
_output_shapes

:*
	keep_dims( *

Tidx0*
T0
Љ
gradients/pi/Max_grad/Reshape_2Reshapegradients/pi/Max_grad/Sum#gradients/pi/Max_grad/DynamicStitch*&
_output_shapes
:*
T0*
Tshape0

gradients/pi/Max_grad/divRealDivgradients/pi/Max_grad/Castgradients/pi/Max_grad/Reshape_2*
T0*&
_output_shapes
:


gradients/pi/Max_grad/mulMulgradients/pi/Max_grad/divgradients/pi/Max_grad/Reshape_1*
T0*&
_output_shapes
:


(gradients/pi/conv2d_7/Relu_grad/ReluGradReluGradgradients/pi/Max_grad/mulpi/conv2d_7/Relu*&
_output_shapes
:
*
T0
Ѓ
.gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_7/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0

3gradients/pi/conv2d_7/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_7/Relu_grad/ReluGrad

;gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_7/Relu_grad/ReluGrad4^gradients/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/pi/conv2d_7/Relu_grad/ReluGrad*&
_output_shapes
:


=gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_7/Conv2D_grad/ShapeNShapeNpi/conv2d_6/Relu!pi/conv2d_7/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0
ѕ
5gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_7/Conv2D_grad/ShapeN!pi/conv2d_7/Conv2D/ReadVariableOp;gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0*
data_formatNHWC*
strides

ш
6gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_6/Relu*gradients/pi/conv2d_7/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*&
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
Ћ
2gradients/pi/conv2d_7/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_7/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_7/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

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
:

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
:
*
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
T0*
out_type0*
N* 
_output_shapes
::
ѕ
5gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_6/Conv2D_grad/ShapeN!pi/conv2d_6/Conv2D/ReadVariableOp;gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:

ш
6gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_5/Relu*gradients/pi/conv2d_6/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*
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
2gradients/pi/conv2d_6/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_6/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_6/Conv2D_grad/tuple/group_deps*&
_output_shapes
:
*
T0*H
_class>
<:loc:@gradients/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput
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
:

Ѓ
.gradients/pi/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_5/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_5/Relu_grad/ReluGrad

;gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_5/Relu_grad/ReluGrad4^gradients/pi/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/pi/conv2d_5/Relu_grad/ReluGrad*&
_output_shapes
:

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
:

ш
6gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_4/Relu*gradients/pi/conv2d_5/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ћ
2gradients/pi/conv2d_5/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

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
:

Ѓ
.gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_4/Relu_grad/ReluGrad

;gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_4/Relu_grad/ReluGrad4^gradients/pi/conv2d_4/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:
*
T0*;
_class1
/-loc:@gradients/pi/conv2d_4/Relu_grad/ReluGrad

=gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_4/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients/pi/conv2d_4/BiasAdd_grad/BiasAddGrad
Ћ
(gradients/pi/conv2d_4/Conv2D_grad/ShapeNShapeNpi/conv2d_3/Relu!pi/conv2d_4/Conv2D/ReadVariableOp* 
_output_shapes
::*
T0*
out_type0*
N
ѕ
5gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_4/Conv2D_grad/ShapeN!pi/conv2d_4/Conv2D/ReadVariableOp;gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ш
6gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_3/Relu*gradients/pi/conv2d_4/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ћ
2gradients/pi/conv2d_4/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_4/Conv2D_grad/tuple/group_deps*&
_output_shapes
:
*
T0*H
_class>
<:loc:@gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInput
Б
<gradients/pi/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_4/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*I
_class?
=;loc:@gradients/pi/conv2d_4/Conv2D_grad/Conv2DBackpropFilter
Г
(gradients/pi/conv2d_3/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_4/Conv2D_grad/tuple/control_dependencypi/conv2d_3/Relu*&
_output_shapes
:
*
T0
Ѓ
.gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_3/Relu_grad/ReluGrad

;gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_3/Relu_grad/ReluGrad4^gradients/pi/conv2d_3/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/pi/conv2d_3/Relu_grad/ReluGrad*&
_output_shapes
:
*
T0

=gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_3/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ћ
(gradients/pi/conv2d_3/Conv2D_grad/ShapeNShapeNpi/conv2d_2/Relu!pi/conv2d_3/Conv2D/ReadVariableOp* 
_output_shapes
::*
T0*
out_type0*
N
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
:

ш
6gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_2/Relu*gradients/pi/conv2d_3/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency*
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
2gradients/pi/conv2d_3/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

Б
<gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_3/Conv2D_grad/tuple/group_deps*I
_class?
=;loc:@gradients/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
Г
(gradients/pi/conv2d_2/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependencypi/conv2d_2/Relu*
T0*&
_output_shapes
:

Ѓ
.gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

3gradients/pi/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_2/Relu_grad/ReluGrad

;gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_2/Relu_grad/ReluGrad4^gradients/pi/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/pi/conv2d_2/Relu_grad/ReluGrad*&
_output_shapes
:


=gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients/pi/conv2d_2/BiasAdd_grad/BiasAddGrad
Ћ
(gradients/pi/conv2d_2/Conv2D_grad/ShapeNShapeNpi/conv2d_1/Relu!pi/conv2d_2/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ѕ
5gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_2/Conv2D_grad/ShapeN!pi/conv2d_2/Conv2D/ReadVariableOp;gradients/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
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
:gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

Б
<gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_2/Conv2D_grad/tuple/group_deps*I
_class?
=;loc:@gradients/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:*
T0
Г
(gradients/pi/conv2d_1/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependencypi/conv2d_1/Relu*&
_output_shapes
:
*
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
:


=gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad
Љ
(gradients/pi/conv2d_1/Conv2D_grad/ShapeNShapeNpi/conv2d/Relu!pi/conv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ѕ
5gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_1/Conv2D_grad/ShapeN!pi/conv2d_1/Conv2D/ReadVariableOp;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
ц
6gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d/Relu*gradients/pi/conv2d_1/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
Ћ
2gradients/pi/conv2d_1/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
­
:gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

Б
<gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
Џ
&gradients/pi/conv2d/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependencypi/conv2d/Relu*
T0*&
_output_shapes
:


,gradients/pi/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/pi/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

1gradients/pi/conv2d/BiasAdd_grad/tuple/group_depsNoOp-^gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad'^gradients/pi/conv2d/Relu_grad/ReluGrad

9gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/pi/conv2d/Relu_grad/ReluGrad2^gradients/pi/conv2d/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/pi/conv2d/Relu_grad/ReluGrad*&
_output_shapes
:


;gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad2^gradients/pi/conv2d/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ђ
&gradients/pi/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderpi/conv2d/Conv2D/ReadVariableOp* 
_output_shapes
::*
T0*
out_type0*
N
э
3gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput&gradients/pi/conv2d/Conv2D_grad/ShapeNpi/conv2d/Conv2D/ReadVariableOp9gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:

н
4gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder(gradients/pi/conv2d/Conv2D_grad/ShapeN:19gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC
Ѕ
0gradients/pi/conv2d/Conv2D_grad/tuple/group_depsNoOp5^gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter4^gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput
Ѕ
8gradients/pi/conv2d/Conv2D_grad/tuple/control_dependencyIdentity3gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput1^gradients/pi/conv2d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:
*
T0*F
_class<
:8loc:@gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput
Љ
:gradients/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Identity4gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
`
Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ

ReshapeReshape:gradients/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes
:0
b
Reshape_1/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0

	Reshape_1Reshape;gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_2/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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
	Reshape_3Reshape=gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
Tshape0*
_output_shapes
:*
T0
b
Reshape_4/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_4Reshape<gradients/pi/conv2d_2/Conv2D_grad/tuple/control_dependency_1Reshape_4/shape*
T0*
Tshape0*
_output_shapes	
:№+
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:

	Reshape_6Reshape<gradients/pi/conv2d_3/Conv2D_grad/tuple/control_dependency_1Reshape_6/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
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

Reshape_10Reshape<gradients/pi/conv2d_5/Conv2D_grad/tuple/control_dependency_1Reshape_10/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
c
Reshape_11/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_11Reshape=gradients/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Reshape_11/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_12/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_12Reshape<gradients/pi/conv2d_6/Conv2D_grad/tuple/control_dependency_1Reshape_12/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
c
Reshape_13/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_13Reshape=gradients/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Reshape_13/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_14/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_14Reshape<gradients/pi/conv2d_7/Conv2D_grad/tuple/control_dependency_1Reshape_14/shape*
Tshape0*
_output_shapes	
:Ф/*
T0
c
Reshape_15/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_15Reshape=gradients/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Reshape_15/shape*
Tshape0*
_output_shapes
:*
T0
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

Reshape_17Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_17/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_18/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_18Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_18/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_19/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_19Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_19/shape*
T0*
Tshape0*
_output_shapes
:
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
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
Reshape_19concat/axis*
T0*
N*
_output_shapes

:Ит*

Tidx0
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
Const_5Const*e
value\BZ"P0           №     Ф     Ф     Ф     Ф     Ф                 *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
ї
splitSplitVEagerPyFuncConst_5split/split_dim*
T0*
_output_shapes
:0::	::№+::Ф/::Ф/::Ф/::Ф/::Ф/::4:::*
	num_split*

Tlen0
i
Reshape_20/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
m

Reshape_20ReshapesplitReshape_20/shape*
Tshape0*&
_output_shapes
:*
T0
Z
Reshape_21/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_21Reshapesplit:1Reshape_21/shape*
Tshape0*
_output_shapes
:*
T0
i
Reshape_22/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_22Reshapesplit:2Reshape_22/shape*
Tshape0*&
_output_shapes
:*
T0
Z
Reshape_23/shapeConst*
valueB:*
dtype0*
_output_shapes
:
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

Reshape_25Reshapesplit:5Reshape_25/shape*
_output_shapes
:*
T0*
Tshape0
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

Reshape_27Reshapesplit:7Reshape_27/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_28/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_28Reshapesplit:8Reshape_28/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_29/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_29Reshapesplit:9Reshape_29/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_31/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_31Reshapesplit:11Reshape_31/shape*
T0*
Tshape0*
_output_shapes
:
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

Reshape_33Reshapesplit:13Reshape_33/shape*
_output_shapes
:*
T0*
Tshape0
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

Reshape_36Reshapesplit:16Reshape_36/shape*
Tshape0*
_output_shapes
:	*
T0
[
Reshape_37/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_37Reshapesplit:17Reshape_37/shape*
T0*
Tshape0*
_output_shapes	
:
a
Reshape_38/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_38Reshapesplit:18Reshape_38/shape*
_output_shapes
:	*
T0*
Tshape0
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
%beta1_power/Initializer/initial_valueConst*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias*
valueB
 *fff?*
dtype0

beta1_powerVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namebeta1_power*!
_class
loc:@pi/conv2d/bias

,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 

beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0

beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 

%beta2_power/Initializer/initial_valueConst*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias*
valueB
 *wО?*
dtype0

beta2_powerVarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_namebeta2_power*!
_class
loc:@pi/conv2d/bias*
	container 

,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 

beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0

beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
Б
'pi/conv2d/kernel/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Ф
pi/conv2d/kernel/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/kernel/Adam*#
_class
loc:@pi/conv2d/kernel*
	container 
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
pi/conv2d/kernel/Adam_1VarHandleOp*(
shared_namepi/conv2d/kernel/Adam_1*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
Є
8pi/conv2d/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam_1*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
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
pi/conv2d/bias/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *$
shared_namepi/conv2d/bias/Adam*!
_class
loc:@pi/conv2d/bias*
	container 

4pi/conv2d/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
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
'pi/conv2d/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Ж
pi/conv2d/bias/Adam_1VarHandleOp*!
_class
loc:@pi/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_1

6pi/conv2d/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_1*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
 
pi/conv2d/bias/Adam_1/AssignAssignVariableOppi/conv2d/bias/Adam_1'pi/conv2d/bias/Adam_1/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0

)pi/conv2d/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_1*
_output_shapes
:*!
_class
loc:@pi/conv2d/bias*
dtype0
Й
9pi/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

)pi/conv2d_1/kernel/Adam/Initializer/zerosFill9pi/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_1/kernel/Adam/Initializer/zeros/Const*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:*
T0
Ъ
pi/conv2d_1/kernel/AdamVarHandleOp*(
shared_namepi/conv2d_1/kernel/Adam*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
І
8pi/conv2d_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel
Њ
pi/conv2d_1/kernel/Adam/AssignAssignVariableOppi/conv2d_1/kernel/Adam)pi/conv2d_1/kernel/Adam/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_1/kernel
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
:pi/conv2d_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_1*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel
А
 pi/conv2d_1/kernel/Adam_1/AssignAssignVariableOppi/conv2d_1/kernel/Adam_1+pi/conv2d_1/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
Ж
-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_1*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:

'pi/conv2d_1/bias/Adam/Initializer/zerosConst*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0
И
pi/conv2d_1/bias/AdamVarHandleOp*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_1/bias/Adam
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
)pi/conv2d_1/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias*
dtype0

)pi/conv2d_1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_1/bias/Adam_1VarHandleOp*(
shared_namepi/conv2d_1/bias/Adam_1*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Є
8pi/conv2d_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_1*#
_class
loc:@pi/conv2d_1/bias*
_output_shapes
: 
Ј
pi/conv2d_1/bias/Adam_1/AssignAssignVariableOppi/conv2d_1/bias/Adam_1)pi/conv2d_1/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
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
/pi/conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_2/kernel*
valueB
 *    

)pi/conv2d_2/kernel/Adam/Initializer/zerosFill9pi/conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_2/kernel*

index_type0*&
_output_shapes
:
Ъ
pi/conv2d_2/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_2/kernel/Adam*%
_class
loc:@pi/conv2d_2/kernel*
	container *
shape:
І
8pi/conv2d_2/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/kernel/Adam*%
_class
loc:@pi/conv2d_2/kernel*
_output_shapes
: 
Њ
pi/conv2d_2/kernel/Adam/AssignAssignVariableOppi/conv2d_2/kernel/Adam)pi/conv2d_2/kernel/Adam/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_2/kernel
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
+pi/conv2d_2/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_2/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_2/kernel/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_2/kernel/Adam_1*%
_class
loc:@pi/conv2d_2/kernel*
	container 
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
-pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_1*%
_class
loc:@pi/conv2d_2/kernel*
dtype0*&
_output_shapes
:

'pi/conv2d_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*#
_class
loc:@pi/conv2d_2/bias*
valueB*    *
dtype0
И
pi/conv2d_2/bias/AdamVarHandleOp*&
shared_namepi/conv2d_2/bias/Adam*#
_class
loc:@pi/conv2d_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
 
6pi/conv2d_2/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias/Adam*#
_class
loc:@pi/conv2d_2/bias*
_output_shapes
: 
Ђ
pi/conv2d_2/bias/Adam/AssignAssignVariableOppi/conv2d_2/bias/Adam'pi/conv2d_2/bias/Adam/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_2/bias
 
)pi/conv2d_2/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam*#
_class
loc:@pi/conv2d_2/bias*
dtype0*
_output_shapes
:

)pi/conv2d_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*#
_class
loc:@pi/conv2d_2/bias*
valueB*    *
dtype0
М
pi/conv2d_2/bias/Adam_1VarHandleOp*
_output_shapes
: *(
shared_namepi/conv2d_2/bias/Adam_1*#
_class
loc:@pi/conv2d_2/bias*
	container *
shape:*
dtype0
Є
8pi/conv2d_2/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias/Adam_1*#
_class
loc:@pi/conv2d_2/bias*
_output_shapes
: 
Ј
pi/conv2d_2/bias/Adam_1/AssignAssignVariableOppi/conv2d_2/bias/Adam_1)pi/conv2d_2/bias/Adam_1/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_2/bias
Є
+pi/conv2d_2/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_1*
_output_shapes
:*#
_class
loc:@pi/conv2d_2/bias*
dtype0
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
)pi/conv2d_3/kernel/Adam/Initializer/zerosFill9pi/conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_3/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_3/kernel*

index_type0
Ъ
pi/conv2d_3/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_3/kernel/Adam*%
_class
loc:@pi/conv2d_3/kernel*
	container *
shape:
І
8pi/conv2d_3/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/kernel/Adam*
_output_shapes
: *%
_class
loc:@pi/conv2d_3/kernel
Њ
pi/conv2d_3/kernel/Adam/AssignAssignVariableOppi/conv2d_3/kernel/Adam)pi/conv2d_3/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
В
+pi/conv2d_3/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam*&
_output_shapes
:*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
Л
;pi/conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_3/kernel*%
valueB"            
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
 pi/conv2d_3/kernel/Adam_1/AssignAssignVariableOppi/conv2d_3/kernel/Adam_1+pi/conv2d_3/kernel/Adam_1/Initializer/zeros*
dtype0*%
_class
loc:@pi/conv2d_3/kernel
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
pi/conv2d_3/bias/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_3/bias/Adam*#
_class
loc:@pi/conv2d_3/bias
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
pi/conv2d_3/bias/Adam_1VarHandleOp*
_output_shapes
: *(
shared_namepi/conv2d_3/bias/Adam_1*#
_class
loc:@pi/conv2d_3/bias*
	container *
shape:*
dtype0
Є
8pi/conv2d_3/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_3/bias/Adam_1*#
_class
loc:@pi/conv2d_3/bias*
_output_shapes
: 
Ј
pi/conv2d_3/bias/Adam_1/AssignAssignVariableOppi/conv2d_3/bias/Adam_1)pi/conv2d_3/bias/Adam_1/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_3/bias
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
)pi/conv2d_4/kernel/Adam/Initializer/zerosFill9pi/conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_4/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_4/kernel*

index_type0*&
_output_shapes
:
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
8pi/conv2d_4/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_4/kernel/Adam*
_output_shapes
: *%
_class
loc:@pi/conv2d_4/kernel
Њ
pi/conv2d_4/kernel/Adam/AssignAssignVariableOppi/conv2d_4/kernel/Adam)pi/conv2d_4/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_4/kernel*
dtype0
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
+pi/conv2d_4/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_4/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_4/kernel/Adam_1VarHandleOp*
_output_shapes
: **
shared_namepi/conv2d_4/kernel/Adam_1*%
_class
loc:@pi/conv2d_4/kernel*
	container *
shape:*
dtype0
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
)pi/conv2d_4/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_4/bias/Adam_1VarHandleOp*(
shared_namepi/conv2d_4/bias/Adam_1*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
+pi/conv2d_4/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_1*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_4/bias
Й
9pi/conv2d_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_5/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_5/kernel/Adam/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
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
8pi/conv2d_5/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel/Adam*%
_class
loc:@pi/conv2d_5/kernel*
_output_shapes
: 
Њ
pi/conv2d_5/kernel/Adam/AssignAssignVariableOppi/conv2d_5/kernel/Adam)pi/conv2d_5/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_5/kernel*
dtype0
В
+pi/conv2d_5/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_5/kernel*%
valueB"            *
dtype0*
_output_shapes
:
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
pi/conv2d_5/kernel/Adam_1VarHandleOp**
shared_namepi/conv2d_5/kernel/Adam_1*%
_class
loc:@pi/conv2d_5/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
-pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_1*&
_output_shapes
:*%
_class
loc:@pi/conv2d_5/kernel*
dtype0

'pi/conv2d_5/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_5/bias*
valueB*    *
dtype0*
_output_shapes
:
И
pi/conv2d_5/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_5/bias/Adam*#
_class
loc:@pi/conv2d_5/bias*
	container *
shape:
 
6pi/conv2d_5/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam*
_output_shapes
: *#
_class
loc:@pi/conv2d_5/bias
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
pi/conv2d_5/bias/Adam_1VarHandleOp*(
shared_namepi/conv2d_5/bias/Adam_1*#
_class
loc:@pi/conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Є
8pi/conv2d_5/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam_1*#
_class
loc:@pi/conv2d_5/bias*
_output_shapes
: 
Ј
pi/conv2d_5/bias/Adam_1/AssignAssignVariableOppi/conv2d_5/bias/Adam_1)pi/conv2d_5/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_5/bias*
dtype0
Є
+pi/conv2d_5/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_1*#
_class
loc:@pi/conv2d_5/bias*
dtype0*
_output_shapes
:
Й
9pi/conv2d_6/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_6/kernel*%
valueB"            *
dtype0*
_output_shapes
:

/pi/conv2d_6/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@pi/conv2d_6/kernel*
valueB
 *    *
dtype0

)pi/conv2d_6/kernel/Adam/Initializer/zerosFill9pi/conv2d_6/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_6/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_6/kernel*

index_type0*&
_output_shapes
:
Ъ
pi/conv2d_6/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_6/kernel/Adam*%
_class
loc:@pi/conv2d_6/kernel*
	container *
shape:
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
pi/conv2d_6/kernel/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_6/kernel/Adam_1*%
_class
loc:@pi/conv2d_6/kernel
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
'pi/conv2d_6/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_6/bias*
valueB*    *
dtype0*
_output_shapes
:
И
pi/conv2d_6/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_6/bias/Adam*#
_class
loc:@pi/conv2d_6/bias*
	container *
shape:
 
6pi/conv2d_6/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias/Adam*#
_class
loc:@pi/conv2d_6/bias*
_output_shapes
: 
Ђ
pi/conv2d_6/bias/Adam/AssignAssignVariableOppi/conv2d_6/bias/Adam'pi/conv2d_6/bias/Adam/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_6/bias
 
)pi/conv2d_6/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_6/bias

)pi/conv2d_6/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_6/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_6/bias/Adam_1VarHandleOp*(
shared_namepi/conv2d_6/bias/Adam_1*#
_class
loc:@pi/conv2d_6/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
+pi/conv2d_6/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_1*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_6/bias
Й
9pi/conv2d_7/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*%
_class
loc:@pi/conv2d_7/kernel*%
valueB"            *
dtype0

/pi/conv2d_7/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_7/kernel*
valueB
 *    

)pi/conv2d_7/kernel/Adam/Initializer/zerosFill9pi/conv2d_7/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_7/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_7/kernel*

index_type0*&
_output_shapes
:
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
8pi/conv2d_7/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/kernel/Adam*
_output_shapes
: *%
_class
loc:@pi/conv2d_7/kernel
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
+pi/conv2d_7/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_7/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_7/kernel/Adam_1/Initializer/zeros/Const*%
_class
loc:@pi/conv2d_7/kernel*

index_type0*&
_output_shapes
:*
T0
Ю
pi/conv2d_7/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_7/kernel/Adam_1*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:
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
-pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_1*%
_class
loc:@pi/conv2d_7/kernel*
dtype0*&
_output_shapes
:
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
6pi/conv2d_7/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias/Adam*
_output_shapes
: *#
_class
loc:@pi/conv2d_7/bias
Ђ
pi/conv2d_7/bias/Adam/AssignAssignVariableOppi/conv2d_7/bias/Adam'pi/conv2d_7/bias/Adam/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_7/bias
 
)pi/conv2d_7/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam*
_output_shapes
:*#
_class
loc:@pi/conv2d_7/bias*
dtype0

)pi/conv2d_7/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_7/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_7/bias/Adam_1VarHandleOp*(
shared_namepi/conv2d_7/bias/Adam_1*#
_class
loc:@pi/conv2d_7/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
+pi/conv2d_7/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_1*
_output_shapes
:*#
_class
loc:@pi/conv2d_7/bias*
dtype0
Ћ
6pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@pi/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

,pi/dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
valueB
 *    
є
&pi/dense/kernel/Adam/Initializer/zerosFill6pi/dense/kernel/Adam/Initializer/zeros/shape_as_tensor,pi/dense/kernel/Adam/Initializer/zeros/Const*
T0*"
_class
loc:@pi/dense/kernel*

index_type0*
_output_shapes
:	
К
pi/dense/kernel/AdamVarHandleOp*
shape:	*
dtype0*
_output_shapes
: *%
shared_namepi/dense/kernel/Adam*"
_class
loc:@pi/dense/kernel*
	container 

5pi/dense/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 

pi/dense/kernel/Adam/AssignAssignVariableOppi/dense/kernel/Adam&pi/dense/kernel/Adam/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
dtype0
Ђ
(pi/dense/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense/kernel/Adam*
_output_shapes
:	*"
_class
loc:@pi/dense/kernel*
dtype0
­
8pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@pi/dense/kernel*
valueB"      *
dtype0*
_output_shapes
:

.pi/dense/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
valueB
 *    
њ
(pi/dense/kernel/Adam_1/Initializer/zerosFill8pi/dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor.pi/dense/kernel/Adam_1/Initializer/zeros/Const*
T0*"
_class
loc:@pi/dense/kernel*

index_type0*
_output_shapes
:	
О
pi/dense/kernel/Adam_1VarHandleOp*
	container *
shape:	*
dtype0*
_output_shapes
: *'
shared_namepi/dense/kernel/Adam_1*"
_class
loc:@pi/dense/kernel
Ё
7pi/dense/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam_1*
_output_shapes
: *"
_class
loc:@pi/dense/kernel
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
_class
loc:@pi/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
А
pi/dense/bias/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
	container 
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
dtype0*
_output_shapes	
:* 
_class
loc:@pi/dense/bias

&pi/dense/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB*    *
dtype0*
_output_shapes	
:
Д
pi/dense/bias/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *%
shared_namepi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
	container 

5pi/dense/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias/Adam_1*
_output_shapes
: * 
_class
loc:@pi/dense/bias
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
(pi/dense_1/kernel/Adam/Initializer/zerosFill8pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor.pi/dense_1/kernel/Adam/Initializer/zeros/Const*
_output_shapes
:	*
T0*$
_class
loc:@pi/dense_1/kernel*

index_type0
Р
pi/dense_1/kernel/AdamVarHandleOp*$
_class
loc:@pi/dense_1/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: *'
shared_namepi/dense_1/kernel/Adam
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
*pi/dense_1/kernel/Adam_1/Initializer/zerosFill:pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor0pi/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@pi/dense_1/kernel*

index_type0*
_output_shapes
:	
Ф
pi/dense_1/kernel/Adam_1VarHandleOp*)
shared_namepi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
Ї
9pi/dense_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
Ќ
pi/dense_1/kernel/Adam_1/AssignAssignVariableOppi/dense_1/kernel/Adam_1*pi/dense_1/kernel/Adam_1/Initializer/zeros*
dtype0*$
_class
loc:@pi/dense_1/kernel
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
pi/dense_1/bias/AdamVarHandleOp*"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *%
shared_namepi/dense_1/bias/Adam
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
(pi/dense_1/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias

(pi/dense_1/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0
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
7pi/dense_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias/Adam_1*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 
Є
pi/dense_1/bias/Adam_1/AssignAssignVariableOppi/dense_1/bias/Adam_1(pi/dense_1/bias/Adam_1/Initializer/zeros*
dtype0*"
_class
loc:@pi/dense_1/bias
Ё
*pi/dense_1/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_1*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_1/bias
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

Adam/beta2Const*
valueB
 *wО?*
dtype0*
_output_shapes
: 
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
Reshape_20*
use_locking( *
T0*#
_class
loc:@pi/conv2d/kernel*
use_nesterov( 
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
Reshape_21*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@pi/conv2d/bias
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
Reshape_24*
T0*%
_class
loc:@pi/conv2d_2/kernel*
use_nesterov( *
use_locking( 
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
AAdam/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
_output_shapes
: *
dtype0
Ў
0Adam/update_pi/conv2d_3/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_3/kernelpi/conv2d_3/kernel/Adampi/conv2d_3/kernel/Adam_1?Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_26*
use_locking( *
T0*%
_class
loc:@pi/conv2d_3/kernel*
use_nesterov( 
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
Reshape_27*#
_class
loc:@pi/conv2d_3/bias*
use_nesterov( *
use_locking( *
T0
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
Reshape_29*#
_class
loc:@pi/conv2d_4/bias*
use_nesterov( *
use_locking( *
T0
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
Reshape_30*
T0*%
_class
loc:@pi/conv2d_5/kernel*
use_nesterov( *
use_locking( 

=Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0

?Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
 
.Adam/update_pi/conv2d_5/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_5/biaspi/conv2d_5/bias/Adampi/conv2d_5/bias/Adam_1=Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_31*
T0*#
_class
loc:@pi/conv2d_5/bias*
use_nesterov( *
use_locking( 
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
Reshape_33*#
_class
loc:@pi/conv2d_6/bias*
use_nesterov( *
use_locking( *
T0
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
Reshape_34*
T0*%
_class
loc:@pi/conv2d_7/kernel*
use_nesterov( *
use_locking( 

=Adam/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
_output_shapes
: *
dtype0
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
Reshape_36*
use_locking( *
T0*"
_class
loc:@pi/dense/kernel*
use_nesterov( 
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
Reshape_37*
use_locking( *
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( 
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
Reshape_39*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@pi/dense_1/bias
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
Adam/mul_1*!
_class
loc:@pi/conv2d/bias*
dtype0
ђ
Adam/ReadVariableOp_3ReadVariableOpbeta2_power^Adam/AssignVariableOp_1-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_2/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_3/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_4/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_5/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_6/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_7/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 

AdamNoOp^Adam/ReadVariableOp_1^Adam/ReadVariableOp_3-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_2/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_2/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_3/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_3/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_4/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_4/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_5/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_5/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_6/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_6/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_7/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_7/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam
y
Reshape_40/ReadVariableOpReadVariableOppi/conv2d/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_40/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_40ReshapeReshape_40/ReadVariableOpReshape_40/shape*
T0*
Tshape0*
_output_shapes
:0
k
Reshape_41/ReadVariableOpReadVariableOppi/conv2d/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_41/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_41ReshapeReshape_41/ReadVariableOpReshape_41/shape*
_output_shapes
:*
T0*
Tshape0
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

Reshape_42ReshapeReshape_42/ReadVariableOpReshape_42/shape*
T0*
Tshape0*
_output_shapes	
:	
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

Reshape_43ReshapeReshape_43/ReadVariableOpReshape_43/shape*
Tshape0*
_output_shapes
:*
T0
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

Reshape_44ReshapeReshape_44/ReadVariableOpReshape_44/shape*
_output_shapes	
:№+*
T0*
Tshape0
m
Reshape_45/ReadVariableOpReadVariableOppi/conv2d_2/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_45/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
u

Reshape_45ReshapeReshape_45/ReadVariableOpReshape_45/shape*
_output_shapes
:*
T0*
Tshape0
{
Reshape_46/ReadVariableOpReadVariableOppi/conv2d_3/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_46/shapeConst^Adam*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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
Reshape_47/shapeConst^Adam*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
u

Reshape_47ReshapeReshape_47/ReadVariableOpReshape_47/shape*
_output_shapes
:*
T0*
Tshape0
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

Reshape_48ReshapeReshape_48/ReadVariableOpReshape_48/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
m
Reshape_49/ReadVariableOpReadVariableOppi/conv2d_4/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_49/shapeConst^Adam*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
u

Reshape_49ReshapeReshape_49/ReadVariableOpReshape_49/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_50/ReadVariableOpReadVariableOppi/conv2d_5/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_50/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
v

Reshape_50ReshapeReshape_50/ReadVariableOpReshape_50/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
m
Reshape_51/ReadVariableOpReadVariableOppi/conv2d_5/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_51/shapeConst^Adam*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
u

Reshape_51ReshapeReshape_51/ReadVariableOpReshape_51/shape*
_output_shapes
:*
T0*
Tshape0
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

Reshape_53ReshapeReshape_53/ReadVariableOpReshape_53/shape*
_output_shapes
:*
T0*
Tshape0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_55ReshapeReshape_55/ReadVariableOpReshape_55/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_57/shapeConst^Adam*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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
Reshape_59/ReadVariableOpReadVariableOppi/dense_1/bias^Adam*
_output_shapes
:*
dtype0
j
Reshape_59/shapeConst^Adam*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
u

Reshape_59ReshapeReshape_59/ReadVariableOpReshape_59/shape*
_output_shapes
:*
T0*
Tshape0
V
concat_1/axisConst^Adam*
_output_shapes
: *
value	B : *
dtype0
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
Reshape_59concat_1/axis*
N*
_output_shapes

:Ит*

Tidx0*
T0
r
EagerPyFunc_1EagerPyFuncconcat_1*
_output_shapes
:*
Tin
2*
Tout
2*
token
pyfunc_1
Ї
Const_6Const^Adam*e
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
split_1SplitVEagerPyFunc_1Const_6split_1/split_dim*
T0*d
_output_shapesR
P::::::::::::::::::::*
	num_split*

Tlen0
p
Reshape_60/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
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

Reshape_61Reshape	split_1:1Reshape_61/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_62/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
q

Reshape_62Reshape	split_1:2Reshape_62/shape*&
_output_shapes
:*
T0*
Tshape0
a
Reshape_63/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_63Reshape	split_1:3Reshape_63/shape*
_output_shapes
:*
T0*
Tshape0
p
Reshape_64/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
q

Reshape_64Reshape	split_1:4Reshape_64/shape*&
_output_shapes
:*
T0*
Tshape0
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
Reshape_66/shapeConst^Adam*
dtype0*
_output_shapes
:*%
valueB"            
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

Reshape_68Reshape	split_1:8Reshape_68/shape*
Tshape0*&
_output_shapes
:*
T0
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
split_1:10Reshape_70/shape*
Tshape0*&
_output_shapes
:*
T0
a
Reshape_71/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_71Reshape
split_1:11Reshape_71/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_72/shapeConst^Adam*
_output_shapes
:*%
valueB"            *
dtype0
r

Reshape_72Reshape
split_1:12Reshape_72/shape*&
_output_shapes
:*
T0*
Tshape0
a
Reshape_73/shapeConst^Adam*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_73Reshape
split_1:13Reshape_73/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_74/shapeConst^Adam*
dtype0*
_output_shapes
:*%
valueB"            
r

Reshape_74Reshape
split_1:14Reshape_74/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_75/shapeConst^Adam*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_75Reshape
split_1:15Reshape_75/shape*
T0*
Tshape0*
_output_shapes
:
h
Reshape_76/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB"      
k

Reshape_76Reshape
split_1:16Reshape_76/shape*
_output_shapes
:	*
T0*
Tshape0
b
Reshape_77/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
g

Reshape_77Reshape
split_1:17Reshape_77/shape*
T0*
Tshape0*
_output_shapes	
:
h
Reshape_78/shapeConst^Adam*
valueB"      *
dtype0*
_output_shapes
:
k

Reshape_78Reshape
split_1:18Reshape_78/shape*
_output_shapes
:	*
T0*
Tshape0
a
Reshape_79/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
f

Reshape_79Reshape
split_1:19Reshape_79/shape*
T0*
Tshape0*
_output_shapes
:
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
ReadVariableOp_19ReadVariableOppi/dense_1/bias^Adam^AssignVariableOp_19*
_output_shapes
:*
dtype0
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
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
`
gradients_1/Mean_1_grad/ShapeShapepow*
_output_shapes
:*
T0*
out_type0
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
gradients_1/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ђ
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
i
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
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
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
_output_shapes
: *
T0

gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
_
gradients_1/pow_grad/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
_
gradients_1/pow_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
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
gradients_1/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
_output_shapes
: *
T0
n
gradients_1/pow_grad/PowPowsub_1gradients_1/pow_grad/sub*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*
T0*#
_output_shapes
:џџџџџџџџџ
Ї
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
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
gradients_1/pow_grad/GreaterGreatersub_1gradients_1/pow_grad/Greater/y*#
_output_shapes
:џџџџџџџџџ*
T0
i
$gradients_1/pow_grad/ones_like/ShapeShapesub_1*
_output_shapes
:*
T0*
out_type0
i
$gradients_1/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
В
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:џџџџџџџџџ

gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersub_1gradients_1/pow_grad/ones_like*
T0*#
_output_shapes
:џџџџџџџџџ
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*#
_output_shapes
:џџџџџџџџџ*
T0
a
gradients_1/pow_grad/zeros_like	ZerosLikesub_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ў
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*#
_output_shapes
:џџџџџџџџџ*
T0
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*#
_output_shapes
:џџџџџџџџџ*
T0

gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
о
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
з
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1*
_output_shapes
: 
i
gradients_1/sub_1_grad/ShapeShapePlaceholder_3*
T0*
out_type0*
_output_shapes
:
h
gradients_1/sub_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
Р
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
О
gradients_1/sub_1_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*#
_output_shapes
:џџџџџџџџџ*
T0*
Tshape0
Т
gradients_1/sub_1_grad/Sum_1Sum-gradients_1/pow_grad/tuple/control_dependency.gradients_1/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
b
gradients_1/sub_1_grad/NegNeggradients_1/sub_1_grad/Sum_1*
T0*
_output_shapes
:

 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Neggradients_1/sub_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
ц
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape*#
_output_shapes
:џџџџџџџџџ
у
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1*
_output_shapes
:
q
 gradients_1/v/Squeeze_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
Й
"gradients_1/v/Squeeze_grad/ReshapeReshape1gradients_1/sub_1_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
_output_shapes

:*
T0*
Tshape0

.gradients_1/v/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
data_formatNHWC*
_output_shapes
:*
T0

3gradients_1/v/dense_3/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_3/BiasAdd_grad/BiasAddGrad

;gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_3/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*
T0*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape

=gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_3/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_3/BiasAdd_grad/tuple/group_deps*A
_class7
53loc:@gradients_1/v/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
р
(gradients_1/v/dense_3/MatMul_grad/MatMulMatMul;gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependencyv/dense_3/MatMul/ReadVariableOp*
_output_shapes
:	*
transpose_a( *
transpose_b(*
T0
б
*gradients_1/v/dense_3/MatMul_grad/MatMul_1MatMulv/dense_2/Relu;gradients_1/v/dense_3/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_a(*
transpose_b( *
T0

2gradients_1/v/dense_3/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_3/MatMul_grad/MatMul+^gradients_1/v/dense_3/MatMul_grad/MatMul_1

:gradients_1/v/dense_3/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_3/MatMul_grad/MatMul3^gradients_1/v/dense_3/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense_3/MatMul_grad/MatMul*
_output_shapes
:	*
T0
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
.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/v/dense_2/Relu_grad/ReluGrad*
_output_shapes	
:*
T0*
data_formatNHWC
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
=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:*
T0*A
_class7
53loc:@gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad
п
(gradients_1/v/dense_2/MatMul_grad/MatMulMatMul;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b(
Щ
*gradients_1/v/dense_2/MatMul_grad/MatMul_1MatMulpi/Max;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	*
transpose_a(*
transpose_b( *
T0

2gradients_1/v/dense_2/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_2/MatMul_grad/MatMul+^gradients_1/v/dense_2/MatMul_grad/MatMul_1

:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/MatMul_grad/MatMul3^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense_2/MatMul_grad/MatMul*
_output_shapes

:*
T0

<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_2/MatMul_grad/MatMul_13^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes
:	*
T0*=
_class3
1/loc:@gradients_1/v/dense_2/MatMul_grad/MatMul_1
v
gradients_1/pi/Max_grad/ShapeConst*%
valueB"   
         *
dtype0*
_output_shapes
:
^
gradients_1/pi/Max_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/pi/Max_grad/addAddpi/Max/reduction_indicesgradients_1/pi/Max_grad/Size*
_output_shapes
:*
T0

gradients_1/pi/Max_grad/modFloorModgradients_1/pi/Max_grad/addgradients_1/pi/Max_grad/Size*
T0*
_output_shapes
:
i
gradients_1/pi/Max_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
e
#gradients_1/pi/Max_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
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
gradients_1/pi/Max_grad/FillFillgradients_1/pi/Max_grad/Shape_1"gradients_1/pi/Max_grad/Fill/value*

index_type0*
_output_shapes
:*
T0
н
%gradients_1/pi/Max_grad/DynamicStitchDynamicStitchgradients_1/pi/Max_grad/rangegradients_1/pi/Max_grad/modgradients_1/pi/Max_grad/Shapegradients_1/pi/Max_grad/Fill*
T0*
N*
_output_shapes
:

gradients_1/pi/Max_grad/ReshapeReshapepi/Max%gradients_1/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:
Ю
!gradients_1/pi/Max_grad/Reshape_1Reshape:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency%gradients_1/pi/Max_grad/DynamicStitch*
T0*
Tshape0*&
_output_shapes
:

gradients_1/pi/Max_grad/EqualEqualgradients_1/pi/Max_grad/Reshapepi/conv2d_7/Relu*&
_output_shapes
:
*
T0

gradients_1/pi/Max_grad/CastCastgradients_1/pi/Max_grad/Equal*
Truncate( *&
_output_shapes
:
*

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
!gradients_1/pi/Max_grad/Reshape_2Reshapegradients_1/pi/Max_grad/Sum%gradients_1/pi/Max_grad/DynamicStitch*&
_output_shapes
:*
T0*
Tshape0

gradients_1/pi/Max_grad/divRealDivgradients_1/pi/Max_grad/Cast!gradients_1/pi/Max_grad/Reshape_2*&
_output_shapes
:
*
T0

gradients_1/pi/Max_grad/mulMulgradients_1/pi/Max_grad/div!gradients_1/pi/Max_grad/Reshape_1*
T0*&
_output_shapes
:


*gradients_1/pi/conv2d_7/Relu_grad/ReluGradReluGradgradients_1/pi/Max_grad/mulpi/conv2d_7/Relu*
T0*&
_output_shapes
:

Ї
0gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_7/Relu_grad/ReluGrad*
_output_shapes
:*
T0*
data_formatNHWC

5gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_7/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_7/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_7/Relu_grad/ReluGrad*&
_output_shapes
:


?gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_7/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
­
*gradients_1/pi/conv2d_7/Conv2D_grad/ShapeNShapeNpi/conv2d_6/Relu!pi/conv2d_7/Conv2D/ReadVariableOp* 
_output_shapes
::*
T0*
out_type0*
N
ћ
7gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_7/Conv2D_grad/ShapeN!pi/conv2d_7/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
ю
8gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_6/Relu,gradients_1/pi/conv2d_7/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Б
4gradients_1/pi/conv2d_7/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_7/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_7/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_7/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

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
:
*
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
:


?gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_6/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_6/BiasAdd_grad/BiasAddGrad
­
*gradients_1/pi/conv2d_6/Conv2D_grad/ShapeNShapeNpi/conv2d_5/Relu!pi/conv2d_6/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
ћ
7gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_6/Conv2D_grad/ShapeN!pi/conv2d_6/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:

ю
8gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_5/Relu,gradients_1/pi/conv2d_6/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency*
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
4gradients_1/pi/conv2d_6/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_6/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_6/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_6/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

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
:

Ї
0gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:

5gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_5/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_5/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:
*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_5/Relu_grad/ReluGrad

?gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
­
*gradients_1/pi/conv2d_5/Conv2D_grad/ShapeNShapeNpi/conv2d_4/Relu!pi/conv2d_5/Conv2D/ReadVariableOp* 
_output_shapes
::*
T0*
out_type0*
N
ћ
7gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_5/Conv2D_grad/ShapeN!pi/conv2d_5/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0
ю
8gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_4/Relu,gradients_1/pi/conv2d_5/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_5/BiasAdd_grad/tuple/control_dependency*
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
Б
4gradients_1/pi/conv2d_5/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_5/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_5/Conv2D_grad/tuple/group_deps*&
_output_shapes
:
*
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
*gradients_1/pi/conv2d_4/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_5/Conv2D_grad/tuple/control_dependencypi/conv2d_4/Relu*&
_output_shapes
:
*
T0
Ї
0gradients_1/pi/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_4/Relu_grad/ReluGrad*
_output_shapes
:*
T0*
data_formatNHWC

5gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_4/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_4/Relu_grad/ReluGrad

=gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_4/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_4/Relu_grad/ReluGrad*&
_output_shapes
:

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
7gradients_1/pi/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_4/Conv2D_grad/ShapeN!pi/conv2d_4/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
*
	dilations

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
:

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
:

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
:
*
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
*gradients_1/pi/conv2d_3/Conv2D_grad/ShapeNShapeNpi/conv2d_2/Relu!pi/conv2d_3/Conv2D/ReadVariableOp*
out_type0*
N* 
_output_shapes
::*
T0
ћ
7gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_3/Conv2D_grad/ShapeN!pi/conv2d_3/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0*
strides
*
data_formatNHWC
ю
8gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_2/Relu,gradients_1/pi/conv2d_3/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_3/BiasAdd_grad/tuple/control_dependency*
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
Б
4gradients_1/pi/conv2d_3/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_3/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:

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
:

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
:

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
7gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_2/Conv2D_grad/ShapeN!pi/conv2d_2/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:

ю
8gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d_1/Relu,gradients_1/pi/conv2d_2/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
Б
4gradients_1/pi/conv2d_2/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_2/Conv2D_grad/tuple/group_deps*J
_class@
><loc:@gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:
*
T0
Й
>gradients_1/pi/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
З
*gradients_1/pi/conv2d_1/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_2/Conv2D_grad/tuple/control_dependencypi/conv2d_1/Relu*&
_output_shapes
:
*
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
:

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
7gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_1/Conv2D_grad/ShapeN!pi/conv2d_1/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:
*
	dilations
*
T0
ь
8gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d/Relu,gradients_1/pi/conv2d_1/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Б
4gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Е
<gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
:
*
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
:

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
:

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
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:

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
:gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients_1/pi/conv2d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:
*
T0*H
_class>
<:loc:@gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput
Б
<gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients_1/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
c
Reshape_80/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_80Reshape<gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Reshape_80/shape*
_output_shapes
:0*
T0*
Tshape0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_85Reshape?gradients_1/pi/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Reshape_85/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_86/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_86Reshape>gradients_1/pi/conv2d_3/Conv2D_grad/tuple/control_dependency_1Reshape_86/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
c
Reshape_87/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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

Reshape_88Reshape>gradients_1/pi/conv2d_4/Conv2D_grad/tuple/control_dependency_1Reshape_88/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
c
Reshape_89/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_89Reshape?gradients_1/pi/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Reshape_89/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_90/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_90Reshape>gradients_1/pi/conv2d_5/Conv2D_grad/tuple/control_dependency_1Reshape_90/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_92Reshape>gradients_1/pi/conv2d_6/Conv2D_grad/tuple/control_dependency_1Reshape_92/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
c
Reshape_93/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_93Reshape?gradients_1/pi/conv2d_6/BiasAdd_grad/tuple/control_dependency_1Reshape_93/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_94/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_94Reshape>gradients_1/pi/conv2d_7/Conv2D_grad/tuple/control_dependency_1Reshape_94/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
c
Reshape_95/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_95Reshape?gradients_1/pi/conv2d_7/BiasAdd_grad/tuple/control_dependency_1Reshape_95/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_96/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:


Reshape_96Reshape<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_96/shape*
_output_shapes	
:4*
T0*
Tshape0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
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
Reshape_99concat_2/axis*
T0*
N*
_output_shapes

:Ем*

Tidx0
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
Const_7Const*
dtype0*
_output_shapes
:*e
value\BZ"P0           №     Ф     Ф     Ф     Ф     Ф                 
S
split_2/split_dimConst*
dtype0*
_output_shapes
: *
value	B : 
§
split_2SplitVEagerPyFunc_2Const_7split_2/split_dim*
_output_shapes
:0::	::№+::Ф/::Ф/::Ф/::Ф/::Ф/::4:::*
	num_split*

Tlen0*
T0
j
Reshape_100/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
q
Reshape_100Reshapesplit_2Reshape_100/shape*
T0*
Tshape0*&
_output_shapes
:
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
Reshape_102/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_102Reshape	split_2:2Reshape_102/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_103/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_103Reshape	split_2:3Reshape_103/shape*
Tshape0*
_output_shapes
:*
T0
j
Reshape_104/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_104Reshape	split_2:4Reshape_104/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_105/shapeConst*
_output_shapes
:*
valueB:*
dtype0
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
Reshape_107Reshape	split_2:7Reshape_107/shape*
Tshape0*
_output_shapes
:*
T0
j
Reshape_108/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
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
Reshape_110/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_110Reshape
split_2:10Reshape_110/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_111/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_111Reshape
split_2:11Reshape_111/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_112/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_112Reshape
split_2:12Reshape_112/shape*
T0*
Tshape0*&
_output_shapes
:
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
Reshape_114/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
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
Reshape_116/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
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
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_118Reshape
split_2:18Reshape_118/shape*
_output_shapes
:	*
T0*
Tshape0
[
Reshape_119/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_119Reshape
split_2:19Reshape_119/shape*
_output_shapes
:*
T0*
Tshape0

'beta1_power_1/Initializer/initial_valueConst*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias*
valueB
 *fff?*
dtype0
Ђ
beta1_power_1VarHandleOp*
shape: *
dtype0*
_output_shapes
: *
shared_namebeta1_power_1*!
_class
loc:@pi/conv2d/bias*
	container 

.beta1_power_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power_1*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
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
dtype0*
_output_shapes
: *
shared_namebeta2_power_1*!
_class
loc:@pi/conv2d/bias*
	container *
shape: 

.beta2_power_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power_1*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
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
pi/conv2d/kernel/Adam_2VarHandleOp*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_2*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:*
dtype0
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
+pi/conv2d/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_2*&
_output_shapes
:*#
_class
loc:@pi/conv2d/kernel*
dtype0
Г
)pi/conv2d/kernel/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
Ш
pi/conv2d/kernel/Adam_3VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_3*#
_class
loc:@pi/conv2d/kernel
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
+pi/conv2d/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_3*
dtype0*&
_output_shapes
:*#
_class
loc:@pi/conv2d/kernel
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
6pi/conv2d/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_2*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
 
pi/conv2d/bias/Adam_2/AssignAssignVariableOppi/conv2d/bias/Adam_2'pi/conv2d/bias/Adam_2/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0

)pi/conv2d/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_2*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:

'pi/conv2d/bias/Adam_3/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
Ж
pi/conv2d/bias/Adam_3VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_3*!
_class
loc:@pi/conv2d/bias

6pi/conv2d/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_3*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
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
:pi/conv2d_1/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_2*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel
А
 pi/conv2d_1/kernel/Adam_2/AssignAssignVariableOppi/conv2d_1/kernel/Adam_2+pi/conv2d_1/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
Ж
-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_2*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_1/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:

1pi/conv2d_1/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_1/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_1/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_1/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_1/kernel/Adam_3VarHandleOp**
shared_namepi/conv2d_1/kernel/Adam_3*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_3*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:

)pi/conv2d_1/bias/Adam_2/Initializer/zerosConst*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0
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
8pi/conv2d_1/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_2*#
_class
loc:@pi/conv2d_1/bias*
_output_shapes
: 
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
8pi/conv2d_1/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_3*
_output_shapes
: *#
_class
loc:@pi/conv2d_1/bias
Ј
pi/conv2d_1/bias/Adam_3/AssignAssignVariableOppi/conv2d_1/bias/Adam_3)pi/conv2d_1/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
Є
+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_3*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias*
dtype0
Л
;pi/conv2d_2/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_2/kernel*%
valueB"            *
dtype0*
_output_shapes
:
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
1pi/conv2d_2/kernel/Adam_3/Initializer/zeros/ConstConst*
_output_shapes
: *%
_class
loc:@pi/conv2d_2/kernel*
valueB
 *    *
dtype0

+pi/conv2d_2/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_2/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_2/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_2/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_2/kernel/Adam_3VarHandleOp*%
_class
loc:@pi/conv2d_2/kernel*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_2/kernel/Adam_3
Њ
:pi/conv2d_2/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/kernel/Adam_3*%
_class
loc:@pi/conv2d_2/kernel*
_output_shapes
: 
А
 pi/conv2d_2/kernel/Adam_3/AssignAssignVariableOppi/conv2d_2/kernel/Adam_3+pi/conv2d_2/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_2/kernel*
dtype0
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
pi/conv2d_2/bias/Adam_2VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_2/bias/Adam_2*#
_class
loc:@pi/conv2d_2/bias
Є
8pi/conv2d_2/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_2/bias/Adam_2*
_output_shapes
: *#
_class
loc:@pi/conv2d_2/bias
Ј
pi/conv2d_2/bias/Adam_2/AssignAssignVariableOppi/conv2d_2/bias/Adam_2)pi/conv2d_2/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_2/bias*
dtype0
Є
+pi/conv2d_2/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_2*#
_class
loc:@pi/conv2d_2/bias*
dtype0*
_output_shapes
:
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
;pi/conv2d_3/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_3/kernel*%
valueB"            
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
+pi/conv2d_3/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_3/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_3/kernel/Adam_2/Initializer/zeros/Const*%
_class
loc:@pi/conv2d_3/kernel*

index_type0*&
_output_shapes
:*
T0
Ю
pi/conv2d_3/kernel/Adam_2VarHandleOp**
shared_namepi/conv2d_3/kernel/Adam_2*%
_class
loc:@pi/conv2d_3/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
-pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_2*&
_output_shapes
:*%
_class
loc:@pi/conv2d_3/kernel*
dtype0
Л
;pi/conv2d_3/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_3/kernel*%
valueB"            

1pi/conv2d_3/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_3/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_3/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_3/kernel/Adam_3/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_3/kernel*

index_type0
Ю
pi/conv2d_3/kernel/Adam_3VarHandleOp*%
_class
loc:@pi/conv2d_3/kernel*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_3/kernel/Adam_3
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
-pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam_3*%
_class
loc:@pi/conv2d_3/kernel*
dtype0*&
_output_shapes
:
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
pi/conv2d_3/bias/Adam_2/AssignAssignVariableOppi/conv2d_3/bias/Adam_2)pi/conv2d_3/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_3/bias*
dtype0
Є
+pi/conv2d_3/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_2*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_3/bias

)pi/conv2d_3/bias/Adam_3/Initializer/zerosConst*
_output_shapes
:*#
_class
loc:@pi/conv2d_3/bias*
valueB*    *
dtype0
М
pi/conv2d_3/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_3/bias/Adam_3*#
_class
loc:@pi/conv2d_3/bias*
	container *
shape:
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
+pi/conv2d_3/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_3*#
_class
loc:@pi/conv2d_3/bias*
dtype0*
_output_shapes
:
Л
;pi/conv2d_4/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_4/kernel*%
valueB"            *
dtype0*
_output_shapes
:
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
pi/conv2d_4/kernel/Adam_2VarHandleOp**
shared_namepi/conv2d_4/kernel/Adam_2*%
_class
loc:@pi/conv2d_4/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
;pi/conv2d_4/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_4/kernel*%
valueB"            

1pi/conv2d_4/kernel/Adam_3/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_4/kernel*
valueB
 *    

+pi/conv2d_4/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_4/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_4/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_4/kernel*

index_type0*&
_output_shapes
:
Ю
pi/conv2d_4/kernel/Adam_3VarHandleOp**
shared_namepi/conv2d_4/kernel/Adam_3*%
_class
loc:@pi/conv2d_4/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
pi/conv2d_4/bias/Adam_2VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_4/bias/Adam_2*#
_class
loc:@pi/conv2d_4/bias
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
+pi/conv2d_4/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_2*
_output_shapes
:*#
_class
loc:@pi/conv2d_4/bias*
dtype0

)pi/conv2d_4/bias/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d_4/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_4/bias/Adam_3VarHandleOp*#
_class
loc:@pi/conv2d_4/bias*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_4/bias/Adam_3
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
+pi/conv2d_4/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_3*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_4/bias
Л
;pi/conv2d_5/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_5/kernel*%
valueB"            *
dtype0*
_output_shapes
:
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
pi/conv2d_5/kernel/Adam_2VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_5/kernel/Adam_2*%
_class
loc:@pi/conv2d_5/kernel*
	container *
shape:
Њ
:pi/conv2d_5/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel/Adam_2*%
_class
loc:@pi/conv2d_5/kernel*
_output_shapes
: 
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
1pi/conv2d_5/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

+pi/conv2d_5/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_5/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_5/kernel/Adam_3/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_5/kernel*

index_type0
Ю
pi/conv2d_5/kernel/Adam_3VarHandleOp*
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_5/kernel/Adam_3*%
_class
loc:@pi/conv2d_5/kernel*
	container 
Њ
:pi/conv2d_5/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/kernel/Adam_3*%
_class
loc:@pi/conv2d_5/kernel*
_output_shapes
: 
А
 pi/conv2d_5/kernel/Adam_3/AssignAssignVariableOppi/conv2d_5/kernel/Adam_3+pi/conv2d_5/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_5/kernel*
dtype0
Ж
-pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_5/kernel/Adam_3*%
_class
loc:@pi/conv2d_5/kernel*
dtype0*&
_output_shapes
:

)pi/conv2d_5/bias/Adam_2/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_5/bias*
valueB*    
М
pi/conv2d_5/bias/Adam_2VarHandleOp*#
_class
loc:@pi/conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_5/bias/Adam_2
Є
8pi/conv2d_5/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam_2*#
_class
loc:@pi/conv2d_5/bias*
_output_shapes
: 
Ј
pi/conv2d_5/bias/Adam_2/AssignAssignVariableOppi/conv2d_5/bias/Adam_2)pi/conv2d_5/bias/Adam_2/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_5/bias
Є
+pi/conv2d_5/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_2*#
_class
loc:@pi/conv2d_5/bias*
dtype0*
_output_shapes
:

)pi/conv2d_5/bias/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d_5/bias*
valueB*    *
dtype0*
_output_shapes
:
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
8pi/conv2d_5/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_5/bias/Adam_3*#
_class
loc:@pi/conv2d_5/bias*
_output_shapes
: 
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
+pi/conv2d_6/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_6/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_6/kernel/Adam_2/Initializer/zeros/Const*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_6/kernel*

index_type0
Ю
pi/conv2d_6/kernel/Adam_2VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_6/kernel/Adam_2*%
_class
loc:@pi/conv2d_6/kernel*
	container *
shape:
Њ
:pi/conv2d_6/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/kernel/Adam_2*%
_class
loc:@pi/conv2d_6/kernel*
_output_shapes
: 
А
 pi/conv2d_6/kernel/Adam_2/AssignAssignVariableOppi/conv2d_6/kernel/Adam_2+pi/conv2d_6/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_6/kernel*
dtype0
Ж
-pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_2*%
_class
loc:@pi/conv2d_6/kernel*
dtype0*&
_output_shapes
:
Л
;pi/conv2d_6/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_6/kernel*%
valueB"            
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
 pi/conv2d_6/kernel/Adam_3/AssignAssignVariableOppi/conv2d_6/kernel/Adam_3+pi/conv2d_6/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_6/kernel*
dtype0
Ж
-pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_3*%
_class
loc:@pi/conv2d_6/kernel*
dtype0*&
_output_shapes
:

)pi/conv2d_6/bias/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d_6/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_6/bias/Adam_2VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_6/bias/Adam_2*#
_class
loc:@pi/conv2d_6/bias
Є
8pi/conv2d_6/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias/Adam_2*
_output_shapes
: *#
_class
loc:@pi/conv2d_6/bias
Ј
pi/conv2d_6/bias/Adam_2/AssignAssignVariableOppi/conv2d_6/bias/Adam_2)pi/conv2d_6/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_6/bias*
dtype0
Є
+pi/conv2d_6/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_2*#
_class
loc:@pi/conv2d_6/bias*
dtype0*
_output_shapes
:

)pi/conv2d_6/bias/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d_6/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_6/bias/Adam_3VarHandleOp*#
_class
loc:@pi/conv2d_6/bias*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_6/bias/Adam_3
Є
8pi/conv2d_6/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_6/bias/Adam_3*#
_class
loc:@pi/conv2d_6/bias*
_output_shapes
: 
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
pi/conv2d_7/kernel/Adam_2VarHandleOp**
shared_namepi/conv2d_7/kernel/Adam_2*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
Њ
:pi/conv2d_7/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/kernel/Adam_2*
_output_shapes
: *%
_class
loc:@pi/conv2d_7/kernel
А
 pi/conv2d_7/kernel/Adam_2/AssignAssignVariableOppi/conv2d_7/kernel/Adam_2+pi/conv2d_7/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_7/kernel*
dtype0
Ж
-pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_2*%
_class
loc:@pi/conv2d_7/kernel*
dtype0*&
_output_shapes
:
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
pi/conv2d_7/kernel/Adam_3VarHandleOp**
shared_namepi/conv2d_7/kernel/Adam_3*%
_class
loc:@pi/conv2d_7/kernel*
	container *
shape:*
dtype0*
_output_shapes
: 
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
-pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_3*%
_class
loc:@pi/conv2d_7/kernel*
dtype0*&
_output_shapes
:

)pi/conv2d_7/bias/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d_7/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_7/bias/Adam_2VarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_7/bias/Adam_2*#
_class
loc:@pi/conv2d_7/bias*
	container 
Є
8pi/conv2d_7/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias/Adam_2*
_output_shapes
: *#
_class
loc:@pi/conv2d_7/bias
Ј
pi/conv2d_7/bias/Adam_2/AssignAssignVariableOppi/conv2d_7/bias/Adam_2)pi/conv2d_7/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_7/bias*
dtype0
Є
+pi/conv2d_7/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_2*#
_class
loc:@pi/conv2d_7/bias*
dtype0*
_output_shapes
:

)pi/conv2d_7/bias/Adam_3/Initializer/zerosConst*#
_class
loc:@pi/conv2d_7/bias*
valueB*    *
dtype0*
_output_shapes
:
М
pi/conv2d_7/bias/Adam_3VarHandleOp*(
shared_namepi/conv2d_7/bias/Adam_3*#
_class
loc:@pi/conv2d_7/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
Є
8pi/conv2d_7/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_7/bias/Adam_3*#
_class
loc:@pi/conv2d_7/bias*
_output_shapes
: 
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
7v/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_2/kernel*
valueB"      

-v/dense_2/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@v/dense_2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
ј
'v/dense_2/kernel/Adam/Initializer/zerosFill7v/dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_2/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@v/dense_2/kernel*

index_type0*
_output_shapes
:	
Н
v/dense_2/kernel/AdamVarHandleOp*&
shared_namev/dense_2/kernel/Adam*#
_class
loc:@v/dense_2/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
 
6v/dense_2/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/kernel/Adam*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel
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
/v/dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel*
valueB
 *    
ў
)v/dense_2/kernel/Adam_1/Initializer/zerosFill9v/dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@v/dense_2/kernel*

index_type0*
_output_shapes
:	
С
v/dense_2/kernel/Adam_1VarHandleOp*
_output_shapes
: *(
shared_namev/dense_2/kernel/Adam_1*#
_class
loc:@v/dense_2/kernel*
	container *
shape:	*
dtype0
Є
8v/dense_2/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_2/kernel/Adam_1*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel
Ј
v/dense_2/kernel/Adam_1/AssignAssignVariableOpv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*#
_class
loc:@v/dense_2/kernel*
dtype0
Љ
+v/dense_2/kernel/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_2/kernel/Adam_1*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
:	
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
v/dense_2/bias/Adam/AssignAssignVariableOpv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
dtype0

'v/dense_2/bias/Adam/Read/ReadVariableOpReadVariableOpv/dense_2/bias/Adam*
dtype0*
_output_shapes	
:*!
_class
loc:@v/dense_2/bias

'v/dense_2/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0*
_output_shapes	
:
З
v/dense_2/bias/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namev/dense_2/bias/Adam_1*!
_class
loc:@v/dense_2/bias*
	container 
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
'v/dense_3/kernel/Adam/Initializer/zerosConst*
_output_shapes
:	*#
_class
loc:@v/dense_3/kernel*
valueB	*    *
dtype0
Н
v/dense_3/kernel/AdamVarHandleOp*&
shared_namev/dense_3/kernel/Adam*#
_class
loc:@v/dense_3/kernel*
	container *
shape:	*
dtype0*
_output_shapes
: 
 
6v/dense_3/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/kernel/Adam*
_output_shapes
: *#
_class
loc:@v/dense_3/kernel
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
)v/dense_3/kernel/Adam_1/Initializer/zerosConst*#
_class
loc:@v/dense_3/kernel*
valueB	*    *
dtype0*
_output_shapes
:	
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
8v/dense_3/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/kernel/Adam_1*
_output_shapes
: *#
_class
loc:@v/dense_3/kernel
Ј
v/dense_3/kernel/Adam_1/AssignAssignVariableOpv/dense_3/kernel/Adam_1)v/dense_3/kernel/Adam_1/Initializer/zeros*#
_class
loc:@v/dense_3/kernel*
dtype0
Љ
+v/dense_3/kernel/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_3/kernel/Adam_1*
_output_shapes
:	*#
_class
loc:@v/dense_3/kernel*
dtype0

%v/dense_3/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:
В
v/dense_3/bias/AdamVarHandleOp*$
shared_namev/dense_3/bias/Adam*!
_class
loc:@v/dense_3/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
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
'v/dense_3/bias/Adam/Read/ReadVariableOpReadVariableOpv/dense_3/bias/Adam*!
_class
loc:@v/dense_3/bias*
dtype0*
_output_shapes
:

'v/dense_3/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_3/bias*
valueB*    *
dtype0*
_output_shapes
:
Ж
v/dense_3/bias/Adam_1VarHandleOp*
_output_shapes
: *&
shared_namev/dense_3/bias/Adam_1*!
_class
loc:@v/dense_3/bias*
	container *
shape:*
dtype0

6v/dense_3/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_3/bias/Adam_1*!
_class
loc:@v/dense_3/bias*
_output_shapes
: 
 
v/dense_3/bias/Adam_1/AssignAssignVariableOpv/dense_3/bias/Adam_1'v/dense_3/bias/Adam_1/Initializer/zeros*!
_class
loc:@v/dense_3/bias*
dtype0
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
Adam_1/beta2Const*
_output_shapes
: *
valueB
 *wО?*
dtype0
S
Adam_1/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *wЬ+2
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
2Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_1/kernelpi/conv2d_1/kernel/Adam_2pi/conv2d_1/kernel/Adam_3AAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_102*
use_nesterov( *
use_locking( *
T0*%
_class
loc:@pi/conv2d_1/kernel
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
0Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_1/biaspi/conv2d_1/bias/Adam_2pi/conv2d_1/bias/Adam_3?Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_103*
use_locking( *
T0*#
_class
loc:@pi/conv2d_1/bias*
use_nesterov( 

AAdam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
_output_shapes
: *
dtype0
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
AAdam_1/update_pi/conv2d_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
_output_shapes
: *
dtype0
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
2Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_3/kernelpi/conv2d_3/kernel/Adam_2pi/conv2d_3/kernel/Adam_3AAdam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_106*
T0*%
_class
loc:@pi/conv2d_3/kernel*
use_nesterov( *
use_locking( 
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
0Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_3/biaspi/conv2d_3/bias/Adam_2pi/conv2d_3/bias/Adam_3?Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_3/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_107*#
_class
loc:@pi/conv2d_3/bias*
use_nesterov( *
use_locking( *
T0
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
2Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_4/kernelpi/conv2d_4/kernel/Adam_2pi/conv2d_4/kernel/Adam_3AAdam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_108*%
_class
loc:@pi/conv2d_4/kernel*
use_nesterov( *
use_locking( *
T0
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
0Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_4/biaspi/conv2d_4/bias/Adam_2pi/conv2d_4/bias/Adam_3?Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_4/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_109*
use_locking( *
T0*#
_class
loc:@pi/conv2d_4/bias*
use_nesterov( 
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
2Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_5/kernelpi/conv2d_5/kernel/Adam_2pi/conv2d_5/kernel/Adam_3AAdam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_110*
use_locking( *
T0*%
_class
loc:@pi/conv2d_5/kernel*
use_nesterov( 
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
0Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_5/biaspi/conv2d_5/bias/Adam_2pi/conv2d_5/bias/Adam_3?Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_5/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_111*
use_locking( *
T0*#
_class
loc:@pi/conv2d_5/bias*
use_nesterov( 

AAdam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 

CAdam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
_output_shapes
: *
dtype0
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
0Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_6/biaspi/conv2d_6/bias/Adam_2pi/conv2d_6/bias/Adam_3?Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_6/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_113*
use_locking( *
T0*#
_class
loc:@pi/conv2d_6/bias*
use_nesterov( 

AAdam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
_output_shapes
: *
dtype0
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
0Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_7/biaspi/conv2d_7/bias/Adam_2pi/conv2d_7/bias/Adam_3?Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_7/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_115*#
_class
loc:@pi/conv2d_7/bias*
use_nesterov( *
use_locking( *
T0
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
.Adam_1/update_v/dense_2/bias/ResourceApplyAdamResourceApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1=Adam_1/update_v/dense_2/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_v/dense_2/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_117*
use_locking( *
T0*!
_class
loc:@v/dense_2/bias*
use_nesterov( 
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
0Adam_1/update_v/dense_3/kernel/ResourceApplyAdamResourceApplyAdamv/dense_3/kernelv/dense_3/kernel/Adamv/dense_3/kernel/Adam_1?Adam_1/update_v/dense_3/kernel/ResourceApplyAdam/ReadVariableOpAAdam_1/update_v/dense_3/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_118*
T0*#
_class
loc:@v/dense_3/kernel*
use_nesterov( *
use_locking( 

=Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
_output_shapes
: *
dtype0

?Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
Ё
.Adam_1/update_v/dense_3/bias/ResourceApplyAdamResourceApplyAdamv/dense_3/biasv/dense_3/bias/Adamv/dense_3/bias/Adam_1=Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_v/dense_3/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilonReshape_119*
use_locking( *
T0*!
_class
loc:@v/dense_3/bias*
use_nesterov( 
п
Adam_1/ReadVariableOpReadVariableOpbeta1_power_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_2/bias/ResourceApplyAdam1^Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_3/bias/ResourceApplyAdam1^Adam_1/update_v/dense_3/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
z

Adam_1/mulMulAdam_1/ReadVariableOpAdam_1/beta1*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: *
T0
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
Adam_1/ReadVariableOp_2ReadVariableOpbeta2_power_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_2/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_2/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_3/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_3/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_4/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_4/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_5/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_5/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_6/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_6/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_7/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_7/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_2/bias/ResourceApplyAdam1^Adam_1/update_v/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_3/bias/ResourceApplyAdam1^Adam_1/update_v/dense_3/kernel/ResourceApplyAdam*
_output_shapes
: *
dtype0
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
Reshape_120/shapeConst^Adam_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
x
Reshape_120ReshapeReshape_120/ReadVariableOpReshape_120/shape*
T0*
Tshape0*
_output_shapes
:0
n
Reshape_121/ReadVariableOpReadVariableOppi/conv2d/bias^Adam_1*
_output_shapes
:*
dtype0
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
Reshape_122/shapeConst^Adam_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_124ReshapeReshape_124/ReadVariableOpReshape_124/shape*
T0*
Tshape0*
_output_shapes	
:№+
p
Reshape_125/ReadVariableOpReadVariableOppi/conv2d_2/bias^Adam_1*
_output_shapes
:*
dtype0
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
Reshape_126/ReadVariableOpReadVariableOppi/conv2d_3/kernel^Adam_1*&
_output_shapes
:*
dtype0
m
Reshape_126/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_126ReshapeReshape_126/ReadVariableOpReshape_126/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
p
Reshape_127/ReadVariableOpReadVariableOppi/conv2d_3/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_127/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_128ReshapeReshape_128/ReadVariableOpReshape_128/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
p
Reshape_129/ReadVariableOpReadVariableOppi/conv2d_4/bias^Adam_1*
dtype0*
_output_shapes
:
m
Reshape_129/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_129ReshapeReshape_129/ReadVariableOpReshape_129/shape*
_output_shapes
:*
T0*
Tshape0
~
Reshape_130/ReadVariableOpReadVariableOppi/conv2d_5/kernel^Adam_1*
dtype0*&
_output_shapes
:
m
Reshape_130/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_131/shapeConst^Adam_1*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_134ReshapeReshape_134/ReadVariableOpReshape_134/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
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
Reshape_135ReshapeReshape_135/ReadVariableOpReshape_135/shape*
_output_shapes
:*
T0*
Tshape0
u
Reshape_136/ReadVariableOpReadVariableOpv/dense_2/kernel^Adam_1*
dtype0*
_output_shapes
:	
m
Reshape_136/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_136ReshapeReshape_136/ReadVariableOpReshape_136/shape*
T0*
Tshape0*
_output_shapes	
:4
o
Reshape_137/ReadVariableOpReadVariableOpv/dense_2/bias^Adam_1*
dtype0*
_output_shapes	
:
m
Reshape_137/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_137ReshapeReshape_137/ReadVariableOpReshape_137/shape*
T0*
Tshape0*
_output_shapes	
:
u
Reshape_138/ReadVariableOpReadVariableOpv/dense_3/kernel^Adam_1*
dtype0*
_output_shapes
:	
m
Reshape_138/shapeConst^Adam_1*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_138ReshapeReshape_138/ReadVariableOpReshape_138/shape*
T0*
Tshape0*
_output_shapes	
:
n
Reshape_139/ReadVariableOpReadVariableOpv/dense_3/bias^Adam_1*
_output_shapes
:*
dtype0
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
concat_3ConcatV2Reshape_120Reshape_121Reshape_122Reshape_123Reshape_124Reshape_125Reshape_126Reshape_127Reshape_128Reshape_129Reshape_130Reshape_131Reshape_132Reshape_133Reshape_134Reshape_135Reshape_136Reshape_137Reshape_138Reshape_139concat_3/axis*

Tidx0*
T0*
N*
_output_shapes

:Ем
r
EagerPyFunc_3EagerPyFuncconcat_3*
Tout
2*
token
pyfunc_3*
_output_shapes
:*
Tin
2
Љ
Const_8Const^Adam_1*e
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
Ш
split_3SplitVEagerPyFunc_3Const_8split_3/split_dim*
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
Reshape_141/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_141Reshape	split_3:1Reshape_141/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_147Reshape	split_3:7Reshape_147/shape*
_output_shapes
:*
T0*
Tshape0
s
Reshape_148/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_148Reshape	split_3:8Reshape_148/shape*
Tshape0*&
_output_shapes
:*
T0
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
Reshape_150/shapeConst^Adam_1*
_output_shapes
:*%
valueB"            *
dtype0
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
Reshape_152/shapeConst^Adam_1*
dtype0*
_output_shapes
:*%
valueB"            
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
Reshape_154/shapeConst^Adam_1*
_output_shapes
:*%
valueB"            *
dtype0
t
Reshape_154Reshape
split_3:14Reshape_154/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_155/shapeConst^Adam_1*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_155Reshape
split_3:15Reshape_155/shape*
_output_shapes
:*
T0*
Tshape0
k
Reshape_156/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_156Reshape
split_3:16Reshape_156/shape*
Tshape0*
_output_shapes
:	*
T0
e
Reshape_157/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
i
Reshape_157Reshape
split_3:17Reshape_157/shape*
_output_shapes	
:*
T0*
Tshape0
k
Reshape_158/shapeConst^Adam_1*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_158Reshape
split_3:18Reshape_158/shape*
T0*
Tshape0*
_output_shapes
:	
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
_output_shapes
:	*
dtype0
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
_output_shapes
:	*
dtype0
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
Reshape_162ReshapeReshape_162/ReadVariableOpReshape_162/shape*
T0*
Tshape0*
_output_shapes	
:	
g
Reshape_163/ReadVariableOpReadVariableOppi/conv2d_1/bias*
dtype0*
_output_shapes
:
d
Reshape_163/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_165ReshapeReshape_165/ReadVariableOpReshape_165/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_167ReshapeReshape_167/ReadVariableOpReshape_167/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_168ReshapeReshape_168/ReadVariableOpReshape_168/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
g
Reshape_169/ReadVariableOpReadVariableOppi/conv2d_4/bias*
dtype0*
_output_shapes
:
d
Reshape_169/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
x
Reshape_169ReshapeReshape_169/ReadVariableOpReshape_169/shape*
_output_shapes
:*
T0*
Tshape0
u
Reshape_170/ReadVariableOpReadVariableOppi/conv2d_5/kernel*
dtype0*&
_output_shapes
:
d
Reshape_170/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_171ReshapeReshape_171/ReadVariableOpReshape_171/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_174ReshapeReshape_174/ReadVariableOpReshape_174/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_181ReshapeReshape_181/ReadVariableOpReshape_181/shape*
T0*
Tshape0*
_output_shapes	
:
l
Reshape_182/ReadVariableOpReadVariableOpv/dense_3/kernel*
dtype0*
_output_shapes
:	
d
Reshape_182/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_182ReshapeReshape_182/ReadVariableOpReshape_182/shape*
_output_shapes	
:*
T0*
Tshape0
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
Reshape_184ReshapeReshape_184/ReadVariableOpReshape_184/shape*
T0*
Tshape0*
_output_shapes
:
^
Reshape_185/ReadVariableOpReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
d
Reshape_185/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_186ReshapeReshape_186/ReadVariableOpReshape_186/shape*
_output_shapes
:0*
T0*
Tshape0
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
Reshape_190ReshapeReshape_190/ReadVariableOpReshape_190/shape*
Tshape0*
_output_shapes	
:	*
T0
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
Reshape_191ReshapeReshape_191/ReadVariableOpReshape_191/shape*
T0*
Tshape0*
_output_shapes	
:	
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
Reshape_194ReshapeReshape_194/ReadVariableOpReshape_194/shape*
T0*
Tshape0*
_output_shapes	
:№+
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
Reshape_195ReshapeReshape_195/ReadVariableOpReshape_195/shape*
Tshape0*
_output_shapes	
:№+*
T0
l
Reshape_196/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_196/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_196ReshapeReshape_196/ReadVariableOpReshape_196/shape*
Tshape0*
_output_shapes
:*
T0
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
Reshape_198/ReadVariableOpReadVariableOppi/conv2d_3/kernel/Adam*&
_output_shapes
:*
dtype0
d
Reshape_198/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_200ReshapeReshape_200/ReadVariableOpReshape_200/shape*
T0*
Tshape0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_203ReshapeReshape_203/ReadVariableOpReshape_203/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
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
Reshape_204ReshapeReshape_204/ReadVariableOpReshape_204/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_205ReshapeReshape_205/ReadVariableOpReshape_205/shape*
Tshape0*
_output_shapes
:*
T0
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
Reshape_207ReshapeReshape_207/ReadVariableOpReshape_207/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
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
Reshape_208ReshapeReshape_208/ReadVariableOpReshape_208/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_209/ReadVariableOpReadVariableOppi/conv2d_5/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_209/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_209ReshapeReshape_209/ReadVariableOpReshape_209/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_210/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam*&
_output_shapes
:*
dtype0
d
Reshape_210/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_211ReshapeReshape_211/ReadVariableOpReshape_211/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
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
Reshape_212ReshapeReshape_212/ReadVariableOpReshape_212/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_215/ReadVariableOpReadVariableOppi/conv2d_7/kernel/Adam_1*&
_output_shapes
:*
dtype0
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
Reshape_216ReshapeReshape_216/ReadVariableOpReshape_216/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_219ReshapeReshape_219/ReadVariableOpReshape_219/shape*
Tshape0*
_output_shapes	
:4*
T0
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
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
Reshape_223ReshapeReshape_223/ReadVariableOpReshape_223/shape*
Tshape0*
_output_shapes	
:*
T0
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
Reshape_224ReshapeReshape_224/ReadVariableOpReshape_224/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_225ReshapeReshape_225/ReadVariableOpReshape_225/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_227ReshapeReshape_227/ReadVariableOpReshape_227/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_229/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_3*&
_output_shapes
:*
dtype0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_234/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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
Reshape_235ReshapeReshape_235/ReadVariableOpReshape_235/shape*
_output_shapes
:*
T0*
Tshape0
|
Reshape_236/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_236/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
y
Reshape_236ReshapeReshape_236/ReadVariableOpReshape_236/shape*
Tshape0*
_output_shapes	
:№+*
T0
|
Reshape_237/ReadVariableOpReadVariableOppi/conv2d_2/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_237/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
x
Reshape_238ReshapeReshape_238/ReadVariableOpReshape_238/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_239/ReadVariableOpReadVariableOppi/conv2d_2/bias/Adam_3*
_output_shapes
:*
dtype0
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_242ReshapeReshape_242/ReadVariableOpReshape_242/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_243/ReadVariableOpReadVariableOppi/conv2d_3/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_243/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_244/shapeConst*
_output_shapes
:*
valueB:
џџџџџџџџџ*
dtype0
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
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
Reshape_246ReshapeReshape_246/ReadVariableOpReshape_246/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_247/ReadVariableOpReadVariableOppi/conv2d_4/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_247/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_249ReshapeReshape_249/ReadVariableOpReshape_249/shape*
_output_shapes	
:Ф/*
T0*
Tshape0
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
Reshape_251ReshapeReshape_251/ReadVariableOpReshape_251/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_252/ReadVariableOpReadVariableOppi/conv2d_6/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_252/shapeConst*
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
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
dtype0*
_output_shapes
:*
valueB:
џџџџџџџџџ
y
Reshape_253ReshapeReshape_253/ReadVariableOpReshape_253/shape*
T0*
Tshape0*
_output_shapes	
:Ф/
n
Reshape_254/ReadVariableOpReadVariableOppi/conv2d_6/bias/Adam_2*
_output_shapes
:*
dtype0
d
Reshape_254/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_255ReshapeReshape_255/ReadVariableOpReshape_255/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_258ReshapeReshape_258/ReadVariableOpReshape_258/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_259/ReadVariableOpReadVariableOppi/conv2d_7/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_259/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_261ReshapeReshape_261/ReadVariableOpReshape_261/shape*
T0*
Tshape0*
_output_shapes	
:4
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
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
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
Reshape_265ReshapeReshape_265/ReadVariableOpReshape_265/shape*
Tshape0*
_output_shapes	
:*
T0
j
Reshape_266/ReadVariableOpReadVariableOpv/dense_3/bias/Adam*
_output_shapes
:*
dtype0
d
Reshape_266/shapeConst*
valueB:
џџџџџџџџџ*
dtype0*
_output_shapes
:
x
Reshape_266ReshapeReshape_266/ReadVariableOpReshape_266/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_267ReshapeReshape_267/ReadVariableOpReshape_267/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
л
concat_4ConcatV2Reshape_160Reshape_161Reshape_162Reshape_163Reshape_164Reshape_165Reshape_166Reshape_167Reshape_168Reshape_169Reshape_170Reshape_171Reshape_172Reshape_173Reshape_174Reshape_175Reshape_176Reshape_177Reshape_178Reshape_179Reshape_180Reshape_181Reshape_182Reshape_183Reshape_184Reshape_185Reshape_186Reshape_187Reshape_188Reshape_189Reshape_190Reshape_191Reshape_192Reshape_193Reshape_194Reshape_195Reshape_196Reshape_197Reshape_198Reshape_199Reshape_200Reshape_201Reshape_202Reshape_203Reshape_204Reshape_205Reshape_206Reshape_207Reshape_208Reshape_209Reshape_210Reshape_211Reshape_212Reshape_213Reshape_214Reshape_215Reshape_216Reshape_217Reshape_218Reshape_219Reshape_220Reshape_221Reshape_222Reshape_223Reshape_224Reshape_225Reshape_226Reshape_227Reshape_228Reshape_229Reshape_230Reshape_231Reshape_232Reshape_233Reshape_234Reshape_235Reshape_236Reshape_237Reshape_238Reshape_239Reshape_240Reshape_241Reshape_242Reshape_243Reshape_244Reshape_245Reshape_246Reshape_247Reshape_248Reshape_249Reshape_250Reshape_251Reshape_252Reshape_253Reshape_254Reshape_255Reshape_256Reshape_257Reshape_258Reshape_259Reshape_260Reshape_261Reshape_262Reshape_263Reshape_264Reshape_265Reshape_266Reshape_267concat_4/axis*

Tidx0*
T0*
Nl*
_output_shapes

:
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

Const_9Const*Ш
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
Ћ
split_4SplitVEagerPyFunc_4Const_9split_4/split_dim*
T0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_splitl*

Tlen0
j
Reshape_268/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
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
Reshape_271Reshape	split_4:3Reshape_271/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_272/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_272Reshape	split_4:4Reshape_272/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_273/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_273Reshape	split_4:5Reshape_273/shape*
Tshape0*
_output_shapes
:*
T0
j
Reshape_274/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
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
Reshape_275Reshape	split_4:7Reshape_275/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_277/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_277Reshape	split_4:9Reshape_277/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_278/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
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
split_4:11Reshape_279/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_281/shapeConst*
dtype0*
_output_shapes
:*
valueB:
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
Reshape_283/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_283Reshape
split_4:15Reshape_283/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_284/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_284Reshape
split_4:16Reshape_284/shape*
T0*
Tshape0*
_output_shapes
:	
\
Reshape_285/shapeConst*
valueB:*
dtype0*
_output_shapes
:
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
dtype0*
_output_shapes
:*
valueB"      
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
split_4:21Reshape_289/shape*
Tshape0*
_output_shapes	
:*
T0
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
split_4:23Reshape_291/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_292/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_292Reshape
split_4:24Reshape_292/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_293/shapeConst*
_output_shapes
: *
valueB *
dtype0
d
Reshape_293Reshape
split_4:25Reshape_293/shape*
_output_shapes
: *
T0*
Tshape0
j
Reshape_294/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
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
split_4:28Reshape_296/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_299/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
t
Reshape_299Reshape
split_4:31Reshape_299/shape*&
_output_shapes
:*
T0*
Tshape0
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
split_4:34Reshape_302/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_303/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_303Reshape
split_4:35Reshape_303/shape*&
_output_shapes
:*
T0*
Tshape0
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
split_4:37Reshape_305/shape*
T0*
Tshape0*
_output_shapes
:
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
Reshape_307/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
t
Reshape_307Reshape
split_4:39Reshape_307/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_308/shapeConst*
valueB:*
dtype0*
_output_shapes
:
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
split_4:42Reshape_310/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_311/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_311Reshape
split_4:43Reshape_311/shape*
Tshape0*&
_output_shapes
:*
T0
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
Reshape_313/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_313Reshape
split_4:45Reshape_313/shape*
_output_shapes
:*
T0*
Tshape0
j
Reshape_314/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_314Reshape
split_4:46Reshape_314/shape*
Tshape0*&
_output_shapes
:*
T0
j
Reshape_315/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
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
split_4:49Reshape_317/shape*
Tshape0*
_output_shapes
:*
T0
j
Reshape_318/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_318Reshape
split_4:50Reshape_318/shape*
T0*
Tshape0*&
_output_shapes
:
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
Reshape_320/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_320Reshape
split_4:52Reshape_320/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_321/shapeConst*
_output_shapes
:*
valueB:*
dtype0
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
Reshape_323/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_323Reshape
split_4:55Reshape_323/shape*
Tshape0*&
_output_shapes
:*
T0
[
Reshape_324/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_324Reshape
split_4:56Reshape_324/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_325/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_325Reshape
split_4:57Reshape_325/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_326/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_326Reshape
split_4:58Reshape_326/shape*
T0*
Tshape0*
_output_shapes
:	
b
Reshape_327/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
m
Reshape_327Reshape
split_4:59Reshape_327/shape*
_output_shapes
:	*
T0*
Tshape0
\
Reshape_328/shapeConst*
_output_shapes
:*
valueB:*
dtype0
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
split_4:62Reshape_330/shape*
Tshape0*
_output_shapes
:	*
T0
b
Reshape_331/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_331Reshape
split_4:63Reshape_331/shape*
Tshape0*
_output_shapes
:	*
T0
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
split_4:65Reshape_333/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_335/shapeConst*
dtype0*
_output_shapes
: *
valueB 
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
Reshape_337/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_337Reshape
split_4:69Reshape_337/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_338/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_338Reshape
split_4:70Reshape_338/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_339/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_339Reshape
split_4:71Reshape_339/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_340/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_340Reshape
split_4:72Reshape_340/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_341/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_341Reshape
split_4:73Reshape_341/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_342/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_342Reshape
split_4:74Reshape_342/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_343/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_343Reshape
split_4:75Reshape_343/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_345/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_345Reshape
split_4:77Reshape_345/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_346/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_346Reshape
split_4:78Reshape_346/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_347/shapeConst*
valueB:*
dtype0*
_output_shapes
:
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
split_4:80Reshape_348/shape*
Tshape0*&
_output_shapes
:*
T0
j
Reshape_349/shapeConst*
_output_shapes
:*%
valueB"            *
dtype0
t
Reshape_349Reshape
split_4:81Reshape_349/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_350/shapeConst*
_output_shapes
:*
valueB:*
dtype0
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
split_4:83Reshape_351/shape*
_output_shapes
:*
T0*
Tshape0
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
split_4:85Reshape_353/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_354/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_354Reshape
split_4:86Reshape_354/shape*
Tshape0*
_output_shapes
:*
T0
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
split_4:89Reshape_357/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_358/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_358Reshape
split_4:90Reshape_358/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_360/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
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
split_4:93Reshape_361/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_362/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_362Reshape
split_4:94Reshape_362/shape*
_output_shapes
:*
T0*
Tshape0
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
Reshape_367/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_367Reshape
split_4:99Reshape_367/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_368/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
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
Reshape_369Reshapesplit_4:101Reshape_369/shape*
T0*
Tshape0*
_output_shapes
:	
\
Reshape_370/shapeConst*
valueB:*
dtype0*
_output_shapes
:
j
Reshape_370Reshapesplit_4:102Reshape_370/shape*
T0*
Tshape0*
_output_shapes	
:
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
dtype0*
_output_shapes
:*
valueB"      
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
Reshape_375Reshapesplit_4:107Reshape_375/shape*
_output_shapes
:*
T0*
Tshape0
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
ReadVariableOp_45ReadVariableOppi/conv2d_2/bias^AssignVariableOp_45*
_output_shapes
:*
dtype0
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
ReadVariableOp_67ReadVariableOppi/conv2d/kernel/Adam_1^AssignVariableOp_67*&
_output_shapes
:*
dtype0
V
AssignVariableOp_68AssignVariableOppi/conv2d/bias/AdamReshape_296*
dtype0
w
ReadVariableOp_68ReadVariableOppi/conv2d/bias/Adam^AssignVariableOp_68*
_output_shapes
:*
dtype0
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
ReadVariableOp_76ReadVariableOppi/conv2d_2/bias/Adam^AssignVariableOp_76*
_output_shapes
:*
dtype0
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
ReadVariableOp_84ReadVariableOppi/conv2d_4/bias/Adam^AssignVariableOp_84*
_output_shapes
:*
dtype0
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
ReadVariableOp_89ReadVariableOppi/conv2d_5/bias/Adam_1^AssignVariableOp_89*
_output_shapes
:*
dtype0
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
ReadVariableOp_114ReadVariableOppi/conv2d_1/bias/Adam_2^AssignVariableOp_114*
_output_shapes
:*
dtype0
[
AssignVariableOp_115AssignVariableOppi/conv2d_1/bias/Adam_3Reshape_343*
dtype0
}
ReadVariableOp_115ReadVariableOppi/conv2d_1/bias/Adam_3^AssignVariableOp_115*
_output_shapes
:*
dtype0
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
ReadVariableOp_137ReadVariableOppi/conv2d_7/kernel/Adam_3^AssignVariableOp_137*&
_output_shapes
:*
dtype0
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
_output_shapes
:	*
dtype0
W
AssignVariableOp_142AssignVariableOpv/dense_2/bias/AdamReshape_370*
dtype0
z
ReadVariableOp_142ReadVariableOpv/dense_2/bias/Adam^AssignVariableOp_142*
_output_shapes	
:*
dtype0
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
_output_shapes
:	*
dtype0
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
ReadVariableOp_146ReadVariableOpv/dense_3/bias/Adam^AssignVariableOp_146*
_output_shapes
:*
dtype0
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
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_17eb91e5665544bb9fe2d90dd34f537f/part*
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
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*z
dtypesp
n2l*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
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
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
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
save/Identity_6Identitysave/RestoreV2:5*
_output_shapes
:*
T0
^
save/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
`
save/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
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
save/Identity_12Identitysave/RestoreV2:11*
_output_shapes
:*
T0
d
save/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
_output_shapes
:*
T0
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
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
]
save/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
_output_shapes
:*
T0
b
save/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
_output_shapes
:*
T0
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
save/Identity_22Identitysave/RestoreV2:21*
_output_shapes
:*
T0
f
save/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
_output_shapes
:*
T0
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
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
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
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
d
save/AssignVariableOp_26AssignVariableOppi/conv2d_2/bias/Adam_1save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
_output_shapes
:*
T0
d
save/AssignVariableOp_27AssignVariableOppi/conv2d_2/bias/Adam_2save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
_output_shapes
:*
T0
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
save/Identity_31Identitysave/RestoreV2:30*
_output_shapes
:*
T0
d
save/AssignVariableOp_30AssignVariableOppi/conv2d_2/kernel/Adamsave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
_output_shapes
:*
T0
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
save/Identity_34Identitysave/RestoreV2:33*
_output_shapes
:*
T0
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
save/Identity_40Identitysave/RestoreV2:39*
_output_shapes
:*
T0
_
save/AssignVariableOp_39AssignVariableOppi/conv2d_3/kernelsave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
_output_shapes
:*
T0
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
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
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
save/Identity_47Identitysave/RestoreV2:46*
_output_shapes
:*
T0
d
save/AssignVariableOp_46AssignVariableOppi/conv2d_4/bias/Adam_1save/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
_output_shapes
:*
T0
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
save/Identity_50Identitysave/RestoreV2:49*
_output_shapes
:*
T0
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
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:
f
save/AssignVariableOp_51AssignVariableOppi/conv2d_4/kernel/Adam_1save/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
T0*
_output_shapes
:
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
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:
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
save/Identity_62Identitysave/RestoreV2:61*
T0*
_output_shapes
:
f
save/AssignVariableOp_61AssignVariableOppi/conv2d_5/kernel/Adam_1save/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
T0*
_output_shapes
:
f
save/AssignVariableOp_62AssignVariableOppi/conv2d_5/kernel/Adam_2save/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
_output_shapes
:*
T0
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
save/Identity_66Identitysave/RestoreV2:65*
_output_shapes
:*
T0
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
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
d
save/AssignVariableOp_67AssignVariableOppi/conv2d_6/bias/Adam_2save/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
_output_shapes
:*
T0
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
save/Identity_72Identitysave/RestoreV2:71*
_output_shapes
:*
T0
f
save/AssignVariableOp_71AssignVariableOppi/conv2d_6/kernel/Adam_1save/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:
f
save/AssignVariableOp_72AssignVariableOppi/conv2d_6/kernel/Adam_2save/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
T0*
_output_shapes
:
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
save/Identity_77Identitysave/RestoreV2:76*
_output_shapes
:*
T0
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
save/Identity_80Identitysave/RestoreV2:79*
_output_shapes
:*
T0
_
save/AssignVariableOp_79AssignVariableOppi/conv2d_7/kernelsave/Identity_80*
dtype0
R
save/Identity_81Identitysave/RestoreV2:80*
T0*
_output_shapes
:
d
save/AssignVariableOp_80AssignVariableOppi/conv2d_7/kernel/Adamsave/Identity_81*
dtype0
R
save/Identity_82Identitysave/RestoreV2:81*
_output_shapes
:*
T0
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
save/Identity_85Identitysave/RestoreV2:84*
_output_shapes
:*
T0
Z
save/AssignVariableOp_84AssignVariableOppi/dense/biassave/Identity_85*
dtype0
R
save/Identity_86Identitysave/RestoreV2:85*
T0*
_output_shapes
:
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
save/Identity_88Identitysave/RestoreV2:87*
_output_shapes
:*
T0
\
save/AssignVariableOp_87AssignVariableOppi/dense/kernelsave/Identity_88*
dtype0
R
save/Identity_89Identitysave/RestoreV2:88*
T0*
_output_shapes
:
a
save/AssignVariableOp_88AssignVariableOppi/dense/kernel/Adamsave/Identity_89*
dtype0
R
save/Identity_90Identitysave/RestoreV2:89*
_output_shapes
:*
T0
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
save/Identity_92Identitysave/RestoreV2:91*
T0*
_output_shapes
:
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
save/Identity_94Identitysave/RestoreV2:93*
_output_shapes
:*
T0
^
save/AssignVariableOp_93AssignVariableOppi/dense_1/kernelsave/Identity_94*
dtype0
R
save/Identity_95Identitysave/RestoreV2:94*
_output_shapes
:*
T0
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
save/Identity_98Identitysave/RestoreV2:97*
T0*
_output_shapes
:
`
save/AssignVariableOp_97AssignVariableOpv/dense_2/bias/Adamsave/Identity_98*
dtype0
R
save/Identity_99Identitysave/RestoreV2:98*
_output_shapes
:*
T0
b
save/AssignVariableOp_98AssignVariableOpv/dense_2/bias/Adam_1save/Identity_99*
dtype0
S
save/Identity_100Identitysave/RestoreV2:99*
_output_shapes
:*
T0
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
save/Identity_102Identitysave/RestoreV2:101*
_output_shapes
:*
T0
f
save/AssignVariableOp_101AssignVariableOpv/dense_2/kernel/Adam_1save/Identity_102*
dtype0
T
save/Identity_103Identitysave/RestoreV2:102*
_output_shapes
:*
T0
]
save/AssignVariableOp_102AssignVariableOpv/dense_3/biassave/Identity_103*
dtype0
T
save/Identity_104Identitysave/RestoreV2:103*
_output_shapes
:*
T0
b
save/AssignVariableOp_103AssignVariableOpv/dense_3/bias/Adamsave/Identity_104*
dtype0
T
save/Identity_105Identitysave/RestoreV2:104*
_output_shapes
:*
T0
d
save/AssignVariableOp_104AssignVariableOpv/dense_3/bias/Adam_1save/Identity_105*
dtype0
T
save/Identity_106Identitysave/RestoreV2:105*
_output_shapes
:*
T0
_
save/AssignVariableOp_105AssignVariableOpv/dense_3/kernelsave/Identity_106*
dtype0
T
save/Identity_107Identitysave/RestoreV2:106*
T0*
_output_shapes
:
d
save/AssignVariableOp_106AssignVariableOpv/dense_3/kernel/Adamsave/Identity_107*
dtype0
T
save/Identity_108Identitysave/RestoreV2:107*
_output_shapes
:*
T0
f
save/AssignVariableOp_107AssignVariableOpv/dense_3/kernel/Adam_1save/Identity_108*
dtype0
њ
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_9^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_a7fbf78df58640b4bbbed82c14f8059a/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:l
Р
save_1/SaveV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
&
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOp"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_2/bias/Read/ReadVariableOp)pi/conv2d_2/bias/Adam/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_2/kernel/Read/ReadVariableOp+pi/conv2d_2/kernel/Adam/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_3/bias/Read/ReadVariableOp)pi/conv2d_3/bias/Adam/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_3/kernel/Read/ReadVariableOp+pi/conv2d_3/kernel/Adam/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_4/bias/Read/ReadVariableOp)pi/conv2d_4/bias/Adam/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_4/kernel/Read/ReadVariableOp+pi/conv2d_4/kernel/Adam/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_5/bias/Read/ReadVariableOp)pi/conv2d_5/bias/Adam/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_5/kernel/Read/ReadVariableOp+pi/conv2d_5/kernel/Adam/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_6/bias/Read/ReadVariableOp)pi/conv2d_6/bias/Adam/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_6/kernel/Read/ReadVariableOp+pi/conv2d_6/kernel/Adam/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_7/bias/Read/ReadVariableOp)pi/conv2d_7/bias/Adam/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_7/kernel/Read/ReadVariableOp+pi/conv2d_7/kernel/Adam/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp"v/dense_2/bias/Read/ReadVariableOp'v/dense_2/bias/Adam/Read/ReadVariableOp)v/dense_2/bias/Adam_1/Read/ReadVariableOp$v/dense_2/kernel/Read/ReadVariableOp)v/dense_2/kernel/Adam/Read/ReadVariableOp+v/dense_2/kernel/Adam_1/Read/ReadVariableOp"v/dense_3/bias/Read/ReadVariableOp'v/dense_3/bias/Adam/Read/ReadVariableOp)v/dense_3/bias/Adam_1/Read/ReadVariableOp$v/dense_3/kernel/Read/ReadVariableOp)v/dense_3/kernel/Adam/Read/ReadVariableOp+v/dense_3/kernel/Adam_1/Read/ReadVariableOp*z
dtypesp
n2l

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ѓ
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0

save_1/RestoreV2/tensor_namesConst*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:l
У
!save_1/RestoreV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
В
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*z
dtypesp
n2l
R
save_1/Identity_1Identitysave_1/RestoreV2*
T0*
_output_shapes
:
X
save_1/AssignVariableOpAssignVariableOpbeta1_powersave_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:1*
_output_shapes
:*
T0
\
save_1/AssignVariableOp_1AssignVariableOpbeta1_power_1save_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:2*
_output_shapes
:*
T0
Z
save_1/AssignVariableOp_2AssignVariableOpbeta2_powersave_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:3*
T0*
_output_shapes
:
\
save_1/AssignVariableOp_3AssignVariableOpbeta2_power_1save_1/Identity_4*
dtype0
T
save_1/Identity_5Identitysave_1/RestoreV2:4*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_4AssignVariableOppi/conv2d/biassave_1/Identity_5*
dtype0
T
save_1/Identity_6Identitysave_1/RestoreV2:5*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave_1/Identity_6*
dtype0
T
save_1/Identity_7Identitysave_1/RestoreV2:6*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save_1/Identity_7*
dtype0
T
save_1/Identity_8Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save_1/Identity_8*
dtype0
T
save_1/Identity_9Identitysave_1/RestoreV2:8*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save_1/Identity_9*
dtype0
U
save_1/Identity_10Identitysave_1/RestoreV2:9*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:10*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:11*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:12*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:13*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save_1/Identity_14*
dtype0
V
save_1/Identity_15Identitysave_1/RestoreV2:14*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:17*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:18*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save_1/Identity_19*
dtype0
V
save_1/Identity_20Identitysave_1/RestoreV2:19*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave_1/Identity_20*
dtype0
V
save_1/Identity_21Identitysave_1/RestoreV2:20*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave_1/Identity_21*
dtype0
V
save_1/Identity_22Identitysave_1/RestoreV2:21*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save_1/Identity_22*
dtype0
V
save_1/Identity_23Identitysave_1/RestoreV2:22*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save_1/Identity_23*
dtype0
V
save_1/Identity_24Identitysave_1/RestoreV2:23*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save_1/Identity_24*
dtype0
V
save_1/Identity_25Identitysave_1/RestoreV2:24*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_24AssignVariableOppi/conv2d_2/biassave_1/Identity_25*
dtype0
V
save_1/Identity_26Identitysave_1/RestoreV2:25*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_25AssignVariableOppi/conv2d_2/bias/Adamsave_1/Identity_26*
dtype0
V
save_1/Identity_27Identitysave_1/RestoreV2:26*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_26AssignVariableOppi/conv2d_2/bias/Adam_1save_1/Identity_27*
dtype0
V
save_1/Identity_28Identitysave_1/RestoreV2:27*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_27AssignVariableOppi/conv2d_2/bias/Adam_2save_1/Identity_28*
dtype0
V
save_1/Identity_29Identitysave_1/RestoreV2:28*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_28AssignVariableOppi/conv2d_2/bias/Adam_3save_1/Identity_29*
dtype0
V
save_1/Identity_30Identitysave_1/RestoreV2:29*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_29AssignVariableOppi/conv2d_2/kernelsave_1/Identity_30*
dtype0
V
save_1/Identity_31Identitysave_1/RestoreV2:30*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_30AssignVariableOppi/conv2d_2/kernel/Adamsave_1/Identity_31*
dtype0
V
save_1/Identity_32Identitysave_1/RestoreV2:31*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_31AssignVariableOppi/conv2d_2/kernel/Adam_1save_1/Identity_32*
dtype0
V
save_1/Identity_33Identitysave_1/RestoreV2:32*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_32AssignVariableOppi/conv2d_2/kernel/Adam_2save_1/Identity_33*
dtype0
V
save_1/Identity_34Identitysave_1/RestoreV2:33*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_33AssignVariableOppi/conv2d_2/kernel/Adam_3save_1/Identity_34*
dtype0
V
save_1/Identity_35Identitysave_1/RestoreV2:34*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_34AssignVariableOppi/conv2d_3/biassave_1/Identity_35*
dtype0
V
save_1/Identity_36Identitysave_1/RestoreV2:35*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_35AssignVariableOppi/conv2d_3/bias/Adamsave_1/Identity_36*
dtype0
V
save_1/Identity_37Identitysave_1/RestoreV2:36*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_36AssignVariableOppi/conv2d_3/bias/Adam_1save_1/Identity_37*
dtype0
V
save_1/Identity_38Identitysave_1/RestoreV2:37*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_37AssignVariableOppi/conv2d_3/bias/Adam_2save_1/Identity_38*
dtype0
V
save_1/Identity_39Identitysave_1/RestoreV2:38*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_38AssignVariableOppi/conv2d_3/bias/Adam_3save_1/Identity_39*
dtype0
V
save_1/Identity_40Identitysave_1/RestoreV2:39*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_39AssignVariableOppi/conv2d_3/kernelsave_1/Identity_40*
dtype0
V
save_1/Identity_41Identitysave_1/RestoreV2:40*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_40AssignVariableOppi/conv2d_3/kernel/Adamsave_1/Identity_41*
dtype0
V
save_1/Identity_42Identitysave_1/RestoreV2:41*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_41AssignVariableOppi/conv2d_3/kernel/Adam_1save_1/Identity_42*
dtype0
V
save_1/Identity_43Identitysave_1/RestoreV2:42*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_42AssignVariableOppi/conv2d_3/kernel/Adam_2save_1/Identity_43*
dtype0
V
save_1/Identity_44Identitysave_1/RestoreV2:43*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_43AssignVariableOppi/conv2d_3/kernel/Adam_3save_1/Identity_44*
dtype0
V
save_1/Identity_45Identitysave_1/RestoreV2:44*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_44AssignVariableOppi/conv2d_4/biassave_1/Identity_45*
dtype0
V
save_1/Identity_46Identitysave_1/RestoreV2:45*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_45AssignVariableOppi/conv2d_4/bias/Adamsave_1/Identity_46*
dtype0
V
save_1/Identity_47Identitysave_1/RestoreV2:46*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_46AssignVariableOppi/conv2d_4/bias/Adam_1save_1/Identity_47*
dtype0
V
save_1/Identity_48Identitysave_1/RestoreV2:47*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_47AssignVariableOppi/conv2d_4/bias/Adam_2save_1/Identity_48*
dtype0
V
save_1/Identity_49Identitysave_1/RestoreV2:48*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_48AssignVariableOppi/conv2d_4/bias/Adam_3save_1/Identity_49*
dtype0
V
save_1/Identity_50Identitysave_1/RestoreV2:49*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_49AssignVariableOppi/conv2d_4/kernelsave_1/Identity_50*
dtype0
V
save_1/Identity_51Identitysave_1/RestoreV2:50*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_50AssignVariableOppi/conv2d_4/kernel/Adamsave_1/Identity_51*
dtype0
V
save_1/Identity_52Identitysave_1/RestoreV2:51*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_51AssignVariableOppi/conv2d_4/kernel/Adam_1save_1/Identity_52*
dtype0
V
save_1/Identity_53Identitysave_1/RestoreV2:52*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_52AssignVariableOppi/conv2d_4/kernel/Adam_2save_1/Identity_53*
dtype0
V
save_1/Identity_54Identitysave_1/RestoreV2:53*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_53AssignVariableOppi/conv2d_4/kernel/Adam_3save_1/Identity_54*
dtype0
V
save_1/Identity_55Identitysave_1/RestoreV2:54*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_54AssignVariableOppi/conv2d_5/biassave_1/Identity_55*
dtype0
V
save_1/Identity_56Identitysave_1/RestoreV2:55*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_55AssignVariableOppi/conv2d_5/bias/Adamsave_1/Identity_56*
dtype0
V
save_1/Identity_57Identitysave_1/RestoreV2:56*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_56AssignVariableOppi/conv2d_5/bias/Adam_1save_1/Identity_57*
dtype0
V
save_1/Identity_58Identitysave_1/RestoreV2:57*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_57AssignVariableOppi/conv2d_5/bias/Adam_2save_1/Identity_58*
dtype0
V
save_1/Identity_59Identitysave_1/RestoreV2:58*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_58AssignVariableOppi/conv2d_5/bias/Adam_3save_1/Identity_59*
dtype0
V
save_1/Identity_60Identitysave_1/RestoreV2:59*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_59AssignVariableOppi/conv2d_5/kernelsave_1/Identity_60*
dtype0
V
save_1/Identity_61Identitysave_1/RestoreV2:60*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_60AssignVariableOppi/conv2d_5/kernel/Adamsave_1/Identity_61*
dtype0
V
save_1/Identity_62Identitysave_1/RestoreV2:61*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_61AssignVariableOppi/conv2d_5/kernel/Adam_1save_1/Identity_62*
dtype0
V
save_1/Identity_63Identitysave_1/RestoreV2:62*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_62AssignVariableOppi/conv2d_5/kernel/Adam_2save_1/Identity_63*
dtype0
V
save_1/Identity_64Identitysave_1/RestoreV2:63*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_63AssignVariableOppi/conv2d_5/kernel/Adam_3save_1/Identity_64*
dtype0
V
save_1/Identity_65Identitysave_1/RestoreV2:64*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_64AssignVariableOppi/conv2d_6/biassave_1/Identity_65*
dtype0
V
save_1/Identity_66Identitysave_1/RestoreV2:65*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_65AssignVariableOppi/conv2d_6/bias/Adamsave_1/Identity_66*
dtype0
V
save_1/Identity_67Identitysave_1/RestoreV2:66*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_66AssignVariableOppi/conv2d_6/bias/Adam_1save_1/Identity_67*
dtype0
V
save_1/Identity_68Identitysave_1/RestoreV2:67*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_67AssignVariableOppi/conv2d_6/bias/Adam_2save_1/Identity_68*
dtype0
V
save_1/Identity_69Identitysave_1/RestoreV2:68*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_68AssignVariableOppi/conv2d_6/bias/Adam_3save_1/Identity_69*
dtype0
V
save_1/Identity_70Identitysave_1/RestoreV2:69*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_69AssignVariableOppi/conv2d_6/kernelsave_1/Identity_70*
dtype0
V
save_1/Identity_71Identitysave_1/RestoreV2:70*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_70AssignVariableOppi/conv2d_6/kernel/Adamsave_1/Identity_71*
dtype0
V
save_1/Identity_72Identitysave_1/RestoreV2:71*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_71AssignVariableOppi/conv2d_6/kernel/Adam_1save_1/Identity_72*
dtype0
V
save_1/Identity_73Identitysave_1/RestoreV2:72*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_72AssignVariableOppi/conv2d_6/kernel/Adam_2save_1/Identity_73*
dtype0
V
save_1/Identity_74Identitysave_1/RestoreV2:73*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_73AssignVariableOppi/conv2d_6/kernel/Adam_3save_1/Identity_74*
dtype0
V
save_1/Identity_75Identitysave_1/RestoreV2:74*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_74AssignVariableOppi/conv2d_7/biassave_1/Identity_75*
dtype0
V
save_1/Identity_76Identitysave_1/RestoreV2:75*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_75AssignVariableOppi/conv2d_7/bias/Adamsave_1/Identity_76*
dtype0
V
save_1/Identity_77Identitysave_1/RestoreV2:76*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_76AssignVariableOppi/conv2d_7/bias/Adam_1save_1/Identity_77*
dtype0
V
save_1/Identity_78Identitysave_1/RestoreV2:77*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_77AssignVariableOppi/conv2d_7/bias/Adam_2save_1/Identity_78*
dtype0
V
save_1/Identity_79Identitysave_1/RestoreV2:78*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_78AssignVariableOppi/conv2d_7/bias/Adam_3save_1/Identity_79*
dtype0
V
save_1/Identity_80Identitysave_1/RestoreV2:79*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_79AssignVariableOppi/conv2d_7/kernelsave_1/Identity_80*
dtype0
V
save_1/Identity_81Identitysave_1/RestoreV2:80*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_80AssignVariableOppi/conv2d_7/kernel/Adamsave_1/Identity_81*
dtype0
V
save_1/Identity_82Identitysave_1/RestoreV2:81*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_81AssignVariableOppi/conv2d_7/kernel/Adam_1save_1/Identity_82*
dtype0
V
save_1/Identity_83Identitysave_1/RestoreV2:82*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_82AssignVariableOppi/conv2d_7/kernel/Adam_2save_1/Identity_83*
dtype0
V
save_1/Identity_84Identitysave_1/RestoreV2:83*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_83AssignVariableOppi/conv2d_7/kernel/Adam_3save_1/Identity_84*
dtype0
V
save_1/Identity_85Identitysave_1/RestoreV2:84*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_84AssignVariableOppi/dense/biassave_1/Identity_85*
dtype0
V
save_1/Identity_86Identitysave_1/RestoreV2:85*
_output_shapes
:*
T0
c
save_1/AssignVariableOp_85AssignVariableOppi/dense/bias/Adamsave_1/Identity_86*
dtype0
V
save_1/Identity_87Identitysave_1/RestoreV2:86*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_86AssignVariableOppi/dense/bias/Adam_1save_1/Identity_87*
dtype0
V
save_1/Identity_88Identitysave_1/RestoreV2:87*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_87AssignVariableOppi/dense/kernelsave_1/Identity_88*
dtype0
V
save_1/Identity_89Identitysave_1/RestoreV2:88*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_88AssignVariableOppi/dense/kernel/Adamsave_1/Identity_89*
dtype0
V
save_1/Identity_90Identitysave_1/RestoreV2:89*
_output_shapes
:*
T0
g
save_1/AssignVariableOp_89AssignVariableOppi/dense/kernel/Adam_1save_1/Identity_90*
dtype0
V
save_1/Identity_91Identitysave_1/RestoreV2:90*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_90AssignVariableOppi/dense_1/biassave_1/Identity_91*
dtype0
V
save_1/Identity_92Identitysave_1/RestoreV2:91*
_output_shapes
:*
T0
e
save_1/AssignVariableOp_91AssignVariableOppi/dense_1/bias/Adamsave_1/Identity_92*
dtype0
V
save_1/Identity_93Identitysave_1/RestoreV2:92*
_output_shapes
:*
T0
g
save_1/AssignVariableOp_92AssignVariableOppi/dense_1/bias/Adam_1save_1/Identity_93*
dtype0
V
save_1/Identity_94Identitysave_1/RestoreV2:93*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_93AssignVariableOppi/dense_1/kernelsave_1/Identity_94*
dtype0
V
save_1/Identity_95Identitysave_1/RestoreV2:94*
_output_shapes
:*
T0
g
save_1/AssignVariableOp_94AssignVariableOppi/dense_1/kernel/Adamsave_1/Identity_95*
dtype0
V
save_1/Identity_96Identitysave_1/RestoreV2:95*
_output_shapes
:*
T0
i
save_1/AssignVariableOp_95AssignVariableOppi/dense_1/kernel/Adam_1save_1/Identity_96*
dtype0
V
save_1/Identity_97Identitysave_1/RestoreV2:96*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_96AssignVariableOpv/dense_2/biassave_1/Identity_97*
dtype0
V
save_1/Identity_98Identitysave_1/RestoreV2:97*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_97AssignVariableOpv/dense_2/bias/Adamsave_1/Identity_98*
dtype0
V
save_1/Identity_99Identitysave_1/RestoreV2:98*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_98AssignVariableOpv/dense_2/bias/Adam_1save_1/Identity_99*
dtype0
W
save_1/Identity_100Identitysave_1/RestoreV2:99*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_99AssignVariableOpv/dense_2/kernelsave_1/Identity_100*
dtype0
X
save_1/Identity_101Identitysave_1/RestoreV2:100*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_100AssignVariableOpv/dense_2/kernel/Adamsave_1/Identity_101*
dtype0
X
save_1/Identity_102Identitysave_1/RestoreV2:101*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_101AssignVariableOpv/dense_2/kernel/Adam_1save_1/Identity_102*
dtype0
X
save_1/Identity_103Identitysave_1/RestoreV2:102*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_102AssignVariableOpv/dense_3/biassave_1/Identity_103*
dtype0
X
save_1/Identity_104Identitysave_1/RestoreV2:103*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_103AssignVariableOpv/dense_3/bias/Adamsave_1/Identity_104*
dtype0
X
save_1/Identity_105Identitysave_1/RestoreV2:104*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_104AssignVariableOpv/dense_3/bias/Adam_1save_1/Identity_105*
dtype0
X
save_1/Identity_106Identitysave_1/RestoreV2:105*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_105AssignVariableOpv/dense_3/kernelsave_1/Identity_106*
dtype0
X
save_1/Identity_107Identitysave_1/RestoreV2:106*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_106AssignVariableOpv/dense_3/kernel/Adamsave_1/Identity_107*
dtype0
X
save_1/Identity_108Identitysave_1/RestoreV2:107*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_107AssignVariableOpv/dense_3/kernel/Adam_1save_1/Identity_108*
dtype0
д
save_1/restore_shardNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_100^save_1/AssignVariableOp_101^save_1/AssignVariableOp_102^save_1/AssignVariableOp_103^save_1/AssignVariableOp_104^save_1/AssignVariableOp_105^save_1/AssignVariableOp_106^save_1/AssignVariableOp_107^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_26^save_1/AssignVariableOp_27^save_1/AssignVariableOp_28^save_1/AssignVariableOp_29^save_1/AssignVariableOp_3^save_1/AssignVariableOp_30^save_1/AssignVariableOp_31^save_1/AssignVariableOp_32^save_1/AssignVariableOp_33^save_1/AssignVariableOp_34^save_1/AssignVariableOp_35^save_1/AssignVariableOp_36^save_1/AssignVariableOp_37^save_1/AssignVariableOp_38^save_1/AssignVariableOp_39^save_1/AssignVariableOp_4^save_1/AssignVariableOp_40^save_1/AssignVariableOp_41^save_1/AssignVariableOp_42^save_1/AssignVariableOp_43^save_1/AssignVariableOp_44^save_1/AssignVariableOp_45^save_1/AssignVariableOp_46^save_1/AssignVariableOp_47^save_1/AssignVariableOp_48^save_1/AssignVariableOp_49^save_1/AssignVariableOp_5^save_1/AssignVariableOp_50^save_1/AssignVariableOp_51^save_1/AssignVariableOp_52^save_1/AssignVariableOp_53^save_1/AssignVariableOp_54^save_1/AssignVariableOp_55^save_1/AssignVariableOp_56^save_1/AssignVariableOp_57^save_1/AssignVariableOp_58^save_1/AssignVariableOp_59^save_1/AssignVariableOp_6^save_1/AssignVariableOp_60^save_1/AssignVariableOp_61^save_1/AssignVariableOp_62^save_1/AssignVariableOp_63^save_1/AssignVariableOp_64^save_1/AssignVariableOp_65^save_1/AssignVariableOp_66^save_1/AssignVariableOp_67^save_1/AssignVariableOp_68^save_1/AssignVariableOp_69^save_1/AssignVariableOp_7^save_1/AssignVariableOp_70^save_1/AssignVariableOp_71^save_1/AssignVariableOp_72^save_1/AssignVariableOp_73^save_1/AssignVariableOp_74^save_1/AssignVariableOp_75^save_1/AssignVariableOp_76^save_1/AssignVariableOp_77^save_1/AssignVariableOp_78^save_1/AssignVariableOp_79^save_1/AssignVariableOp_8^save_1/AssignVariableOp_80^save_1/AssignVariableOp_81^save_1/AssignVariableOp_82^save_1/AssignVariableOp_83^save_1/AssignVariableOp_84^save_1/AssignVariableOp_85^save_1/AssignVariableOp_86^save_1/AssignVariableOp_87^save_1/AssignVariableOp_88^save_1/AssignVariableOp_89^save_1/AssignVariableOp_9^save_1/AssignVariableOp_90^save_1/AssignVariableOp_91^save_1/AssignVariableOp_92^save_1/AssignVariableOp_93^save_1/AssignVariableOp_94^save_1/AssignVariableOp_95^save_1/AssignVariableOp_96^save_1/AssignVariableOp_97^save_1/AssignVariableOp_98^save_1/AssignVariableOp_99
1
save_1/restore_allNoOp^save_1/restore_shard
[
save_2/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
shape: *
dtype0*
_output_shapes
: 

save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_4c736cacc7c5449681a0b9e33c15b6b5/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_2/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 

save_2/SaveV2/tensor_namesConst*
_output_shapes
:l*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1*
dtype0
Р
save_2/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:l*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
&
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOp"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_2/bias/Read/ReadVariableOp)pi/conv2d_2/bias/Adam/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_2/kernel/Read/ReadVariableOp+pi/conv2d_2/kernel/Adam/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_3/bias/Read/ReadVariableOp)pi/conv2d_3/bias/Adam/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_3/kernel/Read/ReadVariableOp+pi/conv2d_3/kernel/Adam/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_4/bias/Read/ReadVariableOp)pi/conv2d_4/bias/Adam/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_4/kernel/Read/ReadVariableOp+pi/conv2d_4/kernel/Adam/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_5/bias/Read/ReadVariableOp)pi/conv2d_5/bias/Adam/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_5/kernel/Read/ReadVariableOp+pi/conv2d_5/kernel/Adam/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_6/bias/Read/ReadVariableOp)pi/conv2d_6/bias/Adam/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_6/kernel/Read/ReadVariableOp+pi/conv2d_6/kernel/Adam/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_7/bias/Read/ReadVariableOp)pi/conv2d_7/bias/Adam/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_7/kernel/Read/ReadVariableOp+pi/conv2d_7/kernel/Adam/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp"v/dense_2/bias/Read/ReadVariableOp'v/dense_2/bias/Adam/Read/ReadVariableOp)v/dense_2/bias/Adam_1/Read/ReadVariableOp$v/dense_2/kernel/Read/ReadVariableOp)v/dense_2/kernel/Adam/Read/ReadVariableOp+v/dense_2/kernel/Adam_1/Read/ReadVariableOp"v/dense_3/bias/Read/ReadVariableOp'v/dense_3/bias/Adam/Read/ReadVariableOp)v/dense_3/bias/Adam_1/Read/ReadVariableOp$v/dense_3/kernel/Read/ReadVariableOp)v/dense_3/kernel/Adam/Read/ReadVariableOp+v/dense_3/kernel/Adam_1/Read/ReadVariableOp*z
dtypesp
n2l

save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
Ѓ
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(

save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
_output_shapes
: *
T0

save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:l*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1
У
!save_2/RestoreV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
В
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*z
dtypesp
n2l*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
R
save_2/Identity_1Identitysave_2/RestoreV2*
_output_shapes
:*
T0
X
save_2/AssignVariableOpAssignVariableOpbeta1_powersave_2/Identity_1*
dtype0
T
save_2/Identity_2Identitysave_2/RestoreV2:1*
_output_shapes
:*
T0
\
save_2/AssignVariableOp_1AssignVariableOpbeta1_power_1save_2/Identity_2*
dtype0
T
save_2/Identity_3Identitysave_2/RestoreV2:2*
T0*
_output_shapes
:
Z
save_2/AssignVariableOp_2AssignVariableOpbeta2_powersave_2/Identity_3*
dtype0
T
save_2/Identity_4Identitysave_2/RestoreV2:3*
T0*
_output_shapes
:
\
save_2/AssignVariableOp_3AssignVariableOpbeta2_power_1save_2/Identity_4*
dtype0
T
save_2/Identity_5Identitysave_2/RestoreV2:4*
T0*
_output_shapes
:
]
save_2/AssignVariableOp_4AssignVariableOppi/conv2d/biassave_2/Identity_5*
dtype0
T
save_2/Identity_6Identitysave_2/RestoreV2:5*
T0*
_output_shapes
:
b
save_2/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave_2/Identity_6*
dtype0
T
save_2/Identity_7Identitysave_2/RestoreV2:6*
T0*
_output_shapes
:
d
save_2/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save_2/Identity_7*
dtype0
T
save_2/Identity_8Identitysave_2/RestoreV2:7*
T0*
_output_shapes
:
d
save_2/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save_2/Identity_8*
dtype0
T
save_2/Identity_9Identitysave_2/RestoreV2:8*
T0*
_output_shapes
:
d
save_2/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save_2/Identity_9*
dtype0
U
save_2/Identity_10Identitysave_2/RestoreV2:9*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave_2/Identity_10*
dtype0
V
save_2/Identity_11Identitysave_2/RestoreV2:10*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave_2/Identity_11*
dtype0
V
save_2/Identity_12Identitysave_2/RestoreV2:11*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save_2/Identity_12*
dtype0
V
save_2/Identity_13Identitysave_2/RestoreV2:12*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save_2/Identity_13*
dtype0
V
save_2/Identity_14Identitysave_2/RestoreV2:13*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save_2/Identity_14*
dtype0
V
save_2/Identity_15Identitysave_2/RestoreV2:14*
_output_shapes
:*
T0
a
save_2/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave_2/Identity_15*
dtype0
V
save_2/Identity_16Identitysave_2/RestoreV2:15*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave_2/Identity_16*
dtype0
V
save_2/Identity_17Identitysave_2/RestoreV2:16*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save_2/Identity_17*
dtype0
V
save_2/Identity_18Identitysave_2/RestoreV2:17*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save_2/Identity_18*
dtype0
V
save_2/Identity_19Identitysave_2/RestoreV2:18*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save_2/Identity_19*
dtype0
V
save_2/Identity_20Identitysave_2/RestoreV2:19*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave_2/Identity_20*
dtype0
V
save_2/Identity_21Identitysave_2/RestoreV2:20*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave_2/Identity_21*
dtype0
V
save_2/Identity_22Identitysave_2/RestoreV2:21*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save_2/Identity_22*
dtype0
V
save_2/Identity_23Identitysave_2/RestoreV2:22*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save_2/Identity_23*
dtype0
V
save_2/Identity_24Identitysave_2/RestoreV2:23*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save_2/Identity_24*
dtype0
V
save_2/Identity_25Identitysave_2/RestoreV2:24*
T0*
_output_shapes
:
a
save_2/AssignVariableOp_24AssignVariableOppi/conv2d_2/biassave_2/Identity_25*
dtype0
V
save_2/Identity_26Identitysave_2/RestoreV2:25*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_25AssignVariableOppi/conv2d_2/bias/Adamsave_2/Identity_26*
dtype0
V
save_2/Identity_27Identitysave_2/RestoreV2:26*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_26AssignVariableOppi/conv2d_2/bias/Adam_1save_2/Identity_27*
dtype0
V
save_2/Identity_28Identitysave_2/RestoreV2:27*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_27AssignVariableOppi/conv2d_2/bias/Adam_2save_2/Identity_28*
dtype0
V
save_2/Identity_29Identitysave_2/RestoreV2:28*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_28AssignVariableOppi/conv2d_2/bias/Adam_3save_2/Identity_29*
dtype0
V
save_2/Identity_30Identitysave_2/RestoreV2:29*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_29AssignVariableOppi/conv2d_2/kernelsave_2/Identity_30*
dtype0
V
save_2/Identity_31Identitysave_2/RestoreV2:30*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_30AssignVariableOppi/conv2d_2/kernel/Adamsave_2/Identity_31*
dtype0
V
save_2/Identity_32Identitysave_2/RestoreV2:31*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_31AssignVariableOppi/conv2d_2/kernel/Adam_1save_2/Identity_32*
dtype0
V
save_2/Identity_33Identitysave_2/RestoreV2:32*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_32AssignVariableOppi/conv2d_2/kernel/Adam_2save_2/Identity_33*
dtype0
V
save_2/Identity_34Identitysave_2/RestoreV2:33*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_33AssignVariableOppi/conv2d_2/kernel/Adam_3save_2/Identity_34*
dtype0
V
save_2/Identity_35Identitysave_2/RestoreV2:34*
_output_shapes
:*
T0
a
save_2/AssignVariableOp_34AssignVariableOppi/conv2d_3/biassave_2/Identity_35*
dtype0
V
save_2/Identity_36Identitysave_2/RestoreV2:35*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_35AssignVariableOppi/conv2d_3/bias/Adamsave_2/Identity_36*
dtype0
V
save_2/Identity_37Identitysave_2/RestoreV2:36*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_36AssignVariableOppi/conv2d_3/bias/Adam_1save_2/Identity_37*
dtype0
V
save_2/Identity_38Identitysave_2/RestoreV2:37*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_37AssignVariableOppi/conv2d_3/bias/Adam_2save_2/Identity_38*
dtype0
V
save_2/Identity_39Identitysave_2/RestoreV2:38*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_38AssignVariableOppi/conv2d_3/bias/Adam_3save_2/Identity_39*
dtype0
V
save_2/Identity_40Identitysave_2/RestoreV2:39*
T0*
_output_shapes
:
c
save_2/AssignVariableOp_39AssignVariableOppi/conv2d_3/kernelsave_2/Identity_40*
dtype0
V
save_2/Identity_41Identitysave_2/RestoreV2:40*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_40AssignVariableOppi/conv2d_3/kernel/Adamsave_2/Identity_41*
dtype0
V
save_2/Identity_42Identitysave_2/RestoreV2:41*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_41AssignVariableOppi/conv2d_3/kernel/Adam_1save_2/Identity_42*
dtype0
V
save_2/Identity_43Identitysave_2/RestoreV2:42*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_42AssignVariableOppi/conv2d_3/kernel/Adam_2save_2/Identity_43*
dtype0
V
save_2/Identity_44Identitysave_2/RestoreV2:43*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_43AssignVariableOppi/conv2d_3/kernel/Adam_3save_2/Identity_44*
dtype0
V
save_2/Identity_45Identitysave_2/RestoreV2:44*
T0*
_output_shapes
:
a
save_2/AssignVariableOp_44AssignVariableOppi/conv2d_4/biassave_2/Identity_45*
dtype0
V
save_2/Identity_46Identitysave_2/RestoreV2:45*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_45AssignVariableOppi/conv2d_4/bias/Adamsave_2/Identity_46*
dtype0
V
save_2/Identity_47Identitysave_2/RestoreV2:46*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_46AssignVariableOppi/conv2d_4/bias/Adam_1save_2/Identity_47*
dtype0
V
save_2/Identity_48Identitysave_2/RestoreV2:47*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_47AssignVariableOppi/conv2d_4/bias/Adam_2save_2/Identity_48*
dtype0
V
save_2/Identity_49Identitysave_2/RestoreV2:48*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_48AssignVariableOppi/conv2d_4/bias/Adam_3save_2/Identity_49*
dtype0
V
save_2/Identity_50Identitysave_2/RestoreV2:49*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_49AssignVariableOppi/conv2d_4/kernelsave_2/Identity_50*
dtype0
V
save_2/Identity_51Identitysave_2/RestoreV2:50*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_50AssignVariableOppi/conv2d_4/kernel/Adamsave_2/Identity_51*
dtype0
V
save_2/Identity_52Identitysave_2/RestoreV2:51*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_51AssignVariableOppi/conv2d_4/kernel/Adam_1save_2/Identity_52*
dtype0
V
save_2/Identity_53Identitysave_2/RestoreV2:52*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_52AssignVariableOppi/conv2d_4/kernel/Adam_2save_2/Identity_53*
dtype0
V
save_2/Identity_54Identitysave_2/RestoreV2:53*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_53AssignVariableOppi/conv2d_4/kernel/Adam_3save_2/Identity_54*
dtype0
V
save_2/Identity_55Identitysave_2/RestoreV2:54*
_output_shapes
:*
T0
a
save_2/AssignVariableOp_54AssignVariableOppi/conv2d_5/biassave_2/Identity_55*
dtype0
V
save_2/Identity_56Identitysave_2/RestoreV2:55*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_55AssignVariableOppi/conv2d_5/bias/Adamsave_2/Identity_56*
dtype0
V
save_2/Identity_57Identitysave_2/RestoreV2:56*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_56AssignVariableOppi/conv2d_5/bias/Adam_1save_2/Identity_57*
dtype0
V
save_2/Identity_58Identitysave_2/RestoreV2:57*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_57AssignVariableOppi/conv2d_5/bias/Adam_2save_2/Identity_58*
dtype0
V
save_2/Identity_59Identitysave_2/RestoreV2:58*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_58AssignVariableOppi/conv2d_5/bias/Adam_3save_2/Identity_59*
dtype0
V
save_2/Identity_60Identitysave_2/RestoreV2:59*
T0*
_output_shapes
:
c
save_2/AssignVariableOp_59AssignVariableOppi/conv2d_5/kernelsave_2/Identity_60*
dtype0
V
save_2/Identity_61Identitysave_2/RestoreV2:60*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_60AssignVariableOppi/conv2d_5/kernel/Adamsave_2/Identity_61*
dtype0
V
save_2/Identity_62Identitysave_2/RestoreV2:61*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_61AssignVariableOppi/conv2d_5/kernel/Adam_1save_2/Identity_62*
dtype0
V
save_2/Identity_63Identitysave_2/RestoreV2:62*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_62AssignVariableOppi/conv2d_5/kernel/Adam_2save_2/Identity_63*
dtype0
V
save_2/Identity_64Identitysave_2/RestoreV2:63*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_63AssignVariableOppi/conv2d_5/kernel/Adam_3save_2/Identity_64*
dtype0
V
save_2/Identity_65Identitysave_2/RestoreV2:64*
_output_shapes
:*
T0
a
save_2/AssignVariableOp_64AssignVariableOppi/conv2d_6/biassave_2/Identity_65*
dtype0
V
save_2/Identity_66Identitysave_2/RestoreV2:65*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_65AssignVariableOppi/conv2d_6/bias/Adamsave_2/Identity_66*
dtype0
V
save_2/Identity_67Identitysave_2/RestoreV2:66*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_66AssignVariableOppi/conv2d_6/bias/Adam_1save_2/Identity_67*
dtype0
V
save_2/Identity_68Identitysave_2/RestoreV2:67*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_67AssignVariableOppi/conv2d_6/bias/Adam_2save_2/Identity_68*
dtype0
V
save_2/Identity_69Identitysave_2/RestoreV2:68*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_68AssignVariableOppi/conv2d_6/bias/Adam_3save_2/Identity_69*
dtype0
V
save_2/Identity_70Identitysave_2/RestoreV2:69*
T0*
_output_shapes
:
c
save_2/AssignVariableOp_69AssignVariableOppi/conv2d_6/kernelsave_2/Identity_70*
dtype0
V
save_2/Identity_71Identitysave_2/RestoreV2:70*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_70AssignVariableOppi/conv2d_6/kernel/Adamsave_2/Identity_71*
dtype0
V
save_2/Identity_72Identitysave_2/RestoreV2:71*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_71AssignVariableOppi/conv2d_6/kernel/Adam_1save_2/Identity_72*
dtype0
V
save_2/Identity_73Identitysave_2/RestoreV2:72*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_72AssignVariableOppi/conv2d_6/kernel/Adam_2save_2/Identity_73*
dtype0
V
save_2/Identity_74Identitysave_2/RestoreV2:73*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_73AssignVariableOppi/conv2d_6/kernel/Adam_3save_2/Identity_74*
dtype0
V
save_2/Identity_75Identitysave_2/RestoreV2:74*
_output_shapes
:*
T0
a
save_2/AssignVariableOp_74AssignVariableOppi/conv2d_7/biassave_2/Identity_75*
dtype0
V
save_2/Identity_76Identitysave_2/RestoreV2:75*
_output_shapes
:*
T0
f
save_2/AssignVariableOp_75AssignVariableOppi/conv2d_7/bias/Adamsave_2/Identity_76*
dtype0
V
save_2/Identity_77Identitysave_2/RestoreV2:76*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_76AssignVariableOppi/conv2d_7/bias/Adam_1save_2/Identity_77*
dtype0
V
save_2/Identity_78Identitysave_2/RestoreV2:77*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_77AssignVariableOppi/conv2d_7/bias/Adam_2save_2/Identity_78*
dtype0
V
save_2/Identity_79Identitysave_2/RestoreV2:78*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_78AssignVariableOppi/conv2d_7/bias/Adam_3save_2/Identity_79*
dtype0
V
save_2/Identity_80Identitysave_2/RestoreV2:79*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_79AssignVariableOppi/conv2d_7/kernelsave_2/Identity_80*
dtype0
V
save_2/Identity_81Identitysave_2/RestoreV2:80*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_80AssignVariableOppi/conv2d_7/kernel/Adamsave_2/Identity_81*
dtype0
V
save_2/Identity_82Identitysave_2/RestoreV2:81*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_81AssignVariableOppi/conv2d_7/kernel/Adam_1save_2/Identity_82*
dtype0
V
save_2/Identity_83Identitysave_2/RestoreV2:82*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_82AssignVariableOppi/conv2d_7/kernel/Adam_2save_2/Identity_83*
dtype0
V
save_2/Identity_84Identitysave_2/RestoreV2:83*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_83AssignVariableOppi/conv2d_7/kernel/Adam_3save_2/Identity_84*
dtype0
V
save_2/Identity_85Identitysave_2/RestoreV2:84*
T0*
_output_shapes
:
^
save_2/AssignVariableOp_84AssignVariableOppi/dense/biassave_2/Identity_85*
dtype0
V
save_2/Identity_86Identitysave_2/RestoreV2:85*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_85AssignVariableOppi/dense/bias/Adamsave_2/Identity_86*
dtype0
V
save_2/Identity_87Identitysave_2/RestoreV2:86*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_86AssignVariableOppi/dense/bias/Adam_1save_2/Identity_87*
dtype0
V
save_2/Identity_88Identitysave_2/RestoreV2:87*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_87AssignVariableOppi/dense/kernelsave_2/Identity_88*
dtype0
V
save_2/Identity_89Identitysave_2/RestoreV2:88*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_88AssignVariableOppi/dense/kernel/Adamsave_2/Identity_89*
dtype0
V
save_2/Identity_90Identitysave_2/RestoreV2:89*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_89AssignVariableOppi/dense/kernel/Adam_1save_2/Identity_90*
dtype0
V
save_2/Identity_91Identitysave_2/RestoreV2:90*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_90AssignVariableOppi/dense_1/biassave_2/Identity_91*
dtype0
V
save_2/Identity_92Identitysave_2/RestoreV2:91*
_output_shapes
:*
T0
e
save_2/AssignVariableOp_91AssignVariableOppi/dense_1/bias/Adamsave_2/Identity_92*
dtype0
V
save_2/Identity_93Identitysave_2/RestoreV2:92*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_92AssignVariableOppi/dense_1/bias/Adam_1save_2/Identity_93*
dtype0
V
save_2/Identity_94Identitysave_2/RestoreV2:93*
T0*
_output_shapes
:
b
save_2/AssignVariableOp_93AssignVariableOppi/dense_1/kernelsave_2/Identity_94*
dtype0
V
save_2/Identity_95Identitysave_2/RestoreV2:94*
_output_shapes
:*
T0
g
save_2/AssignVariableOp_94AssignVariableOppi/dense_1/kernel/Adamsave_2/Identity_95*
dtype0
V
save_2/Identity_96Identitysave_2/RestoreV2:95*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_95AssignVariableOppi/dense_1/kernel/Adam_1save_2/Identity_96*
dtype0
V
save_2/Identity_97Identitysave_2/RestoreV2:96*
_output_shapes
:*
T0
_
save_2/AssignVariableOp_96AssignVariableOpv/dense_2/biassave_2/Identity_97*
dtype0
V
save_2/Identity_98Identitysave_2/RestoreV2:97*
_output_shapes
:*
T0
d
save_2/AssignVariableOp_97AssignVariableOpv/dense_2/bias/Adamsave_2/Identity_98*
dtype0
V
save_2/Identity_99Identitysave_2/RestoreV2:98*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_98AssignVariableOpv/dense_2/bias/Adam_1save_2/Identity_99*
dtype0
W
save_2/Identity_100Identitysave_2/RestoreV2:99*
T0*
_output_shapes
:
b
save_2/AssignVariableOp_99AssignVariableOpv/dense_2/kernelsave_2/Identity_100*
dtype0
X
save_2/Identity_101Identitysave_2/RestoreV2:100*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_100AssignVariableOpv/dense_2/kernel/Adamsave_2/Identity_101*
dtype0
X
save_2/Identity_102Identitysave_2/RestoreV2:101*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_101AssignVariableOpv/dense_2/kernel/Adam_1save_2/Identity_102*
dtype0
X
save_2/Identity_103Identitysave_2/RestoreV2:102*
T0*
_output_shapes
:
a
save_2/AssignVariableOp_102AssignVariableOpv/dense_3/biassave_2/Identity_103*
dtype0
X
save_2/Identity_104Identitysave_2/RestoreV2:103*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_103AssignVariableOpv/dense_3/bias/Adamsave_2/Identity_104*
dtype0
X
save_2/Identity_105Identitysave_2/RestoreV2:104*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_104AssignVariableOpv/dense_3/bias/Adam_1save_2/Identity_105*
dtype0
X
save_2/Identity_106Identitysave_2/RestoreV2:105*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_105AssignVariableOpv/dense_3/kernelsave_2/Identity_106*
dtype0
X
save_2/Identity_107Identitysave_2/RestoreV2:106*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_106AssignVariableOpv/dense_3/kernel/Adamsave_2/Identity_107*
dtype0
X
save_2/Identity_108Identitysave_2/RestoreV2:107*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_107AssignVariableOpv/dense_3/kernel/Adam_1save_2/Identity_108*
dtype0
д
save_2/restore_shardNoOp^save_2/AssignVariableOp^save_2/AssignVariableOp_1^save_2/AssignVariableOp_10^save_2/AssignVariableOp_100^save_2/AssignVariableOp_101^save_2/AssignVariableOp_102^save_2/AssignVariableOp_103^save_2/AssignVariableOp_104^save_2/AssignVariableOp_105^save_2/AssignVariableOp_106^save_2/AssignVariableOp_107^save_2/AssignVariableOp_11^save_2/AssignVariableOp_12^save_2/AssignVariableOp_13^save_2/AssignVariableOp_14^save_2/AssignVariableOp_15^save_2/AssignVariableOp_16^save_2/AssignVariableOp_17^save_2/AssignVariableOp_18^save_2/AssignVariableOp_19^save_2/AssignVariableOp_2^save_2/AssignVariableOp_20^save_2/AssignVariableOp_21^save_2/AssignVariableOp_22^save_2/AssignVariableOp_23^save_2/AssignVariableOp_24^save_2/AssignVariableOp_25^save_2/AssignVariableOp_26^save_2/AssignVariableOp_27^save_2/AssignVariableOp_28^save_2/AssignVariableOp_29^save_2/AssignVariableOp_3^save_2/AssignVariableOp_30^save_2/AssignVariableOp_31^save_2/AssignVariableOp_32^save_2/AssignVariableOp_33^save_2/AssignVariableOp_34^save_2/AssignVariableOp_35^save_2/AssignVariableOp_36^save_2/AssignVariableOp_37^save_2/AssignVariableOp_38^save_2/AssignVariableOp_39^save_2/AssignVariableOp_4^save_2/AssignVariableOp_40^save_2/AssignVariableOp_41^save_2/AssignVariableOp_42^save_2/AssignVariableOp_43^save_2/AssignVariableOp_44^save_2/AssignVariableOp_45^save_2/AssignVariableOp_46^save_2/AssignVariableOp_47^save_2/AssignVariableOp_48^save_2/AssignVariableOp_49^save_2/AssignVariableOp_5^save_2/AssignVariableOp_50^save_2/AssignVariableOp_51^save_2/AssignVariableOp_52^save_2/AssignVariableOp_53^save_2/AssignVariableOp_54^save_2/AssignVariableOp_55^save_2/AssignVariableOp_56^save_2/AssignVariableOp_57^save_2/AssignVariableOp_58^save_2/AssignVariableOp_59^save_2/AssignVariableOp_6^save_2/AssignVariableOp_60^save_2/AssignVariableOp_61^save_2/AssignVariableOp_62^save_2/AssignVariableOp_63^save_2/AssignVariableOp_64^save_2/AssignVariableOp_65^save_2/AssignVariableOp_66^save_2/AssignVariableOp_67^save_2/AssignVariableOp_68^save_2/AssignVariableOp_69^save_2/AssignVariableOp_7^save_2/AssignVariableOp_70^save_2/AssignVariableOp_71^save_2/AssignVariableOp_72^save_2/AssignVariableOp_73^save_2/AssignVariableOp_74^save_2/AssignVariableOp_75^save_2/AssignVariableOp_76^save_2/AssignVariableOp_77^save_2/AssignVariableOp_78^save_2/AssignVariableOp_79^save_2/AssignVariableOp_8^save_2/AssignVariableOp_80^save_2/AssignVariableOp_81^save_2/AssignVariableOp_82^save_2/AssignVariableOp_83^save_2/AssignVariableOp_84^save_2/AssignVariableOp_85^save_2/AssignVariableOp_86^save_2/AssignVariableOp_87^save_2/AssignVariableOp_88^save_2/AssignVariableOp_89^save_2/AssignVariableOp_9^save_2/AssignVariableOp_90^save_2/AssignVariableOp_91^save_2/AssignVariableOp_92^save_2/AssignVariableOp_93^save_2/AssignVariableOp_94^save_2/AssignVariableOp_95^save_2/AssignVariableOp_96^save_2/AssignVariableOp_97^save_2/AssignVariableOp_98^save_2/AssignVariableOp_99
1
save_2/restore_allNoOp^save_2/restore_shard
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
_output_shapes
: *
shape: 

save_3/StringJoin/inputs_1Const*<
value3B1 B+_temp_32eda920af3f4c509dcf48b97e21aef5/part*
dtype0*
_output_shapes
: 
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_3/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 

save_3/SaveV2/tensor_namesConst*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:l
Р
save_3/SaveV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
&
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOp"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_2/bias/Read/ReadVariableOp)pi/conv2d_2/bias/Adam/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_2/kernel/Read/ReadVariableOp+pi/conv2d_2/kernel/Adam/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_3/bias/Read/ReadVariableOp)pi/conv2d_3/bias/Adam/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_3/kernel/Read/ReadVariableOp+pi/conv2d_3/kernel/Adam/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_4/bias/Read/ReadVariableOp)pi/conv2d_4/bias/Adam/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_4/kernel/Read/ReadVariableOp+pi/conv2d_4/kernel/Adam/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_5/bias/Read/ReadVariableOp)pi/conv2d_5/bias/Adam/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_5/kernel/Read/ReadVariableOp+pi/conv2d_5/kernel/Adam/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_6/bias/Read/ReadVariableOp)pi/conv2d_6/bias/Adam/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_6/kernel/Read/ReadVariableOp+pi/conv2d_6/kernel/Adam/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_7/bias/Read/ReadVariableOp)pi/conv2d_7/bias/Adam/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_7/kernel/Read/ReadVariableOp+pi/conv2d_7/kernel/Adam/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp"v/dense_2/bias/Read/ReadVariableOp'v/dense_2/bias/Adam/Read/ReadVariableOp)v/dense_2/bias/Adam_1/Read/ReadVariableOp$v/dense_2/kernel/Read/ReadVariableOp)v/dense_2/kernel/Adam/Read/ReadVariableOp+v/dense_2/kernel/Adam_1/Read/ReadVariableOp"v/dense_3/bias/Read/ReadVariableOp'v/dense_3/bias/Adam/Read/ReadVariableOp)v/dense_3/bias/Adam_1/Read/ReadVariableOp$v/dense_3/kernel/Read/ReadVariableOp)v/dense_3/kernel/Adam/Read/ReadVariableOp+v/dense_3/kernel/Adam_1/Read/ReadVariableOp*z
dtypesp
n2l

save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
Ѓ
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*

axis *
N*
_output_shapes
:*
T0

save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(

save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
_output_shapes
: *
T0

save_3/RestoreV2/tensor_namesConst*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:l
У
!save_3/RestoreV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
В
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*z
dtypesp
n2l
R
save_3/Identity_1Identitysave_3/RestoreV2*
_output_shapes
:*
T0
X
save_3/AssignVariableOpAssignVariableOpbeta1_powersave_3/Identity_1*
dtype0
T
save_3/Identity_2Identitysave_3/RestoreV2:1*
T0*
_output_shapes
:
\
save_3/AssignVariableOp_1AssignVariableOpbeta1_power_1save_3/Identity_2*
dtype0
T
save_3/Identity_3Identitysave_3/RestoreV2:2*
T0*
_output_shapes
:
Z
save_3/AssignVariableOp_2AssignVariableOpbeta2_powersave_3/Identity_3*
dtype0
T
save_3/Identity_4Identitysave_3/RestoreV2:3*
T0*
_output_shapes
:
\
save_3/AssignVariableOp_3AssignVariableOpbeta2_power_1save_3/Identity_4*
dtype0
T
save_3/Identity_5Identitysave_3/RestoreV2:4*
T0*
_output_shapes
:
]
save_3/AssignVariableOp_4AssignVariableOppi/conv2d/biassave_3/Identity_5*
dtype0
T
save_3/Identity_6Identitysave_3/RestoreV2:5*
T0*
_output_shapes
:
b
save_3/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave_3/Identity_6*
dtype0
T
save_3/Identity_7Identitysave_3/RestoreV2:6*
T0*
_output_shapes
:
d
save_3/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save_3/Identity_7*
dtype0
T
save_3/Identity_8Identitysave_3/RestoreV2:7*
_output_shapes
:*
T0
d
save_3/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save_3/Identity_8*
dtype0
T
save_3/Identity_9Identitysave_3/RestoreV2:8*
T0*
_output_shapes
:
d
save_3/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save_3/Identity_9*
dtype0
U
save_3/Identity_10Identitysave_3/RestoreV2:9*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave_3/Identity_10*
dtype0
V
save_3/Identity_11Identitysave_3/RestoreV2:10*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave_3/Identity_11*
dtype0
V
save_3/Identity_12Identitysave_3/RestoreV2:11*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save_3/Identity_12*
dtype0
V
save_3/Identity_13Identitysave_3/RestoreV2:12*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save_3/Identity_13*
dtype0
V
save_3/Identity_14Identitysave_3/RestoreV2:13*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save_3/Identity_14*
dtype0
V
save_3/Identity_15Identitysave_3/RestoreV2:14*
T0*
_output_shapes
:
a
save_3/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave_3/Identity_15*
dtype0
V
save_3/Identity_16Identitysave_3/RestoreV2:15*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave_3/Identity_16*
dtype0
V
save_3/Identity_17Identitysave_3/RestoreV2:16*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save_3/Identity_17*
dtype0
V
save_3/Identity_18Identitysave_3/RestoreV2:17*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save_3/Identity_18*
dtype0
V
save_3/Identity_19Identitysave_3/RestoreV2:18*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save_3/Identity_19*
dtype0
V
save_3/Identity_20Identitysave_3/RestoreV2:19*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave_3/Identity_20*
dtype0
V
save_3/Identity_21Identitysave_3/RestoreV2:20*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave_3/Identity_21*
dtype0
V
save_3/Identity_22Identitysave_3/RestoreV2:21*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save_3/Identity_22*
dtype0
V
save_3/Identity_23Identitysave_3/RestoreV2:22*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save_3/Identity_23*
dtype0
V
save_3/Identity_24Identitysave_3/RestoreV2:23*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save_3/Identity_24*
dtype0
V
save_3/Identity_25Identitysave_3/RestoreV2:24*
_output_shapes
:*
T0
a
save_3/AssignVariableOp_24AssignVariableOppi/conv2d_2/biassave_3/Identity_25*
dtype0
V
save_3/Identity_26Identitysave_3/RestoreV2:25*
_output_shapes
:*
T0
f
save_3/AssignVariableOp_25AssignVariableOppi/conv2d_2/bias/Adamsave_3/Identity_26*
dtype0
V
save_3/Identity_27Identitysave_3/RestoreV2:26*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_26AssignVariableOppi/conv2d_2/bias/Adam_1save_3/Identity_27*
dtype0
V
save_3/Identity_28Identitysave_3/RestoreV2:27*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_27AssignVariableOppi/conv2d_2/bias/Adam_2save_3/Identity_28*
dtype0
V
save_3/Identity_29Identitysave_3/RestoreV2:28*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_28AssignVariableOppi/conv2d_2/bias/Adam_3save_3/Identity_29*
dtype0
V
save_3/Identity_30Identitysave_3/RestoreV2:29*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_29AssignVariableOppi/conv2d_2/kernelsave_3/Identity_30*
dtype0
V
save_3/Identity_31Identitysave_3/RestoreV2:30*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_30AssignVariableOppi/conv2d_2/kernel/Adamsave_3/Identity_31*
dtype0
V
save_3/Identity_32Identitysave_3/RestoreV2:31*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_31AssignVariableOppi/conv2d_2/kernel/Adam_1save_3/Identity_32*
dtype0
V
save_3/Identity_33Identitysave_3/RestoreV2:32*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_32AssignVariableOppi/conv2d_2/kernel/Adam_2save_3/Identity_33*
dtype0
V
save_3/Identity_34Identitysave_3/RestoreV2:33*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_33AssignVariableOppi/conv2d_2/kernel/Adam_3save_3/Identity_34*
dtype0
V
save_3/Identity_35Identitysave_3/RestoreV2:34*
_output_shapes
:*
T0
a
save_3/AssignVariableOp_34AssignVariableOppi/conv2d_3/biassave_3/Identity_35*
dtype0
V
save_3/Identity_36Identitysave_3/RestoreV2:35*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_35AssignVariableOppi/conv2d_3/bias/Adamsave_3/Identity_36*
dtype0
V
save_3/Identity_37Identitysave_3/RestoreV2:36*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_36AssignVariableOppi/conv2d_3/bias/Adam_1save_3/Identity_37*
dtype0
V
save_3/Identity_38Identitysave_3/RestoreV2:37*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_37AssignVariableOppi/conv2d_3/bias/Adam_2save_3/Identity_38*
dtype0
V
save_3/Identity_39Identitysave_3/RestoreV2:38*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_38AssignVariableOppi/conv2d_3/bias/Adam_3save_3/Identity_39*
dtype0
V
save_3/Identity_40Identitysave_3/RestoreV2:39*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_39AssignVariableOppi/conv2d_3/kernelsave_3/Identity_40*
dtype0
V
save_3/Identity_41Identitysave_3/RestoreV2:40*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_40AssignVariableOppi/conv2d_3/kernel/Adamsave_3/Identity_41*
dtype0
V
save_3/Identity_42Identitysave_3/RestoreV2:41*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_41AssignVariableOppi/conv2d_3/kernel/Adam_1save_3/Identity_42*
dtype0
V
save_3/Identity_43Identitysave_3/RestoreV2:42*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_42AssignVariableOppi/conv2d_3/kernel/Adam_2save_3/Identity_43*
dtype0
V
save_3/Identity_44Identitysave_3/RestoreV2:43*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_43AssignVariableOppi/conv2d_3/kernel/Adam_3save_3/Identity_44*
dtype0
V
save_3/Identity_45Identitysave_3/RestoreV2:44*
_output_shapes
:*
T0
a
save_3/AssignVariableOp_44AssignVariableOppi/conv2d_4/biassave_3/Identity_45*
dtype0
V
save_3/Identity_46Identitysave_3/RestoreV2:45*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_45AssignVariableOppi/conv2d_4/bias/Adamsave_3/Identity_46*
dtype0
V
save_3/Identity_47Identitysave_3/RestoreV2:46*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_46AssignVariableOppi/conv2d_4/bias/Adam_1save_3/Identity_47*
dtype0
V
save_3/Identity_48Identitysave_3/RestoreV2:47*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_47AssignVariableOppi/conv2d_4/bias/Adam_2save_3/Identity_48*
dtype0
V
save_3/Identity_49Identitysave_3/RestoreV2:48*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_48AssignVariableOppi/conv2d_4/bias/Adam_3save_3/Identity_49*
dtype0
V
save_3/Identity_50Identitysave_3/RestoreV2:49*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_49AssignVariableOppi/conv2d_4/kernelsave_3/Identity_50*
dtype0
V
save_3/Identity_51Identitysave_3/RestoreV2:50*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_50AssignVariableOppi/conv2d_4/kernel/Adamsave_3/Identity_51*
dtype0
V
save_3/Identity_52Identitysave_3/RestoreV2:51*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_51AssignVariableOppi/conv2d_4/kernel/Adam_1save_3/Identity_52*
dtype0
V
save_3/Identity_53Identitysave_3/RestoreV2:52*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_52AssignVariableOppi/conv2d_4/kernel/Adam_2save_3/Identity_53*
dtype0
V
save_3/Identity_54Identitysave_3/RestoreV2:53*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_53AssignVariableOppi/conv2d_4/kernel/Adam_3save_3/Identity_54*
dtype0
V
save_3/Identity_55Identitysave_3/RestoreV2:54*
T0*
_output_shapes
:
a
save_3/AssignVariableOp_54AssignVariableOppi/conv2d_5/biassave_3/Identity_55*
dtype0
V
save_3/Identity_56Identitysave_3/RestoreV2:55*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_55AssignVariableOppi/conv2d_5/bias/Adamsave_3/Identity_56*
dtype0
V
save_3/Identity_57Identitysave_3/RestoreV2:56*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_56AssignVariableOppi/conv2d_5/bias/Adam_1save_3/Identity_57*
dtype0
V
save_3/Identity_58Identitysave_3/RestoreV2:57*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_57AssignVariableOppi/conv2d_5/bias/Adam_2save_3/Identity_58*
dtype0
V
save_3/Identity_59Identitysave_3/RestoreV2:58*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_58AssignVariableOppi/conv2d_5/bias/Adam_3save_3/Identity_59*
dtype0
V
save_3/Identity_60Identitysave_3/RestoreV2:59*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_59AssignVariableOppi/conv2d_5/kernelsave_3/Identity_60*
dtype0
V
save_3/Identity_61Identitysave_3/RestoreV2:60*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_60AssignVariableOppi/conv2d_5/kernel/Adamsave_3/Identity_61*
dtype0
V
save_3/Identity_62Identitysave_3/RestoreV2:61*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_61AssignVariableOppi/conv2d_5/kernel/Adam_1save_3/Identity_62*
dtype0
V
save_3/Identity_63Identitysave_3/RestoreV2:62*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_62AssignVariableOppi/conv2d_5/kernel/Adam_2save_3/Identity_63*
dtype0
V
save_3/Identity_64Identitysave_3/RestoreV2:63*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_63AssignVariableOppi/conv2d_5/kernel/Adam_3save_3/Identity_64*
dtype0
V
save_3/Identity_65Identitysave_3/RestoreV2:64*
_output_shapes
:*
T0
a
save_3/AssignVariableOp_64AssignVariableOppi/conv2d_6/biassave_3/Identity_65*
dtype0
V
save_3/Identity_66Identitysave_3/RestoreV2:65*
_output_shapes
:*
T0
f
save_3/AssignVariableOp_65AssignVariableOppi/conv2d_6/bias/Adamsave_3/Identity_66*
dtype0
V
save_3/Identity_67Identitysave_3/RestoreV2:66*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_66AssignVariableOppi/conv2d_6/bias/Adam_1save_3/Identity_67*
dtype0
V
save_3/Identity_68Identitysave_3/RestoreV2:67*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_67AssignVariableOppi/conv2d_6/bias/Adam_2save_3/Identity_68*
dtype0
V
save_3/Identity_69Identitysave_3/RestoreV2:68*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_68AssignVariableOppi/conv2d_6/bias/Adam_3save_3/Identity_69*
dtype0
V
save_3/Identity_70Identitysave_3/RestoreV2:69*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_69AssignVariableOppi/conv2d_6/kernelsave_3/Identity_70*
dtype0
V
save_3/Identity_71Identitysave_3/RestoreV2:70*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_70AssignVariableOppi/conv2d_6/kernel/Adamsave_3/Identity_71*
dtype0
V
save_3/Identity_72Identitysave_3/RestoreV2:71*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_71AssignVariableOppi/conv2d_6/kernel/Adam_1save_3/Identity_72*
dtype0
V
save_3/Identity_73Identitysave_3/RestoreV2:72*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_72AssignVariableOppi/conv2d_6/kernel/Adam_2save_3/Identity_73*
dtype0
V
save_3/Identity_74Identitysave_3/RestoreV2:73*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_73AssignVariableOppi/conv2d_6/kernel/Adam_3save_3/Identity_74*
dtype0
V
save_3/Identity_75Identitysave_3/RestoreV2:74*
T0*
_output_shapes
:
a
save_3/AssignVariableOp_74AssignVariableOppi/conv2d_7/biassave_3/Identity_75*
dtype0
V
save_3/Identity_76Identitysave_3/RestoreV2:75*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_75AssignVariableOppi/conv2d_7/bias/Adamsave_3/Identity_76*
dtype0
V
save_3/Identity_77Identitysave_3/RestoreV2:76*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_76AssignVariableOppi/conv2d_7/bias/Adam_1save_3/Identity_77*
dtype0
V
save_3/Identity_78Identitysave_3/RestoreV2:77*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_77AssignVariableOppi/conv2d_7/bias/Adam_2save_3/Identity_78*
dtype0
V
save_3/Identity_79Identitysave_3/RestoreV2:78*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_78AssignVariableOppi/conv2d_7/bias/Adam_3save_3/Identity_79*
dtype0
V
save_3/Identity_80Identitysave_3/RestoreV2:79*
_output_shapes
:*
T0
c
save_3/AssignVariableOp_79AssignVariableOppi/conv2d_7/kernelsave_3/Identity_80*
dtype0
V
save_3/Identity_81Identitysave_3/RestoreV2:80*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_80AssignVariableOppi/conv2d_7/kernel/Adamsave_3/Identity_81*
dtype0
V
save_3/Identity_82Identitysave_3/RestoreV2:81*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_81AssignVariableOppi/conv2d_7/kernel/Adam_1save_3/Identity_82*
dtype0
V
save_3/Identity_83Identitysave_3/RestoreV2:82*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_82AssignVariableOppi/conv2d_7/kernel/Adam_2save_3/Identity_83*
dtype0
V
save_3/Identity_84Identitysave_3/RestoreV2:83*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_83AssignVariableOppi/conv2d_7/kernel/Adam_3save_3/Identity_84*
dtype0
V
save_3/Identity_85Identitysave_3/RestoreV2:84*
T0*
_output_shapes
:
^
save_3/AssignVariableOp_84AssignVariableOppi/dense/biassave_3/Identity_85*
dtype0
V
save_3/Identity_86Identitysave_3/RestoreV2:85*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_85AssignVariableOppi/dense/bias/Adamsave_3/Identity_86*
dtype0
V
save_3/Identity_87Identitysave_3/RestoreV2:86*
_output_shapes
:*
T0
e
save_3/AssignVariableOp_86AssignVariableOppi/dense/bias/Adam_1save_3/Identity_87*
dtype0
V
save_3/Identity_88Identitysave_3/RestoreV2:87*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_87AssignVariableOppi/dense/kernelsave_3/Identity_88*
dtype0
V
save_3/Identity_89Identitysave_3/RestoreV2:88*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_88AssignVariableOppi/dense/kernel/Adamsave_3/Identity_89*
dtype0
V
save_3/Identity_90Identitysave_3/RestoreV2:89*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_89AssignVariableOppi/dense/kernel/Adam_1save_3/Identity_90*
dtype0
V
save_3/Identity_91Identitysave_3/RestoreV2:90*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_90AssignVariableOppi/dense_1/biassave_3/Identity_91*
dtype0
V
save_3/Identity_92Identitysave_3/RestoreV2:91*
_output_shapes
:*
T0
e
save_3/AssignVariableOp_91AssignVariableOppi/dense_1/bias/Adamsave_3/Identity_92*
dtype0
V
save_3/Identity_93Identitysave_3/RestoreV2:92*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_92AssignVariableOppi/dense_1/bias/Adam_1save_3/Identity_93*
dtype0
V
save_3/Identity_94Identitysave_3/RestoreV2:93*
T0*
_output_shapes
:
b
save_3/AssignVariableOp_93AssignVariableOppi/dense_1/kernelsave_3/Identity_94*
dtype0
V
save_3/Identity_95Identitysave_3/RestoreV2:94*
_output_shapes
:*
T0
g
save_3/AssignVariableOp_94AssignVariableOppi/dense_1/kernel/Adamsave_3/Identity_95*
dtype0
V
save_3/Identity_96Identitysave_3/RestoreV2:95*
T0*
_output_shapes
:
i
save_3/AssignVariableOp_95AssignVariableOppi/dense_1/kernel/Adam_1save_3/Identity_96*
dtype0
V
save_3/Identity_97Identitysave_3/RestoreV2:96*
_output_shapes
:*
T0
_
save_3/AssignVariableOp_96AssignVariableOpv/dense_2/biassave_3/Identity_97*
dtype0
V
save_3/Identity_98Identitysave_3/RestoreV2:97*
_output_shapes
:*
T0
d
save_3/AssignVariableOp_97AssignVariableOpv/dense_2/bias/Adamsave_3/Identity_98*
dtype0
V
save_3/Identity_99Identitysave_3/RestoreV2:98*
_output_shapes
:*
T0
f
save_3/AssignVariableOp_98AssignVariableOpv/dense_2/bias/Adam_1save_3/Identity_99*
dtype0
W
save_3/Identity_100Identitysave_3/RestoreV2:99*
T0*
_output_shapes
:
b
save_3/AssignVariableOp_99AssignVariableOpv/dense_2/kernelsave_3/Identity_100*
dtype0
X
save_3/Identity_101Identitysave_3/RestoreV2:100*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_100AssignVariableOpv/dense_2/kernel/Adamsave_3/Identity_101*
dtype0
X
save_3/Identity_102Identitysave_3/RestoreV2:101*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_101AssignVariableOpv/dense_2/kernel/Adam_1save_3/Identity_102*
dtype0
X
save_3/Identity_103Identitysave_3/RestoreV2:102*
T0*
_output_shapes
:
a
save_3/AssignVariableOp_102AssignVariableOpv/dense_3/biassave_3/Identity_103*
dtype0
X
save_3/Identity_104Identitysave_3/RestoreV2:103*
_output_shapes
:*
T0
f
save_3/AssignVariableOp_103AssignVariableOpv/dense_3/bias/Adamsave_3/Identity_104*
dtype0
X
save_3/Identity_105Identitysave_3/RestoreV2:104*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_104AssignVariableOpv/dense_3/bias/Adam_1save_3/Identity_105*
dtype0
X
save_3/Identity_106Identitysave_3/RestoreV2:105*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_105AssignVariableOpv/dense_3/kernelsave_3/Identity_106*
dtype0
X
save_3/Identity_107Identitysave_3/RestoreV2:106*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_106AssignVariableOpv/dense_3/kernel/Adamsave_3/Identity_107*
dtype0
X
save_3/Identity_108Identitysave_3/RestoreV2:107*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_107AssignVariableOpv/dense_3/kernel/Adam_1save_3/Identity_108*
dtype0
д
save_3/restore_shardNoOp^save_3/AssignVariableOp^save_3/AssignVariableOp_1^save_3/AssignVariableOp_10^save_3/AssignVariableOp_100^save_3/AssignVariableOp_101^save_3/AssignVariableOp_102^save_3/AssignVariableOp_103^save_3/AssignVariableOp_104^save_3/AssignVariableOp_105^save_3/AssignVariableOp_106^save_3/AssignVariableOp_107^save_3/AssignVariableOp_11^save_3/AssignVariableOp_12^save_3/AssignVariableOp_13^save_3/AssignVariableOp_14^save_3/AssignVariableOp_15^save_3/AssignVariableOp_16^save_3/AssignVariableOp_17^save_3/AssignVariableOp_18^save_3/AssignVariableOp_19^save_3/AssignVariableOp_2^save_3/AssignVariableOp_20^save_3/AssignVariableOp_21^save_3/AssignVariableOp_22^save_3/AssignVariableOp_23^save_3/AssignVariableOp_24^save_3/AssignVariableOp_25^save_3/AssignVariableOp_26^save_3/AssignVariableOp_27^save_3/AssignVariableOp_28^save_3/AssignVariableOp_29^save_3/AssignVariableOp_3^save_3/AssignVariableOp_30^save_3/AssignVariableOp_31^save_3/AssignVariableOp_32^save_3/AssignVariableOp_33^save_3/AssignVariableOp_34^save_3/AssignVariableOp_35^save_3/AssignVariableOp_36^save_3/AssignVariableOp_37^save_3/AssignVariableOp_38^save_3/AssignVariableOp_39^save_3/AssignVariableOp_4^save_3/AssignVariableOp_40^save_3/AssignVariableOp_41^save_3/AssignVariableOp_42^save_3/AssignVariableOp_43^save_3/AssignVariableOp_44^save_3/AssignVariableOp_45^save_3/AssignVariableOp_46^save_3/AssignVariableOp_47^save_3/AssignVariableOp_48^save_3/AssignVariableOp_49^save_3/AssignVariableOp_5^save_3/AssignVariableOp_50^save_3/AssignVariableOp_51^save_3/AssignVariableOp_52^save_3/AssignVariableOp_53^save_3/AssignVariableOp_54^save_3/AssignVariableOp_55^save_3/AssignVariableOp_56^save_3/AssignVariableOp_57^save_3/AssignVariableOp_58^save_3/AssignVariableOp_59^save_3/AssignVariableOp_6^save_3/AssignVariableOp_60^save_3/AssignVariableOp_61^save_3/AssignVariableOp_62^save_3/AssignVariableOp_63^save_3/AssignVariableOp_64^save_3/AssignVariableOp_65^save_3/AssignVariableOp_66^save_3/AssignVariableOp_67^save_3/AssignVariableOp_68^save_3/AssignVariableOp_69^save_3/AssignVariableOp_7^save_3/AssignVariableOp_70^save_3/AssignVariableOp_71^save_3/AssignVariableOp_72^save_3/AssignVariableOp_73^save_3/AssignVariableOp_74^save_3/AssignVariableOp_75^save_3/AssignVariableOp_76^save_3/AssignVariableOp_77^save_3/AssignVariableOp_78^save_3/AssignVariableOp_79^save_3/AssignVariableOp_8^save_3/AssignVariableOp_80^save_3/AssignVariableOp_81^save_3/AssignVariableOp_82^save_3/AssignVariableOp_83^save_3/AssignVariableOp_84^save_3/AssignVariableOp_85^save_3/AssignVariableOp_86^save_3/AssignVariableOp_87^save_3/AssignVariableOp_88^save_3/AssignVariableOp_89^save_3/AssignVariableOp_9^save_3/AssignVariableOp_90^save_3/AssignVariableOp_91^save_3/AssignVariableOp_92^save_3/AssignVariableOp_93^save_3/AssignVariableOp_94^save_3/AssignVariableOp_95^save_3/AssignVariableOp_96^save_3/AssignVariableOp_97^save_3/AssignVariableOp_98^save_3/AssignVariableOp_99
1
save_3/restore_allNoOp^save_3/restore_shard
[
save_4/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
shape: *
dtype0*
_output_shapes
: 

save_4/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_bf1cc7505371485e90728738fbfa12c5/part*
dtype0
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_4/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_4/ShardedFilename/shardConst*
_output_shapes
: *
value	B : *
dtype0

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 

save_4/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:l*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1
Р
save_4/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:l*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
&
save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOp"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_2/bias/Read/ReadVariableOp)pi/conv2d_2/bias/Adam/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_2/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_2/kernel/Read/ReadVariableOp+pi/conv2d_2/kernel/Adam/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_2/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_3/bias/Read/ReadVariableOp)pi/conv2d_3/bias/Adam/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_3/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_3/kernel/Read/ReadVariableOp+pi/conv2d_3/kernel/Adam/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_3/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_4/bias/Read/ReadVariableOp)pi/conv2d_4/bias/Adam/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_4/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_4/kernel/Read/ReadVariableOp+pi/conv2d_4/kernel/Adam/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_4/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_5/bias/Read/ReadVariableOp)pi/conv2d_5/bias/Adam/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_5/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_5/kernel/Read/ReadVariableOp+pi/conv2d_5/kernel/Adam/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_5/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_6/bias/Read/ReadVariableOp)pi/conv2d_6/bias/Adam/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_6/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_6/kernel/Read/ReadVariableOp+pi/conv2d_6/kernel/Adam/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_6/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_7/bias/Read/ReadVariableOp)pi/conv2d_7/bias/Adam/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_7/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_7/kernel/Read/ReadVariableOp+pi/conv2d_7/kernel/Adam/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_7/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp"v/dense_2/bias/Read/ReadVariableOp'v/dense_2/bias/Adam/Read/ReadVariableOp)v/dense_2/bias/Adam_1/Read/ReadVariableOp$v/dense_2/kernel/Read/ReadVariableOp)v/dense_2/kernel/Adam/Read/ReadVariableOp+v/dense_2/kernel/Adam_1/Read/ReadVariableOp"v/dense_3/bias/Read/ReadVariableOp'v/dense_3/bias/Adam/Read/ReadVariableOp)v/dense_3/bias/Adam_1/Read/ReadVariableOp$v/dense_3/kernel/Read/ReadVariableOp)v/dense_3/kernel/Adam/Read/ReadVariableOp+v/dense_3/kernel/Adam_1/Read/ReadVariableOp*z
dtypesp
n2l

save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_4/ShardedFilename
Ѓ
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*

axis *
N*
_output_shapes
:*
T0

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
_output_shapes
: *
T0

save_4/RestoreV2/tensor_namesConst*С
valueЗBДlBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/conv2d_2/biasBpi/conv2d_2/bias/AdamBpi/conv2d_2/bias/Adam_1Bpi/conv2d_2/bias/Adam_2Bpi/conv2d_2/bias/Adam_3Bpi/conv2d_2/kernelBpi/conv2d_2/kernel/AdamBpi/conv2d_2/kernel/Adam_1Bpi/conv2d_2/kernel/Adam_2Bpi/conv2d_2/kernel/Adam_3Bpi/conv2d_3/biasBpi/conv2d_3/bias/AdamBpi/conv2d_3/bias/Adam_1Bpi/conv2d_3/bias/Adam_2Bpi/conv2d_3/bias/Adam_3Bpi/conv2d_3/kernelBpi/conv2d_3/kernel/AdamBpi/conv2d_3/kernel/Adam_1Bpi/conv2d_3/kernel/Adam_2Bpi/conv2d_3/kernel/Adam_3Bpi/conv2d_4/biasBpi/conv2d_4/bias/AdamBpi/conv2d_4/bias/Adam_1Bpi/conv2d_4/bias/Adam_2Bpi/conv2d_4/bias/Adam_3Bpi/conv2d_4/kernelBpi/conv2d_4/kernel/AdamBpi/conv2d_4/kernel/Adam_1Bpi/conv2d_4/kernel/Adam_2Bpi/conv2d_4/kernel/Adam_3Bpi/conv2d_5/biasBpi/conv2d_5/bias/AdamBpi/conv2d_5/bias/Adam_1Bpi/conv2d_5/bias/Adam_2Bpi/conv2d_5/bias/Adam_3Bpi/conv2d_5/kernelBpi/conv2d_5/kernel/AdamBpi/conv2d_5/kernel/Adam_1Bpi/conv2d_5/kernel/Adam_2Bpi/conv2d_5/kernel/Adam_3Bpi/conv2d_6/biasBpi/conv2d_6/bias/AdamBpi/conv2d_6/bias/Adam_1Bpi/conv2d_6/bias/Adam_2Bpi/conv2d_6/bias/Adam_3Bpi/conv2d_6/kernelBpi/conv2d_6/kernel/AdamBpi/conv2d_6/kernel/Adam_1Bpi/conv2d_6/kernel/Adam_2Bpi/conv2d_6/kernel/Adam_3Bpi/conv2d_7/biasBpi/conv2d_7/bias/AdamBpi/conv2d_7/bias/Adam_1Bpi/conv2d_7/bias/Adam_2Bpi/conv2d_7/bias/Adam_3Bpi/conv2d_7/kernelBpi/conv2d_7/kernel/AdamBpi/conv2d_7/kernel/Adam_1Bpi/conv2d_7/kernel/Adam_2Bpi/conv2d_7/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1Bv/dense_3/biasBv/dense_3/bias/AdamBv/dense_3/bias/Adam_1Bv/dense_3/kernelBv/dense_3/kernel/AdamBv/dense_3/kernel/Adam_1*
dtype0*
_output_shapes
:l
У
!save_4/RestoreV2/shape_and_slicesConst*э
valueуBрlB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:l
В
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*z
dtypesp
n2l
R
save_4/Identity_1Identitysave_4/RestoreV2*
_output_shapes
:*
T0
X
save_4/AssignVariableOpAssignVariableOpbeta1_powersave_4/Identity_1*
dtype0
T
save_4/Identity_2Identitysave_4/RestoreV2:1*
T0*
_output_shapes
:
\
save_4/AssignVariableOp_1AssignVariableOpbeta1_power_1save_4/Identity_2*
dtype0
T
save_4/Identity_3Identitysave_4/RestoreV2:2*
_output_shapes
:*
T0
Z
save_4/AssignVariableOp_2AssignVariableOpbeta2_powersave_4/Identity_3*
dtype0
T
save_4/Identity_4Identitysave_4/RestoreV2:3*
T0*
_output_shapes
:
\
save_4/AssignVariableOp_3AssignVariableOpbeta2_power_1save_4/Identity_4*
dtype0
T
save_4/Identity_5Identitysave_4/RestoreV2:4*
T0*
_output_shapes
:
]
save_4/AssignVariableOp_4AssignVariableOppi/conv2d/biassave_4/Identity_5*
dtype0
T
save_4/Identity_6Identitysave_4/RestoreV2:5*
T0*
_output_shapes
:
b
save_4/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave_4/Identity_6*
dtype0
T
save_4/Identity_7Identitysave_4/RestoreV2:6*
_output_shapes
:*
T0
d
save_4/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save_4/Identity_7*
dtype0
T
save_4/Identity_8Identitysave_4/RestoreV2:7*
T0*
_output_shapes
:
d
save_4/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save_4/Identity_8*
dtype0
T
save_4/Identity_9Identitysave_4/RestoreV2:8*
T0*
_output_shapes
:
d
save_4/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save_4/Identity_9*
dtype0
U
save_4/Identity_10Identitysave_4/RestoreV2:9*
_output_shapes
:*
T0
`
save_4/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave_4/Identity_10*
dtype0
V
save_4/Identity_11Identitysave_4/RestoreV2:10*
_output_shapes
:*
T0
f
save_4/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave_4/Identity_11*
dtype0
V
save_4/Identity_12Identitysave_4/RestoreV2:11*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save_4/Identity_12*
dtype0
V
save_4/Identity_13Identitysave_4/RestoreV2:12*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save_4/Identity_13*
dtype0
V
save_4/Identity_14Identitysave_4/RestoreV2:13*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save_4/Identity_14*
dtype0
V
save_4/Identity_15Identitysave_4/RestoreV2:14*
T0*
_output_shapes
:
a
save_4/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave_4/Identity_15*
dtype0
V
save_4/Identity_16Identitysave_4/RestoreV2:15*
T0*
_output_shapes
:
f
save_4/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave_4/Identity_16*
dtype0
V
save_4/Identity_17Identitysave_4/RestoreV2:16*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save_4/Identity_17*
dtype0
V
save_4/Identity_18Identitysave_4/RestoreV2:17*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save_4/Identity_18*
dtype0
V
save_4/Identity_19Identitysave_4/RestoreV2:18*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save_4/Identity_19*
dtype0
V
save_4/Identity_20Identitysave_4/RestoreV2:19*
T0*
_output_shapes
:
c
save_4/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave_4/Identity_20*
dtype0
V
save_4/Identity_21Identitysave_4/RestoreV2:20*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave_4/Identity_21*
dtype0
V
save_4/Identity_22Identitysave_4/RestoreV2:21*
_output_shapes
:*
T0
j
save_4/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save_4/Identity_22*
dtype0
V
save_4/Identity_23Identitysave_4/RestoreV2:22*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save_4/Identity_23*
dtype0
V
save_4/Identity_24Identitysave_4/RestoreV2:23*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save_4/Identity_24*
dtype0
V
save_4/Identity_25Identitysave_4/RestoreV2:24*
T0*
_output_shapes
:
a
save_4/AssignVariableOp_24AssignVariableOppi/conv2d_2/biassave_4/Identity_25*
dtype0
V
save_4/Identity_26Identitysave_4/RestoreV2:25*
T0*
_output_shapes
:
f
save_4/AssignVariableOp_25AssignVariableOppi/conv2d_2/bias/Adamsave_4/Identity_26*
dtype0
V
save_4/Identity_27Identitysave_4/RestoreV2:26*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_26AssignVariableOppi/conv2d_2/bias/Adam_1save_4/Identity_27*
dtype0
V
save_4/Identity_28Identitysave_4/RestoreV2:27*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_27AssignVariableOppi/conv2d_2/bias/Adam_2save_4/Identity_28*
dtype0
V
save_4/Identity_29Identitysave_4/RestoreV2:28*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_28AssignVariableOppi/conv2d_2/bias/Adam_3save_4/Identity_29*
dtype0
V
save_4/Identity_30Identitysave_4/RestoreV2:29*
T0*
_output_shapes
:
c
save_4/AssignVariableOp_29AssignVariableOppi/conv2d_2/kernelsave_4/Identity_30*
dtype0
V
save_4/Identity_31Identitysave_4/RestoreV2:30*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_30AssignVariableOppi/conv2d_2/kernel/Adamsave_4/Identity_31*
dtype0
V
save_4/Identity_32Identitysave_4/RestoreV2:31*
_output_shapes
:*
T0
j
save_4/AssignVariableOp_31AssignVariableOppi/conv2d_2/kernel/Adam_1save_4/Identity_32*
dtype0
V
save_4/Identity_33Identitysave_4/RestoreV2:32*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_32AssignVariableOppi/conv2d_2/kernel/Adam_2save_4/Identity_33*
dtype0
V
save_4/Identity_34Identitysave_4/RestoreV2:33*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_33AssignVariableOppi/conv2d_2/kernel/Adam_3save_4/Identity_34*
dtype0
V
save_4/Identity_35Identitysave_4/RestoreV2:34*
_output_shapes
:*
T0
a
save_4/AssignVariableOp_34AssignVariableOppi/conv2d_3/biassave_4/Identity_35*
dtype0
V
save_4/Identity_36Identitysave_4/RestoreV2:35*
_output_shapes
:*
T0
f
save_4/AssignVariableOp_35AssignVariableOppi/conv2d_3/bias/Adamsave_4/Identity_36*
dtype0
V
save_4/Identity_37Identitysave_4/RestoreV2:36*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_36AssignVariableOppi/conv2d_3/bias/Adam_1save_4/Identity_37*
dtype0
V
save_4/Identity_38Identitysave_4/RestoreV2:37*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_37AssignVariableOppi/conv2d_3/bias/Adam_2save_4/Identity_38*
dtype0
V
save_4/Identity_39Identitysave_4/RestoreV2:38*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_38AssignVariableOppi/conv2d_3/bias/Adam_3save_4/Identity_39*
dtype0
V
save_4/Identity_40Identitysave_4/RestoreV2:39*
_output_shapes
:*
T0
c
save_4/AssignVariableOp_39AssignVariableOppi/conv2d_3/kernelsave_4/Identity_40*
dtype0
V
save_4/Identity_41Identitysave_4/RestoreV2:40*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_40AssignVariableOppi/conv2d_3/kernel/Adamsave_4/Identity_41*
dtype0
V
save_4/Identity_42Identitysave_4/RestoreV2:41*
_output_shapes
:*
T0
j
save_4/AssignVariableOp_41AssignVariableOppi/conv2d_3/kernel/Adam_1save_4/Identity_42*
dtype0
V
save_4/Identity_43Identitysave_4/RestoreV2:42*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_42AssignVariableOppi/conv2d_3/kernel/Adam_2save_4/Identity_43*
dtype0
V
save_4/Identity_44Identitysave_4/RestoreV2:43*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_43AssignVariableOppi/conv2d_3/kernel/Adam_3save_4/Identity_44*
dtype0
V
save_4/Identity_45Identitysave_4/RestoreV2:44*
T0*
_output_shapes
:
a
save_4/AssignVariableOp_44AssignVariableOppi/conv2d_4/biassave_4/Identity_45*
dtype0
V
save_4/Identity_46Identitysave_4/RestoreV2:45*
_output_shapes
:*
T0
f
save_4/AssignVariableOp_45AssignVariableOppi/conv2d_4/bias/Adamsave_4/Identity_46*
dtype0
V
save_4/Identity_47Identitysave_4/RestoreV2:46*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_46AssignVariableOppi/conv2d_4/bias/Adam_1save_4/Identity_47*
dtype0
V
save_4/Identity_48Identitysave_4/RestoreV2:47*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_47AssignVariableOppi/conv2d_4/bias/Adam_2save_4/Identity_48*
dtype0
V
save_4/Identity_49Identitysave_4/RestoreV2:48*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_48AssignVariableOppi/conv2d_4/bias/Adam_3save_4/Identity_49*
dtype0
V
save_4/Identity_50Identitysave_4/RestoreV2:49*
T0*
_output_shapes
:
c
save_4/AssignVariableOp_49AssignVariableOppi/conv2d_4/kernelsave_4/Identity_50*
dtype0
V
save_4/Identity_51Identitysave_4/RestoreV2:50*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_50AssignVariableOppi/conv2d_4/kernel/Adamsave_4/Identity_51*
dtype0
V
save_4/Identity_52Identitysave_4/RestoreV2:51*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_51AssignVariableOppi/conv2d_4/kernel/Adam_1save_4/Identity_52*
dtype0
V
save_4/Identity_53Identitysave_4/RestoreV2:52*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_52AssignVariableOppi/conv2d_4/kernel/Adam_2save_4/Identity_53*
dtype0
V
save_4/Identity_54Identitysave_4/RestoreV2:53*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_53AssignVariableOppi/conv2d_4/kernel/Adam_3save_4/Identity_54*
dtype0
V
save_4/Identity_55Identitysave_4/RestoreV2:54*
_output_shapes
:*
T0
a
save_4/AssignVariableOp_54AssignVariableOppi/conv2d_5/biassave_4/Identity_55*
dtype0
V
save_4/Identity_56Identitysave_4/RestoreV2:55*
T0*
_output_shapes
:
f
save_4/AssignVariableOp_55AssignVariableOppi/conv2d_5/bias/Adamsave_4/Identity_56*
dtype0
V
save_4/Identity_57Identitysave_4/RestoreV2:56*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_56AssignVariableOppi/conv2d_5/bias/Adam_1save_4/Identity_57*
dtype0
V
save_4/Identity_58Identitysave_4/RestoreV2:57*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_57AssignVariableOppi/conv2d_5/bias/Adam_2save_4/Identity_58*
dtype0
V
save_4/Identity_59Identitysave_4/RestoreV2:58*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_58AssignVariableOppi/conv2d_5/bias/Adam_3save_4/Identity_59*
dtype0
V
save_4/Identity_60Identitysave_4/RestoreV2:59*
_output_shapes
:*
T0
c
save_4/AssignVariableOp_59AssignVariableOppi/conv2d_5/kernelsave_4/Identity_60*
dtype0
V
save_4/Identity_61Identitysave_4/RestoreV2:60*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_60AssignVariableOppi/conv2d_5/kernel/Adamsave_4/Identity_61*
dtype0
V
save_4/Identity_62Identitysave_4/RestoreV2:61*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_61AssignVariableOppi/conv2d_5/kernel/Adam_1save_4/Identity_62*
dtype0
V
save_4/Identity_63Identitysave_4/RestoreV2:62*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_62AssignVariableOppi/conv2d_5/kernel/Adam_2save_4/Identity_63*
dtype0
V
save_4/Identity_64Identitysave_4/RestoreV2:63*
_output_shapes
:*
T0
j
save_4/AssignVariableOp_63AssignVariableOppi/conv2d_5/kernel/Adam_3save_4/Identity_64*
dtype0
V
save_4/Identity_65Identitysave_4/RestoreV2:64*
T0*
_output_shapes
:
a
save_4/AssignVariableOp_64AssignVariableOppi/conv2d_6/biassave_4/Identity_65*
dtype0
V
save_4/Identity_66Identitysave_4/RestoreV2:65*
_output_shapes
:*
T0
f
save_4/AssignVariableOp_65AssignVariableOppi/conv2d_6/bias/Adamsave_4/Identity_66*
dtype0
V
save_4/Identity_67Identitysave_4/RestoreV2:66*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_66AssignVariableOppi/conv2d_6/bias/Adam_1save_4/Identity_67*
dtype0
V
save_4/Identity_68Identitysave_4/RestoreV2:67*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_67AssignVariableOppi/conv2d_6/bias/Adam_2save_4/Identity_68*
dtype0
V
save_4/Identity_69Identitysave_4/RestoreV2:68*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_68AssignVariableOppi/conv2d_6/bias/Adam_3save_4/Identity_69*
dtype0
V
save_4/Identity_70Identitysave_4/RestoreV2:69*
_output_shapes
:*
T0
c
save_4/AssignVariableOp_69AssignVariableOppi/conv2d_6/kernelsave_4/Identity_70*
dtype0
V
save_4/Identity_71Identitysave_4/RestoreV2:70*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_70AssignVariableOppi/conv2d_6/kernel/Adamsave_4/Identity_71*
dtype0
V
save_4/Identity_72Identitysave_4/RestoreV2:71*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_71AssignVariableOppi/conv2d_6/kernel/Adam_1save_4/Identity_72*
dtype0
V
save_4/Identity_73Identitysave_4/RestoreV2:72*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_72AssignVariableOppi/conv2d_6/kernel/Adam_2save_4/Identity_73*
dtype0
V
save_4/Identity_74Identitysave_4/RestoreV2:73*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_73AssignVariableOppi/conv2d_6/kernel/Adam_3save_4/Identity_74*
dtype0
V
save_4/Identity_75Identitysave_4/RestoreV2:74*
_output_shapes
:*
T0
a
save_4/AssignVariableOp_74AssignVariableOppi/conv2d_7/biassave_4/Identity_75*
dtype0
V
save_4/Identity_76Identitysave_4/RestoreV2:75*
T0*
_output_shapes
:
f
save_4/AssignVariableOp_75AssignVariableOppi/conv2d_7/bias/Adamsave_4/Identity_76*
dtype0
V
save_4/Identity_77Identitysave_4/RestoreV2:76*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_76AssignVariableOppi/conv2d_7/bias/Adam_1save_4/Identity_77*
dtype0
V
save_4/Identity_78Identitysave_4/RestoreV2:77*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_77AssignVariableOppi/conv2d_7/bias/Adam_2save_4/Identity_78*
dtype0
V
save_4/Identity_79Identitysave_4/RestoreV2:78*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_78AssignVariableOppi/conv2d_7/bias/Adam_3save_4/Identity_79*
dtype0
V
save_4/Identity_80Identitysave_4/RestoreV2:79*
T0*
_output_shapes
:
c
save_4/AssignVariableOp_79AssignVariableOppi/conv2d_7/kernelsave_4/Identity_80*
dtype0
V
save_4/Identity_81Identitysave_4/RestoreV2:80*
_output_shapes
:*
T0
h
save_4/AssignVariableOp_80AssignVariableOppi/conv2d_7/kernel/Adamsave_4/Identity_81*
dtype0
V
save_4/Identity_82Identitysave_4/RestoreV2:81*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_81AssignVariableOppi/conv2d_7/kernel/Adam_1save_4/Identity_82*
dtype0
V
save_4/Identity_83Identitysave_4/RestoreV2:82*
_output_shapes
:*
T0
j
save_4/AssignVariableOp_82AssignVariableOppi/conv2d_7/kernel/Adam_2save_4/Identity_83*
dtype0
V
save_4/Identity_84Identitysave_4/RestoreV2:83*
_output_shapes
:*
T0
j
save_4/AssignVariableOp_83AssignVariableOppi/conv2d_7/kernel/Adam_3save_4/Identity_84*
dtype0
V
save_4/Identity_85Identitysave_4/RestoreV2:84*
_output_shapes
:*
T0
^
save_4/AssignVariableOp_84AssignVariableOppi/dense/biassave_4/Identity_85*
dtype0
V
save_4/Identity_86Identitysave_4/RestoreV2:85*
_output_shapes
:*
T0
c
save_4/AssignVariableOp_85AssignVariableOppi/dense/bias/Adamsave_4/Identity_86*
dtype0
V
save_4/Identity_87Identitysave_4/RestoreV2:86*
T0*
_output_shapes
:
e
save_4/AssignVariableOp_86AssignVariableOppi/dense/bias/Adam_1save_4/Identity_87*
dtype0
V
save_4/Identity_88Identitysave_4/RestoreV2:87*
T0*
_output_shapes
:
`
save_4/AssignVariableOp_87AssignVariableOppi/dense/kernelsave_4/Identity_88*
dtype0
V
save_4/Identity_89Identitysave_4/RestoreV2:88*
_output_shapes
:*
T0
e
save_4/AssignVariableOp_88AssignVariableOppi/dense/kernel/Adamsave_4/Identity_89*
dtype0
V
save_4/Identity_90Identitysave_4/RestoreV2:89*
T0*
_output_shapes
:
g
save_4/AssignVariableOp_89AssignVariableOppi/dense/kernel/Adam_1save_4/Identity_90*
dtype0
V
save_4/Identity_91Identitysave_4/RestoreV2:90*
T0*
_output_shapes
:
`
save_4/AssignVariableOp_90AssignVariableOppi/dense_1/biassave_4/Identity_91*
dtype0
V
save_4/Identity_92Identitysave_4/RestoreV2:91*
_output_shapes
:*
T0
e
save_4/AssignVariableOp_91AssignVariableOppi/dense_1/bias/Adamsave_4/Identity_92*
dtype0
V
save_4/Identity_93Identitysave_4/RestoreV2:92*
T0*
_output_shapes
:
g
save_4/AssignVariableOp_92AssignVariableOppi/dense_1/bias/Adam_1save_4/Identity_93*
dtype0
V
save_4/Identity_94Identitysave_4/RestoreV2:93*
_output_shapes
:*
T0
b
save_4/AssignVariableOp_93AssignVariableOppi/dense_1/kernelsave_4/Identity_94*
dtype0
V
save_4/Identity_95Identitysave_4/RestoreV2:94*
T0*
_output_shapes
:
g
save_4/AssignVariableOp_94AssignVariableOppi/dense_1/kernel/Adamsave_4/Identity_95*
dtype0
V
save_4/Identity_96Identitysave_4/RestoreV2:95*
T0*
_output_shapes
:
i
save_4/AssignVariableOp_95AssignVariableOppi/dense_1/kernel/Adam_1save_4/Identity_96*
dtype0
V
save_4/Identity_97Identitysave_4/RestoreV2:96*
T0*
_output_shapes
:
_
save_4/AssignVariableOp_96AssignVariableOpv/dense_2/biassave_4/Identity_97*
dtype0
V
save_4/Identity_98Identitysave_4/RestoreV2:97*
T0*
_output_shapes
:
d
save_4/AssignVariableOp_97AssignVariableOpv/dense_2/bias/Adamsave_4/Identity_98*
dtype0
V
save_4/Identity_99Identitysave_4/RestoreV2:98*
T0*
_output_shapes
:
f
save_4/AssignVariableOp_98AssignVariableOpv/dense_2/bias/Adam_1save_4/Identity_99*
dtype0
W
save_4/Identity_100Identitysave_4/RestoreV2:99*
T0*
_output_shapes
:
b
save_4/AssignVariableOp_99AssignVariableOpv/dense_2/kernelsave_4/Identity_100*
dtype0
X
save_4/Identity_101Identitysave_4/RestoreV2:100*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_100AssignVariableOpv/dense_2/kernel/Adamsave_4/Identity_101*
dtype0
X
save_4/Identity_102Identitysave_4/RestoreV2:101*
_output_shapes
:*
T0
j
save_4/AssignVariableOp_101AssignVariableOpv/dense_2/kernel/Adam_1save_4/Identity_102*
dtype0
X
save_4/Identity_103Identitysave_4/RestoreV2:102*
_output_shapes
:*
T0
a
save_4/AssignVariableOp_102AssignVariableOpv/dense_3/biassave_4/Identity_103*
dtype0
X
save_4/Identity_104Identitysave_4/RestoreV2:103*
_output_shapes
:*
T0
f
save_4/AssignVariableOp_103AssignVariableOpv/dense_3/bias/Adamsave_4/Identity_104*
dtype0
X
save_4/Identity_105Identitysave_4/RestoreV2:104*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_104AssignVariableOpv/dense_3/bias/Adam_1save_4/Identity_105*
dtype0
X
save_4/Identity_106Identitysave_4/RestoreV2:105*
_output_shapes
:*
T0
c
save_4/AssignVariableOp_105AssignVariableOpv/dense_3/kernelsave_4/Identity_106*
dtype0
X
save_4/Identity_107Identitysave_4/RestoreV2:106*
T0*
_output_shapes
:
h
save_4/AssignVariableOp_106AssignVariableOpv/dense_3/kernel/Adamsave_4/Identity_107*
dtype0
X
save_4/Identity_108Identitysave_4/RestoreV2:107*
T0*
_output_shapes
:
j
save_4/AssignVariableOp_107AssignVariableOpv/dense_3/kernel/Adam_1save_4/Identity_108*
dtype0
д
save_4/restore_shardNoOp^save_4/AssignVariableOp^save_4/AssignVariableOp_1^save_4/AssignVariableOp_10^save_4/AssignVariableOp_100^save_4/AssignVariableOp_101^save_4/AssignVariableOp_102^save_4/AssignVariableOp_103^save_4/AssignVariableOp_104^save_4/AssignVariableOp_105^save_4/AssignVariableOp_106^save_4/AssignVariableOp_107^save_4/AssignVariableOp_11^save_4/AssignVariableOp_12^save_4/AssignVariableOp_13^save_4/AssignVariableOp_14^save_4/AssignVariableOp_15^save_4/AssignVariableOp_16^save_4/AssignVariableOp_17^save_4/AssignVariableOp_18^save_4/AssignVariableOp_19^save_4/AssignVariableOp_2^save_4/AssignVariableOp_20^save_4/AssignVariableOp_21^save_4/AssignVariableOp_22^save_4/AssignVariableOp_23^save_4/AssignVariableOp_24^save_4/AssignVariableOp_25^save_4/AssignVariableOp_26^save_4/AssignVariableOp_27^save_4/AssignVariableOp_28^save_4/AssignVariableOp_29^save_4/AssignVariableOp_3^save_4/AssignVariableOp_30^save_4/AssignVariableOp_31^save_4/AssignVariableOp_32^save_4/AssignVariableOp_33^save_4/AssignVariableOp_34^save_4/AssignVariableOp_35^save_4/AssignVariableOp_36^save_4/AssignVariableOp_37^save_4/AssignVariableOp_38^save_4/AssignVariableOp_39^save_4/AssignVariableOp_4^save_4/AssignVariableOp_40^save_4/AssignVariableOp_41^save_4/AssignVariableOp_42^save_4/AssignVariableOp_43^save_4/AssignVariableOp_44^save_4/AssignVariableOp_45^save_4/AssignVariableOp_46^save_4/AssignVariableOp_47^save_4/AssignVariableOp_48^save_4/AssignVariableOp_49^save_4/AssignVariableOp_5^save_4/AssignVariableOp_50^save_4/AssignVariableOp_51^save_4/AssignVariableOp_52^save_4/AssignVariableOp_53^save_4/AssignVariableOp_54^save_4/AssignVariableOp_55^save_4/AssignVariableOp_56^save_4/AssignVariableOp_57^save_4/AssignVariableOp_58^save_4/AssignVariableOp_59^save_4/AssignVariableOp_6^save_4/AssignVariableOp_60^save_4/AssignVariableOp_61^save_4/AssignVariableOp_62^save_4/AssignVariableOp_63^save_4/AssignVariableOp_64^save_4/AssignVariableOp_65^save_4/AssignVariableOp_66^save_4/AssignVariableOp_67^save_4/AssignVariableOp_68^save_4/AssignVariableOp_69^save_4/AssignVariableOp_7^save_4/AssignVariableOp_70^save_4/AssignVariableOp_71^save_4/AssignVariableOp_72^save_4/AssignVariableOp_73^save_4/AssignVariableOp_74^save_4/AssignVariableOp_75^save_4/AssignVariableOp_76^save_4/AssignVariableOp_77^save_4/AssignVariableOp_78^save_4/AssignVariableOp_79^save_4/AssignVariableOp_8^save_4/AssignVariableOp_80^save_4/AssignVariableOp_81^save_4/AssignVariableOp_82^save_4/AssignVariableOp_83^save_4/AssignVariableOp_84^save_4/AssignVariableOp_85^save_4/AssignVariableOp_86^save_4/AssignVariableOp_87^save_4/AssignVariableOp_88^save_4/AssignVariableOp_89^save_4/AssignVariableOp_9^save_4/AssignVariableOp_90^save_4/AssignVariableOp_91^save_4/AssignVariableOp_92^save_4/AssignVariableOp_93^save_4/AssignVariableOp_94^save_4/AssignVariableOp_95^save_4/AssignVariableOp_96^save_4/AssignVariableOp_97^save_4/AssignVariableOp_98^save_4/AssignVariableOp_99
1
save_4/restore_allNoOp^save_4/restore_shard "B
save_4/Const:0save_4/Identity:0save_4/restore_all (5 @F8"Л
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
Placeholder:0

v
v/Squeeze:0
pi
pi/Squeeze:0	tensorflow/serving/predict