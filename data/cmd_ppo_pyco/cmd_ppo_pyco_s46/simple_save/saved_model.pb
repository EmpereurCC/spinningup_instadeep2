��)
�:�9
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
2	��
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
B
AssignVariableOp
resource
value"dtype"
dtypetype�
i
BatchMatMul
x"T
y"T
output"T"
Ttype:

2	"
adj_xbool( "
adj_ybool( 
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
�
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
�
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
�
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
list(type)(�
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
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
InvertPermutation
x"T
y"T"
Ttype0:
2	
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
�
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
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

2	�
�
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
delete_old_dirsbool(�
�
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

2	�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
�
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
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
�
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
2	�
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
dtypetype�
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
�
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
use_nesterovbool( �
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
:
SqrtGrad
y"T
dy"T
z"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
2
StopGradient

input"T
output"T"	
Ttype
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
�
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�
9
VarIsInitializedOp
resource
is_initialized
�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12b'v1.13.1-0-g6612da8951'��(
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
:2*
shape:2
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
h
Placeholder_2Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
�
1pi/conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *#
_class
loc:@pi/conv2d/kernel*
dtype0*
_output_shapes
:
�
/pi/conv2d/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�ꭾ*#
_class
loc:@pi/conv2d/kernel
�
/pi/conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *��>*#
_class
loc:@pi/conv2d/kernel*
dtype0*
_output_shapes
: 
�
9pi/conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform1pi/conv2d/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:*

seed.*
T0*#
_class
loc:@pi/conv2d/kernel*
seed2
�
/pi/conv2d/kernel/Initializer/random_uniform/subSub/pi/conv2d/kernel/Initializer/random_uniform/max/pi/conv2d/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
�
/pi/conv2d/kernel/Initializer/random_uniform/mulMul9pi/conv2d/kernel/Initializer/random_uniform/RandomUniform/pi/conv2d/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@pi/conv2d/kernel*&
_output_shapes
:
�
+pi/conv2d/kernel/Initializer/random_uniformAdd/pi/conv2d/kernel/Initializer/random_uniform/mul/pi/conv2d/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@pi/conv2d/kernel*&
_output_shapes
:
�
pi/conv2d/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namepi/conv2d/kernel*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:
q
1pi/conv2d/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel*
_output_shapes
: 
�
pi/conv2d/kernel/AssignAssignVariableOppi/conv2d/kernel+pi/conv2d/kernel/Initializer/random_uniform*#
_class
loc:@pi/conv2d/kernel*
dtype0
�
$pi/conv2d/kernel/Read/ReadVariableOpReadVariableOppi/conv2d/kernel*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:
�
 pi/conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *!
_class
loc:@pi/conv2d/bias
�
pi/conv2d/biasVarHandleOp*!
_class
loc:@pi/conv2d/bias*
	container *
shape:*
dtype0*
_output_shapes
: *
shared_namepi/conv2d/bias
m
/pi/conv2d/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias*
_output_shapes
: 
�
pi/conv2d/bias/AssignAssignVariableOppi/conv2d/bias pi/conv2d/bias/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0
�
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
�
pi/conv2d/Conv2DConv2DPlaceholderpi/conv2d/Conv2D/ReadVariableOp*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:2*
	dilations

k
 pi/conv2d/BiasAdd/ReadVariableOpReadVariableOppi/conv2d/bias*
dtype0*
_output_shapes
:
�
pi/conv2d/BiasAddBiasAddpi/conv2d/Conv2D pi/conv2d/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:2
Z
pi/conv2d/ReluRelupi/conv2d/BiasAdd*&
_output_shapes
:2*
T0
�
3pi/conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *%
_class
loc:@pi/conv2d_1/kernel*
dtype0*
_output_shapes
:
�
1pi/conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�Q�*%
_class
loc:@pi/conv2d_1/kernel
�
1pi/conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *�Q>*%
_class
loc:@pi/conv2d_1/kernel
�
;pi/conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform3pi/conv2d_1/kernel/Initializer/random_uniform/shape*
seed2*
dtype0*&
_output_shapes
:*

seed.*
T0*%
_class
loc:@pi/conv2d_1/kernel
�
1pi/conv2d_1/kernel/Initializer/random_uniform/subSub1pi/conv2d_1/kernel/Initializer/random_uniform/max1pi/conv2d_1/kernel/Initializer/random_uniform/min*
T0*%
_class
loc:@pi/conv2d_1/kernel*
_output_shapes
: 
�
1pi/conv2d_1/kernel/Initializer/random_uniform/mulMul;pi/conv2d_1/kernel/Initializer/random_uniform/RandomUniform1pi/conv2d_1/kernel/Initializer/random_uniform/sub*
T0*%
_class
loc:@pi/conv2d_1/kernel*&
_output_shapes
:
�
-pi/conv2d_1/kernel/Initializer/random_uniformAdd1pi/conv2d_1/kernel/Initializer/random_uniform/mul1pi/conv2d_1/kernel/Initializer/random_uniform/min*&
_output_shapes
:*
T0*%
_class
loc:@pi/conv2d_1/kernel
�
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
�
pi/conv2d_1/kernel/AssignAssignVariableOppi/conv2d_1/kernel-pi/conv2d_1/kernel/Initializer/random_uniform*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
�
&pi/conv2d_1/kernel/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
�
"pi/conv2d_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *#
_class
loc:@pi/conv2d_1/bias
�
pi/conv2d_1/biasVarHandleOp*!
shared_namepi/conv2d_1/bias*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
q
1pi/conv2d_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias*
_output_shapes
: 
�
pi/conv2d_1/bias/AssignAssignVariableOppi/conv2d_1/bias"pi/conv2d_1/bias/Initializer/zeros*
dtype0*#
_class
loc:@pi/conv2d_1/bias
�
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
�
pi/conv2d_1/Conv2DConv2Dpi/conv2d/Relu!pi/conv2d_1/Conv2D/ReadVariableOp*
paddingSAME*&
_output_shapes
:2*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
o
"pi/conv2d_1/BiasAdd/ReadVariableOpReadVariableOppi/conv2d_1/bias*
dtype0*
_output_shapes
:
�
pi/conv2d_1/BiasAddBiasAddpi/conv2d_1/Conv2D"pi/conv2d_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*&
_output_shapes
:2
^
pi/conv2d_1/ReluRelupi/conv2d_1/BiasAdd*
T0*&
_output_shapes
:2
e
pi/Reshape/shapeConst*!
valueB"�����      *
dtype0*
_output_shapes
:
u

pi/ReshapeReshapepi/conv2d_1/Relupi/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:�
�
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:
�
.pi/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *���*"
_class
loc:@pi/dense/kernel
�
.pi/dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *��>*"
_class
loc:@pi/dense/kernel
�
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed.*
T0*"
_class
loc:@pi/dense/kernel*
seed26
�
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
�
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:
�
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:
�
pi/dense/kernelVarHandleOp*
shape
:*
dtype0*
_output_shapes
: * 
shared_namepi/dense/kernel*"
_class
loc:@pi/dense/kernel*
	container 
o
0pi/dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel*
_output_shapes
: 
�
pi/dense/kernel/AssignAssignVariableOppi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@pi/dense/kernel
�
#pi/dense/kernel/Read/ReadVariableOpReadVariableOppi/dense/kernel*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

:
�
pi/dense/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    * 
_class
loc:@pi/dense/bias
�
pi/dense/biasVarHandleOp*
shared_namepi/dense/bias* 
_class
loc:@pi/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
k
.pi/dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias*
_output_shapes
: 
�
pi/dense/bias/AssignAssignVariableOppi/dense/biaspi/dense/bias/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0
�
!pi/dense/bias/Read/ReadVariableOpReadVariableOppi/dense/bias* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:
q
!pi/dense/Tensordot/ReadVariableOpReadVariableOppi/dense/kernel*
dtype0*
_output_shapes

:
v
!pi/dense/Tensordot/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
�
pi/dense/Tensordot/transpose	Transpose
pi/Reshape!pi/dense/Tensordot/transpose/perm*
Tperm0*
T0*#
_output_shapes
:�
q
 pi/dense/Tensordot/Reshape/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
�
pi/dense/Tensordot/ReshapeReshapepi/dense/Tensordot/transpose pi/dense/Tensordot/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	�
t
#pi/dense/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
�
pi/dense/Tensordot/transpose_1	Transpose!pi/dense/Tensordot/ReadVariableOp#pi/dense/Tensordot/transpose_1/perm*
_output_shapes

:*
Tperm0*
T0
s
"pi/dense/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
pi/dense/Tensordot/Reshape_1Reshapepi/dense/Tensordot/transpose_1"pi/dense/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
�
pi/dense/Tensordot/MatMulMatMulpi/dense/Tensordot/Reshapepi/dense/Tensordot/Reshape_1*
_output_shapes
:	�*
transpose_a( *
transpose_b( *
T0
m
pi/dense/Tensordot/shapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
pi/dense/TensordotReshapepi/dense/Tensordot/MatMulpi/dense/Tensordot/shape*
T0*
Tshape0*#
_output_shapes
:�
i
pi/dense/BiasAdd/ReadVariableOpReadVariableOppi/dense/bias*
dtype0*
_output_shapes
:
�
pi/dense/BiasAddBiasAddpi/dense/Tensordotpi/dense/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*#
_output_shapes
:�
U
pi/dense/ReluRelupi/dense/BiasAdd*
T0*#
_output_shapes
:�
�
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *$
_class
loc:@pi/dense_1/kernel
�
0pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *���*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
�
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *��>*$
_class
loc:@pi/dense_1/kernel
�
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*

seed.*
T0*$
_class
loc:@pi/dense_1/kernel*
seed2U*
dtype0*
_output_shapes

:
�
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
�
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:
�
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:
�
pi/dense_1/kernelVarHandleOp*
	container *
shape
:*
dtype0*
_output_shapes
: *"
shared_namepi/dense_1/kernel*$
_class
loc:@pi/dense_1/kernel
s
2pi/dense_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel*
_output_shapes
: 
�
pi/dense_1/kernel/AssignAssignVariableOppi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*$
_class
loc:@pi/dense_1/kernel*
dtype0
�
%pi/dense_1/kernel/Read/ReadVariableOpReadVariableOppi/dense_1/kernel*
dtype0*
_output_shapes

:*$
_class
loc:@pi/dense_1/kernel
�
!pi/dense_1/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
�
pi/dense_1/biasVarHandleOp*"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_namepi/dense_1/bias
o
0pi/dense_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias*
_output_shapes
: 
�
pi/dense_1/bias/AssignAssignVariableOppi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
dtype0
�
#pi/dense_1/bias/Read/ReadVariableOpReadVariableOppi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
u
#pi/dense_1/Tensordot/ReadVariableOpReadVariableOppi/dense_1/kernel*
dtype0*
_output_shapes

:
x
#pi/dense_1/Tensordot/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
�
pi/dense_1/Tensordot/transpose	Transpose
pi/Reshape#pi/dense_1/Tensordot/transpose/perm*#
_output_shapes
:�*
Tperm0*
T0
s
"pi/dense_1/Tensordot/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"�      
�
pi/dense_1/Tensordot/ReshapeReshapepi/dense_1/Tensordot/transpose"pi/dense_1/Tensordot/Reshape/shape*
_output_shapes
:	�*
T0*
Tshape0
v
%pi/dense_1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
�
 pi/dense_1/Tensordot/transpose_1	Transpose#pi/dense_1/Tensordot/ReadVariableOp%pi/dense_1/Tensordot/transpose_1/perm*
T0*
_output_shapes

:*
Tperm0
u
$pi/dense_1/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
pi/dense_1/Tensordot/Reshape_1Reshape pi/dense_1/Tensordot/transpose_1$pi/dense_1/Tensordot/Reshape_1/shape*
_output_shapes

:*
T0*
Tshape0
�
pi/dense_1/Tensordot/MatMulMatMulpi/dense_1/Tensordot/Reshapepi/dense_1/Tensordot/Reshape_1*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
o
pi/dense_1/Tensordot/shapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
pi/dense_1/TensordotReshapepi/dense_1/Tensordot/MatMulpi/dense_1/Tensordot/shape*
T0*
Tshape0*#
_output_shapes
:�
m
!pi/dense_1/BiasAdd/ReadVariableOpReadVariableOppi/dense_1/bias*
dtype0*
_output_shapes
:
�
pi/dense_1/BiasAddBiasAddpi/dense_1/Tensordot!pi/dense_1/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*#
_output_shapes
:�
Y
pi/dense_1/ReluRelupi/dense_1/BiasAdd*
T0*#
_output_shapes
:�
�
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
:
�
0pi/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *���*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
: 
�
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *��>*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
: 
�
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed.*
T0*$
_class
loc:@pi/dense_2/kernel*
seed2t
�
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
�
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*$
_class
loc:@pi/dense_2/kernel
�
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:
�
pi/dense_2/kernelVarHandleOp*$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: *"
shared_namepi/dense_2/kernel
s
2pi/dense_2/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/kernel*
_output_shapes
: 
�
pi/dense_2/kernel/AssignAssignVariableOppi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
dtype0*$
_class
loc:@pi/dense_2/kernel
�
%pi/dense_2/kernel/Read/ReadVariableOpReadVariableOppi/dense_2/kernel*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:
�
!pi/dense_2/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0*
_output_shapes
:
�
pi/dense_2/biasVarHandleOp*"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_namepi/dense_2/bias
o
0pi/dense_2/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/bias*
_output_shapes
: 
�
pi/dense_2/bias/AssignAssignVariableOppi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*"
_class
loc:@pi/dense_2/bias*
dtype0
�
#pi/dense_2/bias/Read/ReadVariableOpReadVariableOppi/dense_2/bias*"
_class
loc:@pi/dense_2/bias*
dtype0*
_output_shapes
:
u
#pi/dense_2/Tensordot/ReadVariableOpReadVariableOppi/dense_2/kernel*
dtype0*
_output_shapes

:
x
#pi/dense_2/Tensordot/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
�
pi/dense_2/Tensordot/transpose	Transpose
pi/Reshape#pi/dense_2/Tensordot/transpose/perm*
T0*#
_output_shapes
:�*
Tperm0
s
"pi/dense_2/Tensordot/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB"�      
�
pi/dense_2/Tensordot/ReshapeReshapepi/dense_2/Tensordot/transpose"pi/dense_2/Tensordot/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	�
v
%pi/dense_2/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
�
 pi/dense_2/Tensordot/transpose_1	Transpose#pi/dense_2/Tensordot/ReadVariableOp%pi/dense_2/Tensordot/transpose_1/perm*
_output_shapes

:*
Tperm0*
T0
u
$pi/dense_2/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
pi/dense_2/Tensordot/Reshape_1Reshape pi/dense_2/Tensordot/transpose_1$pi/dense_2/Tensordot/Reshape_1/shape*
T0*
Tshape0*
_output_shapes

:
�
pi/dense_2/Tensordot/MatMulMatMulpi/dense_2/Tensordot/Reshapepi/dense_2/Tensordot/Reshape_1*
transpose_b( *
T0*
_output_shapes
:	�*
transpose_a( 
o
pi/dense_2/Tensordot/shapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
pi/dense_2/TensordotReshapepi/dense_2/Tensordot/MatMulpi/dense_2/Tensordot/shape*#
_output_shapes
:�*
T0*
Tshape0
m
!pi/dense_2/BiasAdd/ReadVariableOpReadVariableOppi/dense_2/bias*
dtype0*
_output_shapes
:
�
pi/dense_2/BiasAddBiasAddpi/dense_2/Tensordot!pi/dense_2/BiasAdd/ReadVariableOp*
data_formatNHWC*#
_output_shapes
:�*
T0
Y
pi/dense_2/ReluRelupi/dense_2/BiasAdd*
T0*#
_output_shapes
:�
k
!pi/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
�
pi/moments/meanMeanpi/dense/Relu!pi/moments/mean/reduction_indices*
T0*#
_output_shapes
:�*
	keep_dims(*

Tidx0
f
pi/moments/StopGradientStopGradientpi/moments/mean*
T0*#
_output_shapes
:�
�
pi/moments/SquaredDifferenceSquaredDifferencepi/dense/Relupi/moments/StopGradient*
T0*#
_output_shapes
:�
o
%pi/moments/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
�
pi/moments/varianceMeanpi/moments/SquaredDifference%pi/moments/variance/reduction_indices*#
_output_shapes
:�*
	keep_dims(*

Tidx0*
T0
U
pi/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
w
pi/Variable
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
pi/Variable/AssignAssignpi/Variablepi/zeros*
T0*
_class
loc:@pi/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
n
pi/Variable/readIdentitypi/Variable*
T0*
_class
loc:@pi/Variable*
_output_shapes
:
T
pi/onesConst*
valueB*  �?*
dtype0*
_output_shapes
:
y
pi/Variable_1
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
pi/Variable_1/AssignAssignpi/Variable_1pi/ones*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_1
t
pi/Variable_1/readIdentitypi/Variable_1*
_output_shapes
:*
T0* 
_class
loc:@pi/Variable_1
[
pi/subSubpi/dense/Relupi/moments/mean*
T0*#
_output_shapes
:�
W
pi/mulMulpi/Variable_1/readpi/sub*
T0*#
_output_shapes
:�
M
pi/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
Z
pi/addAddpi/moments/variancepi/add/y*
T0*#
_output_shapes
:�
E
pi/SqrtSqrtpi/add*#
_output_shapes
:�*
T0
T

pi/truedivRealDivpi/mulpi/Sqrt*#
_output_shapes
:�*
T0
[
pi/add_1Add
pi/truedivpi/Variable/read*#
_output_shapes
:�*
T0
m
#pi/moments_1/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
�
pi/moments_1/meanMeanpi/dense_1/Relu#pi/moments_1/mean/reduction_indices*
T0*#
_output_shapes
:�*
	keep_dims(*

Tidx0
j
pi/moments_1/StopGradientStopGradientpi/moments_1/mean*#
_output_shapes
:�*
T0
�
pi/moments_1/SquaredDifferenceSquaredDifferencepi/dense_1/Relupi/moments_1/StopGradient*
T0*#
_output_shapes
:�
q
'pi/moments_1/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
pi/moments_1/varianceMeanpi/moments_1/SquaredDifference'pi/moments_1/variance/reduction_indices*#
_output_shapes
:�*
	keep_dims(*

Tidx0*
T0
W

pi/zeros_1Const*
dtype0*
_output_shapes
:*
valueB*    
y
pi/Variable_2
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
�
pi/Variable_2/AssignAssignpi/Variable_2
pi/zeros_1*
T0* 
_class
loc:@pi/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(
t
pi/Variable_2/readIdentitypi/Variable_2*
T0* 
_class
loc:@pi/Variable_2*
_output_shapes
:
V
	pi/ones_1Const*
valueB*  �?*
dtype0*
_output_shapes
:
y
pi/Variable_3
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
�
pi/Variable_3/AssignAssignpi/Variable_3	pi/ones_1*
T0* 
_class
loc:@pi/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(
t
pi/Variable_3/readIdentitypi/Variable_3*
T0* 
_class
loc:@pi/Variable_3*
_output_shapes
:
a
pi/sub_1Subpi/dense_1/Relupi/moments_1/mean*
T0*#
_output_shapes
:�
[
pi/mul_1Mulpi/Variable_3/readpi/sub_1*#
_output_shapes
:�*
T0
O

pi/add_2/yConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
`
pi/add_2Addpi/moments_1/variance
pi/add_2/y*
T0*#
_output_shapes
:�
I
	pi/Sqrt_1Sqrtpi/add_2*
T0*#
_output_shapes
:�
Z
pi/truediv_1RealDivpi/mul_1	pi/Sqrt_1*
T0*#
_output_shapes
:�
_
pi/add_3Addpi/truediv_1pi/Variable_2/read*#
_output_shapes
:�*
T0
m
#pi/moments_2/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
�
pi/moments_2/meanMeanpi/dense_2/Relu#pi/moments_2/mean/reduction_indices*
T0*#
_output_shapes
:�*
	keep_dims(*

Tidx0
j
pi/moments_2/StopGradientStopGradientpi/moments_2/mean*
T0*#
_output_shapes
:�
�
pi/moments_2/SquaredDifferenceSquaredDifferencepi/dense_2/Relupi/moments_2/StopGradient*#
_output_shapes
:�*
T0
q
'pi/moments_2/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
pi/moments_2/varianceMeanpi/moments_2/SquaredDifference'pi/moments_2/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*#
_output_shapes
:�
W

pi/zeros_2Const*
valueB*    *
dtype0*
_output_shapes
:
y
pi/Variable_4
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
pi/Variable_4/AssignAssignpi/Variable_4
pi/zeros_2*
use_locking(*
T0* 
_class
loc:@pi/Variable_4*
validate_shape(*
_output_shapes
:
t
pi/Variable_4/readIdentitypi/Variable_4*
T0* 
_class
loc:@pi/Variable_4*
_output_shapes
:
V
	pi/ones_2Const*
valueB*  �?*
dtype0*
_output_shapes
:
y
pi/Variable_5
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
pi/Variable_5/AssignAssignpi/Variable_5	pi/ones_2*
use_locking(*
T0* 
_class
loc:@pi/Variable_5*
validate_shape(*
_output_shapes
:
t
pi/Variable_5/readIdentitypi/Variable_5*
_output_shapes
:*
T0* 
_class
loc:@pi/Variable_5
a
pi/sub_2Subpi/dense_2/Relupi/moments_2/mean*
T0*#
_output_shapes
:�
[
pi/mul_2Mulpi/Variable_5/readpi/sub_2*
T0*#
_output_shapes
:�
O

pi/add_4/yConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
`
pi/add_4Addpi/moments_2/variance
pi/add_4/y*#
_output_shapes
:�*
T0
I
	pi/Sqrt_2Sqrtpi/add_4*
T0*#
_output_shapes
:�
Z
pi/truediv_2RealDivpi/mul_2	pi/Sqrt_2*
T0*#
_output_shapes
:�
_
pi/add_5Addpi/truediv_2pi/Variable_4/read*
T0*#
_output_shapes
:�
f
pi/transpose/permConst*!
valueB"          *
dtype0*
_output_shapes
:
q
pi/transpose	Transposepi/add_3pi/transpose/perm*
T0*#
_output_shapes
:�*
Tperm0
y
	pi/MatMulBatchMatMulpi/add_1pi/transpose*$
_output_shapes
:��*
adj_x( *
adj_y( *
T0
P
pi/Sqrt_3/xConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
?
	pi/Sqrt_3Sqrtpi/Sqrt_3/x*
T0*
_output_shapes
: 
\
pi/truediv_3RealDiv	pi/MatMul	pi/Sqrt_3*
T0*$
_output_shapes
:��
R

pi/SoftmaxSoftmaxpi/truediv_3*
T0*$
_output_shapes
:��
x
pi/MatMul_1BatchMatMul
pi/Softmaxpi/add_5*
T0*#
_output_shapes
:�*
adj_x( *
adj_y( 
V
pi/add_6Addpi/MatMul_1
pi/Reshape*
T0*#
_output_shapes
:�
m
#pi/moments_3/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
pi/moments_3/meanMeanpi/add_6#pi/moments_3/mean/reduction_indices*#
_output_shapes
:�*
	keep_dims(*

Tidx0*
T0
j
pi/moments_3/StopGradientStopGradientpi/moments_3/mean*#
_output_shapes
:�*
T0
�
pi/moments_3/SquaredDifferenceSquaredDifferencepi/add_6pi/moments_3/StopGradient*#
_output_shapes
:�*
T0
q
'pi/moments_3/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
pi/moments_3/varianceMeanpi/moments_3/SquaredDifference'pi/moments_3/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*#
_output_shapes
:�
W

pi/zeros_3Const*
dtype0*
_output_shapes
:*
valueB*    
y
pi/Variable_6
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
�
pi/Variable_6/AssignAssignpi/Variable_6
pi/zeros_3*
T0* 
_class
loc:@pi/Variable_6*
validate_shape(*
_output_shapes
:*
use_locking(
t
pi/Variable_6/readIdentitypi/Variable_6*
T0* 
_class
loc:@pi/Variable_6*
_output_shapes
:
V
	pi/ones_3Const*
valueB*  �?*
dtype0*
_output_shapes
:
y
pi/Variable_7
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
�
pi/Variable_7/AssignAssignpi/Variable_7	pi/ones_3*
use_locking(*
T0* 
_class
loc:@pi/Variable_7*
validate_shape(*
_output_shapes
:
t
pi/Variable_7/readIdentitypi/Variable_7*
T0* 
_class
loc:@pi/Variable_7*
_output_shapes
:
Z
pi/sub_3Subpi/add_6pi/moments_3/mean*
T0*#
_output_shapes
:�
[
pi/mul_3Mulpi/Variable_7/readpi/sub_3*
T0*#
_output_shapes
:�
O

pi/add_7/yConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
`
pi/add_7Addpi/moments_3/variance
pi/add_7/y*
T0*#
_output_shapes
:�
I
	pi/Sqrt_4Sqrtpi/add_7*
T0*#
_output_shapes
:�
Z
pi/truediv_4RealDivpi/mul_3	pi/Sqrt_4*
T0*#
_output_shapes
:�
_
pi/add_8Addpi/truediv_4pi/Variable_6/read*#
_output_shapes
:�*
T0
S
pi/add_9Addpi/add_8
pi/Reshape*
T0*#
_output_shapes
:�
m
#pi/moments_4/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
pi/moments_4/meanMeanpi/add_9#pi/moments_4/mean/reduction_indices*#
_output_shapes
:�*
	keep_dims(*

Tidx0*
T0
j
pi/moments_4/StopGradientStopGradientpi/moments_4/mean*
T0*#
_output_shapes
:�
�
pi/moments_4/SquaredDifferenceSquaredDifferencepi/add_9pi/moments_4/StopGradient*
T0*#
_output_shapes
:�
q
'pi/moments_4/variance/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
�
pi/moments_4/varianceMeanpi/moments_4/SquaredDifference'pi/moments_4/variance/reduction_indices*
	keep_dims(*

Tidx0*
T0*#
_output_shapes
:�
W

pi/zeros_4Const*
valueB*    *
dtype0*
_output_shapes
:
y
pi/Variable_8
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
pi/Variable_8/AssignAssignpi/Variable_8
pi/zeros_4*
T0* 
_class
loc:@pi/Variable_8*
validate_shape(*
_output_shapes
:*
use_locking(
t
pi/Variable_8/readIdentitypi/Variable_8*
T0* 
_class
loc:@pi/Variable_8*
_output_shapes
:
V
	pi/ones_4Const*
valueB*  �?*
dtype0*
_output_shapes
:
y
pi/Variable_9
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
�
pi/Variable_9/AssignAssignpi/Variable_9	pi/ones_4*
T0* 
_class
loc:@pi/Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(
t
pi/Variable_9/readIdentitypi/Variable_9*
T0* 
_class
loc:@pi/Variable_9*
_output_shapes
:
Z
pi/sub_4Subpi/add_9pi/moments_4/mean*
T0*#
_output_shapes
:�
[
pi/mul_4Mulpi/Variable_9/readpi/sub_4*
T0*#
_output_shapes
:�
P
pi/add_10/yConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
b
	pi/add_10Addpi/moments_4/variancepi/add_10/y*
T0*#
_output_shapes
:�
J
	pi/Sqrt_5Sqrt	pi/add_10*#
_output_shapes
:�*
T0
Z
pi/truediv_5RealDivpi/mul_4	pi/Sqrt_5*
T0*#
_output_shapes
:�
`
	pi/add_11Addpi/truediv_5pi/Variable_8/read*#
_output_shapes
:�*
T0
Z
pi/Max/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
y
pi/MaxMax	pi/add_11pi/Max/reduction_indices*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
2pi/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"�      *$
_class
loc:@pi/dense_3/kernel*
dtype0*
_output_shapes
:
�
0pi/dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *Y߽*$
_class
loc:@pi/dense_3/kernel*
dtype0*
_output_shapes
: 
�
0pi/dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *Y�=*$
_class
loc:@pi/dense_3/kernel*
dtype0*
_output_shapes
: 
�
:pi/dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_3/kernel/Initializer/random_uniform/shape*
seed2�*
dtype0* 
_output_shapes
:
��*

seed.*
T0*$
_class
loc:@pi/dense_3/kernel
�
0pi/dense_3/kernel/Initializer/random_uniform/subSub0pi/dense_3/kernel/Initializer/random_uniform/max0pi/dense_3/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_3/kernel*
_output_shapes
: 
�
0pi/dense_3/kernel/Initializer/random_uniform/mulMul:pi/dense_3/kernel/Initializer/random_uniform/RandomUniform0pi/dense_3/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_3/kernel* 
_output_shapes
:
��
�
,pi/dense_3/kernel/Initializer/random_uniformAdd0pi/dense_3/kernel/Initializer/random_uniform/mul0pi/dense_3/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_3/kernel* 
_output_shapes
:
��
�
pi/dense_3/kernelVarHandleOp*
dtype0*
_output_shapes
: *"
shared_namepi/dense_3/kernel*$
_class
loc:@pi/dense_3/kernel*
	container *
shape:
��
s
2pi/dense_3/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_3/kernel*
_output_shapes
: 
�
pi/dense_3/kernel/AssignAssignVariableOppi/dense_3/kernel,pi/dense_3/kernel/Initializer/random_uniform*$
_class
loc:@pi/dense_3/kernel*
dtype0
�
%pi/dense_3/kernel/Read/ReadVariableOpReadVariableOppi/dense_3/kernel*$
_class
loc:@pi/dense_3/kernel*
dtype0* 
_output_shapes
:
��
�
!pi/dense_3/bias/Initializer/zerosConst*
valueB�*    *"
_class
loc:@pi/dense_3/bias*
dtype0*
_output_shapes	
:�
�
pi/dense_3/biasVarHandleOp*
shape:�*
dtype0*
_output_shapes
: * 
shared_namepi/dense_3/bias*"
_class
loc:@pi/dense_3/bias*
	container 
o
0pi/dense_3/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_3/bias*
_output_shapes
: 
�
pi/dense_3/bias/AssignAssignVariableOppi/dense_3/bias!pi/dense_3/bias/Initializer/zeros*"
_class
loc:@pi/dense_3/bias*
dtype0
�
#pi/dense_3/bias/Read/ReadVariableOpReadVariableOppi/dense_3/bias*"
_class
loc:@pi/dense_3/bias*
dtype0*
_output_shapes	
:�
t
 pi/dense_3/MatMul/ReadVariableOpReadVariableOppi/dense_3/kernel*
dtype0* 
_output_shapes
:
��
�
pi/dense_3/MatMulMatMulpi/Max pi/dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b( 
n
!pi/dense_3/BiasAdd/ReadVariableOpReadVariableOppi/dense_3/bias*
dtype0*
_output_shapes	
:�
�
pi/dense_3/BiasAddBiasAddpi/dense_3/MatMul!pi/dense_3/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*
_output_shapes
:	�
U
pi/dense_3/ReluRelupi/dense_3/BiasAdd*
_output_shapes
:	�*
T0
�
2pi/dense_4/kernel/Initializer/random_uniform/shapeConst*
valueB"      *$
_class
loc:@pi/dense_4/kernel*
dtype0*
_output_shapes
:
�
0pi/dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *�(�*$
_class
loc:@pi/dense_4/kernel
�
0pi/dense_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *�(>*$
_class
loc:@pi/dense_4/kernel*
dtype0*
_output_shapes
: 
�
:pi/dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_4/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�*

seed.*
T0*$
_class
loc:@pi/dense_4/kernel*
seed2�
�
0pi/dense_4/kernel/Initializer/random_uniform/subSub0pi/dense_4/kernel/Initializer/random_uniform/max0pi/dense_4/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_4/kernel*
_output_shapes
: 
�
0pi/dense_4/kernel/Initializer/random_uniform/mulMul:pi/dense_4/kernel/Initializer/random_uniform/RandomUniform0pi/dense_4/kernel/Initializer/random_uniform/sub*
_output_shapes
:	�*
T0*$
_class
loc:@pi/dense_4/kernel
�
,pi/dense_4/kernel/Initializer/random_uniformAdd0pi/dense_4/kernel/Initializer/random_uniform/mul0pi/dense_4/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_4/kernel*
_output_shapes
:	�
�
pi/dense_4/kernelVarHandleOp*$
_class
loc:@pi/dense_4/kernel*
	container *
shape:	�*
dtype0*
_output_shapes
: *"
shared_namepi/dense_4/kernel
s
2pi/dense_4/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_4/kernel*
_output_shapes
: 
�
pi/dense_4/kernel/AssignAssignVariableOppi/dense_4/kernel,pi/dense_4/kernel/Initializer/random_uniform*$
_class
loc:@pi/dense_4/kernel*
dtype0
�
%pi/dense_4/kernel/Read/ReadVariableOpReadVariableOppi/dense_4/kernel*$
_class
loc:@pi/dense_4/kernel*
dtype0*
_output_shapes
:	�
�
!pi/dense_4/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_4/bias*
dtype0*
_output_shapes
:
�
pi/dense_4/biasVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: * 
shared_namepi/dense_4/bias*"
_class
loc:@pi/dense_4/bias
o
0pi/dense_4/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_4/bias*
_output_shapes
: 
�
pi/dense_4/bias/AssignAssignVariableOppi/dense_4/bias!pi/dense_4/bias/Initializer/zeros*
dtype0*"
_class
loc:@pi/dense_4/bias
�
#pi/dense_4/bias/Read/ReadVariableOpReadVariableOppi/dense_4/bias*"
_class
loc:@pi/dense_4/bias*
dtype0*
_output_shapes
:
s
 pi/dense_4/MatMul/ReadVariableOpReadVariableOppi/dense_4/kernel*
dtype0*
_output_shapes
:	�
�
pi/dense_4/MatMulMatMulpi/dense_3/Relu pi/dense_4/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
m
!pi/dense_4/BiasAdd/ReadVariableOpReadVariableOppi/dense_4/bias*
dtype0*
_output_shapes
:
�
pi/dense_4/BiasAddBiasAddpi/dense_4/MatMul!pi/dense_4/BiasAdd/ReadVariableOp*
data_formatNHWC*
_output_shapes

:*
T0
Z
pi/dense_4/SoftmaxSoftmaxpi/dense_4/BiasAdd*
T0*
_output_shapes

:
X
pi/LogSoftmax
LogSoftmaxpi/dense_4/Softmax*
_output_shapes

:*
T0
h
&pi/categorical/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
�
pi/categorical/MultinomialMultinomialpi/dense_4/Softmax&pi/categorical/Multinomial/num_samples*
output_dtype0	*
T0*
_output_shapes

:*
seed2�*

seed.
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
 *  �?*
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
value	B :*
dtype0*
_output_shapes
: 
�

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
T0*
axis���������*
TI0*
_output_shapes

:
S
pi/mul_5Mul
pi/one_hotpi/LogSoftmax*
_output_shapes

:*
T0
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
s
pi/SumSumpi/mul_5pi/Sum/reduction_indices*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Z
pi/one_hot_1/on_valueConst*
valueB
 *  �?*
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
value	B :*
dtype0*
_output_shapes
: 
�
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
T0*
axis���������*
TI0	*
_output_shapes

:
U
pi/mul_6Mulpi/one_hot_1pi/LogSoftmax*
T0*
_output_shapes

:
\
pi/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
w
pi/Sum_1Sumpi/mul_6pi/Sum_1/reduction_indices*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
1v/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"�      *#
_class
loc:@v/dense_5/kernel*
dtype0*
_output_shapes
:
�
/v/dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *Y߽*#
_class
loc:@v/dense_5/kernel*
dtype0*
_output_shapes
: 
�
/v/dense_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *Y�=*#
_class
loc:@v/dense_5/kernel*
dtype0*
_output_shapes
: 
�
9v/dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_5/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
��*

seed.*
T0*#
_class
loc:@v/dense_5/kernel*
seed2�
�
/v/dense_5/kernel/Initializer/random_uniform/subSub/v/dense_5/kernel/Initializer/random_uniform/max/v/dense_5/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_5/kernel*
_output_shapes
: 
�
/v/dense_5/kernel/Initializer/random_uniform/mulMul9v/dense_5/kernel/Initializer/random_uniform/RandomUniform/v/dense_5/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
��*
T0*#
_class
loc:@v/dense_5/kernel
�
+v/dense_5/kernel/Initializer/random_uniformAdd/v/dense_5/kernel/Initializer/random_uniform/mul/v/dense_5/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_5/kernel* 
_output_shapes
:
��
�
v/dense_5/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namev/dense_5/kernel*#
_class
loc:@v/dense_5/kernel*
	container *
shape:
��
q
1v/dense_5/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_5/kernel*
_output_shapes
: 
�
v/dense_5/kernel/AssignAssignVariableOpv/dense_5/kernel+v/dense_5/kernel/Initializer/random_uniform*#
_class
loc:@v/dense_5/kernel*
dtype0
�
$v/dense_5/kernel/Read/ReadVariableOpReadVariableOpv/dense_5/kernel*#
_class
loc:@v/dense_5/kernel*
dtype0* 
_output_shapes
:
��
�
 v/dense_5/bias/Initializer/zerosConst*
valueB�*    *!
_class
loc:@v/dense_5/bias*
dtype0*
_output_shapes	
:�
�
v/dense_5/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namev/dense_5/bias*!
_class
loc:@v/dense_5/bias*
	container *
shape:�
m
/v/dense_5/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_5/bias*
_output_shapes
: 
�
v/dense_5/bias/AssignAssignVariableOpv/dense_5/bias v/dense_5/bias/Initializer/zeros*
dtype0*!
_class
loc:@v/dense_5/bias
�
"v/dense_5/bias/Read/ReadVariableOpReadVariableOpv/dense_5/bias*!
_class
loc:@v/dense_5/bias*
dtype0*
_output_shapes	
:�
r
v/dense_5/MatMul/ReadVariableOpReadVariableOpv/dense_5/kernel*
dtype0* 
_output_shapes
:
��
�
v/dense_5/MatMulMatMulpi/Maxv/dense_5/MatMul/ReadVariableOp*
transpose_b( *
T0*
_output_shapes
:	�*
transpose_a( 
l
 v/dense_5/BiasAdd/ReadVariableOpReadVariableOpv/dense_5/bias*
dtype0*
_output_shapes	
:�
�
v/dense_5/BiasAddBiasAddv/dense_5/MatMul v/dense_5/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*
_output_shapes
:	�
S
v/dense_5/ReluReluv/dense_5/BiasAdd*
T0*
_output_shapes
:	�
�
1v/dense_6/kernel/Initializer/random_uniform/shapeConst*
valueB"      *#
_class
loc:@v/dense_6/kernel*
dtype0*
_output_shapes
:
�
/v/dense_6/kernel/Initializer/random_uniform/minConst*
valueB
 *Iv�*#
_class
loc:@v/dense_6/kernel*
dtype0*
_output_shapes
: 
�
/v/dense_6/kernel/Initializer/random_uniform/maxConst*
valueB
 *Iv>*#
_class
loc:@v/dense_6/kernel*
dtype0*
_output_shapes
: 
�
9v/dense_6/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_6/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�*

seed.*
T0*#
_class
loc:@v/dense_6/kernel*
seed2�
�
/v/dense_6/kernel/Initializer/random_uniform/subSub/v/dense_6/kernel/Initializer/random_uniform/max/v/dense_6/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_6/kernel*
_output_shapes
: 
�
/v/dense_6/kernel/Initializer/random_uniform/mulMul9v/dense_6/kernel/Initializer/random_uniform/RandomUniform/v/dense_6/kernel/Initializer/random_uniform/sub*
_output_shapes
:	�*
T0*#
_class
loc:@v/dense_6/kernel
�
+v/dense_6/kernel/Initializer/random_uniformAdd/v/dense_6/kernel/Initializer/random_uniform/mul/v/dense_6/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_6/kernel*
_output_shapes
:	�
�
v/dense_6/kernelVarHandleOp*
dtype0*
_output_shapes
: *!
shared_namev/dense_6/kernel*#
_class
loc:@v/dense_6/kernel*
	container *
shape:	�
q
1v/dense_6/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_6/kernel*
_output_shapes
: 
�
v/dense_6/kernel/AssignAssignVariableOpv/dense_6/kernel+v/dense_6/kernel/Initializer/random_uniform*#
_class
loc:@v/dense_6/kernel*
dtype0
�
$v/dense_6/kernel/Read/ReadVariableOpReadVariableOpv/dense_6/kernel*#
_class
loc:@v/dense_6/kernel*
dtype0*
_output_shapes
:	�
�
 v/dense_6/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_6/bias*
dtype0*
_output_shapes
:
�
v/dense_6/biasVarHandleOp*
shared_namev/dense_6/bias*!
_class
loc:@v/dense_6/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
m
/v/dense_6/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_6/bias*
_output_shapes
: 
�
v/dense_6/bias/AssignAssignVariableOpv/dense_6/bias v/dense_6/bias/Initializer/zeros*!
_class
loc:@v/dense_6/bias*
dtype0
�
"v/dense_6/bias/Read/ReadVariableOpReadVariableOpv/dense_6/bias*
dtype0*
_output_shapes
:*!
_class
loc:@v/dense_6/bias
q
v/dense_6/MatMul/ReadVariableOpReadVariableOpv/dense_6/kernel*
dtype0*
_output_shapes
:	�
�
v/dense_6/MatMulMatMulv/dense_5/Reluv/dense_6/MatMul/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
k
 v/dense_6/BiasAdd/ReadVariableOpReadVariableOpv/dense_6/bias*
dtype0*
_output_shapes
:
�
v/dense_6/BiasAddBiasAddv/dense_6/MatMul v/dense_6/BiasAdd/ReadVariableOp*
data_formatNHWC*
_output_shapes

:*
T0
c
	v/SqueezeSqueezev/dense_6/BiasAdd*
squeeze_dims
*
T0*
_output_shapes
:
O
subSubpi/SumPlaceholder_4*
T0*#
_output_shapes
:���������
=
ExpExpsub*
T0*#
_output_shapes
:���������
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
:���������
J
mul/xConst*
valueB
 *���?*
dtype0*
_output_shapes
: 
N
mulMulmul/xPlaceholder_2*
T0*#
_output_shapes
:���������
L
mul_1/xConst*
valueB
 *��L?*
dtype0*
_output_shapes
: 
R
mul_1Mulmul_1/xPlaceholder_2*
T0*#
_output_shapes
:���������
S
SelectSelectGreatermulmul_1*#
_output_shapes
:���������*
T0
N
mul_2MulExpPlaceholder_2*
T0*#
_output_shapes
:���������
O
MinimumMinimummul_2Select*#
_output_shapes
:���������*
T0
O
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
Z
MeanMeanMinimumConst*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
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
pi_loss/summaries/MeanMeanNegpi_loss/summaries/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
v
pi_loss/summaries/mean_1/tagsConst*
dtype0*
_output_shapes
: *)
value B Bpi_loss/summaries/mean_1
�
pi_loss/summaries/mean_1ScalarSummarypi_loss/summaries/mean_1/tagspi_loss/summaries/Mean*
T0*
_output_shapes
: 
a
pi_loss/summaries/stddev/subSubNegpi_loss/summaries/Mean*
T0*
_output_shapes
: 
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
�
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
�
pi_loss/summaries/stddev_1ScalarSummarypi_loss/summaries/stddev_1/tagspi_loss/summaries/stddev/Sqrt*
_output_shapes
: *
T0
\
pi_loss/summaries/Const_1Const*
dtype0*
_output_shapes
: *
valueB 
z
pi_loss/summaries/MaxMaxNegpi_loss/summaries/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
t
pi_loss/summaries/max_1/tagsConst*
dtype0*
_output_shapes
: *(
valueB Bpi_loss/summaries/max_1
~
pi_loss/summaries/max_1ScalarSummarypi_loss/summaries/max_1/tagspi_loss/summaries/Max*
_output_shapes
: *
T0
\
pi_loss/summaries/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
z
pi_loss/summaries/MinMinNegpi_loss/summaries/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
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
pi_loss/summaries/histogram/tagConst*,
value#B! Bpi_loss/summaries/histogram*
dtype0*
_output_shapes
: 
v
pi_loss/summaries/histogramHistogramSummarypi_loss/summaries/histogram/tagNeg*
T0*
_output_shapes
: 
T
sub_1SubPlaceholder_3	v/Squeeze*
T0*#
_output_shapes
:���������
J
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
F
powPowsub_1pow/y*
T0*#
_output_shapes
:���������
Q
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Z
Mean_1MeanpowConst_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Q
sub_2SubPlaceholder_4pi/Sum*
T0*#
_output_shapes
:���������
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_2Meansub_2Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
9
Neg_1Negpi/Sum*
_output_shapes
:*
T0
Q
Const_3Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_3MeanNeg_1Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
P
Greater_1/yConst*
valueB
 *���?*
dtype0*
_output_shapes
: 
T
	Greater_1GreaterExpGreater_1/y*#
_output_shapes
:���������*
T0
K
Less/yConst*
valueB
 *��L?*
dtype0*
_output_shapes
: 
G
LessLessExpLess/y*
T0*#
_output_shapes
:���������
L
	LogicalOr	LogicalOr	Greater_1Less*#
_output_shapes
:���������
d
CastCast	LogicalOr*

SrcT0
*
Truncate( *#
_output_shapes
:���������*

DstT0
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_4MeanCastConst_4*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
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
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
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
�
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*#
_output_shapes
:���������*

Tmultiples0
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
�
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
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
�
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
�
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
�
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*#
_output_shapes
:���������*
T0
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
�
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0*#
_output_shapes
:���������
j
 gradients/Minimum_grad/LessEqual	LessEqualmul_2Select*
T0*#
_output_shapes
:���������
�
,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0*#
_output_shapes
:���������
�
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zerosgradients/Mean_grad/truediv*
T0*#
_output_shapes
:���������
�
gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
�
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
�
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1*#
_output_shapes
:���������
]
gradients/mul_2_grad/ShapeShapeExp*
T0*
out_type0*
_output_shapes
:
i
gradients/mul_2_grad/Shape_1ShapePlaceholder_2*
_output_shapes
:*
T0*
out_type0
�
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/mul_2_grad/MulMul/gradients/Minimum_grad/tuple/control_dependencyPlaceholder_2*
T0*#
_output_shapes
:���������
�
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
gradients/mul_2_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*#
_output_shapes
:���������*
T0
�
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
�
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
�
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1

gradients/Exp_grad/mulMul-gradients/mul_2_grad/tuple/control_dependencyExp*
T0*#
_output_shapes
:���������
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
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/sub_grad/SumSumgradients/Exp_grad/mul(gradients/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
_output_shapes
:*
T0*
Tshape0
�
gradients/sub_grad/Sum_1Sumgradients/Exp_grad/mul*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0*
_output_shapes
:
�
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*#
_output_shapes
:���������
l
gradients/pi/Sum_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
gradients/pi/Sum_grad/SizeConst*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/pi/Sum_grad/addAddpi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
�
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
�
gradients/pi/Sum_grad/Shape_1Const*
valueB *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
!gradients/pi/Sum_grad/range/startConst*
value	B : *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
!gradients/pi/Sum_grad/range/deltaConst*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
�
 gradients/pi/Sum_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
�
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
�
#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
N*
_output_shapes
:
�
gradients/pi/Sum_grad/Maximum/yConst*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
�
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
�
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
�
gradients/pi/Sum_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes

:
�
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*

Tmultiples0*
T0*
_output_shapes

:
v
gradients/pi/mul_5_grad/MulMulgradients/pi/Sum_grad/Tilepi/LogSoftmax*
T0*
_output_shapes

:
u
gradients/pi/mul_5_grad/Mul_1Mulgradients/pi/Sum_grad/Tile
pi/one_hot*
_output_shapes

:*
T0
n
(gradients/pi/mul_5_grad/tuple/group_depsNoOp^gradients/pi/mul_5_grad/Mul^gradients/pi/mul_5_grad/Mul_1
�
0gradients/pi/mul_5_grad/tuple/control_dependencyIdentitygradients/pi/mul_5_grad/Mul)^gradients/pi/mul_5_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/pi/mul_5_grad/Mul*
_output_shapes

:
�
2gradients/pi/mul_5_grad/tuple/control_dependency_1Identitygradients/pi/mul_5_grad/Mul_1)^gradients/pi/mul_5_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/mul_5_grad/Mul_1*
_output_shapes

:
_
 gradients/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*
_output_shapes

:
}
2gradients/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
 gradients/pi/LogSoftmax_grad/SumSum2gradients/pi/mul_5_grad/tuple/control_dependency_12gradients/pi/LogSoftmax_grad/Sum/reduction_indices*
_output_shapes

:*
	keep_dims(*

Tidx0*
T0
�
 gradients/pi/LogSoftmax_grad/mulMul gradients/pi/LogSoftmax_grad/Sum gradients/pi/LogSoftmax_grad/Exp*
T0*
_output_shapes

:
�
 gradients/pi/LogSoftmax_grad/subSub2gradients/pi/mul_5_grad/tuple/control_dependency_1 gradients/pi/LogSoftmax_grad/mul*
T0*
_output_shapes

:
�
%gradients/pi/dense_4/Softmax_grad/mulMul gradients/pi/LogSoftmax_grad/subpi/dense_4/Softmax*
T0*
_output_shapes

:
�
7gradients/pi/dense_4/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
%gradients/pi/dense_4/Softmax_grad/SumSum%gradients/pi/dense_4/Softmax_grad/mul7gradients/pi/dense_4/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*
_output_shapes

:
�
%gradients/pi/dense_4/Softmax_grad/subSub gradients/pi/LogSoftmax_grad/sub%gradients/pi/dense_4/Softmax_grad/Sum*
T0*
_output_shapes

:
�
'gradients/pi/dense_4/Softmax_grad/mul_1Mul%gradients/pi/dense_4/Softmax_grad/subpi/dense_4/Softmax*
_output_shapes

:*
T0
�
-gradients/pi/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_4/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:
�
2gradients/pi/dense_4/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_4/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense_4/Softmax_grad/mul_1
�
:gradients/pi/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense_4/Softmax_grad/mul_13^gradients/pi/dense_4/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_4/Softmax_grad/mul_1*
_output_shapes

:
�
<gradients/pi/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_4/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_4/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_4/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
'gradients/pi/dense_4/MatMul_grad/MatMulMatMul:gradients/pi/dense_4/BiasAdd_grad/tuple/control_dependency pi/dense_4/MatMul/ReadVariableOp*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b(
�
)gradients/pi/dense_4/MatMul_grad/MatMul_1MatMulpi/dense_3/Relu:gradients/pi/dense_4/BiasAdd_grad/tuple/control_dependency*
_output_shapes
:	�*
transpose_a(*
transpose_b( *
T0
�
1gradients/pi/dense_4/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_4/MatMul_grad/MatMul*^gradients/pi/dense_4/MatMul_grad/MatMul_1
�
9gradients/pi/dense_4/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_4/MatMul_grad/MatMul2^gradients/pi/dense_4/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_4/MatMul_grad/MatMul*
_output_shapes
:	�
�
;gradients/pi/dense_4/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_4/MatMul_grad/MatMul_12^gradients/pi/dense_4/MatMul_grad/tuple/group_deps*
_output_shapes
:	�*
T0*<
_class2
0.loc:@gradients/pi/dense_4/MatMul_grad/MatMul_1
�
'gradients/pi/dense_3/Relu_grad/ReluGradReluGrad9gradients/pi/dense_4/MatMul_grad/tuple/control_dependencypi/dense_3/Relu*
T0*
_output_shapes
:	�
�
-gradients/pi/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
2gradients/pi/dense_3/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_3/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense_3/Relu_grad/ReluGrad
�
:gradients/pi/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense_3/Relu_grad/ReluGrad3^gradients/pi/dense_3/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_3/Relu_grad/ReluGrad*
_output_shapes
:	�
�
<gradients/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_3/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_3/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:�*
T0*@
_class6
42loc:@gradients/pi/dense_3/BiasAdd_grad/BiasAddGrad
�
'gradients/pi/dense_3/MatMul_grad/MatMulMatMul:gradients/pi/dense_3/BiasAdd_grad/tuple/control_dependency pi/dense_3/MatMul/ReadVariableOp*
_output_shapes
:	�*
transpose_a( *
transpose_b(*
T0
�
)gradients/pi/dense_3/MatMul_grad/MatMul_1MatMulpi/Max:gradients/pi/dense_3/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
��*
transpose_a(*
transpose_b( 
�
1gradients/pi/dense_3/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_3/MatMul_grad/MatMul*^gradients/pi/dense_3/MatMul_grad/MatMul_1
�
9gradients/pi/dense_3/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_3/MatMul_grad/MatMul2^gradients/pi/dense_3/MatMul_grad/tuple/group_deps*
_output_shapes
:	�*
T0*:
_class0
.,loc:@gradients/pi/dense_3/MatMul_grad/MatMul
�
;gradients/pi/dense_3/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_3/MatMul_grad/MatMul_12^gradients/pi/dense_3/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_3/MatMul_grad/MatMul_1* 
_output_shapes
:
��
p
gradients/pi/Max_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
\
gradients/pi/Max_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
w
gradients/pi/Max_grad/addAddpi/Max/reduction_indicesgradients/pi/Max_grad/Size*
T0*
_output_shapes
: 
}
gradients/pi/Max_grad/modFloorModgradients/pi/Max_grad/addgradients/pi/Max_grad/Size*
T0*
_output_shapes
: 
`
gradients/pi/Max_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
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
�
gradients/pi/Max_grad/rangeRange!gradients/pi/Max_grad/range/startgradients/pi/Max_grad/Size!gradients/pi/Max_grad/range/delta*
_output_shapes
:*

Tidx0
b
 gradients/pi/Max_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/pi/Max_grad/FillFillgradients/pi/Max_grad/Shape_1 gradients/pi/Max_grad/Fill/value*
T0*

index_type0*
_output_shapes
: 
�
#gradients/pi/Max_grad/DynamicStitchDynamicStitchgradients/pi/Max_grad/rangegradients/pi/Max_grad/modgradients/pi/Max_grad/Shapegradients/pi/Max_grad/Fill*
T0*
N*
_output_shapes
:
�
gradients/pi/Max_grad/ReshapeReshapepi/Max#gradients/pi/Max_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/Max_grad/Reshape_1Reshape9gradients/pi/dense_3/MatMul_grad/tuple/control_dependency#gradients/pi/Max_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
|
gradients/pi/Max_grad/EqualEqualgradients/pi/Max_grad/Reshape	pi/add_11*
T0*#
_output_shapes
:�
�
gradients/pi/Max_grad/CastCastgradients/pi/Max_grad/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:�*

DstT0
�
gradients/pi/Max_grad/SumSumgradients/pi/Max_grad/Castpi/Max/reduction_indices*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
gradients/pi/Max_grad/Reshape_2Reshapegradients/pi/Max_grad/Sum#gradients/pi/Max_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/Max_grad/divRealDivgradients/pi/Max_grad/Castgradients/pi/Max_grad/Reshape_2*#
_output_shapes
:�*
T0
�
gradients/pi/Max_grad/mulMulgradients/pi/Max_grad/divgradients/pi/Max_grad/Reshape_1*#
_output_shapes
:�*
T0
s
gradients/pi/add_11_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
j
 gradients/pi/add_11_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
.gradients/pi/add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_11_grad/Shape gradients/pi/add_11_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/add_11_grad/SumSumgradients/pi/Max_grad/mul.gradients/pi/add_11_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
 gradients/pi/add_11_grad/ReshapeReshapegradients/pi/add_11_grad/Sumgradients/pi/add_11_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_11_grad/Sum_1Sumgradients/pi/Max_grad/mul0gradients/pi/add_11_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
"gradients/pi/add_11_grad/Reshape_1Reshapegradients/pi/add_11_grad/Sum_1 gradients/pi/add_11_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
y
)gradients/pi/add_11_grad/tuple/group_depsNoOp!^gradients/pi/add_11_grad/Reshape#^gradients/pi/add_11_grad/Reshape_1
�
1gradients/pi/add_11_grad/tuple/control_dependencyIdentity gradients/pi/add_11_grad/Reshape*^gradients/pi/add_11_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/pi/add_11_grad/Reshape*#
_output_shapes
:�
�
3gradients/pi/add_11_grad/tuple/control_dependency_1Identity"gradients/pi/add_11_grad/Reshape_1*^gradients/pi/add_11_grad/tuple/group_deps*
_output_shapes
:*
T0*5
_class+
)'loc:@gradients/pi/add_11_grad/Reshape_1
v
!gradients/pi/truediv_5_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
x
#gradients/pi/truediv_5_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
1gradients/pi/truediv_5_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/pi/truediv_5_grad/Shape#gradients/pi/truediv_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
#gradients/pi/truediv_5_grad/RealDivRealDiv1gradients/pi/add_11_grad/tuple/control_dependency	pi/Sqrt_5*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_5_grad/SumSum#gradients/pi/truediv_5_grad/RealDiv1gradients/pi/truediv_5_grad/BroadcastGradientArgs*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
#gradients/pi/truediv_5_grad/ReshapeReshapegradients/pi/truediv_5_grad/Sum!gradients/pi/truediv_5_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
^
gradients/pi/truediv_5_grad/NegNegpi/mul_4*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_5_grad/RealDiv_1RealDivgradients/pi/truediv_5_grad/Neg	pi/Sqrt_5*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_5_grad/RealDiv_2RealDiv%gradients/pi/truediv_5_grad/RealDiv_1	pi/Sqrt_5*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_5_grad/mulMul1gradients/pi/add_11_grad/tuple/control_dependency%gradients/pi/truediv_5_grad/RealDiv_2*
T0*#
_output_shapes
:�
�
!gradients/pi/truediv_5_grad/Sum_1Sumgradients/pi/truediv_5_grad/mul3gradients/pi/truediv_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
%gradients/pi/truediv_5_grad/Reshape_1Reshape!gradients/pi/truediv_5_grad/Sum_1#gradients/pi/truediv_5_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
,gradients/pi/truediv_5_grad/tuple/group_depsNoOp$^gradients/pi/truediv_5_grad/Reshape&^gradients/pi/truediv_5_grad/Reshape_1
�
4gradients/pi/truediv_5_grad/tuple/control_dependencyIdentity#gradients/pi/truediv_5_grad/Reshape-^gradients/pi/truediv_5_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_5_grad/Reshape*#
_output_shapes
:�
�
6gradients/pi/truediv_5_grad/tuple/control_dependency_1Identity%gradients/pi/truediv_5_grad/Reshape_1-^gradients/pi/truediv_5_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/truediv_5_grad/Reshape_1*#
_output_shapes
:�
g
gradients/pi/mul_4_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
t
gradients/pi/mul_4_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
-gradients/pi/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_4_grad/Shapegradients/pi/mul_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/mul_4_grad/MulMul4gradients/pi/truediv_5_grad/tuple/control_dependencypi/sub_4*
T0*#
_output_shapes
:�
�
gradients/pi/mul_4_grad/SumSumgradients/pi/mul_4_grad/Mul-gradients/pi/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients/pi/mul_4_grad/ReshapeReshapegradients/pi/mul_4_grad/Sumgradients/pi/mul_4_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/pi/mul_4_grad/Mul_1Mulpi/Variable_9/read4gradients/pi/truediv_5_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients/pi/mul_4_grad/Sum_1Sumgradients/pi/mul_4_grad/Mul_1/gradients/pi/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
!gradients/pi/mul_4_grad/Reshape_1Reshapegradients/pi/mul_4_grad/Sum_1gradients/pi/mul_4_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
v
(gradients/pi/mul_4_grad/tuple/group_depsNoOp ^gradients/pi/mul_4_grad/Reshape"^gradients/pi/mul_4_grad/Reshape_1
�
0gradients/pi/mul_4_grad/tuple/control_dependencyIdentitygradients/pi/mul_4_grad/Reshape)^gradients/pi/mul_4_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_4_grad/Reshape*
_output_shapes
:
�
2gradients/pi/mul_4_grad/tuple/control_dependency_1Identity!gradients/pi/mul_4_grad/Reshape_1)^gradients/pi/mul_4_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/mul_4_grad/Reshape_1*#
_output_shapes
:�
�
!gradients/pi/Sqrt_5_grad/SqrtGradSqrtGrad	pi/Sqrt_56gradients/pi/truediv_5_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�
r
gradients/pi/sub_4_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
t
gradients/pi/sub_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
-gradients/pi/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_4_grad/Shapegradients/pi/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/sub_4_grad/SumSum2gradients/pi/mul_4_grad/tuple/control_dependency_1-gradients/pi/sub_4_grad/BroadcastGradientArgs*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
gradients/pi/sub_4_grad/ReshapeReshapegradients/pi/sub_4_grad/Sumgradients/pi/sub_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/sub_4_grad/Sum_1Sum2gradients/pi/mul_4_grad/tuple/control_dependency_1/gradients/pi/sub_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
g
gradients/pi/sub_4_grad/NegNeggradients/pi/sub_4_grad/Sum_1*
T0*
_output_shapes	
:�
�
!gradients/pi/sub_4_grad/Reshape_1Reshapegradients/pi/sub_4_grad/Neggradients/pi/sub_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients/pi/sub_4_grad/tuple/group_depsNoOp ^gradients/pi/sub_4_grad/Reshape"^gradients/pi/sub_4_grad/Reshape_1
�
0gradients/pi/sub_4_grad/tuple/control_dependencyIdentitygradients/pi/sub_4_grad/Reshape)^gradients/pi/sub_4_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_4_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/sub_4_grad/tuple/control_dependency_1Identity!gradients/pi/sub_4_grad/Reshape_1)^gradients/pi/sub_4_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients/pi/sub_4_grad/Reshape_1
s
gradients/pi/add_10_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
c
 gradients/pi/add_10_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
.gradients/pi/add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_10_grad/Shape gradients/pi/add_10_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/add_10_grad/SumSum!gradients/pi/Sqrt_5_grad/SqrtGrad.gradients/pi/add_10_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
�
 gradients/pi/add_10_grad/ReshapeReshapegradients/pi/add_10_grad/Sumgradients/pi/add_10_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
gradients/pi/add_10_grad/Sum_1Sum!gradients/pi/Sqrt_5_grad/SqrtGrad0gradients/pi/add_10_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
"gradients/pi/add_10_grad/Reshape_1Reshapegradients/pi/add_10_grad/Sum_1 gradients/pi/add_10_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
y
)gradients/pi/add_10_grad/tuple/group_depsNoOp!^gradients/pi/add_10_grad/Reshape#^gradients/pi/add_10_grad/Reshape_1
�
1gradients/pi/add_10_grad/tuple/control_dependencyIdentity gradients/pi/add_10_grad/Reshape*^gradients/pi/add_10_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/pi/add_10_grad/Reshape*#
_output_shapes
:�
�
3gradients/pi/add_10_grad/tuple/control_dependency_1Identity"gradients/pi/add_10_grad/Reshape_1*^gradients/pi/add_10_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/pi/add_10_grad/Reshape_1*
_output_shapes
: 

*gradients/pi/moments_4/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
)gradients/pi/moments_4/variance_grad/SizeConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_4/variance_grad/addAdd'pi/moments_4/variance/reduction_indices)gradients/pi/moments_4/variance_grad/Size*
T0*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_4/variance_grad/modFloorMod(gradients/pi/moments_4/variance_grad/add)gradients/pi/moments_4/variance_grad/Size*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape
�
,gradients/pi/moments_4/variance_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape
�
0gradients/pi/moments_4/variance_grad/range/startConst*
value	B : *=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
0gradients/pi/moments_4/variance_grad/range/deltaConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients/pi/moments_4/variance_grad/rangeRange0gradients/pi/moments_4/variance_grad/range/start)gradients/pi/moments_4/variance_grad/Size0gradients/pi/moments_4/variance_grad/range/delta*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
_output_shapes
:*

Tidx0
�
/gradients/pi/moments_4/variance_grad/Fill/valueConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
)gradients/pi/moments_4/variance_grad/FillFill,gradients/pi/moments_4/variance_grad/Shape_1/gradients/pi/moments_4/variance_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
2gradients/pi/moments_4/variance_grad/DynamicStitchDynamicStitch*gradients/pi/moments_4/variance_grad/range(gradients/pi/moments_4/variance_grad/mod*gradients/pi/moments_4/variance_grad/Shape)gradients/pi/moments_4/variance_grad/Fill*
T0*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
N*
_output_shapes
:
�
.gradients/pi/moments_4/variance_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape
�
,gradients/pi/moments_4/variance_grad/MaximumMaximum2gradients/pi/moments_4/variance_grad/DynamicStitch.gradients/pi/moments_4/variance_grad/Maximum/y*
T0*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
-gradients/pi/moments_4/variance_grad/floordivFloorDiv*gradients/pi/moments_4/variance_grad/Shape,gradients/pi/moments_4/variance_grad/Maximum*
T0*=
_class3
1/loc:@gradients/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
,gradients/pi/moments_4/variance_grad/ReshapeReshape1gradients/pi/add_10_grad/tuple/control_dependency2gradients/pi/moments_4/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
)gradients/pi/moments_4/variance_grad/TileTile,gradients/pi/moments_4/variance_grad/Reshape-gradients/pi/moments_4/variance_grad/floordiv*

Tmultiples0*
T0*#
_output_shapes
:�
o
*gradients/pi/moments_4/variance_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
,gradients/pi/moments_4/variance_grad/truedivRealDiv)gradients/pi/moments_4/variance_grad/Tile*gradients/pi/moments_4/variance_grad/Const*
T0*#
_output_shapes
:�
�
3gradients/pi/moments_4/SquaredDifference_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
�
5gradients/pi/moments_4/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Cgradients/pi/moments_4/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/pi/moments_4/SquaredDifference_grad/Shape5gradients/pi/moments_4/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
4gradients/pi/moments_4/SquaredDifference_grad/scalarConst-^gradients/pi/moments_4/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
1gradients/pi/moments_4/SquaredDifference_grad/MulMul4gradients/pi/moments_4/SquaredDifference_grad/scalar,gradients/pi/moments_4/variance_grad/truediv*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_4/SquaredDifference_grad/subSubpi/add_9pi/moments_4/StopGradient-^gradients/pi/moments_4/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients/pi/moments_4/SquaredDifference_grad/mul_1Mul1gradients/pi/moments_4/SquaredDifference_grad/Mul1gradients/pi/moments_4/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_4/SquaredDifference_grad/SumSum3gradients/pi/moments_4/SquaredDifference_grad/mul_1Cgradients/pi/moments_4/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
5gradients/pi/moments_4/SquaredDifference_grad/ReshapeReshape1gradients/pi/moments_4/SquaredDifference_grad/Sum3gradients/pi/moments_4/SquaredDifference_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients/pi/moments_4/SquaredDifference_grad/Sum_1Sum3gradients/pi/moments_4/SquaredDifference_grad/mul_1Egradients/pi/moments_4/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
7gradients/pi/moments_4/SquaredDifference_grad/Reshape_1Reshape3gradients/pi/moments_4/SquaredDifference_grad/Sum_15gradients/pi/moments_4/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
1gradients/pi/moments_4/SquaredDifference_grad/NegNeg7gradients/pi/moments_4/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
>gradients/pi/moments_4/SquaredDifference_grad/tuple/group_depsNoOp2^gradients/pi/moments_4/SquaredDifference_grad/Neg6^gradients/pi/moments_4/SquaredDifference_grad/Reshape
�
Fgradients/pi/moments_4/SquaredDifference_grad/tuple/control_dependencyIdentity5gradients/pi/moments_4/SquaredDifference_grad/Reshape?^gradients/pi/moments_4/SquaredDifference_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/moments_4/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Hgradients/pi/moments_4/SquaredDifference_grad/tuple/control_dependency_1Identity1gradients/pi/moments_4/SquaredDifference_grad/Neg?^gradients/pi/moments_4/SquaredDifference_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/pi/moments_4/SquaredDifference_grad/Neg*#
_output_shapes
:�
{
&gradients/pi/moments_4/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
%gradients/pi/moments_4/mean_grad/SizeConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
$gradients/pi/moments_4/mean_grad/addAdd#pi/moments_4/mean/reduction_indices%gradients/pi/moments_4/mean_grad/Size*
T0*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
$gradients/pi/moments_4/mean_grad/modFloorMod$gradients/pi/moments_4/mean_grad/add%gradients/pi/moments_4/mean_grad/Size*
T0*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_4/mean_grad/Shape_1Const*
valueB:*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
:
�
,gradients/pi/moments_4/mean_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape
�
,gradients/pi/moments_4/mean_grad/range/deltaConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients/pi/moments_4/mean_grad/rangeRange,gradients/pi/moments_4/mean_grad/range/start%gradients/pi/moments_4/mean_grad/Size,gradients/pi/moments_4/mean_grad/range/delta*
_output_shapes
:*

Tidx0*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape
�
+gradients/pi/moments_4/mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape
�
%gradients/pi/moments_4/mean_grad/FillFill(gradients/pi/moments_4/mean_grad/Shape_1+gradients/pi/moments_4/mean_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape
�
.gradients/pi/moments_4/mean_grad/DynamicStitchDynamicStitch&gradients/pi/moments_4/mean_grad/range$gradients/pi/moments_4/mean_grad/mod&gradients/pi/moments_4/mean_grad/Shape%gradients/pi/moments_4/mean_grad/Fill*
T0*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
N*
_output_shapes
:
�
*gradients/pi/moments_4/mean_grad/Maximum/yConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_4/mean_grad/MaximumMaximum.gradients/pi/moments_4/mean_grad/DynamicStitch*gradients/pi/moments_4/mean_grad/Maximum/y*
T0*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
)gradients/pi/moments_4/mean_grad/floordivFloorDiv&gradients/pi/moments_4/mean_grad/Shape(gradients/pi/moments_4/mean_grad/Maximum*
T0*9
_class/
-+loc:@gradients/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_4/mean_grad/ReshapeReshape2gradients/pi/sub_4_grad/tuple/control_dependency_1.gradients/pi/moments_4/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
%gradients/pi/moments_4/mean_grad/TileTile(gradients/pi/moments_4/mean_grad/Reshape)gradients/pi/moments_4/mean_grad/floordiv*#
_output_shapes
:�*

Tmultiples0*
T0
k
&gradients/pi/moments_4/mean_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �A
�
(gradients/pi/moments_4/mean_grad/truedivRealDiv%gradients/pi/moments_4/mean_grad/Tile&gradients/pi/moments_4/mean_grad/Const*#
_output_shapes
:�*
T0
�
gradients/AddNAddN0gradients/pi/sub_4_grad/tuple/control_dependencyFgradients/pi/moments_4/SquaredDifference_grad/tuple/control_dependency(gradients/pi/moments_4/mean_grad/truediv*
T0*2
_class(
&$loc:@gradients/pi/sub_4_grad/Reshape*
N*#
_output_shapes
:�
A
(gradients/pi/add_9_grad/tuple/group_depsNoOp^gradients/AddN
�
0gradients/pi/add_9_grad/tuple/control_dependencyIdentitygradients/AddN)^gradients/pi/add_9_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_4_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/add_9_grad/tuple/control_dependency_1Identitygradients/AddN)^gradients/pi/add_9_grad/tuple/group_deps*#
_output_shapes
:�*
T0*2
_class(
&$loc:@gradients/pi/sub_4_grad/Reshape
r
gradients/pi/add_8_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
i
gradients/pi/add_8_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
-gradients/pi/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_8_grad/Shapegradients/pi/add_8_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/pi/add_8_grad/SumSum0gradients/pi/add_9_grad/tuple/control_dependency-gradients/pi/add_8_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
gradients/pi/add_8_grad/ReshapeReshapegradients/pi/add_8_grad/Sumgradients/pi/add_8_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_8_grad/Sum_1Sum0gradients/pi/add_9_grad/tuple/control_dependency/gradients/pi/add_8_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
!gradients/pi/add_8_grad/Reshape_1Reshapegradients/pi/add_8_grad/Sum_1gradients/pi/add_8_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
v
(gradients/pi/add_8_grad/tuple/group_depsNoOp ^gradients/pi/add_8_grad/Reshape"^gradients/pi/add_8_grad/Reshape_1
�
0gradients/pi/add_8_grad/tuple/control_dependencyIdentitygradients/pi/add_8_grad/Reshape)^gradients/pi/add_8_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_8_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/add_8_grad/tuple/control_dependency_1Identity!gradients/pi/add_8_grad/Reshape_1)^gradients/pi/add_8_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_8_grad/Reshape_1*
_output_shapes
:
v
!gradients/pi/truediv_4_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
x
#gradients/pi/truediv_4_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
1gradients/pi/truediv_4_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/pi/truediv_4_grad/Shape#gradients/pi/truediv_4_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
#gradients/pi/truediv_4_grad/RealDivRealDiv0gradients/pi/add_8_grad/tuple/control_dependency	pi/Sqrt_4*#
_output_shapes
:�*
T0
�
gradients/pi/truediv_4_grad/SumSum#gradients/pi/truediv_4_grad/RealDiv1gradients/pi/truediv_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
#gradients/pi/truediv_4_grad/ReshapeReshapegradients/pi/truediv_4_grad/Sum!gradients/pi/truediv_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
^
gradients/pi/truediv_4_grad/NegNegpi/mul_3*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_4_grad/RealDiv_1RealDivgradients/pi/truediv_4_grad/Neg	pi/Sqrt_4*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_4_grad/RealDiv_2RealDiv%gradients/pi/truediv_4_grad/RealDiv_1	pi/Sqrt_4*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_4_grad/mulMul0gradients/pi/add_8_grad/tuple/control_dependency%gradients/pi/truediv_4_grad/RealDiv_2*
T0*#
_output_shapes
:�
�
!gradients/pi/truediv_4_grad/Sum_1Sumgradients/pi/truediv_4_grad/mul3gradients/pi/truediv_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
%gradients/pi/truediv_4_grad/Reshape_1Reshape!gradients/pi/truediv_4_grad/Sum_1#gradients/pi/truediv_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
,gradients/pi/truediv_4_grad/tuple/group_depsNoOp$^gradients/pi/truediv_4_grad/Reshape&^gradients/pi/truediv_4_grad/Reshape_1
�
4gradients/pi/truediv_4_grad/tuple/control_dependencyIdentity#gradients/pi/truediv_4_grad/Reshape-^gradients/pi/truediv_4_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_4_grad/Reshape*#
_output_shapes
:�
�
6gradients/pi/truediv_4_grad/tuple/control_dependency_1Identity%gradients/pi/truediv_4_grad/Reshape_1-^gradients/pi/truediv_4_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/truediv_4_grad/Reshape_1*#
_output_shapes
:�
g
gradients/pi/mul_3_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
t
gradients/pi/mul_3_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
-gradients/pi/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_3_grad/Shapegradients/pi/mul_3_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/pi/mul_3_grad/MulMul4gradients/pi/truediv_4_grad/tuple/control_dependencypi/sub_3*#
_output_shapes
:�*
T0
�
gradients/pi/mul_3_grad/SumSumgradients/pi/mul_3_grad/Mul-gradients/pi/mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/pi/mul_3_grad/ReshapeReshapegradients/pi/mul_3_grad/Sumgradients/pi/mul_3_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/pi/mul_3_grad/Mul_1Mulpi/Variable_7/read4gradients/pi/truediv_4_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients/pi/mul_3_grad/Sum_1Sumgradients/pi/mul_3_grad/Mul_1/gradients/pi/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
!gradients/pi/mul_3_grad/Reshape_1Reshapegradients/pi/mul_3_grad/Sum_1gradients/pi/mul_3_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients/pi/mul_3_grad/tuple/group_depsNoOp ^gradients/pi/mul_3_grad/Reshape"^gradients/pi/mul_3_grad/Reshape_1
�
0gradients/pi/mul_3_grad/tuple/control_dependencyIdentitygradients/pi/mul_3_grad/Reshape)^gradients/pi/mul_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_3_grad/Reshape*
_output_shapes
:
�
2gradients/pi/mul_3_grad/tuple/control_dependency_1Identity!gradients/pi/mul_3_grad/Reshape_1)^gradients/pi/mul_3_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients/pi/mul_3_grad/Reshape_1
�
!gradients/pi/Sqrt_4_grad/SqrtGradSqrtGrad	pi/Sqrt_46gradients/pi/truediv_4_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�
r
gradients/pi/sub_3_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
t
gradients/pi/sub_3_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
-gradients/pi/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_3_grad/Shapegradients/pi/sub_3_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/pi/sub_3_grad/SumSum2gradients/pi/mul_3_grad/tuple/control_dependency_1-gradients/pi/sub_3_grad/BroadcastGradientArgs*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
gradients/pi/sub_3_grad/ReshapeReshapegradients/pi/sub_3_grad/Sumgradients/pi/sub_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/sub_3_grad/Sum_1Sum2gradients/pi/mul_3_grad/tuple/control_dependency_1/gradients/pi/sub_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
g
gradients/pi/sub_3_grad/NegNeggradients/pi/sub_3_grad/Sum_1*
T0*
_output_shapes	
:�
�
!gradients/pi/sub_3_grad/Reshape_1Reshapegradients/pi/sub_3_grad/Neggradients/pi/sub_3_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
v
(gradients/pi/sub_3_grad/tuple/group_depsNoOp ^gradients/pi/sub_3_grad/Reshape"^gradients/pi/sub_3_grad/Reshape_1
�
0gradients/pi/sub_3_grad/tuple/control_dependencyIdentitygradients/pi/sub_3_grad/Reshape)^gradients/pi/sub_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_3_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/sub_3_grad/tuple/control_dependency_1Identity!gradients/pi/sub_3_grad/Reshape_1)^gradients/pi/sub_3_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients/pi/sub_3_grad/Reshape_1
r
gradients/pi/add_7_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
b
gradients/pi/add_7_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
-gradients/pi/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_7_grad/Shapegradients/pi/add_7_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/pi/add_7_grad/SumSum!gradients/pi/Sqrt_4_grad/SqrtGrad-gradients/pi/add_7_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
gradients/pi/add_7_grad/ReshapeReshapegradients/pi/add_7_grad/Sumgradients/pi/add_7_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_7_grad/Sum_1Sum!gradients/pi/Sqrt_4_grad/SqrtGrad/gradients/pi/add_7_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
!gradients/pi/add_7_grad/Reshape_1Reshapegradients/pi/add_7_grad/Sum_1gradients/pi/add_7_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
v
(gradients/pi/add_7_grad/tuple/group_depsNoOp ^gradients/pi/add_7_grad/Reshape"^gradients/pi/add_7_grad/Reshape_1
�
0gradients/pi/add_7_grad/tuple/control_dependencyIdentitygradients/pi/add_7_grad/Reshape)^gradients/pi/add_7_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_7_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/add_7_grad/tuple/control_dependency_1Identity!gradients/pi/add_7_grad/Reshape_1)^gradients/pi/add_7_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_7_grad/Reshape_1*
_output_shapes
: 

*gradients/pi/moments_3/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
)gradients/pi/moments_3/variance_grad/SizeConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_3/variance_grad/addAdd'pi/moments_3/variance/reduction_indices)gradients/pi/moments_3/variance_grad/Size*
T0*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_3/variance_grad/modFloorMod(gradients/pi/moments_3/variance_grad/add)gradients/pi/moments_3/variance_grad/Size*
T0*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
_output_shapes
:
�
,gradients/pi/moments_3/variance_grad/Shape_1Const*
valueB:*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
:
�
0gradients/pi/moments_3/variance_grad/range/startConst*
value	B : *=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
0gradients/pi/moments_3/variance_grad/range/deltaConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients/pi/moments_3/variance_grad/rangeRange0gradients/pi/moments_3/variance_grad/range/start)gradients/pi/moments_3/variance_grad/Size0gradients/pi/moments_3/variance_grad/range/delta*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
_output_shapes
:*

Tidx0
�
/gradients/pi/moments_3/variance_grad/Fill/valueConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
)gradients/pi/moments_3/variance_grad/FillFill,gradients/pi/moments_3/variance_grad/Shape_1/gradients/pi/moments_3/variance_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape
�
2gradients/pi/moments_3/variance_grad/DynamicStitchDynamicStitch*gradients/pi/moments_3/variance_grad/range(gradients/pi/moments_3/variance_grad/mod*gradients/pi/moments_3/variance_grad/Shape)gradients/pi/moments_3/variance_grad/Fill*
N*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape
�
.gradients/pi/moments_3/variance_grad/Maximum/yConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients/pi/moments_3/variance_grad/MaximumMaximum2gradients/pi/moments_3/variance_grad/DynamicStitch.gradients/pi/moments_3/variance_grad/Maximum/y*
T0*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape*
_output_shapes
:
�
-gradients/pi/moments_3/variance_grad/floordivFloorDiv*gradients/pi/moments_3/variance_grad/Shape,gradients/pi/moments_3/variance_grad/Maximum*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/pi/moments_3/variance_grad/Shape
�
,gradients/pi/moments_3/variance_grad/ReshapeReshape0gradients/pi/add_7_grad/tuple/control_dependency2gradients/pi/moments_3/variance_grad/DynamicStitch*#
_output_shapes
:�*
T0*
Tshape0
�
)gradients/pi/moments_3/variance_grad/TileTile,gradients/pi/moments_3/variance_grad/Reshape-gradients/pi/moments_3/variance_grad/floordiv*#
_output_shapes
:�*

Tmultiples0*
T0
o
*gradients/pi/moments_3/variance_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �A
�
,gradients/pi/moments_3/variance_grad/truedivRealDiv)gradients/pi/moments_3/variance_grad/Tile*gradients/pi/moments_3/variance_grad/Const*
T0*#
_output_shapes
:�
�
3gradients/pi/moments_3/SquaredDifference_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
5gradients/pi/moments_3/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Cgradients/pi/moments_3/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/pi/moments_3/SquaredDifference_grad/Shape5gradients/pi/moments_3/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
4gradients/pi/moments_3/SquaredDifference_grad/scalarConst-^gradients/pi/moments_3/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
1gradients/pi/moments_3/SquaredDifference_grad/MulMul4gradients/pi/moments_3/SquaredDifference_grad/scalar,gradients/pi/moments_3/variance_grad/truediv*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_3/SquaredDifference_grad/subSubpi/add_6pi/moments_3/StopGradient-^gradients/pi/moments_3/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients/pi/moments_3/SquaredDifference_grad/mul_1Mul1gradients/pi/moments_3/SquaredDifference_grad/Mul1gradients/pi/moments_3/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_3/SquaredDifference_grad/SumSum3gradients/pi/moments_3/SquaredDifference_grad/mul_1Cgradients/pi/moments_3/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
5gradients/pi/moments_3/SquaredDifference_grad/ReshapeReshape1gradients/pi/moments_3/SquaredDifference_grad/Sum3gradients/pi/moments_3/SquaredDifference_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients/pi/moments_3/SquaredDifference_grad/Sum_1Sum3gradients/pi/moments_3/SquaredDifference_grad/mul_1Egradients/pi/moments_3/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
�
7gradients/pi/moments_3/SquaredDifference_grad/Reshape_1Reshape3gradients/pi/moments_3/SquaredDifference_grad/Sum_15gradients/pi/moments_3/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
1gradients/pi/moments_3/SquaredDifference_grad/NegNeg7gradients/pi/moments_3/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
>gradients/pi/moments_3/SquaredDifference_grad/tuple/group_depsNoOp2^gradients/pi/moments_3/SquaredDifference_grad/Neg6^gradients/pi/moments_3/SquaredDifference_grad/Reshape
�
Fgradients/pi/moments_3/SquaredDifference_grad/tuple/control_dependencyIdentity5gradients/pi/moments_3/SquaredDifference_grad/Reshape?^gradients/pi/moments_3/SquaredDifference_grad/tuple/group_deps*#
_output_shapes
:�*
T0*H
_class>
<:loc:@gradients/pi/moments_3/SquaredDifference_grad/Reshape
�
Hgradients/pi/moments_3/SquaredDifference_grad/tuple/control_dependency_1Identity1gradients/pi/moments_3/SquaredDifference_grad/Neg?^gradients/pi/moments_3/SquaredDifference_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/pi/moments_3/SquaredDifference_grad/Neg*#
_output_shapes
:�
{
&gradients/pi/moments_3/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
%gradients/pi/moments_3/mean_grad/SizeConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
$gradients/pi/moments_3/mean_grad/addAdd#pi/moments_3/mean/reduction_indices%gradients/pi/moments_3/mean_grad/Size*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape
�
$gradients/pi/moments_3/mean_grad/modFloorMod$gradients/pi/moments_3/mean_grad/add%gradients/pi/moments_3/mean_grad/Size*
T0*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_3/mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape
�
,gradients/pi/moments_3/mean_grad/range/startConst*
value	B : *9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients/pi/moments_3/mean_grad/range/deltaConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients/pi/moments_3/mean_grad/rangeRange,gradients/pi/moments_3/mean_grad/range/start%gradients/pi/moments_3/mean_grad/Size,gradients/pi/moments_3/mean_grad/range/delta*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
+gradients/pi/moments_3/mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape
�
%gradients/pi/moments_3/mean_grad/FillFill(gradients/pi/moments_3/mean_grad/Shape_1+gradients/pi/moments_3/mean_grad/Fill/value*
T0*

index_type0*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
.gradients/pi/moments_3/mean_grad/DynamicStitchDynamicStitch&gradients/pi/moments_3/mean_grad/range$gradients/pi/moments_3/mean_grad/mod&gradients/pi/moments_3/mean_grad/Shape%gradients/pi/moments_3/mean_grad/Fill*
T0*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
N*
_output_shapes
:
�
*gradients/pi/moments_3/mean_grad/Maximum/yConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_3/mean_grad/MaximumMaximum.gradients/pi/moments_3/mean_grad/DynamicStitch*gradients/pi/moments_3/mean_grad/Maximum/y*
T0*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
)gradients/pi/moments_3/mean_grad/floordivFloorDiv&gradients/pi/moments_3/mean_grad/Shape(gradients/pi/moments_3/mean_grad/Maximum*
T0*9
_class/
-+loc:@gradients/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_3/mean_grad/ReshapeReshape2gradients/pi/sub_3_grad/tuple/control_dependency_1.gradients/pi/moments_3/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
%gradients/pi/moments_3/mean_grad/TileTile(gradients/pi/moments_3/mean_grad/Reshape)gradients/pi/moments_3/mean_grad/floordiv*

Tmultiples0*
T0*#
_output_shapes
:�
k
&gradients/pi/moments_3/mean_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_3/mean_grad/truedivRealDiv%gradients/pi/moments_3/mean_grad/Tile&gradients/pi/moments_3/mean_grad/Const*
T0*#
_output_shapes
:�
�
gradients/AddN_1AddN0gradients/pi/sub_3_grad/tuple/control_dependencyFgradients/pi/moments_3/SquaredDifference_grad/tuple/control_dependency(gradients/pi/moments_3/mean_grad/truediv*
T0*2
_class(
&$loc:@gradients/pi/sub_3_grad/Reshape*
N*#
_output_shapes
:�
C
(gradients/pi/add_6_grad/tuple/group_depsNoOp^gradients/AddN_1
�
0gradients/pi/add_6_grad/tuple/control_dependencyIdentitygradients/AddN_1)^gradients/pi/add_6_grad/tuple/group_deps*#
_output_shapes
:�*
T0*2
_class(
&$loc:@gradients/pi/sub_3_grad/Reshape
�
2gradients/pi/add_6_grad/tuple/control_dependency_1Identitygradients/AddN_1)^gradients/pi/add_6_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_3_grad/Reshape*#
_output_shapes
:�
�
!gradients/pi/MatMul_1_grad/MatMulBatchMatMul0gradients/pi/add_6_grad/tuple/control_dependencypi/add_5*$
_output_shapes
:��*
adj_x( *
adj_y(*
T0
�
#gradients/pi/MatMul_1_grad/MatMul_1BatchMatMul
pi/Softmax0gradients/pi/add_6_grad/tuple/control_dependency*
adj_x(*
adj_y( *
T0*#
_output_shapes
:�
}
+gradients/pi/MatMul_1_grad/tuple/group_depsNoOp"^gradients/pi/MatMul_1_grad/MatMul$^gradients/pi/MatMul_1_grad/MatMul_1
�
3gradients/pi/MatMul_1_grad/tuple/control_dependencyIdentity!gradients/pi/MatMul_1_grad/MatMul,^gradients/pi/MatMul_1_grad/tuple/group_deps*$
_output_shapes
:��*
T0*4
_class*
(&loc:@gradients/pi/MatMul_1_grad/MatMul
�
5gradients/pi/MatMul_1_grad/tuple/control_dependency_1Identity#gradients/pi/MatMul_1_grad/MatMul_1,^gradients/pi/MatMul_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/MatMul_1_grad/MatMul_1*#
_output_shapes
:�
�
gradients/pi/Softmax_grad/mulMul3gradients/pi/MatMul_1_grad/tuple/control_dependency
pi/Softmax*
T0*$
_output_shapes
:��
z
/gradients/pi/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
gradients/pi/Softmax_grad/SumSumgradients/pi/Softmax_grad/mul/gradients/pi/Softmax_grad/Sum/reduction_indices*
T0*#
_output_shapes
:�*
	keep_dims(*

Tidx0
�
gradients/pi/Softmax_grad/subSub3gradients/pi/MatMul_1_grad/tuple/control_dependencygradients/pi/Softmax_grad/Sum*
T0*$
_output_shapes
:��
�
gradients/pi/Softmax_grad/mul_1Mulgradients/pi/Softmax_grad/sub
pi/Softmax*$
_output_shapes
:��*
T0
r
gradients/pi/add_5_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
i
gradients/pi/add_5_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
-gradients/pi/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_5_grad/Shapegradients/pi/add_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/add_5_grad/SumSum5gradients/pi/MatMul_1_grad/tuple/control_dependency_1-gradients/pi/add_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
gradients/pi/add_5_grad/ReshapeReshapegradients/pi/add_5_grad/Sumgradients/pi/add_5_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_5_grad/Sum_1Sum5gradients/pi/MatMul_1_grad/tuple/control_dependency_1/gradients/pi/add_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
!gradients/pi/add_5_grad/Reshape_1Reshapegradients/pi/add_5_grad/Sum_1gradients/pi/add_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/add_5_grad/tuple/group_depsNoOp ^gradients/pi/add_5_grad/Reshape"^gradients/pi/add_5_grad/Reshape_1
�
0gradients/pi/add_5_grad/tuple/control_dependencyIdentitygradients/pi/add_5_grad/Reshape)^gradients/pi/add_5_grad/tuple/group_deps*#
_output_shapes
:�*
T0*2
_class(
&$loc:@gradients/pi/add_5_grad/Reshape
�
2gradients/pi/add_5_grad/tuple/control_dependency_1Identity!gradients/pi/add_5_grad/Reshape_1)^gradients/pi/add_5_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_5_grad/Reshape_1*
_output_shapes
:
v
!gradients/pi/truediv_3_grad/ShapeConst*!
valueB"   �   �   *
dtype0*
_output_shapes
:
f
#gradients/pi/truediv_3_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
1gradients/pi/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/pi/truediv_3_grad/Shape#gradients/pi/truediv_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
#gradients/pi/truediv_3_grad/RealDivRealDivgradients/pi/Softmax_grad/mul_1	pi/Sqrt_3*
T0*$
_output_shapes
:��
�
gradients/pi/truediv_3_grad/SumSum#gradients/pi/truediv_3_grad/RealDiv1gradients/pi/truediv_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0* 
_output_shapes
:
��
�
#gradients/pi/truediv_3_grad/ReshapeReshapegradients/pi/truediv_3_grad/Sum!gradients/pi/truediv_3_grad/Shape*$
_output_shapes
:��*
T0*
Tshape0
`
gradients/pi/truediv_3_grad/NegNeg	pi/MatMul*
T0*$
_output_shapes
:��
�
%gradients/pi/truediv_3_grad/RealDiv_1RealDivgradients/pi/truediv_3_grad/Neg	pi/Sqrt_3*
T0*$
_output_shapes
:��
�
%gradients/pi/truediv_3_grad/RealDiv_2RealDiv%gradients/pi/truediv_3_grad/RealDiv_1	pi/Sqrt_3*
T0*$
_output_shapes
:��
�
gradients/pi/truediv_3_grad/mulMulgradients/pi/Softmax_grad/mul_1%gradients/pi/truediv_3_grad/RealDiv_2*
T0*$
_output_shapes
:��
�
!gradients/pi/truediv_3_grad/Sum_1Sumgradients/pi/truediv_3_grad/mul3gradients/pi/truediv_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
%gradients/pi/truediv_3_grad/Reshape_1Reshape!gradients/pi/truediv_3_grad/Sum_1#gradients/pi/truediv_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
,gradients/pi/truediv_3_grad/tuple/group_depsNoOp$^gradients/pi/truediv_3_grad/Reshape&^gradients/pi/truediv_3_grad/Reshape_1
�
4gradients/pi/truediv_3_grad/tuple/control_dependencyIdentity#gradients/pi/truediv_3_grad/Reshape-^gradients/pi/truediv_3_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_3_grad/Reshape*$
_output_shapes
:��
�
6gradients/pi/truediv_3_grad/tuple/control_dependency_1Identity%gradients/pi/truediv_3_grad/Reshape_1-^gradients/pi/truediv_3_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/truediv_3_grad/Reshape_1*
_output_shapes
: 
v
!gradients/pi/truediv_2_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
x
#gradients/pi/truediv_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
1gradients/pi/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/pi/truediv_2_grad/Shape#gradients/pi/truediv_2_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
#gradients/pi/truediv_2_grad/RealDivRealDiv0gradients/pi/add_5_grad/tuple/control_dependency	pi/Sqrt_2*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_2_grad/SumSum#gradients/pi/truediv_2_grad/RealDiv1gradients/pi/truediv_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
#gradients/pi/truediv_2_grad/ReshapeReshapegradients/pi/truediv_2_grad/Sum!gradients/pi/truediv_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
^
gradients/pi/truediv_2_grad/NegNegpi/mul_2*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_2_grad/RealDiv_1RealDivgradients/pi/truediv_2_grad/Neg	pi/Sqrt_2*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_2_grad/RealDiv_2RealDiv%gradients/pi/truediv_2_grad/RealDiv_1	pi/Sqrt_2*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_2_grad/mulMul0gradients/pi/add_5_grad/tuple/control_dependency%gradients/pi/truediv_2_grad/RealDiv_2*#
_output_shapes
:�*
T0
�
!gradients/pi/truediv_2_grad/Sum_1Sumgradients/pi/truediv_2_grad/mul3gradients/pi/truediv_2_grad/BroadcastGradientArgs:1*
_output_shapes	
:�*
	keep_dims( *

Tidx0*
T0
�
%gradients/pi/truediv_2_grad/Reshape_1Reshape!gradients/pi/truediv_2_grad/Sum_1#gradients/pi/truediv_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
,gradients/pi/truediv_2_grad/tuple/group_depsNoOp$^gradients/pi/truediv_2_grad/Reshape&^gradients/pi/truediv_2_grad/Reshape_1
�
4gradients/pi/truediv_2_grad/tuple/control_dependencyIdentity#gradients/pi/truediv_2_grad/Reshape-^gradients/pi/truediv_2_grad/tuple/group_deps*#
_output_shapes
:�*
T0*6
_class,
*(loc:@gradients/pi/truediv_2_grad/Reshape
�
6gradients/pi/truediv_2_grad/tuple/control_dependency_1Identity%gradients/pi/truediv_2_grad/Reshape_1-^gradients/pi/truediv_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/truediv_2_grad/Reshape_1*#
_output_shapes
:�
�
gradients/pi/MatMul_grad/MatMulBatchMatMul4gradients/pi/truediv_3_grad/tuple/control_dependencypi/transpose*#
_output_shapes
:�*
adj_x( *
adj_y(*
T0
�
!gradients/pi/MatMul_grad/MatMul_1BatchMatMulpi/add_14gradients/pi/truediv_3_grad/tuple/control_dependency*#
_output_shapes
:�*
adj_x(*
adj_y( *
T0
w
)gradients/pi/MatMul_grad/tuple/group_depsNoOp ^gradients/pi/MatMul_grad/MatMul"^gradients/pi/MatMul_grad/MatMul_1
�
1gradients/pi/MatMul_grad/tuple/control_dependencyIdentitygradients/pi/MatMul_grad/MatMul*^gradients/pi/MatMul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/MatMul_grad/MatMul*#
_output_shapes
:�
�
3gradients/pi/MatMul_grad/tuple/control_dependency_1Identity!gradients/pi/MatMul_grad/MatMul_1*^gradients/pi/MatMul_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients/pi/MatMul_grad/MatMul_1
g
gradients/pi/mul_2_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
t
gradients/pi/mul_2_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
-gradients/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_2_grad/Shapegradients/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/mul_2_grad/MulMul4gradients/pi/truediv_2_grad/tuple/control_dependencypi/sub_2*
T0*#
_output_shapes
:�
�
gradients/pi/mul_2_grad/SumSumgradients/pi/mul_2_grad/Mul-gradients/pi/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/pi/mul_2_grad/ReshapeReshapegradients/pi/mul_2_grad/Sumgradients/pi/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/pi/mul_2_grad/Mul_1Mulpi/Variable_5/read4gradients/pi/truediv_2_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients/pi/mul_2_grad/Sum_1Sumgradients/pi/mul_2_grad/Mul_1/gradients/pi/mul_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients/pi/mul_2_grad/Reshape_1Reshapegradients/pi/mul_2_grad/Sum_1gradients/pi/mul_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients/pi/mul_2_grad/tuple/group_depsNoOp ^gradients/pi/mul_2_grad/Reshape"^gradients/pi/mul_2_grad/Reshape_1
�
0gradients/pi/mul_2_grad/tuple/control_dependencyIdentitygradients/pi/mul_2_grad/Reshape)^gradients/pi/mul_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_2_grad/Reshape*
_output_shapes
:
�
2gradients/pi/mul_2_grad/tuple/control_dependency_1Identity!gradients/pi/mul_2_grad/Reshape_1)^gradients/pi/mul_2_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients/pi/mul_2_grad/Reshape_1
�
!gradients/pi/Sqrt_2_grad/SqrtGradSqrtGrad	pi/Sqrt_26gradients/pi/truediv_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�
r
gradients/pi/add_1_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
i
gradients/pi/add_1_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
-gradients/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_1_grad/Shapegradients/pi/add_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/pi/add_1_grad/SumSum1gradients/pi/MatMul_grad/tuple/control_dependency-gradients/pi/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
gradients/pi/add_1_grad/ReshapeReshapegradients/pi/add_1_grad/Sumgradients/pi/add_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_1_grad/Sum_1Sum1gradients/pi/MatMul_grad/tuple/control_dependency/gradients/pi/add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
!gradients/pi/add_1_grad/Reshape_1Reshapegradients/pi/add_1_grad/Sum_1gradients/pi/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/add_1_grad/tuple/group_depsNoOp ^gradients/pi/add_1_grad/Reshape"^gradients/pi/add_1_grad/Reshape_1
�
0gradients/pi/add_1_grad/tuple/control_dependencyIdentitygradients/pi/add_1_grad/Reshape)^gradients/pi/add_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_1_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/add_1_grad/tuple/control_dependency_1Identity!gradients/pi/add_1_grad/Reshape_1)^gradients/pi/add_1_grad/tuple/group_deps*
_output_shapes
:*
T0*4
_class*
(&loc:@gradients/pi/add_1_grad/Reshape_1
z
-gradients/pi/transpose_grad/InvertPermutationInvertPermutationpi/transpose/perm*
_output_shapes
:*
T0
�
%gradients/pi/transpose_grad/transpose	Transpose3gradients/pi/MatMul_grad/tuple/control_dependency_1-gradients/pi/transpose_grad/InvertPermutation*#
_output_shapes
:�*
Tperm0*
T0
r
gradients/pi/sub_2_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
t
gradients/pi/sub_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
-gradients/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_2_grad/Shapegradients/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/sub_2_grad/SumSum2gradients/pi/mul_2_grad/tuple/control_dependency_1-gradients/pi/sub_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
gradients/pi/sub_2_grad/ReshapeReshapegradients/pi/sub_2_grad/Sumgradients/pi/sub_2_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
gradients/pi/sub_2_grad/Sum_1Sum2gradients/pi/mul_2_grad/tuple/control_dependency_1/gradients/pi/sub_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
g
gradients/pi/sub_2_grad/NegNeggradients/pi/sub_2_grad/Sum_1*
T0*
_output_shapes	
:�
�
!gradients/pi/sub_2_grad/Reshape_1Reshapegradients/pi/sub_2_grad/Neggradients/pi/sub_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients/pi/sub_2_grad/tuple/group_depsNoOp ^gradients/pi/sub_2_grad/Reshape"^gradients/pi/sub_2_grad/Reshape_1
�
0gradients/pi/sub_2_grad/tuple/control_dependencyIdentitygradients/pi/sub_2_grad/Reshape)^gradients/pi/sub_2_grad/tuple/group_deps*#
_output_shapes
:�*
T0*2
_class(
&$loc:@gradients/pi/sub_2_grad/Reshape
�
2gradients/pi/sub_2_grad/tuple/control_dependency_1Identity!gradients/pi/sub_2_grad/Reshape_1)^gradients/pi/sub_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/sub_2_grad/Reshape_1*#
_output_shapes
:�
r
gradients/pi/add_4_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
b
gradients/pi/add_4_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
-gradients/pi/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_4_grad/Shapegradients/pi/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/add_4_grad/SumSum!gradients/pi/Sqrt_2_grad/SqrtGrad-gradients/pi/add_4_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
gradients/pi/add_4_grad/ReshapeReshapegradients/pi/add_4_grad/Sumgradients/pi/add_4_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
gradients/pi/add_4_grad/Sum_1Sum!gradients/pi/Sqrt_2_grad/SqrtGrad/gradients/pi/add_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
!gradients/pi/add_4_grad/Reshape_1Reshapegradients/pi/add_4_grad/Sum_1gradients/pi/add_4_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
v
(gradients/pi/add_4_grad/tuple/group_depsNoOp ^gradients/pi/add_4_grad/Reshape"^gradients/pi/add_4_grad/Reshape_1
�
0gradients/pi/add_4_grad/tuple/control_dependencyIdentitygradients/pi/add_4_grad/Reshape)^gradients/pi/add_4_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_4_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/add_4_grad/tuple/control_dependency_1Identity!gradients/pi/add_4_grad/Reshape_1)^gradients/pi/add_4_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_4_grad/Reshape_1*
_output_shapes
: 
t
gradients/pi/truediv_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
v
!gradients/pi/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
/gradients/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/truediv_grad/Shape!gradients/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
!gradients/pi/truediv_grad/RealDivRealDiv0gradients/pi/add_1_grad/tuple/control_dependencypi/Sqrt*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_grad/SumSum!gradients/pi/truediv_grad/RealDiv/gradients/pi/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients/pi/truediv_grad/ReshapeReshapegradients/pi/truediv_grad/Sumgradients/pi/truediv_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
Z
gradients/pi/truediv_grad/NegNegpi/mul*#
_output_shapes
:�*
T0
�
#gradients/pi/truediv_grad/RealDiv_1RealDivgradients/pi/truediv_grad/Negpi/Sqrt*
T0*#
_output_shapes
:�
�
#gradients/pi/truediv_grad/RealDiv_2RealDiv#gradients/pi/truediv_grad/RealDiv_1pi/Sqrt*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_grad/mulMul0gradients/pi/add_1_grad/tuple/control_dependency#gradients/pi/truediv_grad/RealDiv_2*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_grad/Sum_1Sumgradients/pi/truediv_grad/mul1gradients/pi/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
#gradients/pi/truediv_grad/Reshape_1Reshapegradients/pi/truediv_grad/Sum_1!gradients/pi/truediv_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
|
*gradients/pi/truediv_grad/tuple/group_depsNoOp"^gradients/pi/truediv_grad/Reshape$^gradients/pi/truediv_grad/Reshape_1
�
2gradients/pi/truediv_grad/tuple/control_dependencyIdentity!gradients/pi/truediv_grad/Reshape+^gradients/pi/truediv_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/truediv_grad/Reshape*#
_output_shapes
:�
�
4gradients/pi/truediv_grad/tuple/control_dependency_1Identity#gradients/pi/truediv_grad/Reshape_1+^gradients/pi/truediv_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_grad/Reshape_1*#
_output_shapes
:�
r
gradients/pi/add_3_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
i
gradients/pi/add_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
-gradients/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_3_grad/Shapegradients/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/add_3_grad/SumSum%gradients/pi/transpose_grad/transpose-gradients/pi/add_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
gradients/pi/add_3_grad/ReshapeReshapegradients/pi/add_3_grad/Sumgradients/pi/add_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_3_grad/Sum_1Sum%gradients/pi/transpose_grad/transpose/gradients/pi/add_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
!gradients/pi/add_3_grad/Reshape_1Reshapegradients/pi/add_3_grad/Sum_1gradients/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
v
(gradients/pi/add_3_grad/tuple/group_depsNoOp ^gradients/pi/add_3_grad/Reshape"^gradients/pi/add_3_grad/Reshape_1
�
0gradients/pi/add_3_grad/tuple/control_dependencyIdentitygradients/pi/add_3_grad/Reshape)^gradients/pi/add_3_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_3_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/add_3_grad/tuple/control_dependency_1Identity!gradients/pi/add_3_grad/Reshape_1)^gradients/pi/add_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_3_grad/Reshape_1*
_output_shapes
:

*gradients/pi/moments_2/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
)gradients/pi/moments_2/variance_grad/SizeConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_2/variance_grad/addAdd'pi/moments_2/variance/reduction_indices)gradients/pi/moments_2/variance_grad/Size*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape
�
(gradients/pi/moments_2/variance_grad/modFloorMod(gradients/pi/moments_2/variance_grad/add)gradients/pi/moments_2/variance_grad/Size*
T0*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
,gradients/pi/moments_2/variance_grad/Shape_1Const*
valueB:*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
:
�
0gradients/pi/moments_2/variance_grad/range/startConst*
value	B : *=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
0gradients/pi/moments_2/variance_grad/range/deltaConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients/pi/moments_2/variance_grad/rangeRange0gradients/pi/moments_2/variance_grad/range/start)gradients/pi/moments_2/variance_grad/Size0gradients/pi/moments_2/variance_grad/range/delta*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
_output_shapes
:*

Tidx0
�
/gradients/pi/moments_2/variance_grad/Fill/valueConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
)gradients/pi/moments_2/variance_grad/FillFill,gradients/pi/moments_2/variance_grad/Shape_1/gradients/pi/moments_2/variance_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
2gradients/pi/moments_2/variance_grad/DynamicStitchDynamicStitch*gradients/pi/moments_2/variance_grad/range(gradients/pi/moments_2/variance_grad/mod*gradients/pi/moments_2/variance_grad/Shape)gradients/pi/moments_2/variance_grad/Fill*
N*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape
�
.gradients/pi/moments_2/variance_grad/Maximum/yConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients/pi/moments_2/variance_grad/MaximumMaximum2gradients/pi/moments_2/variance_grad/DynamicStitch.gradients/pi/moments_2/variance_grad/Maximum/y*
T0*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
-gradients/pi/moments_2/variance_grad/floordivFloorDiv*gradients/pi/moments_2/variance_grad/Shape,gradients/pi/moments_2/variance_grad/Maximum*
T0*=
_class3
1/loc:@gradients/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
,gradients/pi/moments_2/variance_grad/ReshapeReshape0gradients/pi/add_4_grad/tuple/control_dependency2gradients/pi/moments_2/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
)gradients/pi/moments_2/variance_grad/TileTile,gradients/pi/moments_2/variance_grad/Reshape-gradients/pi/moments_2/variance_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
o
*gradients/pi/moments_2/variance_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
,gradients/pi/moments_2/variance_grad/truedivRealDiv)gradients/pi/moments_2/variance_grad/Tile*gradients/pi/moments_2/variance_grad/Const*
T0*#
_output_shapes
:�
e
gradients/pi/mul_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
r
gradients/pi/mul_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
+gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_grad/Shapegradients/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/mul_grad/MulMul2gradients/pi/truediv_grad/tuple/control_dependencypi/sub*
T0*#
_output_shapes
:�
�
gradients/pi/mul_grad/SumSumgradients/pi/mul_grad/Mul+gradients/pi/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/pi/mul_grad/ReshapeReshapegradients/pi/mul_grad/Sumgradients/pi/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/pi/mul_grad/Mul_1Mulpi/Variable_1/read2gradients/pi/truediv_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients/pi/mul_grad/Sum_1Sumgradients/pi/mul_grad/Mul_1-gradients/pi/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
gradients/pi/mul_grad/Reshape_1Reshapegradients/pi/mul_grad/Sum_1gradients/pi/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
p
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Reshape ^gradients/pi/mul_grad/Reshape_1
�
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Reshape'^gradients/pi/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*0
_class&
$"loc:@gradients/pi/mul_grad/Reshape
�
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Reshape_1'^gradients/pi/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1*#
_output_shapes
:�
�
gradients/pi/Sqrt_grad/SqrtGradSqrtGradpi/Sqrt4gradients/pi/truediv_grad/tuple/control_dependency_1*#
_output_shapes
:�*
T0
v
!gradients/pi/truediv_1_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
x
#gradients/pi/truediv_1_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
1gradients/pi/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/pi/truediv_1_grad/Shape#gradients/pi/truediv_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
#gradients/pi/truediv_1_grad/RealDivRealDiv0gradients/pi/add_3_grad/tuple/control_dependency	pi/Sqrt_1*
T0*#
_output_shapes
:�
�
gradients/pi/truediv_1_grad/SumSum#gradients/pi/truediv_1_grad/RealDiv1gradients/pi/truediv_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
#gradients/pi/truediv_1_grad/ReshapeReshapegradients/pi/truediv_1_grad/Sum!gradients/pi/truediv_1_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
^
gradients/pi/truediv_1_grad/NegNegpi/mul_1*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_1_grad/RealDiv_1RealDivgradients/pi/truediv_1_grad/Neg	pi/Sqrt_1*
T0*#
_output_shapes
:�
�
%gradients/pi/truediv_1_grad/RealDiv_2RealDiv%gradients/pi/truediv_1_grad/RealDiv_1	pi/Sqrt_1*#
_output_shapes
:�*
T0
�
gradients/pi/truediv_1_grad/mulMul0gradients/pi/add_3_grad/tuple/control_dependency%gradients/pi/truediv_1_grad/RealDiv_2*
T0*#
_output_shapes
:�
�
!gradients/pi/truediv_1_grad/Sum_1Sumgradients/pi/truediv_1_grad/mul3gradients/pi/truediv_1_grad/BroadcastGradientArgs:1*
_output_shapes	
:�*
	keep_dims( *

Tidx0*
T0
�
%gradients/pi/truediv_1_grad/Reshape_1Reshape!gradients/pi/truediv_1_grad/Sum_1#gradients/pi/truediv_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
,gradients/pi/truediv_1_grad/tuple/group_depsNoOp$^gradients/pi/truediv_1_grad/Reshape&^gradients/pi/truediv_1_grad/Reshape_1
�
4gradients/pi/truediv_1_grad/tuple/control_dependencyIdentity#gradients/pi/truediv_1_grad/Reshape-^gradients/pi/truediv_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/pi/truediv_1_grad/Reshape*#
_output_shapes
:�
�
6gradients/pi/truediv_1_grad/tuple/control_dependency_1Identity%gradients/pi/truediv_1_grad/Reshape_1-^gradients/pi/truediv_1_grad/tuple/group_deps*#
_output_shapes
:�*
T0*8
_class.
,*loc:@gradients/pi/truediv_1_grad/Reshape_1
�
3gradients/pi/moments_2/SquaredDifference_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
�
5gradients/pi/moments_2/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Cgradients/pi/moments_2/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/pi/moments_2/SquaredDifference_grad/Shape5gradients/pi/moments_2/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
4gradients/pi/moments_2/SquaredDifference_grad/scalarConst-^gradients/pi/moments_2/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
1gradients/pi/moments_2/SquaredDifference_grad/MulMul4gradients/pi/moments_2/SquaredDifference_grad/scalar,gradients/pi/moments_2/variance_grad/truediv*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_2/SquaredDifference_grad/subSubpi/dense_2/Relupi/moments_2/StopGradient-^gradients/pi/moments_2/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients/pi/moments_2/SquaredDifference_grad/mul_1Mul1gradients/pi/moments_2/SquaredDifference_grad/Mul1gradients/pi/moments_2/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_2/SquaredDifference_grad/SumSum3gradients/pi/moments_2/SquaredDifference_grad/mul_1Cgradients/pi/moments_2/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
5gradients/pi/moments_2/SquaredDifference_grad/ReshapeReshape1gradients/pi/moments_2/SquaredDifference_grad/Sum3gradients/pi/moments_2/SquaredDifference_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients/pi/moments_2/SquaredDifference_grad/Sum_1Sum3gradients/pi/moments_2/SquaredDifference_grad/mul_1Egradients/pi/moments_2/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
�
7gradients/pi/moments_2/SquaredDifference_grad/Reshape_1Reshape3gradients/pi/moments_2/SquaredDifference_grad/Sum_15gradients/pi/moments_2/SquaredDifference_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
�
1gradients/pi/moments_2/SquaredDifference_grad/NegNeg7gradients/pi/moments_2/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
>gradients/pi/moments_2/SquaredDifference_grad/tuple/group_depsNoOp2^gradients/pi/moments_2/SquaredDifference_grad/Neg6^gradients/pi/moments_2/SquaredDifference_grad/Reshape
�
Fgradients/pi/moments_2/SquaredDifference_grad/tuple/control_dependencyIdentity5gradients/pi/moments_2/SquaredDifference_grad/Reshape?^gradients/pi/moments_2/SquaredDifference_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/moments_2/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Hgradients/pi/moments_2/SquaredDifference_grad/tuple/control_dependency_1Identity1gradients/pi/moments_2/SquaredDifference_grad/Neg?^gradients/pi/moments_2/SquaredDifference_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/pi/moments_2/SquaredDifference_grad/Neg*#
_output_shapes
:�
p
gradients/pi/sub_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
r
gradients/pi/sub_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
+gradients/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_grad/Shapegradients/pi/sub_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/pi/sub_grad/SumSum0gradients/pi/mul_grad/tuple/control_dependency_1+gradients/pi/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
gradients/pi/sub_grad/ReshapeReshapegradients/pi/sub_grad/Sumgradients/pi/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/sub_grad/Sum_1Sum0gradients/pi/mul_grad/tuple/control_dependency_1-gradients/pi/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
c
gradients/pi/sub_grad/NegNeggradients/pi/sub_grad/Sum_1*
T0*
_output_shapes	
:�
�
gradients/pi/sub_grad/Reshape_1Reshapegradients/pi/sub_grad/Neggradients/pi/sub_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
p
&gradients/pi/sub_grad/tuple/group_depsNoOp^gradients/pi/sub_grad/Reshape ^gradients/pi/sub_grad/Reshape_1
�
.gradients/pi/sub_grad/tuple/control_dependencyIdentitygradients/pi/sub_grad/Reshape'^gradients/pi/sub_grad/tuple/group_deps*#
_output_shapes
:�*
T0*0
_class&
$"loc:@gradients/pi/sub_grad/Reshape
�
0gradients/pi/sub_grad/tuple/control_dependency_1Identitygradients/pi/sub_grad/Reshape_1'^gradients/pi/sub_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_grad/Reshape_1*#
_output_shapes
:�
p
gradients/pi/add_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
`
gradients/pi/add_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
�
+gradients/pi/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_grad/Shapegradients/pi/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/add_grad/SumSumgradients/pi/Sqrt_grad/SqrtGrad+gradients/pi/add_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
gradients/pi/add_grad/ReshapeReshapegradients/pi/add_grad/Sumgradients/pi/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_grad/Sum_1Sumgradients/pi/Sqrt_grad/SqrtGrad-gradients/pi/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
gradients/pi/add_grad/Reshape_1Reshapegradients/pi/add_grad/Sum_1gradients/pi/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
p
&gradients/pi/add_grad/tuple/group_depsNoOp^gradients/pi/add_grad/Reshape ^gradients/pi/add_grad/Reshape_1
�
.gradients/pi/add_grad/tuple/control_dependencyIdentitygradients/pi/add_grad/Reshape'^gradients/pi/add_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/pi/add_grad/Reshape*#
_output_shapes
:�
�
0gradients/pi/add_grad/tuple/control_dependency_1Identitygradients/pi/add_grad/Reshape_1'^gradients/pi/add_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_grad/Reshape_1*
_output_shapes
: 
g
gradients/pi/mul_1_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
t
gradients/pi/mul_1_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
-gradients/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_1_grad/Shapegradients/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/mul_1_grad/MulMul4gradients/pi/truediv_1_grad/tuple/control_dependencypi/sub_1*
T0*#
_output_shapes
:�
�
gradients/pi/mul_1_grad/SumSumgradients/pi/mul_1_grad/Mul-gradients/pi/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/pi/mul_1_grad/ReshapeReshapegradients/pi/mul_1_grad/Sumgradients/pi/mul_1_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients/pi/mul_1_grad/Mul_1Mulpi/Variable_3/read4gradients/pi/truediv_1_grad/tuple/control_dependency*#
_output_shapes
:�*
T0
�
gradients/pi/mul_1_grad/Sum_1Sumgradients/pi/mul_1_grad/Mul_1/gradients/pi/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients/pi/mul_1_grad/Reshape_1Reshapegradients/pi/mul_1_grad/Sum_1gradients/pi/mul_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients/pi/mul_1_grad/tuple/group_depsNoOp ^gradients/pi/mul_1_grad/Reshape"^gradients/pi/mul_1_grad/Reshape_1
�
0gradients/pi/mul_1_grad/tuple/control_dependencyIdentitygradients/pi/mul_1_grad/Reshape)^gradients/pi/mul_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/mul_1_grad/Reshape*
_output_shapes
:
�
2gradients/pi/mul_1_grad/tuple/control_dependency_1Identity!gradients/pi/mul_1_grad/Reshape_1)^gradients/pi/mul_1_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients/pi/mul_1_grad/Reshape_1
�
!gradients/pi/Sqrt_1_grad/SqrtGradSqrtGrad	pi/Sqrt_16gradients/pi/truediv_1_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�
}
(gradients/pi/moments/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
'gradients/pi/moments/variance_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape
�
&gradients/pi/moments/variance_grad/addAdd%pi/moments/variance/reduction_indices'gradients/pi/moments/variance_grad/Size*
_output_shapes
:*
T0*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape
�
&gradients/pi/moments/variance_grad/modFloorMod&gradients/pi/moments/variance_grad/add'gradients/pi/moments/variance_grad/Size*
T0*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
_output_shapes
:
�
*gradients/pi/moments/variance_grad/Shape_1Const*
valueB:*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
:
�
.gradients/pi/moments/variance_grad/range/startConst*
value	B : *;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients/pi/moments/variance_grad/range/deltaConst*
value	B :*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments/variance_grad/rangeRange.gradients/pi/moments/variance_grad/range/start'gradients/pi/moments/variance_grad/Size.gradients/pi/moments/variance_grad/range/delta*

Tidx0*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
_output_shapes
:
�
-gradients/pi/moments/variance_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape
�
'gradients/pi/moments/variance_grad/FillFill*gradients/pi/moments/variance_grad/Shape_1-gradients/pi/moments/variance_grad/Fill/value*
T0*

index_type0*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
_output_shapes
:
�
0gradients/pi/moments/variance_grad/DynamicStitchDynamicStitch(gradients/pi/moments/variance_grad/range&gradients/pi/moments/variance_grad/mod(gradients/pi/moments/variance_grad/Shape'gradients/pi/moments/variance_grad/Fill*
T0*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
N*
_output_shapes
:
�
,gradients/pi/moments/variance_grad/Maximum/yConst*
value	B :*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients/pi/moments/variance_grad/MaximumMaximum0gradients/pi/moments/variance_grad/DynamicStitch,gradients/pi/moments/variance_grad/Maximum/y*
_output_shapes
:*
T0*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape
�
+gradients/pi/moments/variance_grad/floordivFloorDiv(gradients/pi/moments/variance_grad/Shape*gradients/pi/moments/variance_grad/Maximum*
T0*;
_class1
/-loc:@gradients/pi/moments/variance_grad/Shape*
_output_shapes
:
�
*gradients/pi/moments/variance_grad/ReshapeReshape.gradients/pi/add_grad/tuple/control_dependency0gradients/pi/moments/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
'gradients/pi/moments/variance_grad/TileTile*gradients/pi/moments/variance_grad/Reshape+gradients/pi/moments/variance_grad/floordiv*

Tmultiples0*
T0*#
_output_shapes
:�
m
(gradients/pi/moments/variance_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �A
�
*gradients/pi/moments/variance_grad/truedivRealDiv'gradients/pi/moments/variance_grad/Tile(gradients/pi/moments/variance_grad/Const*#
_output_shapes
:�*
T0
r
gradients/pi/sub_1_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
t
gradients/pi/sub_1_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
-gradients/pi/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/sub_1_grad/Shapegradients/pi/sub_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients/pi/sub_1_grad/SumSum2gradients/pi/mul_1_grad/tuple/control_dependency_1-gradients/pi/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
gradients/pi/sub_1_grad/ReshapeReshapegradients/pi/sub_1_grad/Sumgradients/pi/sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/sub_1_grad/Sum_1Sum2gradients/pi/mul_1_grad/tuple/control_dependency_1/gradients/pi/sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
g
gradients/pi/sub_1_grad/NegNeggradients/pi/sub_1_grad/Sum_1*
T0*
_output_shapes	
:�
�
!gradients/pi/sub_1_grad/Reshape_1Reshapegradients/pi/sub_1_grad/Neggradients/pi/sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients/pi/sub_1_grad/tuple/group_depsNoOp ^gradients/pi/sub_1_grad/Reshape"^gradients/pi/sub_1_grad/Reshape_1
�
0gradients/pi/sub_1_grad/tuple/control_dependencyIdentitygradients/pi/sub_1_grad/Reshape)^gradients/pi/sub_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/sub_1_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/sub_1_grad/tuple/control_dependency_1Identity!gradients/pi/sub_1_grad/Reshape_1)^gradients/pi/sub_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/sub_1_grad/Reshape_1*#
_output_shapes
:�
r
gradients/pi/add_2_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
b
gradients/pi/add_2_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
-gradients/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/add_2_grad/Shapegradients/pi/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/pi/add_2_grad/SumSum!gradients/pi/Sqrt_1_grad/SqrtGrad-gradients/pi/add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
gradients/pi/add_2_grad/ReshapeReshapegradients/pi/add_2_grad/Sumgradients/pi/add_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients/pi/add_2_grad/Sum_1Sum!gradients/pi/Sqrt_1_grad/SqrtGrad/gradients/pi/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
!gradients/pi/add_2_grad/Reshape_1Reshapegradients/pi/add_2_grad/Sum_1gradients/pi/add_2_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
v
(gradients/pi/add_2_grad/tuple/group_depsNoOp ^gradients/pi/add_2_grad/Reshape"^gradients/pi/add_2_grad/Reshape_1
�
0gradients/pi/add_2_grad/tuple/control_dependencyIdentitygradients/pi/add_2_grad/Reshape)^gradients/pi/add_2_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/pi/add_2_grad/Reshape*#
_output_shapes
:�
�
2gradients/pi/add_2_grad/tuple/control_dependency_1Identity!gradients/pi/add_2_grad/Reshape_1)^gradients/pi/add_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/pi/add_2_grad/Reshape_1*
_output_shapes
: 
{
&gradients/pi/moments_2/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
%gradients/pi/moments_2/mean_grad/SizeConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
$gradients/pi/moments_2/mean_grad/addAdd#pi/moments_2/mean/reduction_indices%gradients/pi/moments_2/mean_grad/Size*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape
�
$gradients/pi/moments_2/mean_grad/modFloorMod$gradients/pi/moments_2/mean_grad/add%gradients/pi/moments_2/mean_grad/Size*
T0*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_2/mean_grad/Shape_1Const*
valueB:*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
:
�
,gradients/pi/moments_2/mean_grad/range/startConst*
value	B : *9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients/pi/moments_2/mean_grad/range/deltaConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients/pi/moments_2/mean_grad/rangeRange,gradients/pi/moments_2/mean_grad/range/start%gradients/pi/moments_2/mean_grad/Size,gradients/pi/moments_2/mean_grad/range/delta*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
+gradients/pi/moments_2/mean_grad/Fill/valueConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
%gradients/pi/moments_2/mean_grad/FillFill(gradients/pi/moments_2/mean_grad/Shape_1+gradients/pi/moments_2/mean_grad/Fill/value*
T0*

index_type0*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
.gradients/pi/moments_2/mean_grad/DynamicStitchDynamicStitch&gradients/pi/moments_2/mean_grad/range$gradients/pi/moments_2/mean_grad/mod&gradients/pi/moments_2/mean_grad/Shape%gradients/pi/moments_2/mean_grad/Fill*
T0*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
N*
_output_shapes
:
�
*gradients/pi/moments_2/mean_grad/Maximum/yConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_2/mean_grad/MaximumMaximum.gradients/pi/moments_2/mean_grad/DynamicStitch*gradients/pi/moments_2/mean_grad/Maximum/y*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape
�
)gradients/pi/moments_2/mean_grad/floordivFloorDiv&gradients/pi/moments_2/mean_grad/Shape(gradients/pi/moments_2/mean_grad/Maximum*
T0*9
_class/
-+loc:@gradients/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_2/mean_grad/ReshapeReshape2gradients/pi/sub_2_grad/tuple/control_dependency_1.gradients/pi/moments_2/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
%gradients/pi/moments_2/mean_grad/TileTile(gradients/pi/moments_2/mean_grad/Reshape)gradients/pi/moments_2/mean_grad/floordiv*#
_output_shapes
:�*

Tmultiples0*
T0
k
&gradients/pi/moments_2/mean_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_2/mean_grad/truedivRealDiv%gradients/pi/moments_2/mean_grad/Tile&gradients/pi/moments_2/mean_grad/Const*#
_output_shapes
:�*
T0
�
1gradients/pi/moments/SquaredDifference_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
3gradients/pi/moments/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Agradients/pi/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs1gradients/pi/moments/SquaredDifference_grad/Shape3gradients/pi/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
2gradients/pi/moments/SquaredDifference_grad/scalarConst+^gradients/pi/moments/variance_grad/truediv*
dtype0*
_output_shapes
: *
valueB
 *   @
�
/gradients/pi/moments/SquaredDifference_grad/MulMul2gradients/pi/moments/SquaredDifference_grad/scalar*gradients/pi/moments/variance_grad/truediv*
T0*#
_output_shapes
:�
�
/gradients/pi/moments/SquaredDifference_grad/subSubpi/dense/Relupi/moments/StopGradient+^gradients/pi/moments/variance_grad/truediv*
T0*#
_output_shapes
:�
�
1gradients/pi/moments/SquaredDifference_grad/mul_1Mul/gradients/pi/moments/SquaredDifference_grad/Mul/gradients/pi/moments/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
/gradients/pi/moments/SquaredDifference_grad/SumSum1gradients/pi/moments/SquaredDifference_grad/mul_1Agradients/pi/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
3gradients/pi/moments/SquaredDifference_grad/ReshapeReshape/gradients/pi/moments/SquaredDifference_grad/Sum1gradients/pi/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
1gradients/pi/moments/SquaredDifference_grad/Sum_1Sum1gradients/pi/moments/SquaredDifference_grad/mul_1Cgradients/pi/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
5gradients/pi/moments/SquaredDifference_grad/Reshape_1Reshape1gradients/pi/moments/SquaredDifference_grad/Sum_13gradients/pi/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
/gradients/pi/moments/SquaredDifference_grad/NegNeg5gradients/pi/moments/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
<gradients/pi/moments/SquaredDifference_grad/tuple/group_depsNoOp0^gradients/pi/moments/SquaredDifference_grad/Neg4^gradients/pi/moments/SquaredDifference_grad/Reshape
�
Dgradients/pi/moments/SquaredDifference_grad/tuple/control_dependencyIdentity3gradients/pi/moments/SquaredDifference_grad/Reshape=^gradients/pi/moments/SquaredDifference_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/pi/moments/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Fgradients/pi/moments/SquaredDifference_grad/tuple/control_dependency_1Identity/gradients/pi/moments/SquaredDifference_grad/Neg=^gradients/pi/moments/SquaredDifference_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/pi/moments/SquaredDifference_grad/Neg*#
_output_shapes
:�

*gradients/pi/moments_1/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
)gradients/pi/moments_1/variance_grad/SizeConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_1/variance_grad/addAdd'pi/moments_1/variance/reduction_indices)gradients/pi/moments_1/variance_grad/Size*
T0*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_1/variance_grad/modFloorMod(gradients/pi/moments_1/variance_grad/add)gradients/pi/moments_1/variance_grad/Size*
T0*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
,gradients/pi/moments_1/variance_grad/Shape_1Const*
valueB:*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
:
�
0gradients/pi/moments_1/variance_grad/range/startConst*
value	B : *=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
0gradients/pi/moments_1/variance_grad/range/deltaConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients/pi/moments_1/variance_grad/rangeRange0gradients/pi/moments_1/variance_grad/range/start)gradients/pi/moments_1/variance_grad/Size0gradients/pi/moments_1/variance_grad/range/delta*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
_output_shapes
:*

Tidx0
�
/gradients/pi/moments_1/variance_grad/Fill/valueConst*
value	B :*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
)gradients/pi/moments_1/variance_grad/FillFill,gradients/pi/moments_1/variance_grad/Shape_1/gradients/pi/moments_1/variance_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
2gradients/pi/moments_1/variance_grad/DynamicStitchDynamicStitch*gradients/pi/moments_1/variance_grad/range(gradients/pi/moments_1/variance_grad/mod*gradients/pi/moments_1/variance_grad/Shape)gradients/pi/moments_1/variance_grad/Fill*
T0*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
N*
_output_shapes
:
�
.gradients/pi/moments_1/variance_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape
�
,gradients/pi/moments_1/variance_grad/MaximumMaximum2gradients/pi/moments_1/variance_grad/DynamicStitch.gradients/pi/moments_1/variance_grad/Maximum/y*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape
�
-gradients/pi/moments_1/variance_grad/floordivFloorDiv*gradients/pi/moments_1/variance_grad/Shape,gradients/pi/moments_1/variance_grad/Maximum*
T0*=
_class3
1/loc:@gradients/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
,gradients/pi/moments_1/variance_grad/ReshapeReshape0gradients/pi/add_2_grad/tuple/control_dependency2gradients/pi/moments_1/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
)gradients/pi/moments_1/variance_grad/TileTile,gradients/pi/moments_1/variance_grad/Reshape-gradients/pi/moments_1/variance_grad/floordiv*

Tmultiples0*
T0*#
_output_shapes
:�
o
*gradients/pi/moments_1/variance_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �A
�
,gradients/pi/moments_1/variance_grad/truedivRealDiv)gradients/pi/moments_1/variance_grad/Tile*gradients/pi/moments_1/variance_grad/Const*#
_output_shapes
:�*
T0
�
gradients/AddN_2AddN0gradients/pi/sub_2_grad/tuple/control_dependencyFgradients/pi/moments_2/SquaredDifference_grad/tuple/control_dependency(gradients/pi/moments_2/mean_grad/truediv*
T0*2
_class(
&$loc:@gradients/pi/sub_2_grad/Reshape*
N*#
_output_shapes
:�
�
'gradients/pi/dense_2/Relu_grad/ReluGradReluGradgradients/AddN_2pi/dense_2/Relu*
T0*#
_output_shapes
:�
�
3gradients/pi/moments_1/SquaredDifference_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
�
5gradients/pi/moments_1/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Cgradients/pi/moments_1/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/pi/moments_1/SquaredDifference_grad/Shape5gradients/pi/moments_1/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
4gradients/pi/moments_1/SquaredDifference_grad/scalarConst-^gradients/pi/moments_1/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
1gradients/pi/moments_1/SquaredDifference_grad/MulMul4gradients/pi/moments_1/SquaredDifference_grad/scalar,gradients/pi/moments_1/variance_grad/truediv*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_1/SquaredDifference_grad/subSubpi/dense_1/Relupi/moments_1/StopGradient-^gradients/pi/moments_1/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients/pi/moments_1/SquaredDifference_grad/mul_1Mul1gradients/pi/moments_1/SquaredDifference_grad/Mul1gradients/pi/moments_1/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
1gradients/pi/moments_1/SquaredDifference_grad/SumSum3gradients/pi/moments_1/SquaredDifference_grad/mul_1Cgradients/pi/moments_1/SquaredDifference_grad/BroadcastGradientArgs*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
5gradients/pi/moments_1/SquaredDifference_grad/ReshapeReshape1gradients/pi/moments_1/SquaredDifference_grad/Sum3gradients/pi/moments_1/SquaredDifference_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
3gradients/pi/moments_1/SquaredDifference_grad/Sum_1Sum3gradients/pi/moments_1/SquaredDifference_grad/mul_1Egradients/pi/moments_1/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes	
:�*
	keep_dims( *

Tidx0*
T0
�
7gradients/pi/moments_1/SquaredDifference_grad/Reshape_1Reshape3gradients/pi/moments_1/SquaredDifference_grad/Sum_15gradients/pi/moments_1/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
1gradients/pi/moments_1/SquaredDifference_grad/NegNeg7gradients/pi/moments_1/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
>gradients/pi/moments_1/SquaredDifference_grad/tuple/group_depsNoOp2^gradients/pi/moments_1/SquaredDifference_grad/Neg6^gradients/pi/moments_1/SquaredDifference_grad/Reshape
�
Fgradients/pi/moments_1/SquaredDifference_grad/tuple/control_dependencyIdentity5gradients/pi/moments_1/SquaredDifference_grad/Reshape?^gradients/pi/moments_1/SquaredDifference_grad/tuple/group_deps*#
_output_shapes
:�*
T0*H
_class>
<:loc:@gradients/pi/moments_1/SquaredDifference_grad/Reshape
�
Hgradients/pi/moments_1/SquaredDifference_grad/tuple/control_dependency_1Identity1gradients/pi/moments_1/SquaredDifference_grad/Neg?^gradients/pi/moments_1/SquaredDifference_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/pi/moments_1/SquaredDifference_grad/Neg*#
_output_shapes
:�
�
-gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
2gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense_2/Relu_grad/ReluGrad
�
:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense_2/Relu_grad/ReluGrad3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_2/Relu_grad/ReluGrad*#
_output_shapes
:�
�
<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*@
_class6
42loc:@gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad
y
$gradients/pi/moments/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
#gradients/pi/moments/mean_grad/SizeConst*
value	B :*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
"gradients/pi/moments/mean_grad/addAdd!pi/moments/mean/reduction_indices#gradients/pi/moments/mean_grad/Size*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape
�
"gradients/pi/moments/mean_grad/modFloorMod"gradients/pi/moments/mean_grad/add#gradients/pi/moments/mean_grad/Size*
T0*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
_output_shapes
:
�
&gradients/pi/moments/mean_grad/Shape_1Const*
valueB:*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
:
�
*gradients/pi/moments/mean_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape
�
*gradients/pi/moments/mean_grad/range/deltaConst*
value	B :*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
$gradients/pi/moments/mean_grad/rangeRange*gradients/pi/moments/mean_grad/range/start#gradients/pi/moments/mean_grad/Size*gradients/pi/moments/mean_grad/range/delta*

Tidx0*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
_output_shapes
:
�
)gradients/pi/moments/mean_grad/Fill/valueConst*
value	B :*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
#gradients/pi/moments/mean_grad/FillFill&gradients/pi/moments/mean_grad/Shape_1)gradients/pi/moments/mean_grad/Fill/value*
T0*

index_type0*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
_output_shapes
:
�
,gradients/pi/moments/mean_grad/DynamicStitchDynamicStitch$gradients/pi/moments/mean_grad/range"gradients/pi/moments/mean_grad/mod$gradients/pi/moments/mean_grad/Shape#gradients/pi/moments/mean_grad/Fill*
T0*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
N*
_output_shapes
:
�
(gradients/pi/moments/mean_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape
�
&gradients/pi/moments/mean_grad/MaximumMaximum,gradients/pi/moments/mean_grad/DynamicStitch(gradients/pi/moments/mean_grad/Maximum/y*
T0*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
_output_shapes
:
�
'gradients/pi/moments/mean_grad/floordivFloorDiv$gradients/pi/moments/mean_grad/Shape&gradients/pi/moments/mean_grad/Maximum*
T0*7
_class-
+)loc:@gradients/pi/moments/mean_grad/Shape*
_output_shapes
:
�
&gradients/pi/moments/mean_grad/ReshapeReshape0gradients/pi/sub_grad/tuple/control_dependency_1,gradients/pi/moments/mean_grad/DynamicStitch*#
_output_shapes
:�*
T0*
Tshape0
�
#gradients/pi/moments/mean_grad/TileTile&gradients/pi/moments/mean_grad/Reshape'gradients/pi/moments/mean_grad/floordiv*#
_output_shapes
:�*

Tmultiples0*
T0
i
$gradients/pi/moments/mean_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
&gradients/pi/moments/mean_grad/truedivRealDiv#gradients/pi/moments/mean_grad/Tile$gradients/pi/moments/mean_grad/Const*
T0*#
_output_shapes
:�
z
)gradients/pi/dense_2/Tensordot_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
�
+gradients/pi/dense_2/Tensordot_grad/ReshapeReshape:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency)gradients/pi/dense_2/Tensordot_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
gradients/AddN_3AddN.gradients/pi/sub_grad/tuple/control_dependencyDgradients/pi/moments/SquaredDifference_grad/tuple/control_dependency&gradients/pi/moments/mean_grad/truediv*
T0*0
_class&
$"loc:@gradients/pi/sub_grad/Reshape*
N*#
_output_shapes
:�
�
%gradients/pi/dense/Relu_grad/ReluGradReluGradgradients/AddN_3pi/dense/Relu*#
_output_shapes
:�*
T0
{
&gradients/pi/moments_1/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
%gradients/pi/moments_1/mean_grad/SizeConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
$gradients/pi/moments_1/mean_grad/addAdd#pi/moments_1/mean/reduction_indices%gradients/pi/moments_1/mean_grad/Size*
T0*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
$gradients/pi/moments_1/mean_grad/modFloorMod$gradients/pi/moments_1/mean_grad/add%gradients/pi/moments_1/mean_grad/Size*
T0*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
(gradients/pi/moments_1/mean_grad/Shape_1Const*
valueB:*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
:
�
,gradients/pi/moments_1/mean_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape
�
,gradients/pi/moments_1/mean_grad/range/deltaConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients/pi/moments_1/mean_grad/rangeRange,gradients/pi/moments_1/mean_grad/range/start%gradients/pi/moments_1/mean_grad/Size,gradients/pi/moments_1/mean_grad/range/delta*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
+gradients/pi/moments_1/mean_grad/Fill/valueConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
%gradients/pi/moments_1/mean_grad/FillFill(gradients/pi/moments_1/mean_grad/Shape_1+gradients/pi/moments_1/mean_grad/Fill/value*
T0*

index_type0*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
.gradients/pi/moments_1/mean_grad/DynamicStitchDynamicStitch&gradients/pi/moments_1/mean_grad/range$gradients/pi/moments_1/mean_grad/mod&gradients/pi/moments_1/mean_grad/Shape%gradients/pi/moments_1/mean_grad/Fill*
N*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape
�
*gradients/pi/moments_1/mean_grad/Maximum/yConst*
value	B :*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients/pi/moments_1/mean_grad/MaximumMaximum.gradients/pi/moments_1/mean_grad/DynamicStitch*gradients/pi/moments_1/mean_grad/Maximum/y*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape
�
)gradients/pi/moments_1/mean_grad/floordivFloorDiv&gradients/pi/moments_1/mean_grad/Shape(gradients/pi/moments_1/mean_grad/Maximum*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/pi/moments_1/mean_grad/Shape
�
(gradients/pi/moments_1/mean_grad/ReshapeReshape2gradients/pi/sub_1_grad/tuple/control_dependency_1.gradients/pi/moments_1/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
%gradients/pi/moments_1/mean_grad/TileTile(gradients/pi/moments_1/mean_grad/Reshape)gradients/pi/moments_1/mean_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
k
&gradients/pi/moments_1/mean_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �A
�
(gradients/pi/moments_1/mean_grad/truedivRealDiv%gradients/pi/moments_1/mean_grad/Tile&gradients/pi/moments_1/mean_grad/Const*
T0*#
_output_shapes
:�
�
1gradients/pi/dense_2/Tensordot/MatMul_grad/MatMulMatMul+gradients/pi/dense_2/Tensordot_grad/Reshapepi/dense_2/Tensordot/Reshape_1*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b(
�
3gradients/pi/dense_2/Tensordot/MatMul_grad/MatMul_1MatMulpi/dense_2/Tensordot/Reshape+gradients/pi/dense_2/Tensordot_grad/Reshape*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
;gradients/pi/dense_2/Tensordot/MatMul_grad/tuple/group_depsNoOp2^gradients/pi/dense_2/Tensordot/MatMul_grad/MatMul4^gradients/pi/dense_2/Tensordot/MatMul_grad/MatMul_1
�
Cgradients/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependencyIdentity1gradients/pi/dense_2/Tensordot/MatMul_grad/MatMul<^gradients/pi/dense_2/Tensordot/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/pi/dense_2/Tensordot/MatMul_grad/MatMul*
_output_shapes
:	�
�
Egradients/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependency_1Identity3gradients/pi/dense_2/Tensordot/MatMul_grad/MatMul_1<^gradients/pi/dense_2/Tensordot/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/pi/dense_2/Tensordot/MatMul_grad/MatMul_1*
_output_shapes

:
�
+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad&^gradients/pi/dense/Relu_grad/ReluGrad
�
8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/pi/dense/Relu_grad/ReluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/pi/dense/Relu_grad/ReluGrad*#
_output_shapes
:�
�
:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
gradients/AddN_4AddN0gradients/pi/sub_1_grad/tuple/control_dependencyFgradients/pi/moments_1/SquaredDifference_grad/tuple/control_dependency(gradients/pi/moments_1/mean_grad/truediv*
T0*2
_class(
&$loc:@gradients/pi/sub_1_grad/Reshape*
N*#
_output_shapes
:�
�
'gradients/pi/dense_1/Relu_grad/ReluGradReluGradgradients/AddN_4pi/dense_1/Relu*
T0*#
_output_shapes
:�
�
1gradients/pi/dense_2/Tensordot/Reshape_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
3gradients/pi/dense_2/Tensordot/Reshape_grad/ReshapeReshapeCgradients/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependency1gradients/pi/dense_2/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients/pi/dense_2/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
5gradients/pi/dense_2/Tensordot/Reshape_1_grad/ReshapeReshapeEgradients/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependency_13gradients/pi/dense_2/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:
x
'gradients/pi/dense/Tensordot_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"�      
�
)gradients/pi/dense/Tensordot_grad/ReshapeReshape8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency'gradients/pi/dense/Tensordot_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense_1/Relu_grad/ReluGrad
�
:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/Relu_grad/ReluGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/Relu_grad/ReluGrad*#
_output_shapes
:�
�
<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
?gradients/pi/dense_2/Tensordot/transpose_grad/InvertPermutationInvertPermutation#pi/dense_2/Tensordot/transpose/perm*
T0*
_output_shapes
:
�
7gradients/pi/dense_2/Tensordot/transpose_grad/transpose	Transpose3gradients/pi/dense_2/Tensordot/Reshape_grad/Reshape?gradients/pi/dense_2/Tensordot/transpose_grad/InvertPermutation*#
_output_shapes
:�*
Tperm0*
T0
�
Agradients/pi/dense_2/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation%pi/dense_2/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
�
9gradients/pi/dense_2/Tensordot/transpose_1_grad/transpose	Transpose5gradients/pi/dense_2/Tensordot/Reshape_1_grad/ReshapeAgradients/pi/dense_2/Tensordot/transpose_1_grad/InvertPermutation*
T0*
_output_shapes

:*
Tperm0
�
/gradients/pi/dense/Tensordot/MatMul_grad/MatMulMatMul)gradients/pi/dense/Tensordot_grad/Reshapepi/dense/Tensordot/Reshape_1*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b(
�
1gradients/pi/dense/Tensordot/MatMul_grad/MatMul_1MatMulpi/dense/Tensordot/Reshape)gradients/pi/dense/Tensordot_grad/Reshape*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
9gradients/pi/dense/Tensordot/MatMul_grad/tuple/group_depsNoOp0^gradients/pi/dense/Tensordot/MatMul_grad/MatMul2^gradients/pi/dense/Tensordot/MatMul_grad/MatMul_1
�
Agradients/pi/dense/Tensordot/MatMul_grad/tuple/control_dependencyIdentity/gradients/pi/dense/Tensordot/MatMul_grad/MatMul:^gradients/pi/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/pi/dense/Tensordot/MatMul_grad/MatMul*
_output_shapes
:	�
�
Cgradients/pi/dense/Tensordot/MatMul_grad/tuple/control_dependency_1Identity1gradients/pi/dense/Tensordot/MatMul_grad/MatMul_1:^gradients/pi/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/pi/dense/Tensordot/MatMul_grad/MatMul_1*
_output_shapes

:
z
)gradients/pi/dense_1/Tensordot_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"�      
�
+gradients/pi/dense_1/Tensordot_grad/ReshapeReshape:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency)gradients/pi/dense_1/Tensordot_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
/gradients/pi/dense/Tensordot/Reshape_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
1gradients/pi/dense/Tensordot/Reshape_grad/ReshapeReshapeAgradients/pi/dense/Tensordot/MatMul_grad/tuple/control_dependency/gradients/pi/dense/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
1gradients/pi/dense/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
3gradients/pi/dense/Tensordot/Reshape_1_grad/ReshapeReshapeCgradients/pi/dense/Tensordot/MatMul_grad/tuple/control_dependency_11gradients/pi/dense/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
1gradients/pi/dense_1/Tensordot/MatMul_grad/MatMulMatMul+gradients/pi/dense_1/Tensordot_grad/Reshapepi/dense_1/Tensordot/Reshape_1*
transpose_b(*
T0*
_output_shapes
:	�*
transpose_a( 
�
3gradients/pi/dense_1/Tensordot/MatMul_grad/MatMul_1MatMulpi/dense_1/Tensordot/Reshape+gradients/pi/dense_1/Tensordot_grad/Reshape*
transpose_b( *
T0*
_output_shapes

:*
transpose_a(
�
;gradients/pi/dense_1/Tensordot/MatMul_grad/tuple/group_depsNoOp2^gradients/pi/dense_1/Tensordot/MatMul_grad/MatMul4^gradients/pi/dense_1/Tensordot/MatMul_grad/MatMul_1
�
Cgradients/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependencyIdentity1gradients/pi/dense_1/Tensordot/MatMul_grad/MatMul<^gradients/pi/dense_1/Tensordot/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/pi/dense_1/Tensordot/MatMul_grad/MatMul*
_output_shapes
:	�
�
Egradients/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependency_1Identity3gradients/pi/dense_1/Tensordot/MatMul_grad/MatMul_1<^gradients/pi/dense_1/Tensordot/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/pi/dense_1/Tensordot/MatMul_grad/MatMul_1*
_output_shapes

:
�
=gradients/pi/dense/Tensordot/transpose_grad/InvertPermutationInvertPermutation!pi/dense/Tensordot/transpose/perm*
T0*
_output_shapes
:
�
5gradients/pi/dense/Tensordot/transpose_grad/transpose	Transpose1gradients/pi/dense/Tensordot/Reshape_grad/Reshape=gradients/pi/dense/Tensordot/transpose_grad/InvertPermutation*
T0*#
_output_shapes
:�*
Tperm0
�
?gradients/pi/dense/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation#pi/dense/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
�
7gradients/pi/dense/Tensordot/transpose_1_grad/transpose	Transpose3gradients/pi/dense/Tensordot/Reshape_1_grad/Reshape?gradients/pi/dense/Tensordot/transpose_1_grad/InvertPermutation*
T0*
_output_shapes

:*
Tperm0
�
1gradients/pi/dense_1/Tensordot/Reshape_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
3gradients/pi/dense_1/Tensordot/Reshape_grad/ReshapeReshapeCgradients/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependency1gradients/pi/dense_1/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients/pi/dense_1/Tensordot/Reshape_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
5gradients/pi/dense_1/Tensordot/Reshape_1_grad/ReshapeReshapeEgradients/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependency_13gradients/pi/dense_1/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
?gradients/pi/dense_1/Tensordot/transpose_grad/InvertPermutationInvertPermutation#pi/dense_1/Tensordot/transpose/perm*
T0*
_output_shapes
:
�
7gradients/pi/dense_1/Tensordot/transpose_grad/transpose	Transpose3gradients/pi/dense_1/Tensordot/Reshape_grad/Reshape?gradients/pi/dense_1/Tensordot/transpose_grad/InvertPermutation*
Tperm0*
T0*#
_output_shapes
:�
�
Agradients/pi/dense_1/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation%pi/dense_1/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
�
9gradients/pi/dense_1/Tensordot/transpose_1_grad/transpose	Transpose5gradients/pi/dense_1/Tensordot/Reshape_1_grad/ReshapeAgradients/pi/dense_1/Tensordot/transpose_1_grad/InvertPermutation*
T0*
_output_shapes

:*
Tperm0
�
gradients/AddN_5AddN2gradients/pi/add_9_grad/tuple/control_dependency_12gradients/pi/add_6_grad/tuple/control_dependency_17gradients/pi/dense_2/Tensordot/transpose_grad/transpose5gradients/pi/dense/Tensordot/transpose_grad/transpose7gradients/pi/dense_1/Tensordot/transpose_grad/transpose*
N*#
_output_shapes
:�*
T0*2
_class(
&$loc:@gradients/pi/sub_4_grad/Reshape
x
gradients/pi/Reshape_grad/ShapeConst*%
valueB"   2         *
dtype0*
_output_shapes
:
�
!gradients/pi/Reshape_grad/ReshapeReshapegradients/AddN_5gradients/pi/Reshape_grad/Shape*
T0*
Tshape0*&
_output_shapes
:2
�
(gradients/pi/conv2d_1/Relu_grad/ReluGradReluGrad!gradients/pi/Reshape_grad/Reshapepi/conv2d_1/Relu*
T0*&
_output_shapes
:2
�
.gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/pi/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
3gradients/pi/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad)^gradients/pi/conv2d_1/Relu_grad/ReluGrad
�
;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/pi/conv2d_1/Relu_grad/ReluGrad4^gradients/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/pi/conv2d_1/Relu_grad/ReluGrad*&
_output_shapes
:2
�
=gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad4^gradients/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/pi/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
(gradients/pi/conv2d_1/Conv2D_grad/ShapeNShapeNpi/conv2d/Relu!pi/conv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
�
5gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients/pi/conv2d_1/Conv2D_grad/ShapeN!pi/conv2d_1/Conv2D/ReadVariableOp;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:2*
	dilations

�
6gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d/Relu*gradients/pi/conv2d_1/Conv2D_grad/ShapeN:1;gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
2gradients/pi/conv2d_1/Conv2D_grad/tuple/group_depsNoOp7^gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter6^gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
�
:gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity5gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput3^gradients/pi/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:2
�
<gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity6gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter3^gradients/pi/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*I
_class?
=;loc:@gradients/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
�
&gradients/pi/conv2d/Relu_grad/ReluGradReluGrad:gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependencypi/conv2d/Relu*
T0*&
_output_shapes
:2
�
,gradients/pi/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/pi/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
1gradients/pi/conv2d/BiasAdd_grad/tuple/group_depsNoOp-^gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad'^gradients/pi/conv2d/Relu_grad/ReluGrad
�
9gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/pi/conv2d/Relu_grad/ReluGrad2^gradients/pi/conv2d/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/pi/conv2d/Relu_grad/ReluGrad*&
_output_shapes
:2
�
;gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad2^gradients/pi/conv2d/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/pi/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
&gradients/pi/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderpi/conv2d/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
�
3gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput&gradients/pi/conv2d/Conv2D_grad/ShapeNpi/conv2d/Conv2D/ReadVariableOp9gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:2*
	dilations

�
4gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholder(gradients/pi/conv2d/Conv2D_grad/ShapeN:19gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0
�
0gradients/pi/conv2d/Conv2D_grad/tuple/group_depsNoOp5^gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter4^gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput
�
8gradients/pi/conv2d/Conv2D_grad/tuple/control_dependencyIdentity3gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput1^gradients/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:2
�
:gradients/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Identity4gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
`
Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
ReshapeReshape:gradients/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Reshape/shape*
_output_shapes
:0*
T0*
Tshape0
b
Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
	Reshape_1Reshape;gradients/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_2/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
	Reshape_2Reshape<gradients/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes	
:�	
b
Reshape_3/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
	Reshape_3Reshape=gradients/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
	Reshape_4Reshape7gradients/pi/dense/Tensordot/transpose_1_grad/transposeReshape_4/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_5/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
	Reshape_5Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_6/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
	Reshape_6Reshape9gradients/pi/dense_1/Tensordot/transpose_1_grad/transposeReshape_6/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_7/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
	Reshape_7Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_7/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_8/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
	Reshape_8Reshape9gradients/pi/dense_2/Tensordot/transpose_1_grad/transposeReshape_8/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_9/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
	Reshape_9Reshape<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_9/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_10/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_10Reshape;gradients/pi/dense_3/MatMul_grad/tuple/control_dependency_1Reshape_10/shape*
T0*
Tshape0*
_output_shapes

:��
c
Reshape_11/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_11Reshape<gradients/pi/dense_3/BiasAdd_grad/tuple/control_dependency_1Reshape_11/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_12/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_12Reshape;gradients/pi/dense_4/MatMul_grad/tuple/control_dependency_1Reshape_12/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_13/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_13Reshape<gradients/pi/dense_4/BiasAdd_grad/tuple/control_dependency_1Reshape_13/shape*
_output_shapes
:*
T0*
Tshape0
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5	Reshape_6	Reshape_7	Reshape_8	Reshape_9
Reshape_10
Reshape_11
Reshape_12
Reshape_13concat/axis*
T0*
N*
_output_shapes

:ޑ*

Tidx0
r
EagerPyFuncEagerPyFuncconcat*
Tout
2*
token
pyfunc_0*
_output_shapes

:ޑ*
Tin
2
�
Const_5Const*M
valueDBB"80      �     @     @     @      �           *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
splitSplitVEagerPyFuncConst_5split/split_dim*
T0*p
_output_shapes^
\:0::�	::�::�::�::��:�:�:*
	num_split*

Tlen0
i
Reshape_14/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
m

Reshape_14ReshapesplitReshape_14/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_15/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_15Reshapesplit:1Reshape_15/shape*
T0*
Tshape0*
_output_shapes
:
i
Reshape_16/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_16Reshapesplit:2Reshape_16/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_17/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_17Reshapesplit:3Reshape_17/shape*
_output_shapes
:*
T0*
Tshape0
a
Reshape_18/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
g

Reshape_18Reshapesplit:4Reshape_18/shape*
T0*
Tshape0*
_output_shapes

:
Z
Reshape_19/shapeConst*
dtype0*
_output_shapes
:*
valueB:
c

Reshape_19Reshapesplit:5Reshape_19/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_20/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
g

Reshape_20Reshapesplit:6Reshape_20/shape*
T0*
Tshape0*
_output_shapes

:
Z
Reshape_21/shapeConst*
dtype0*
_output_shapes
:*
valueB:
c

Reshape_21Reshapesplit:7Reshape_21/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_22/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
g

Reshape_22Reshapesplit:8Reshape_22/shape*
T0*
Tshape0*
_output_shapes

:
Z
Reshape_23/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_23Reshapesplit:9Reshape_23/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_24/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
j

Reshape_24Reshapesplit:10Reshape_24/shape*
T0*
Tshape0* 
_output_shapes
:
��
[
Reshape_25/shapeConst*
valueB:�*
dtype0*
_output_shapes
:
e

Reshape_25Reshapesplit:11Reshape_25/shape*
T0*
Tshape0*
_output_shapes	
:�
a
Reshape_26/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_26Reshapesplit:12Reshape_26/shape*
T0*
Tshape0*
_output_shapes
:	�
Z
Reshape_27/shapeConst*
valueB:*
dtype0*
_output_shapes
:
d

Reshape_27Reshapesplit:13Reshape_27/shape*
T0*
Tshape0*
_output_shapes
:
�
%beta1_power/Initializer/initial_valueConst*!
_class
loc:@pi/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
beta1_powerVarHandleOp*!
_class
loc:@pi/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namebeta1_power
�
,beta1_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
�
beta1_power/AssignAssignVariableOpbeta1_power%beta1_power/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0
�
beta1_power/Read/ReadVariableOpReadVariableOpbeta1_power*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
�
%beta2_power/Initializer/initial_valueConst*!
_class
loc:@pi/conv2d/bias*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
beta2_powerVarHandleOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_namebeta2_power*!
_class
loc:@pi/conv2d/bias
�
,beta2_power/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
�
beta2_power/AssignAssignVariableOpbeta2_power%beta2_power/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0
�
beta2_power/Read/ReadVariableOpReadVariableOpbeta2_power*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
�
'pi/conv2d/kernel/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
�
pi/conv2d/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/kernel/Adam*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:
�
6pi/conv2d/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
�
pi/conv2d/kernel/Adam/AssignAssignVariableOppi/conv2d/kernel/Adam'pi/conv2d/kernel/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d/kernel*
dtype0
�
)pi/conv2d/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:
�
)pi/conv2d/kernel/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
�
pi/conv2d/kernel/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_1*#
_class
loc:@pi/conv2d/kernel
�
8pi/conv2d/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam_1*#
_class
loc:@pi/conv2d/kernel*
_output_shapes
: 
�
pi/conv2d/kernel/Adam_1/AssignAssignVariableOppi/conv2d/kernel/Adam_1)pi/conv2d/kernel/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d/kernel*
dtype0
�
+pi/conv2d/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_1*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:
�
%pi/conv2d/bias/Adam/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/conv2d/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namepi/conv2d/bias/Adam*!
_class
loc:@pi/conv2d/bias*
	container *
shape:
�
4pi/conv2d/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
�
pi/conv2d/bias/Adam/AssignAssignVariableOppi/conv2d/bias/Adam%pi/conv2d/bias/Adam/Initializer/zeros*
dtype0*!
_class
loc:@pi/conv2d/bias
�
'pi/conv2d/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
�
'pi/conv2d/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/conv2d/bias/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_1*!
_class
loc:@pi/conv2d/bias*
	container 
�
6pi/conv2d/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_1*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
�
pi/conv2d/bias/Adam_1/AssignAssignVariableOppi/conv2d/bias/Adam_1'pi/conv2d/bias/Adam_1/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0
�
)pi/conv2d/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_1*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
�
9pi/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
/pi/conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    
�
)pi/conv2d_1/kernel/Adam/Initializer/zerosFill9pi/conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor/pi/conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
�
pi/conv2d_1/kernel/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_1/kernel/Adam*%
_class
loc:@pi/conv2d_1/kernel*
	container 
�
8pi/conv2d_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel
�
pi/conv2d_1/kernel/Adam/AssignAssignVariableOppi/conv2d_1/kernel/Adam)pi/conv2d_1/kernel/Adam/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
�
+pi/conv2d_1/kernel/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
�
;pi/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
1pi/conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
+pi/conv2d_1/kernel/Adam_1/Initializer/zerosFill;pi/conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor1pi/conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
�
pi/conv2d_1/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_1/kernel/Adam_1*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:
�
:pi/conv2d_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_1*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel
�
 pi/conv2d_1/kernel/Adam_1/AssignAssignVariableOppi/conv2d_1/kernel/Adam_1+pi/conv2d_1/kernel/Adam_1/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
�
-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_1*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
�
'pi/conv2d_1/bias/Adam/Initializer/zerosConst*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/conv2d_1/bias/AdamVarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d_1/bias/Adam*#
_class
loc:@pi/conv2d_1/bias
�
6pi/conv2d_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam*
_output_shapes
: *#
_class
loc:@pi/conv2d_1/bias
�
pi/conv2d_1/bias/Adam/AssignAssignVariableOppi/conv2d_1/bias/Adam'pi/conv2d_1/bias/Adam/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
�
)pi/conv2d_1/bias/Adam/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam*#
_class
loc:@pi/conv2d_1/bias*
dtype0*
_output_shapes
:
�
)pi/conv2d_1/bias/Adam_1/Initializer/zerosConst*#
_class
loc:@pi/conv2d_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/conv2d_1/bias/Adam_1VarHandleOp*(
shared_namepi/conv2d_1/bias/Adam_1*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
�
8pi/conv2d_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_1*
_output_shapes
: *#
_class
loc:@pi/conv2d_1/bias
�
pi/conv2d_1/bias/Adam_1/AssignAssignVariableOppi/conv2d_1/bias/Adam_1)pi/conv2d_1/bias/Adam_1/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
�
+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_1*#
_class
loc:@pi/conv2d_1/bias*
dtype0*
_output_shapes
:
�
&pi/dense/kernel/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense/kernel/AdamVarHandleOp*%
shared_namepi/dense/kernel/Adam*"
_class
loc:@pi/dense/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
5pi/dense/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
�
pi/dense/kernel/Adam/AssignAssignVariableOppi/dense/kernel/Adam&pi/dense/kernel/Adam/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
dtype0
�
(pi/dense/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense/kernel/Adam*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

:
�
(pi/dense/kernel/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namepi/dense/kernel/Adam_1*"
_class
loc:@pi/dense/kernel*
	container *
shape
:
�
7pi/dense/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam_1*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
�
pi/dense/kernel/Adam_1/AssignAssignVariableOppi/dense/kernel/Adam_1(pi/dense/kernel/Adam_1/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
dtype0
�
*pi/dense/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/dense/kernel/Adam_1*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

:
�
$pi/dense/bias/Adam/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense/bias/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *#
shared_namepi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
	container 
�
3pi/dense/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
pi/dense/bias/Adam/AssignAssignVariableOppi/dense/bias/Adam$pi/dense/bias/Adam/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0
�
&pi/dense/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense/bias/Adam* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:
�
&pi/dense/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense/bias/Adam_1VarHandleOp* 
_class
loc:@pi/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: *%
shared_namepi/dense/bias/Adam_1
�
5pi/dense/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
pi/dense/bias/Adam_1/AssignAssignVariableOppi/dense/bias/Adam_1&pi/dense/bias/Adam_1/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0
�
(pi/dense/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:
�
(pi/dense_1/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:*$
_class
loc:@pi/dense_1/kernel*
valueB*    
�
pi/dense_1/kernel/AdamVarHandleOp*'
shared_namepi/dense_1/kernel/Adam*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
7pi/dense_1/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel/Adam*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel
�
pi/dense_1/kernel/Adam/AssignAssignVariableOppi/dense_1/kernel/Adam(pi/dense_1/kernel/Adam/Initializer/zeros*$
_class
loc:@pi/dense_1/kernel*
dtype0
�
*pi/dense_1/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

:
�
*pi/dense_1/kernel/Adam_1/Initializer/zerosConst*$
_class
loc:@pi/dense_1/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense_1/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_namepi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:
�
9pi/dense_1/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
�
pi/dense_1/kernel/Adam_1/AssignAssignVariableOppi/dense_1/kernel/Adam_1*pi/dense_1/kernel/Adam_1/Initializer/zeros*$
_class
loc:@pi/dense_1/kernel*
dtype0
�
,pi/dense_1/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_1*
dtype0*
_output_shapes

:*$
_class
loc:@pi/dense_1/kernel
�
&pi/dense_1/bias/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_1/bias/AdamVarHandleOp*"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: *%
shared_namepi/dense_1/bias/Adam
�
5pi/dense_1/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias/Adam*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 
�
pi/dense_1/bias/Adam/AssignAssignVariableOppi/dense_1/bias/Adam&pi/dense_1/bias/Adam/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
dtype0
�
(pi/dense_1/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
�
(pi/dense_1/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_1/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namepi/dense_1/bias/Adam_1*"
_class
loc:@pi/dense_1/bias*
	container *
shape:
�
7pi/dense_1/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias/Adam_1*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 
�
pi/dense_1/bias/Adam_1/AssignAssignVariableOppi/dense_1/bias/Adam_1(pi/dense_1/bias/Adam_1/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
dtype0
�
*pi/dense_1/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_1*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
�
(pi/dense_2/kernel/Adam/Initializer/zerosConst*$
_class
loc:@pi/dense_2/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense_2/kernel/AdamVarHandleOp*'
shared_namepi/dense_2/kernel/Adam*$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
7pi/dense_2/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/kernel/Adam*
_output_shapes
: *$
_class
loc:@pi/dense_2/kernel
�
pi/dense_2/kernel/Adam/AssignAssignVariableOppi/dense_2/kernel/Adam(pi/dense_2/kernel/Adam/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
dtype0
�
*pi/dense_2/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:
�
*pi/dense_2/kernel/Adam_1/Initializer/zerosConst*$
_class
loc:@pi/dense_2/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense_2/kernel/Adam_1VarHandleOp*)
shared_namepi/dense_2/kernel/Adam_1*$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
9pi/dense_2/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/kernel/Adam_1*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
�
pi/dense_2/kernel/Adam_1/AssignAssignVariableOppi/dense_2/kernel/Adam_1*pi/dense_2/kernel/Adam_1/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
dtype0
�
,pi/dense_2/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam_1*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:
�
&pi/dense_2/bias/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_2/bias/AdamVarHandleOp*
shape:*
dtype0*
_output_shapes
: *%
shared_namepi/dense_2/bias/Adam*"
_class
loc:@pi/dense_2/bias*
	container 
�
5pi/dense_2/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/bias/Adam*"
_class
loc:@pi/dense_2/bias*
_output_shapes
: 
�
pi/dense_2/bias/Adam/AssignAssignVariableOppi/dense_2/bias/Adam&pi/dense_2/bias/Adam/Initializer/zeros*
dtype0*"
_class
loc:@pi/dense_2/bias
�
(pi/dense_2/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense_2/bias/Adam*"
_class
loc:@pi/dense_2/bias*
dtype0*
_output_shapes
:
�
(pi/dense_2/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_2/bias/Adam_1VarHandleOp*'
shared_namepi/dense_2/bias/Adam_1*"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
�
7pi/dense_2/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/bias/Adam_1*"
_class
loc:@pi/dense_2/bias*
_output_shapes
: 
�
pi/dense_2/bias/Adam_1/AssignAssignVariableOppi/dense_2/bias/Adam_1(pi/dense_2/bias/Adam_1/Initializer/zeros*"
_class
loc:@pi/dense_2/bias*
dtype0
�
*pi/dense_2/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_2/bias/Adam_1*"
_class
loc:@pi/dense_2/bias*
dtype0*
_output_shapes
:
�
8pi/dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@pi/dense_3/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
.pi/dense_3/kernel/Adam/Initializer/zeros/ConstConst*$
_class
loc:@pi/dense_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
(pi/dense_3/kernel/Adam/Initializer/zerosFill8pi/dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor.pi/dense_3/kernel/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@pi/dense_3/kernel*

index_type0* 
_output_shapes
:
��
�
pi/dense_3/kernel/AdamVarHandleOp*$
_class
loc:@pi/dense_3/kernel*
	container *
shape:
��*
dtype0*
_output_shapes
: *'
shared_namepi/dense_3/kernel/Adam
�
7pi/dense_3/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_3/kernel/Adam*$
_class
loc:@pi/dense_3/kernel*
_output_shapes
: 
�
pi/dense_3/kernel/Adam/AssignAssignVariableOppi/dense_3/kernel/Adam(pi/dense_3/kernel/Adam/Initializer/zeros*$
_class
loc:@pi/dense_3/kernel*
dtype0
�
*pi/dense_3/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense_3/kernel/Adam*$
_class
loc:@pi/dense_3/kernel*
dtype0* 
_output_shapes
:
��
�
:pi/dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*$
_class
loc:@pi/dense_3/kernel*
valueB"�      
�
0pi/dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*$
_class
loc:@pi/dense_3/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
*pi/dense_3/kernel/Adam_1/Initializer/zerosFill:pi/dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor0pi/dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@pi/dense_3/kernel*

index_type0* 
_output_shapes
:
��
�
pi/dense_3/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *)
shared_namepi/dense_3/kernel/Adam_1*$
_class
loc:@pi/dense_3/kernel*
	container *
shape:
��
�
9pi/dense_3/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_3/kernel/Adam_1*
_output_shapes
: *$
_class
loc:@pi/dense_3/kernel
�
pi/dense_3/kernel/Adam_1/AssignAssignVariableOppi/dense_3/kernel/Adam_1*pi/dense_3/kernel/Adam_1/Initializer/zeros*
dtype0*$
_class
loc:@pi/dense_3/kernel
�
,pi/dense_3/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_3/kernel/Adam_1*$
_class
loc:@pi/dense_3/kernel*
dtype0* 
_output_shapes
:
��
�
&pi/dense_3/bias/Adam/Initializer/zerosConst*"
_class
loc:@pi/dense_3/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
pi/dense_3/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *%
shared_namepi/dense_3/bias/Adam*"
_class
loc:@pi/dense_3/bias*
	container *
shape:�
�
5pi/dense_3/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_3/bias/Adam*"
_class
loc:@pi/dense_3/bias*
_output_shapes
: 
�
pi/dense_3/bias/Adam/AssignAssignVariableOppi/dense_3/bias/Adam&pi/dense_3/bias/Adam/Initializer/zeros*"
_class
loc:@pi/dense_3/bias*
dtype0
�
(pi/dense_3/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense_3/bias/Adam*"
_class
loc:@pi/dense_3/bias*
dtype0*
_output_shapes	
:�
�
(pi/dense_3/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_3/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
pi/dense_3/bias/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namepi/dense_3/bias/Adam_1*"
_class
loc:@pi/dense_3/bias*
	container *
shape:�
�
7pi/dense_3/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_3/bias/Adam_1*
_output_shapes
: *"
_class
loc:@pi/dense_3/bias
�
pi/dense_3/bias/Adam_1/AssignAssignVariableOppi/dense_3/bias/Adam_1(pi/dense_3/bias/Adam_1/Initializer/zeros*"
_class
loc:@pi/dense_3/bias*
dtype0
�
*pi/dense_3/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_3/bias/Adam_1*"
_class
loc:@pi/dense_3/bias*
dtype0*
_output_shapes	
:�
�
(pi/dense_4/kernel/Adam/Initializer/zerosConst*$
_class
loc:@pi/dense_4/kernel*
valueB	�*    *
dtype0*
_output_shapes
:	�
�
pi/dense_4/kernel/AdamVarHandleOp*
	container *
shape:	�*
dtype0*
_output_shapes
: *'
shared_namepi/dense_4/kernel/Adam*$
_class
loc:@pi/dense_4/kernel
�
7pi/dense_4/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_4/kernel/Adam*$
_class
loc:@pi/dense_4/kernel*
_output_shapes
: 
�
pi/dense_4/kernel/Adam/AssignAssignVariableOppi/dense_4/kernel/Adam(pi/dense_4/kernel/Adam/Initializer/zeros*$
_class
loc:@pi/dense_4/kernel*
dtype0
�
*pi/dense_4/kernel/Adam/Read/ReadVariableOpReadVariableOppi/dense_4/kernel/Adam*$
_class
loc:@pi/dense_4/kernel*
dtype0*
_output_shapes
:	�
�
*pi/dense_4/kernel/Adam_1/Initializer/zerosConst*$
_class
loc:@pi/dense_4/kernel*
valueB	�*    *
dtype0*
_output_shapes
:	�
�
pi/dense_4/kernel/Adam_1VarHandleOp*$
_class
loc:@pi/dense_4/kernel*
	container *
shape:	�*
dtype0*
_output_shapes
: *)
shared_namepi/dense_4/kernel/Adam_1
�
9pi/dense_4/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_4/kernel/Adam_1*$
_class
loc:@pi/dense_4/kernel*
_output_shapes
: 
�
pi/dense_4/kernel/Adam_1/AssignAssignVariableOppi/dense_4/kernel/Adam_1*pi/dense_4/kernel/Adam_1/Initializer/zeros*$
_class
loc:@pi/dense_4/kernel*
dtype0
�
,pi/dense_4/kernel/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_4/kernel/Adam_1*$
_class
loc:@pi/dense_4/kernel*
dtype0*
_output_shapes
:	�
�
&pi/dense_4/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_4/bias*
valueB*    
�
pi/dense_4/bias/AdamVarHandleOp*"
_class
loc:@pi/dense_4/bias*
	container *
shape:*
dtype0*
_output_shapes
: *%
shared_namepi/dense_4/bias/Adam
�
5pi/dense_4/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_4/bias/Adam*"
_class
loc:@pi/dense_4/bias*
_output_shapes
: 
�
pi/dense_4/bias/Adam/AssignAssignVariableOppi/dense_4/bias/Adam&pi/dense_4/bias/Adam/Initializer/zeros*"
_class
loc:@pi/dense_4/bias*
dtype0
�
(pi/dense_4/bias/Adam/Read/ReadVariableOpReadVariableOppi/dense_4/bias/Adam*"
_class
loc:@pi/dense_4/bias*
dtype0*
_output_shapes
:
�
(pi/dense_4/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_4/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_4/bias/Adam_1VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_namepi/dense_4/bias/Adam_1*"
_class
loc:@pi/dense_4/bias*
	container 
�
7pi/dense_4/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_4/bias/Adam_1*"
_class
loc:@pi/dense_4/bias*
_output_shapes
: 
�
pi/dense_4/bias/Adam_1/AssignAssignVariableOppi/dense_4/bias/Adam_1(pi/dense_4/bias/Adam_1/Initializer/zeros*"
_class
loc:@pi/dense_4/bias*
dtype0
�
*pi/dense_4/bias/Adam_1/Read/ReadVariableOpReadVariableOppi/dense_4/bias/Adam_1*"
_class
loc:@pi/dense_4/bias*
dtype0*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *��D;*
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
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
=Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
?Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
.Adam/update_pi/conv2d/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d/kernelpi/conv2d/kernel/Adampi/conv2d/kernel/Adam_1=Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_14*
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
�
=Adam/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
,Adam/update_pi/conv2d/bias/ResourceApplyAdamResourceApplyAdampi/conv2d/biaspi/conv2d/bias/Adampi/conv2d/bias/Adam_1;Adam/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp=Adam/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_15*
T0*!
_class
loc:@pi/conv2d/bias*
use_nesterov( *
use_locking( 
�
?Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
AAdam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
0Adam/update_pi/conv2d_1/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_1/kernelpi/conv2d_1/kernel/Adampi/conv2d_1/kernel/Adam_1?Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpAAdam/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_16*
T0*%
_class
loc:@pi/conv2d_1/kernel*
use_nesterov( *
use_locking( 
�
=Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
?Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
.Adam/update_pi/conv2d_1/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_1/biaspi/conv2d_1/bias/Adampi/conv2d_1/bias/Adam_1=Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp?Adam/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_17*
use_locking( *
T0*#
_class
loc:@pi/conv2d_1/bias*
use_nesterov( 
�
<Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
>Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
-Adam/update_pi/dense/kernel/ResourceApplyAdamResourceApplyAdampi/dense/kernelpi/dense/kernel/Adampi/dense/kernel/Adam_1<Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp>Adam/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_18*
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
�
<Adam/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
+Adam/update_pi/dense/bias/ResourceApplyAdamResourceApplyAdampi/dense/biaspi/dense/bias/Adampi/dense/bias/Adam_1:Adam/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp<Adam/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_19*
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
use_locking( 
�
>Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
@Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
/Adam/update_pi/dense_1/kernel/ResourceApplyAdamResourceApplyAdampi/dense_1/kernelpi/dense_1/kernel/Adampi/dense_1/kernel/Adam_1>Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp@Adam/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_20*
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel*
use_nesterov( 
�
<Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
>Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
-Adam/update_pi/dense_1/bias/ResourceApplyAdamResourceApplyAdampi/dense_1/biaspi/dense_1/bias/Adampi/dense_1/bias/Adam_1<Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp>Adam/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_21*
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( *
use_locking( 
�
>Adam/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
@Adam/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
/Adam/update_pi/dense_2/kernel/ResourceApplyAdamResourceApplyAdampi/dense_2/kernelpi/dense_2/kernel/Adampi/dense_2/kernel/Adam_1>Adam/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOp@Adam/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_22*
use_nesterov( *
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel
�
<Adam/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
>Adam/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
-Adam/update_pi/dense_2/bias/ResourceApplyAdamResourceApplyAdampi/dense_2/biaspi/dense_2/bias/Adampi/dense_2/bias/Adam_1<Adam/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOp>Adam/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_23*
use_locking( *
T0*"
_class
loc:@pi/dense_2/bias*
use_nesterov( 
�
>Adam/update_pi/dense_3/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
@Adam/update_pi/dense_3/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
/Adam/update_pi/dense_3/kernel/ResourceApplyAdamResourceApplyAdampi/dense_3/kernelpi/dense_3/kernel/Adampi/dense_3/kernel/Adam_1>Adam/update_pi/dense_3/kernel/ResourceApplyAdam/ReadVariableOp@Adam/update_pi/dense_3/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_24*
use_locking( *
T0*$
_class
loc:@pi/dense_3/kernel*
use_nesterov( 
�
<Adam/update_pi/dense_3/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
>Adam/update_pi/dense_3/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
-Adam/update_pi/dense_3/bias/ResourceApplyAdamResourceApplyAdampi/dense_3/biaspi/dense_3/bias/Adampi/dense_3/bias/Adam_1<Adam/update_pi/dense_3/bias/ResourceApplyAdam/ReadVariableOp>Adam/update_pi/dense_3/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_25*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@pi/dense_3/bias
�
>Adam/update_pi/dense_4/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
@Adam/update_pi/dense_4/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
/Adam/update_pi/dense_4/kernel/ResourceApplyAdamResourceApplyAdampi/dense_4/kernelpi/dense_4/kernel/Adampi/dense_4/kernel/Adam_1>Adam/update_pi/dense_4/kernel/ResourceApplyAdam/ReadVariableOp@Adam/update_pi/dense_4/kernel/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_26*
use_locking( *
T0*$
_class
loc:@pi/dense_4/kernel*
use_nesterov( 
�
<Adam/update_pi/dense_4/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
�
>Adam/update_pi/dense_4/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
�
-Adam/update_pi/dense_4/bias/ResourceApplyAdamResourceApplyAdampi/dense_4/biaspi/dense_4/bias/Adampi/dense_4/bias/Adam_1<Adam/update_pi/dense_4/bias/ResourceApplyAdam/ReadVariableOp>Adam/update_pi/dense_4/bias/ResourceApplyAdam/ReadVariableOp_1Adam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_27*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@pi/dense_4/bias
�
Adam/ReadVariableOpReadVariableOpbeta1_power-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam.^Adam/update_pi/dense_2/bias/ResourceApplyAdam0^Adam/update_pi/dense_2/kernel/ResourceApplyAdam.^Adam/update_pi/dense_3/bias/ResourceApplyAdam0^Adam/update_pi/dense_3/kernel/ResourceApplyAdam.^Adam/update_pi/dense_4/bias/ResourceApplyAdam0^Adam/update_pi/dense_4/kernel/ResourceApplyAdam*
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
�
Adam/ReadVariableOp_1ReadVariableOpbeta1_power^Adam/AssignVariableOp-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam.^Adam/update_pi/dense_2/bias/ResourceApplyAdam0^Adam/update_pi/dense_2/kernel/ResourceApplyAdam.^Adam/update_pi/dense_3/bias/ResourceApplyAdam0^Adam/update_pi/dense_3/kernel/ResourceApplyAdam.^Adam/update_pi/dense_4/bias/ResourceApplyAdam0^Adam/update_pi/dense_4/kernel/ResourceApplyAdam*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
�
Adam/ReadVariableOp_2ReadVariableOpbeta2_power-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam.^Adam/update_pi/dense_2/bias/ResourceApplyAdam0^Adam/update_pi/dense_2/kernel/ResourceApplyAdam.^Adam/update_pi/dense_3/bias/ResourceApplyAdam0^Adam/update_pi/dense_3/kernel/ResourceApplyAdam.^Adam/update_pi/dense_4/bias/ResourceApplyAdam0^Adam/update_pi/dense_4/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: 
x

Adam/mul_1MulAdam/ReadVariableOp_2
Adam/beta2*
_output_shapes
: *
T0*!
_class
loc:@pi/conv2d/bias
t
Adam/AssignVariableOp_1AssignVariableOpbeta2_power
Adam/mul_1*!
_class
loc:@pi/conv2d/bias*
dtype0
�
Adam/ReadVariableOp_3ReadVariableOpbeta2_power^Adam/AssignVariableOp_1-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam.^Adam/update_pi/dense_2/bias/ResourceApplyAdam0^Adam/update_pi/dense_2/kernel/ResourceApplyAdam.^Adam/update_pi/dense_3/bias/ResourceApplyAdam0^Adam/update_pi/dense_3/kernel/ResourceApplyAdam.^Adam/update_pi/dense_4/bias/ResourceApplyAdam0^Adam/update_pi/dense_4/kernel/ResourceApplyAdam*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
�
AdamNoOp^Adam/ReadVariableOp_1^Adam/ReadVariableOp_3-^Adam/update_pi/conv2d/bias/ResourceApplyAdam/^Adam/update_pi/conv2d/kernel/ResourceApplyAdam/^Adam/update_pi/conv2d_1/bias/ResourceApplyAdam1^Adam/update_pi/conv2d_1/kernel/ResourceApplyAdam,^Adam/update_pi/dense/bias/ResourceApplyAdam.^Adam/update_pi/dense/kernel/ResourceApplyAdam.^Adam/update_pi/dense_1/bias/ResourceApplyAdam0^Adam/update_pi/dense_1/kernel/ResourceApplyAdam.^Adam/update_pi/dense_2/bias/ResourceApplyAdam0^Adam/update_pi/dense_2/kernel/ResourceApplyAdam.^Adam/update_pi/dense_3/bias/ResourceApplyAdam0^Adam/update_pi/dense_3/kernel/ResourceApplyAdam.^Adam/update_pi/dense_4/bias/ResourceApplyAdam0^Adam/update_pi/dense_4/kernel/ResourceApplyAdam
y
Reshape_28/ReadVariableOpReadVariableOppi/conv2d/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_28/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_28ReshapeReshape_28/ReadVariableOpReshape_28/shape*
T0*
Tshape0*
_output_shapes
:0
k
Reshape_29/ReadVariableOpReadVariableOppi/conv2d/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_29/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
���������
u

Reshape_29ReshapeReshape_29/ReadVariableOpReshape_29/shape*
T0*
Tshape0*
_output_shapes
:
{
Reshape_30/ReadVariableOpReadVariableOppi/conv2d_1/kernel^Adam*
dtype0*&
_output_shapes
:
j
Reshape_30/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_30ReshapeReshape_30/ReadVariableOpReshape_30/shape*
T0*
Tshape0*
_output_shapes	
:�	
m
Reshape_31/ReadVariableOpReadVariableOppi/conv2d_1/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_31/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_31ReshapeReshape_31/ReadVariableOpReshape_31/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_32/ReadVariableOpReadVariableOppi/dense/kernel^Adam*
dtype0*
_output_shapes

:
j
Reshape_32/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_32ReshapeReshape_32/ReadVariableOpReshape_32/shape*
T0*
Tshape0*
_output_shapes	
:�
j
Reshape_33/ReadVariableOpReadVariableOppi/dense/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_33/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
���������
u

Reshape_33ReshapeReshape_33/ReadVariableOpReshape_33/shape*
_output_shapes
:*
T0*
Tshape0
r
Reshape_34/ReadVariableOpReadVariableOppi/dense_1/kernel^Adam*
dtype0*
_output_shapes

:
j
Reshape_34/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_34ReshapeReshape_34/ReadVariableOpReshape_34/shape*
T0*
Tshape0*
_output_shapes	
:�
l
Reshape_35/ReadVariableOpReadVariableOppi/dense_1/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_35/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_35ReshapeReshape_35/ReadVariableOpReshape_35/shape*
T0*
Tshape0*
_output_shapes
:
r
Reshape_36/ReadVariableOpReadVariableOppi/dense_2/kernel^Adam*
dtype0*
_output_shapes

:
j
Reshape_36/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
���������
v

Reshape_36ReshapeReshape_36/ReadVariableOpReshape_36/shape*
T0*
Tshape0*
_output_shapes	
:�
l
Reshape_37/ReadVariableOpReadVariableOppi/dense_2/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_37/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_37ReshapeReshape_37/ReadVariableOpReshape_37/shape*
T0*
Tshape0*
_output_shapes
:
t
Reshape_38/ReadVariableOpReadVariableOppi/dense_3/kernel^Adam*
dtype0* 
_output_shapes
:
��
j
Reshape_38/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
w

Reshape_38ReshapeReshape_38/ReadVariableOpReshape_38/shape*
T0*
Tshape0*
_output_shapes

:��
m
Reshape_39/ReadVariableOpReadVariableOppi/dense_3/bias^Adam*
dtype0*
_output_shapes	
:�
j
Reshape_39/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_39ReshapeReshape_39/ReadVariableOpReshape_39/shape*
T0*
Tshape0*
_output_shapes	
:�
s
Reshape_40/ReadVariableOpReadVariableOppi/dense_4/kernel^Adam*
dtype0*
_output_shapes
:	�
j
Reshape_40/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_40ReshapeReshape_40/ReadVariableOpReshape_40/shape*
_output_shapes	
:�*
T0*
Tshape0
l
Reshape_41/ReadVariableOpReadVariableOppi/dense_4/bias^Adam*
dtype0*
_output_shapes
:
j
Reshape_41/shapeConst^Adam*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_41ReshapeReshape_41/ReadVariableOpReshape_41/shape*
T0*
Tshape0*
_output_shapes
:
V
concat_1/axisConst^Adam*
value	B : *
dtype0*
_output_shapes
: 
�
concat_1ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31
Reshape_32
Reshape_33
Reshape_34
Reshape_35
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41concat_1/axis*
T0*
N*
_output_shapes

:ޑ*

Tidx0
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
�
Const_6Const^Adam*M
valueDBB"80      �     @     @     @      �           *
dtype0*
_output_shapes
:
Z
split_1/split_dimConst^Adam*
dtype0*
_output_shapes
: *
value	B : 
�
split_1SplitVEagerPyFunc_1Const_6split_1/split_dim*
T0*L
_output_shapes:
8::::::::::::::*
	num_split*

Tlen0
p
Reshape_42/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_42Reshapesplit_1Reshape_42/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_43/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_43Reshape	split_1:1Reshape_43/shape*
T0*
Tshape0*
_output_shapes
:
p
Reshape_44/shapeConst^Adam*%
valueB"            *
dtype0*
_output_shapes
:
q

Reshape_44Reshape	split_1:2Reshape_44/shape*
T0*
Tshape0*&
_output_shapes
:
a
Reshape_45/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_45Reshape	split_1:3Reshape_45/shape*
_output_shapes
:*
T0*
Tshape0
h
Reshape_46/shapeConst^Adam*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_46Reshape	split_1:4Reshape_46/shape*
T0*
Tshape0*
_output_shapes

:
a
Reshape_47/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_47Reshape	split_1:5Reshape_47/shape*
T0*
Tshape0*
_output_shapes
:
h
Reshape_48/shapeConst^Adam*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_48Reshape	split_1:6Reshape_48/shape*
T0*
Tshape0*
_output_shapes

:
a
Reshape_49/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_49Reshape	split_1:7Reshape_49/shape*
T0*
Tshape0*
_output_shapes
:
h
Reshape_50/shapeConst^Adam*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_50Reshape	split_1:8Reshape_50/shape*
_output_shapes

:*
T0*
Tshape0
a
Reshape_51/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_51Reshape	split_1:9Reshape_51/shape*
T0*
Tshape0*
_output_shapes
:
h
Reshape_52/shapeConst^Adam*
valueB"�      *
dtype0*
_output_shapes
:
l

Reshape_52Reshape
split_1:10Reshape_52/shape*
T0*
Tshape0* 
_output_shapes
:
��
b
Reshape_53/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:�
g

Reshape_53Reshape
split_1:11Reshape_53/shape*
T0*
Tshape0*
_output_shapes	
:�
h
Reshape_54/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB"      
k

Reshape_54Reshape
split_1:12Reshape_54/shape*
T0*
Tshape0*
_output_shapes
:	�
a
Reshape_55/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_55Reshape
split_1:13Reshape_55/shape*
T0*
Tshape0*
_output_shapes
:
O
AssignVariableOpAssignVariableOppi/conv2d/kernel
Reshape_42*
dtype0
�
ReadVariableOpReadVariableOppi/conv2d/kernel^Adam^AssignVariableOp*
dtype0*&
_output_shapes
:
O
AssignVariableOp_1AssignVariableOppi/conv2d/bias
Reshape_43*
dtype0
w
ReadVariableOp_1ReadVariableOppi/conv2d/bias^Adam^AssignVariableOp_1*
dtype0*
_output_shapes
:
S
AssignVariableOp_2AssignVariableOppi/conv2d_1/kernel
Reshape_44*
dtype0
�
ReadVariableOp_2ReadVariableOppi/conv2d_1/kernel^Adam^AssignVariableOp_2*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_3AssignVariableOppi/conv2d_1/bias
Reshape_45*
dtype0
y
ReadVariableOp_3ReadVariableOppi/conv2d_1/bias^Adam^AssignVariableOp_3*
dtype0*
_output_shapes
:
P
AssignVariableOp_4AssignVariableOppi/dense/kernel
Reshape_46*
dtype0
|
ReadVariableOp_4ReadVariableOppi/dense/kernel^Adam^AssignVariableOp_4*
dtype0*
_output_shapes

:
N
AssignVariableOp_5AssignVariableOppi/dense/bias
Reshape_47*
dtype0
v
ReadVariableOp_5ReadVariableOppi/dense/bias^Adam^AssignVariableOp_5*
dtype0*
_output_shapes
:
R
AssignVariableOp_6AssignVariableOppi/dense_1/kernel
Reshape_48*
dtype0
~
ReadVariableOp_6ReadVariableOppi/dense_1/kernel^Adam^AssignVariableOp_6*
dtype0*
_output_shapes

:
P
AssignVariableOp_7AssignVariableOppi/dense_1/bias
Reshape_49*
dtype0
x
ReadVariableOp_7ReadVariableOppi/dense_1/bias^Adam^AssignVariableOp_7*
dtype0*
_output_shapes
:
R
AssignVariableOp_8AssignVariableOppi/dense_2/kernel
Reshape_50*
dtype0
~
ReadVariableOp_8ReadVariableOppi/dense_2/kernel^Adam^AssignVariableOp_8*
dtype0*
_output_shapes

:
P
AssignVariableOp_9AssignVariableOppi/dense_2/bias
Reshape_51*
dtype0
x
ReadVariableOp_9ReadVariableOppi/dense_2/bias^Adam^AssignVariableOp_9*
dtype0*
_output_shapes
:
S
AssignVariableOp_10AssignVariableOppi/dense_3/kernel
Reshape_52*
dtype0
�
ReadVariableOp_10ReadVariableOppi/dense_3/kernel^Adam^AssignVariableOp_10*
dtype0* 
_output_shapes
:
��
Q
AssignVariableOp_11AssignVariableOppi/dense_3/bias
Reshape_53*
dtype0
{
ReadVariableOp_11ReadVariableOppi/dense_3/bias^Adam^AssignVariableOp_11*
dtype0*
_output_shapes	
:�
S
AssignVariableOp_12AssignVariableOppi/dense_4/kernel
Reshape_54*
dtype0
�
ReadVariableOp_12ReadVariableOppi/dense_4/kernel^Adam^AssignVariableOp_12*
dtype0*
_output_shapes
:	�
Q
AssignVariableOp_13AssignVariableOppi/dense_4/bias
Reshape_55*
dtype0
z
ReadVariableOp_13ReadVariableOppi/dense_4/bias^Adam^AssignVariableOp_13*
dtype0*
_output_shapes
:
�

group_depsNoOp^Adam^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_10^ReadVariableOp_11^ReadVariableOp_12^ReadVariableOp_13^ReadVariableOp_2^ReadVariableOp_3^ReadVariableOp_4^ReadVariableOp_5^ReadVariableOp_6^ReadVariableOp_7^ReadVariableOp_8^ReadVariableOp_9
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  �?
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
�
gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients_1/Mean_1_grad/ShapeShapepow*
_output_shapes
:*
T0*
out_type0
�
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*
T0*#
_output_shapes
:���������*

Tmultiples0
b
gradients_1/Mean_1_grad/Shape_1Shapepow*
T0*
out_type0*
_output_shapes
:
b
gradients_1/Mean_1_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
g
gradients_1/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
i
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
c
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
�
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
�
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
�
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:���������
_
gradients_1/pow_grad/ShapeShapesub_1*
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
�
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:���������
_
gradients_1/pow_grad/sub/yConst*
dtype0*
_output_shapes
: *
valueB
 *  �?
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
T0*
_output_shapes
: 
n
gradients_1/pow_grad/PowPowsub_1gradients_1/pow_grad/sub*
T0*#
_output_shapes
:���������
�
gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*
T0*#
_output_shapes
:���������
�
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*#
_output_shapes
:���������*
T0*
Tshape0
c
gradients_1/pow_grad/Greater/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
|
gradients_1/pow_grad/GreaterGreatersub_1gradients_1/pow_grad/Greater/y*
T0*#
_output_shapes
:���������
i
$gradients_1/pow_grad/ones_like/ShapeShapesub_1*
_output_shapes
:*
T0*
out_type0
i
$gradients_1/pow_grad/ones_like/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*
T0*

index_type0*#
_output_shapes
:���������
�
gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersub_1gradients_1/pow_grad/ones_like*#
_output_shapes
:���������*
T0
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*
T0*#
_output_shapes
:���������
a
gradients_1/pow_grad/zeros_like	ZerosLikesub_1*
T0*#
_output_shapes
:���������
�
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*
T0*#
_output_shapes
:���������
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:���������
�
gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:���������
�
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
�
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*/
_class%
#!loc:@gradients_1/pow_grad/Reshape
�
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
�
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/sub_1_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
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
�
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Neggradients_1/sub_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
�
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape*#
_output_shapes
:���������
�
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
�
"gradients_1/v/Squeeze_grad/ReshapeReshape1gradients_1/sub_1_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
.gradients_1/v/dense_6/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:
�
3gradients_1/v/dense_6/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_6/BiasAdd_grad/BiasAddGrad
�
;gradients_1/v/dense_6/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_6/BiasAdd_grad/tuple/group_deps*
_output_shapes

:*
T0*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape
�
=gradients_1/v/dense_6/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_6/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_6/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients_1/v/dense_6/BiasAdd_grad/BiasAddGrad
�
(gradients_1/v/dense_6/MatMul_grad/MatMulMatMul;gradients_1/v/dense_6/BiasAdd_grad/tuple/control_dependencyv/dense_6/MatMul/ReadVariableOp*
_output_shapes
:	�*
transpose_a( *
transpose_b(*
T0
�
*gradients_1/v/dense_6/MatMul_grad/MatMul_1MatMulv/dense_5/Relu;gradients_1/v/dense_6/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	�*
transpose_a(
�
2gradients_1/v/dense_6/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_6/MatMul_grad/MatMul+^gradients_1/v/dense_6/MatMul_grad/MatMul_1
�
:gradients_1/v/dense_6/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_6/MatMul_grad/MatMul3^gradients_1/v/dense_6/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_6/MatMul_grad/MatMul*
_output_shapes
:	�
�
<gradients_1/v/dense_6/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_6/MatMul_grad/MatMul_13^gradients_1/v/dense_6/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_6/MatMul_grad/MatMul_1*
_output_shapes
:	�
�
(gradients_1/v/dense_5/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_6/MatMul_grad/tuple/control_dependencyv/dense_5/Relu*
T0*
_output_shapes
:	�
�
.gradients_1/v/dense_5/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/v/dense_5/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:�
�
3gradients_1/v/dense_5/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/v/dense_5/BiasAdd_grad/BiasAddGrad)^gradients_1/v/dense_5/Relu_grad/ReluGrad
�
;gradients_1/v/dense_5/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_5/Relu_grad/ReluGrad4^gradients_1/v/dense_5/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_5/Relu_grad/ReluGrad*
_output_shapes
:	�
�
=gradients_1/v/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_5/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_5/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_5/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:�
�
(gradients_1/v/dense_5/MatMul_grad/MatMulMatMul;gradients_1/v/dense_5/BiasAdd_grad/tuple/control_dependencyv/dense_5/MatMul/ReadVariableOp*
_output_shapes
:	�*
transpose_a( *
transpose_b(*
T0
�
*gradients_1/v/dense_5/MatMul_grad/MatMul_1MatMulpi/Max;gradients_1/v/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
��*
transpose_a(
�
2gradients_1/v/dense_5/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_5/MatMul_grad/MatMul+^gradients_1/v/dense_5/MatMul_grad/MatMul_1
�
:gradients_1/v/dense_5/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_5/MatMul_grad/MatMul3^gradients_1/v/dense_5/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/v/dense_5/MatMul_grad/MatMul*
_output_shapes
:	�
�
<gradients_1/v/dense_5/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_5/MatMul_grad/MatMul_13^gradients_1/v/dense_5/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/v/dense_5/MatMul_grad/MatMul_1* 
_output_shapes
:
��
r
gradients_1/pi/Max_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
^
gradients_1/pi/Max_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :
{
gradients_1/pi/Max_grad/addAddpi/Max/reduction_indicesgradients_1/pi/Max_grad/Size*
T0*
_output_shapes
: 
�
gradients_1/pi/Max_grad/modFloorModgradients_1/pi/Max_grad/addgradients_1/pi/Max_grad/Size*
T0*
_output_shapes
: 
b
gradients_1/pi/Max_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
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
�
gradients_1/pi/Max_grad/rangeRange#gradients_1/pi/Max_grad/range/startgradients_1/pi/Max_grad/Size#gradients_1/pi/Max_grad/range/delta*
_output_shapes
:*

Tidx0
d
"gradients_1/pi/Max_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients_1/pi/Max_grad/FillFillgradients_1/pi/Max_grad/Shape_1"gradients_1/pi/Max_grad/Fill/value*
_output_shapes
: *
T0*

index_type0
�
%gradients_1/pi/Max_grad/DynamicStitchDynamicStitchgradients_1/pi/Max_grad/rangegradients_1/pi/Max_grad/modgradients_1/pi/Max_grad/Shapegradients_1/pi/Max_grad/Fill*
T0*
N*
_output_shapes
:
�
gradients_1/pi/Max_grad/ReshapeReshapepi/Max%gradients_1/pi/Max_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
!gradients_1/pi/Max_grad/Reshape_1Reshape:gradients_1/v/dense_5/MatMul_grad/tuple/control_dependency%gradients_1/pi/Max_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/Max_grad/EqualEqualgradients_1/pi/Max_grad/Reshape	pi/add_11*
T0*#
_output_shapes
:�
�
gradients_1/pi/Max_grad/CastCastgradients_1/pi/Max_grad/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:�*

DstT0
�
gradients_1/pi/Max_grad/SumSumgradients_1/pi/Max_grad/Castpi/Max/reduction_indices*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/Max_grad/Reshape_2Reshapegradients_1/pi/Max_grad/Sum%gradients_1/pi/Max_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/Max_grad/divRealDivgradients_1/pi/Max_grad/Cast!gradients_1/pi/Max_grad/Reshape_2*
T0*#
_output_shapes
:�
�
gradients_1/pi/Max_grad/mulMulgradients_1/pi/Max_grad/div!gradients_1/pi/Max_grad/Reshape_1*
T0*#
_output_shapes
:�
u
 gradients_1/pi/add_11_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
l
"gradients_1/pi/add_11_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
0gradients_1/pi/add_11_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/pi/add_11_grad/Shape"gradients_1/pi/add_11_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_11_grad/SumSumgradients_1/pi/Max_grad/mul0gradients_1/pi/add_11_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
"gradients_1/pi/add_11_grad/ReshapeReshapegradients_1/pi/add_11_grad/Sum gradients_1/pi/add_11_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
 gradients_1/pi/add_11_grad/Sum_1Sumgradients_1/pi/Max_grad/mul2gradients_1/pi/add_11_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
$gradients_1/pi/add_11_grad/Reshape_1Reshape gradients_1/pi/add_11_grad/Sum_1"gradients_1/pi/add_11_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0

+gradients_1/pi/add_11_grad/tuple/group_depsNoOp#^gradients_1/pi/add_11_grad/Reshape%^gradients_1/pi/add_11_grad/Reshape_1
�
3gradients_1/pi/add_11_grad/tuple/control_dependencyIdentity"gradients_1/pi/add_11_grad/Reshape,^gradients_1/pi/add_11_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/pi/add_11_grad/Reshape*#
_output_shapes
:�
�
5gradients_1/pi/add_11_grad/tuple/control_dependency_1Identity$gradients_1/pi/add_11_grad/Reshape_1,^gradients_1/pi/add_11_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients_1/pi/add_11_grad/Reshape_1
x
#gradients_1/pi/truediv_5_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
z
%gradients_1/pi/truediv_5_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
3gradients_1/pi/truediv_5_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients_1/pi/truediv_5_grad/Shape%gradients_1/pi/truediv_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
%gradients_1/pi/truediv_5_grad/RealDivRealDiv3gradients_1/pi/add_11_grad/tuple/control_dependency	pi/Sqrt_5*#
_output_shapes
:�*
T0
�
!gradients_1/pi/truediv_5_grad/SumSum%gradients_1/pi/truediv_5_grad/RealDiv3gradients_1/pi/truediv_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
%gradients_1/pi/truediv_5_grad/ReshapeReshape!gradients_1/pi/truediv_5_grad/Sum#gradients_1/pi/truediv_5_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
`
!gradients_1/pi/truediv_5_grad/NegNegpi/mul_4*
T0*#
_output_shapes
:�
�
'gradients_1/pi/truediv_5_grad/RealDiv_1RealDiv!gradients_1/pi/truediv_5_grad/Neg	pi/Sqrt_5*
T0*#
_output_shapes
:�
�
'gradients_1/pi/truediv_5_grad/RealDiv_2RealDiv'gradients_1/pi/truediv_5_grad/RealDiv_1	pi/Sqrt_5*
T0*#
_output_shapes
:�
�
!gradients_1/pi/truediv_5_grad/mulMul3gradients_1/pi/add_11_grad/tuple/control_dependency'gradients_1/pi/truediv_5_grad/RealDiv_2*#
_output_shapes
:�*
T0
�
#gradients_1/pi/truediv_5_grad/Sum_1Sum!gradients_1/pi/truediv_5_grad/mul5gradients_1/pi/truediv_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
'gradients_1/pi/truediv_5_grad/Reshape_1Reshape#gradients_1/pi/truediv_5_grad/Sum_1%gradients_1/pi/truediv_5_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
.gradients_1/pi/truediv_5_grad/tuple/group_depsNoOp&^gradients_1/pi/truediv_5_grad/Reshape(^gradients_1/pi/truediv_5_grad/Reshape_1
�
6gradients_1/pi/truediv_5_grad/tuple/control_dependencyIdentity%gradients_1/pi/truediv_5_grad/Reshape/^gradients_1/pi/truediv_5_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/pi/truediv_5_grad/Reshape*#
_output_shapes
:�
�
8gradients_1/pi/truediv_5_grad/tuple/control_dependency_1Identity'gradients_1/pi/truediv_5_grad/Reshape_1/^gradients_1/pi/truediv_5_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients_1/pi/truediv_5_grad/Reshape_1*#
_output_shapes
:�
i
gradients_1/pi/mul_4_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
v
!gradients_1/pi/mul_4_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
/gradients_1/pi/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_4_grad/Shape!gradients_1/pi/mul_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/mul_4_grad/MulMul6gradients_1/pi/truediv_5_grad/tuple/control_dependencypi/sub_4*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_4_grad/SumSumgradients_1/pi/mul_4_grad/Mul/gradients_1/pi/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
!gradients_1/pi/mul_4_grad/ReshapeReshapegradients_1/pi/mul_4_grad/Sumgradients_1/pi/mul_4_grad/Shape*
_output_shapes
:*
T0*
Tshape0
�
gradients_1/pi/mul_4_grad/Mul_1Mulpi/Variable_9/read6gradients_1/pi/truediv_5_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_4_grad/Sum_1Sumgradients_1/pi/mul_4_grad/Mul_11gradients_1/pi/mul_4_grad/BroadcastGradientArgs:1*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
#gradients_1/pi/mul_4_grad/Reshape_1Reshapegradients_1/pi/mul_4_grad/Sum_1!gradients_1/pi/mul_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
|
*gradients_1/pi/mul_4_grad/tuple/group_depsNoOp"^gradients_1/pi/mul_4_grad/Reshape$^gradients_1/pi/mul_4_grad/Reshape_1
�
2gradients_1/pi/mul_4_grad/tuple/control_dependencyIdentity!gradients_1/pi/mul_4_grad/Reshape+^gradients_1/pi/mul_4_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/mul_4_grad/Reshape*
_output_shapes
:
�
4gradients_1/pi/mul_4_grad/tuple/control_dependency_1Identity#gradients_1/pi/mul_4_grad/Reshape_1+^gradients_1/pi/mul_4_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/mul_4_grad/Reshape_1*#
_output_shapes
:�
�
#gradients_1/pi/Sqrt_5_grad/SqrtGradSqrtGrad	pi/Sqrt_58gradients_1/pi/truediv_5_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�
t
gradients_1/pi/sub_4_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
v
!gradients_1/pi/sub_4_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
/gradients_1/pi/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_4_grad/Shape!gradients_1/pi/sub_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/sub_4_grad/SumSum4gradients_1/pi/mul_4_grad/tuple/control_dependency_1/gradients_1/pi/sub_4_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/sub_4_grad/ReshapeReshapegradients_1/pi/sub_4_grad/Sumgradients_1/pi/sub_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/sub_4_grad/Sum_1Sum4gradients_1/pi/mul_4_grad/tuple/control_dependency_11gradients_1/pi/sub_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
k
gradients_1/pi/sub_4_grad/NegNeggradients_1/pi/sub_4_grad/Sum_1*
T0*
_output_shapes	
:�
�
#gradients_1/pi/sub_4_grad/Reshape_1Reshapegradients_1/pi/sub_4_grad/Neg!gradients_1/pi/sub_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
|
*gradients_1/pi/sub_4_grad/tuple/group_depsNoOp"^gradients_1/pi/sub_4_grad/Reshape$^gradients_1/pi/sub_4_grad/Reshape_1
�
2gradients_1/pi/sub_4_grad/tuple/control_dependencyIdentity!gradients_1/pi/sub_4_grad/Reshape+^gradients_1/pi/sub_4_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/sub_4_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/sub_4_grad/tuple/control_dependency_1Identity#gradients_1/pi/sub_4_grad/Reshape_1+^gradients_1/pi/sub_4_grad/tuple/group_deps*#
_output_shapes
:�*
T0*6
_class,
*(loc:@gradients_1/pi/sub_4_grad/Reshape_1
u
 gradients_1/pi/add_10_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
e
"gradients_1/pi/add_10_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
0gradients_1/pi/add_10_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/pi/add_10_grad/Shape"gradients_1/pi/add_10_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/pi/add_10_grad/SumSum#gradients_1/pi/Sqrt_5_grad/SqrtGrad0gradients_1/pi/add_10_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
"gradients_1/pi/add_10_grad/ReshapeReshapegradients_1/pi/add_10_grad/Sum gradients_1/pi/add_10_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
 gradients_1/pi/add_10_grad/Sum_1Sum#gradients_1/pi/Sqrt_5_grad/SqrtGrad2gradients_1/pi/add_10_grad/BroadcastGradientArgs:1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
$gradients_1/pi/add_10_grad/Reshape_1Reshape gradients_1/pi/add_10_grad/Sum_1"gradients_1/pi/add_10_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

+gradients_1/pi/add_10_grad/tuple/group_depsNoOp#^gradients_1/pi/add_10_grad/Reshape%^gradients_1/pi/add_10_grad/Reshape_1
�
3gradients_1/pi/add_10_grad/tuple/control_dependencyIdentity"gradients_1/pi/add_10_grad/Reshape,^gradients_1/pi/add_10_grad/tuple/group_deps*#
_output_shapes
:�*
T0*5
_class+
)'loc:@gradients_1/pi/add_10_grad/Reshape
�
5gradients_1/pi/add_10_grad/tuple/control_dependency_1Identity$gradients_1/pi/add_10_grad/Reshape_1,^gradients_1/pi/add_10_grad/tuple/group_deps*
_output_shapes
: *
T0*7
_class-
+)loc:@gradients_1/pi/add_10_grad/Reshape_1
�
,gradients_1/pi/moments_4/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
+gradients_1/pi/moments_4/variance_grad/SizeConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_4/variance_grad/addAdd'pi/moments_4/variance/reduction_indices+gradients_1/pi/moments_4/variance_grad/Size*
T0*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_4/variance_grad/modFloorMod*gradients_1/pi/moments_4/variance_grad/add+gradients_1/pi/moments_4/variance_grad/Size*
T0*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
.gradients_1/pi/moments_4/variance_grad/Shape_1Const*
valueB:*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
:
�
2gradients_1/pi/moments_4/variance_grad/range/startConst*
value	B : *?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
2gradients_1/pi/moments_4/variance_grad/range/deltaConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients_1/pi/moments_4/variance_grad/rangeRange2gradients_1/pi/moments_4/variance_grad/range/start+gradients_1/pi/moments_4/variance_grad/Size2gradients_1/pi/moments_4/variance_grad/range/delta*

Tidx0*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
1gradients_1/pi/moments_4/variance_grad/Fill/valueConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
+gradients_1/pi/moments_4/variance_grad/FillFill.gradients_1/pi/moments_4/variance_grad/Shape_11gradients_1/pi/moments_4/variance_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape
�
4gradients_1/pi/moments_4/variance_grad/DynamicStitchDynamicStitch,gradients_1/pi/moments_4/variance_grad/range*gradients_1/pi/moments_4/variance_grad/mod,gradients_1/pi/moments_4/variance_grad/Shape+gradients_1/pi/moments_4/variance_grad/Fill*
T0*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
N*
_output_shapes
:
�
0gradients_1/pi/moments_4/variance_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape
�
.gradients_1/pi/moments_4/variance_grad/MaximumMaximum4gradients_1/pi/moments_4/variance_grad/DynamicStitch0gradients_1/pi/moments_4/variance_grad/Maximum/y*
_output_shapes
:*
T0*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape
�
/gradients_1/pi/moments_4/variance_grad/floordivFloorDiv,gradients_1/pi/moments_4/variance_grad/Shape.gradients_1/pi/moments_4/variance_grad/Maximum*
T0*?
_class5
31loc:@gradients_1/pi/moments_4/variance_grad/Shape*
_output_shapes
:
�
.gradients_1/pi/moments_4/variance_grad/ReshapeReshape3gradients_1/pi/add_10_grad/tuple/control_dependency4gradients_1/pi/moments_4/variance_grad/DynamicStitch*#
_output_shapes
:�*
T0*
Tshape0
�
+gradients_1/pi/moments_4/variance_grad/TileTile.gradients_1/pi/moments_4/variance_grad/Reshape/gradients_1/pi/moments_4/variance_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
q
,gradients_1/pi/moments_4/variance_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �A
�
.gradients_1/pi/moments_4/variance_grad/truedivRealDiv+gradients_1/pi/moments_4/variance_grad/Tile,gradients_1/pi/moments_4/variance_grad/Const*
T0*#
_output_shapes
:�
�
5gradients_1/pi/moments_4/SquaredDifference_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
7gradients_1/pi/moments_4/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Egradients_1/pi/moments_4/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients_1/pi/moments_4/SquaredDifference_grad/Shape7gradients_1/pi/moments_4/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients_1/pi/moments_4/SquaredDifference_grad/scalarConst/^gradients_1/pi/moments_4/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
3gradients_1/pi/moments_4/SquaredDifference_grad/MulMul6gradients_1/pi/moments_4/SquaredDifference_grad/scalar.gradients_1/pi/moments_4/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_4/SquaredDifference_grad/subSubpi/add_9pi/moments_4/StopGradient/^gradients_1/pi/moments_4/variance_grad/truediv*
T0*#
_output_shapes
:�
�
5gradients_1/pi/moments_4/SquaredDifference_grad/mul_1Mul3gradients_1/pi/moments_4/SquaredDifference_grad/Mul3gradients_1/pi/moments_4/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_4/SquaredDifference_grad/SumSum5gradients_1/pi/moments_4/SquaredDifference_grad/mul_1Egradients_1/pi/moments_4/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
7gradients_1/pi/moments_4/SquaredDifference_grad/ReshapeReshape3gradients_1/pi/moments_4/SquaredDifference_grad/Sum5gradients_1/pi/moments_4/SquaredDifference_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
5gradients_1/pi/moments_4/SquaredDifference_grad/Sum_1Sum5gradients_1/pi/moments_4/SquaredDifference_grad/mul_1Ggradients_1/pi/moments_4/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
9gradients_1/pi/moments_4/SquaredDifference_grad/Reshape_1Reshape5gradients_1/pi/moments_4/SquaredDifference_grad/Sum_17gradients_1/pi/moments_4/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients_1/pi/moments_4/SquaredDifference_grad/NegNeg9gradients_1/pi/moments_4/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
@gradients_1/pi/moments_4/SquaredDifference_grad/tuple/group_depsNoOp4^gradients_1/pi/moments_4/SquaredDifference_grad/Neg8^gradients_1/pi/moments_4/SquaredDifference_grad/Reshape
�
Hgradients_1/pi/moments_4/SquaredDifference_grad/tuple/control_dependencyIdentity7gradients_1/pi/moments_4/SquaredDifference_grad/ReshapeA^gradients_1/pi/moments_4/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/moments_4/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Jgradients_1/pi/moments_4/SquaredDifference_grad/tuple/control_dependency_1Identity3gradients_1/pi/moments_4/SquaredDifference_grad/NegA^gradients_1/pi/moments_4/SquaredDifference_grad/tuple/group_deps*#
_output_shapes
:�*
T0*F
_class<
:8loc:@gradients_1/pi/moments_4/SquaredDifference_grad/Neg
}
(gradients_1/pi/moments_4/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
'gradients_1/pi/moments_4/mean_grad/SizeConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients_1/pi/moments_4/mean_grad/addAdd#pi/moments_4/mean/reduction_indices'gradients_1/pi/moments_4/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
&gradients_1/pi/moments_4/mean_grad/modFloorMod&gradients_1/pi/moments_4/mean_grad/add'gradients_1/pi/moments_4/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_4/mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape
�
.gradients_1/pi/moments_4/mean_grad/range/startConst*
value	B : *;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_4/mean_grad/range/deltaConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients_1/pi/moments_4/mean_grad/rangeRange.gradients_1/pi/moments_4/mean_grad/range/start'gradients_1/pi/moments_4/mean_grad/Size.gradients_1/pi/moments_4/mean_grad/range/delta*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
-gradients_1/pi/moments_4/mean_grad/Fill/valueConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
'gradients_1/pi/moments_4/mean_grad/FillFill*gradients_1/pi/moments_4/mean_grad/Shape_1-gradients_1/pi/moments_4/mean_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape
�
0gradients_1/pi/moments_4/mean_grad/DynamicStitchDynamicStitch(gradients_1/pi/moments_4/mean_grad/range&gradients_1/pi/moments_4/mean_grad/mod(gradients_1/pi/moments_4/mean_grad/Shape'gradients_1/pi/moments_4/mean_grad/Fill*
T0*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
N*
_output_shapes
:
�
,gradients_1/pi/moments_4/mean_grad/Maximum/yConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_4/mean_grad/MaximumMaximum0gradients_1/pi/moments_4/mean_grad/DynamicStitch,gradients_1/pi/moments_4/mean_grad/Maximum/y*
T0*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
+gradients_1/pi/moments_4/mean_grad/floordivFloorDiv(gradients_1/pi/moments_4/mean_grad/Shape*gradients_1/pi/moments_4/mean_grad/Maximum*
T0*;
_class1
/-loc:@gradients_1/pi/moments_4/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_4/mean_grad/ReshapeReshape4gradients_1/pi/sub_4_grad/tuple/control_dependency_10gradients_1/pi/moments_4/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
'gradients_1/pi/moments_4/mean_grad/TileTile*gradients_1/pi/moments_4/mean_grad/Reshape+gradients_1/pi/moments_4/mean_grad/floordiv*

Tmultiples0*
T0*#
_output_shapes
:�
m
(gradients_1/pi/moments_4/mean_grad/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  �A
�
*gradients_1/pi/moments_4/mean_grad/truedivRealDiv'gradients_1/pi/moments_4/mean_grad/Tile(gradients_1/pi/moments_4/mean_grad/Const*
T0*#
_output_shapes
:�
�
gradients_1/AddNAddN2gradients_1/pi/sub_4_grad/tuple/control_dependencyHgradients_1/pi/moments_4/SquaredDifference_grad/tuple/control_dependency*gradients_1/pi/moments_4/mean_grad/truediv*
T0*4
_class*
(&loc:@gradients_1/pi/sub_4_grad/Reshape*
N*#
_output_shapes
:�
E
*gradients_1/pi/add_9_grad/tuple/group_depsNoOp^gradients_1/AddN
�
2gradients_1/pi/add_9_grad/tuple/control_dependencyIdentitygradients_1/AddN+^gradients_1/pi/add_9_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients_1/pi/sub_4_grad/Reshape
�
4gradients_1/pi/add_9_grad/tuple/control_dependency_1Identitygradients_1/AddN+^gradients_1/pi/add_9_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients_1/pi/sub_4_grad/Reshape
t
gradients_1/pi/add_8_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
k
!gradients_1/pi/add_8_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:
�
/gradients_1/pi/add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_8_grad/Shape!gradients_1/pi/add_8_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_8_grad/SumSum2gradients_1/pi/add_9_grad/tuple/control_dependency/gradients_1/pi/add_8_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/add_8_grad/ReshapeReshapegradients_1/pi/add_8_grad/Sumgradients_1/pi/add_8_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/add_8_grad/Sum_1Sum2gradients_1/pi/add_9_grad/tuple/control_dependency1gradients_1/pi/add_8_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
#gradients_1/pi/add_8_grad/Reshape_1Reshapegradients_1/pi/add_8_grad/Sum_1!gradients_1/pi/add_8_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients_1/pi/add_8_grad/tuple/group_depsNoOp"^gradients_1/pi/add_8_grad/Reshape$^gradients_1/pi/add_8_grad/Reshape_1
�
2gradients_1/pi/add_8_grad/tuple/control_dependencyIdentity!gradients_1/pi/add_8_grad/Reshape+^gradients_1/pi/add_8_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/add_8_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/add_8_grad/tuple/control_dependency_1Identity#gradients_1/pi/add_8_grad/Reshape_1+^gradients_1/pi/add_8_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/add_8_grad/Reshape_1*
_output_shapes
:
x
#gradients_1/pi/truediv_4_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
z
%gradients_1/pi/truediv_4_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
3gradients_1/pi/truediv_4_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients_1/pi/truediv_4_grad/Shape%gradients_1/pi/truediv_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
%gradients_1/pi/truediv_4_grad/RealDivRealDiv2gradients_1/pi/add_8_grad/tuple/control_dependency	pi/Sqrt_4*
T0*#
_output_shapes
:�
�
!gradients_1/pi/truediv_4_grad/SumSum%gradients_1/pi/truediv_4_grad/RealDiv3gradients_1/pi/truediv_4_grad/BroadcastGradientArgs*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
%gradients_1/pi/truediv_4_grad/ReshapeReshape!gradients_1/pi/truediv_4_grad/Sum#gradients_1/pi/truediv_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
`
!gradients_1/pi/truediv_4_grad/NegNegpi/mul_3*
T0*#
_output_shapes
:�
�
'gradients_1/pi/truediv_4_grad/RealDiv_1RealDiv!gradients_1/pi/truediv_4_grad/Neg	pi/Sqrt_4*#
_output_shapes
:�*
T0
�
'gradients_1/pi/truediv_4_grad/RealDiv_2RealDiv'gradients_1/pi/truediv_4_grad/RealDiv_1	pi/Sqrt_4*#
_output_shapes
:�*
T0
�
!gradients_1/pi/truediv_4_grad/mulMul2gradients_1/pi/add_8_grad/tuple/control_dependency'gradients_1/pi/truediv_4_grad/RealDiv_2*
T0*#
_output_shapes
:�
�
#gradients_1/pi/truediv_4_grad/Sum_1Sum!gradients_1/pi/truediv_4_grad/mul5gradients_1/pi/truediv_4_grad/BroadcastGradientArgs:1*
_output_shapes	
:�*
	keep_dims( *

Tidx0*
T0
�
'gradients_1/pi/truediv_4_grad/Reshape_1Reshape#gradients_1/pi/truediv_4_grad/Sum_1%gradients_1/pi/truediv_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
.gradients_1/pi/truediv_4_grad/tuple/group_depsNoOp&^gradients_1/pi/truediv_4_grad/Reshape(^gradients_1/pi/truediv_4_grad/Reshape_1
�
6gradients_1/pi/truediv_4_grad/tuple/control_dependencyIdentity%gradients_1/pi/truediv_4_grad/Reshape/^gradients_1/pi/truediv_4_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/pi/truediv_4_grad/Reshape*#
_output_shapes
:�
�
8gradients_1/pi/truediv_4_grad/tuple/control_dependency_1Identity'gradients_1/pi/truediv_4_grad/Reshape_1/^gradients_1/pi/truediv_4_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients_1/pi/truediv_4_grad/Reshape_1*#
_output_shapes
:�
i
gradients_1/pi/mul_3_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
v
!gradients_1/pi/mul_3_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
/gradients_1/pi/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_3_grad/Shape!gradients_1/pi/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/mul_3_grad/MulMul6gradients_1/pi/truediv_4_grad/tuple/control_dependencypi/sub_3*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_3_grad/SumSumgradients_1/pi/mul_3_grad/Mul/gradients_1/pi/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
!gradients_1/pi/mul_3_grad/ReshapeReshapegradients_1/pi/mul_3_grad/Sumgradients_1/pi/mul_3_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients_1/pi/mul_3_grad/Mul_1Mulpi/Variable_7/read6gradients_1/pi/truediv_4_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_3_grad/Sum_1Sumgradients_1/pi/mul_3_grad/Mul_11gradients_1/pi/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
#gradients_1/pi/mul_3_grad/Reshape_1Reshapegradients_1/pi/mul_3_grad/Sum_1!gradients_1/pi/mul_3_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
|
*gradients_1/pi/mul_3_grad/tuple/group_depsNoOp"^gradients_1/pi/mul_3_grad/Reshape$^gradients_1/pi/mul_3_grad/Reshape_1
�
2gradients_1/pi/mul_3_grad/tuple/control_dependencyIdentity!gradients_1/pi/mul_3_grad/Reshape+^gradients_1/pi/mul_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/mul_3_grad/Reshape*
_output_shapes
:
�
4gradients_1/pi/mul_3_grad/tuple/control_dependency_1Identity#gradients_1/pi/mul_3_grad/Reshape_1+^gradients_1/pi/mul_3_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/mul_3_grad/Reshape_1*#
_output_shapes
:�
�
#gradients_1/pi/Sqrt_4_grad/SqrtGradSqrtGrad	pi/Sqrt_48gradients_1/pi/truediv_4_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�
t
gradients_1/pi/sub_3_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
v
!gradients_1/pi/sub_3_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
/gradients_1/pi/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_3_grad/Shape!gradients_1/pi/sub_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/sub_3_grad/SumSum4gradients_1/pi/mul_3_grad/tuple/control_dependency_1/gradients_1/pi/sub_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
!gradients_1/pi/sub_3_grad/ReshapeReshapegradients_1/pi/sub_3_grad/Sumgradients_1/pi/sub_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/sub_3_grad/Sum_1Sum4gradients_1/pi/mul_3_grad/tuple/control_dependency_11gradients_1/pi/sub_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
k
gradients_1/pi/sub_3_grad/NegNeggradients_1/pi/sub_3_grad/Sum_1*
T0*
_output_shapes	
:�
�
#gradients_1/pi/sub_3_grad/Reshape_1Reshapegradients_1/pi/sub_3_grad/Neg!gradients_1/pi/sub_3_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
|
*gradients_1/pi/sub_3_grad/tuple/group_depsNoOp"^gradients_1/pi/sub_3_grad/Reshape$^gradients_1/pi/sub_3_grad/Reshape_1
�
2gradients_1/pi/sub_3_grad/tuple/control_dependencyIdentity!gradients_1/pi/sub_3_grad/Reshape+^gradients_1/pi/sub_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/sub_3_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/sub_3_grad/tuple/control_dependency_1Identity#gradients_1/pi/sub_3_grad/Reshape_1+^gradients_1/pi/sub_3_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/sub_3_grad/Reshape_1*#
_output_shapes
:�
t
gradients_1/pi/add_7_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
d
!gradients_1/pi/add_7_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
/gradients_1/pi/add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_7_grad/Shape!gradients_1/pi/add_7_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/pi/add_7_grad/SumSum#gradients_1/pi/Sqrt_4_grad/SqrtGrad/gradients_1/pi/add_7_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/add_7_grad/ReshapeReshapegradients_1/pi/add_7_grad/Sumgradients_1/pi/add_7_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/add_7_grad/Sum_1Sum#gradients_1/pi/Sqrt_4_grad/SqrtGrad1gradients_1/pi/add_7_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
#gradients_1/pi/add_7_grad/Reshape_1Reshapegradients_1/pi/add_7_grad/Sum_1!gradients_1/pi/add_7_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
*gradients_1/pi/add_7_grad/tuple/group_depsNoOp"^gradients_1/pi/add_7_grad/Reshape$^gradients_1/pi/add_7_grad/Reshape_1
�
2gradients_1/pi/add_7_grad/tuple/control_dependencyIdentity!gradients_1/pi/add_7_grad/Reshape+^gradients_1/pi/add_7_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/add_7_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/add_7_grad/tuple/control_dependency_1Identity#gradients_1/pi/add_7_grad/Reshape_1+^gradients_1/pi/add_7_grad/tuple/group_deps*
_output_shapes
: *
T0*6
_class,
*(loc:@gradients_1/pi/add_7_grad/Reshape_1
�
,gradients_1/pi/moments_3/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
+gradients_1/pi/moments_3/variance_grad/SizeConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_3/variance_grad/addAdd'pi/moments_3/variance/reduction_indices+gradients_1/pi/moments_3/variance_grad/Size*
T0*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_3/variance_grad/modFloorMod*gradients_1/pi/moments_3/variance_grad/add+gradients_1/pi/moments_3/variance_grad/Size*
_output_shapes
:*
T0*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape
�
.gradients_1/pi/moments_3/variance_grad/Shape_1Const*
valueB:*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
:
�
2gradients_1/pi/moments_3/variance_grad/range/startConst*
value	B : *?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
2gradients_1/pi/moments_3/variance_grad/range/deltaConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients_1/pi/moments_3/variance_grad/rangeRange2gradients_1/pi/moments_3/variance_grad/range/start+gradients_1/pi/moments_3/variance_grad/Size2gradients_1/pi/moments_3/variance_grad/range/delta*

Tidx0*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
_output_shapes
:
�
1gradients_1/pi/moments_3/variance_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape
�
+gradients_1/pi/moments_3/variance_grad/FillFill.gradients_1/pi/moments_3/variance_grad/Shape_11gradients_1/pi/moments_3/variance_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape
�
4gradients_1/pi/moments_3/variance_grad/DynamicStitchDynamicStitch,gradients_1/pi/moments_3/variance_grad/range*gradients_1/pi/moments_3/variance_grad/mod,gradients_1/pi/moments_3/variance_grad/Shape+gradients_1/pi/moments_3/variance_grad/Fill*
T0*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
N*
_output_shapes
:
�
0gradients_1/pi/moments_3/variance_grad/Maximum/yConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_3/variance_grad/MaximumMaximum4gradients_1/pi/moments_3/variance_grad/DynamicStitch0gradients_1/pi/moments_3/variance_grad/Maximum/y*
T0*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape*
_output_shapes
:
�
/gradients_1/pi/moments_3/variance_grad/floordivFloorDiv,gradients_1/pi/moments_3/variance_grad/Shape.gradients_1/pi/moments_3/variance_grad/Maximum*
_output_shapes
:*
T0*?
_class5
31loc:@gradients_1/pi/moments_3/variance_grad/Shape
�
.gradients_1/pi/moments_3/variance_grad/ReshapeReshape2gradients_1/pi/add_7_grad/tuple/control_dependency4gradients_1/pi/moments_3/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
+gradients_1/pi/moments_3/variance_grad/TileTile.gradients_1/pi/moments_3/variance_grad/Reshape/gradients_1/pi/moments_3/variance_grad/floordiv*#
_output_shapes
:�*

Tmultiples0*
T0
q
,gradients_1/pi/moments_3/variance_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_3/variance_grad/truedivRealDiv+gradients_1/pi/moments_3/variance_grad/Tile,gradients_1/pi/moments_3/variance_grad/Const*
T0*#
_output_shapes
:�
�
5gradients_1/pi/moments_3/SquaredDifference_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
7gradients_1/pi/moments_3/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Egradients_1/pi/moments_3/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients_1/pi/moments_3/SquaredDifference_grad/Shape7gradients_1/pi/moments_3/SquaredDifference_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
6gradients_1/pi/moments_3/SquaredDifference_grad/scalarConst/^gradients_1/pi/moments_3/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
3gradients_1/pi/moments_3/SquaredDifference_grad/MulMul6gradients_1/pi/moments_3/SquaredDifference_grad/scalar.gradients_1/pi/moments_3/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_3/SquaredDifference_grad/subSubpi/add_6pi/moments_3/StopGradient/^gradients_1/pi/moments_3/variance_grad/truediv*
T0*#
_output_shapes
:�
�
5gradients_1/pi/moments_3/SquaredDifference_grad/mul_1Mul3gradients_1/pi/moments_3/SquaredDifference_grad/Mul3gradients_1/pi/moments_3/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_3/SquaredDifference_grad/SumSum5gradients_1/pi/moments_3/SquaredDifference_grad/mul_1Egradients_1/pi/moments_3/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
7gradients_1/pi/moments_3/SquaredDifference_grad/ReshapeReshape3gradients_1/pi/moments_3/SquaredDifference_grad/Sum5gradients_1/pi/moments_3/SquaredDifference_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
5gradients_1/pi/moments_3/SquaredDifference_grad/Sum_1Sum5gradients_1/pi/moments_3/SquaredDifference_grad/mul_1Ggradients_1/pi/moments_3/SquaredDifference_grad/BroadcastGradientArgs:1*
_output_shapes	
:�*
	keep_dims( *

Tidx0*
T0
�
9gradients_1/pi/moments_3/SquaredDifference_grad/Reshape_1Reshape5gradients_1/pi/moments_3/SquaredDifference_grad/Sum_17gradients_1/pi/moments_3/SquaredDifference_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
�
3gradients_1/pi/moments_3/SquaredDifference_grad/NegNeg9gradients_1/pi/moments_3/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
@gradients_1/pi/moments_3/SquaredDifference_grad/tuple/group_depsNoOp4^gradients_1/pi/moments_3/SquaredDifference_grad/Neg8^gradients_1/pi/moments_3/SquaredDifference_grad/Reshape
�
Hgradients_1/pi/moments_3/SquaredDifference_grad/tuple/control_dependencyIdentity7gradients_1/pi/moments_3/SquaredDifference_grad/ReshapeA^gradients_1/pi/moments_3/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/moments_3/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Jgradients_1/pi/moments_3/SquaredDifference_grad/tuple/control_dependency_1Identity3gradients_1/pi/moments_3/SquaredDifference_grad/NegA^gradients_1/pi/moments_3/SquaredDifference_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients_1/pi/moments_3/SquaredDifference_grad/Neg*#
_output_shapes
:�
}
(gradients_1/pi/moments_3/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
'gradients_1/pi/moments_3/mean_grad/SizeConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients_1/pi/moments_3/mean_grad/addAdd#pi/moments_3/mean/reduction_indices'gradients_1/pi/moments_3/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
&gradients_1/pi/moments_3/mean_grad/modFloorMod&gradients_1/pi/moments_3/mean_grad/add'gradients_1/pi/moments_3/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_3/mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape
�
.gradients_1/pi/moments_3/mean_grad/range/startConst*
value	B : *;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_3/mean_grad/range/deltaConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients_1/pi/moments_3/mean_grad/rangeRange.gradients_1/pi/moments_3/mean_grad/range/start'gradients_1/pi/moments_3/mean_grad/Size.gradients_1/pi/moments_3/mean_grad/range/delta*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
-gradients_1/pi/moments_3/mean_grad/Fill/valueConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
'gradients_1/pi/moments_3/mean_grad/FillFill*gradients_1/pi/moments_3/mean_grad/Shape_1-gradients_1/pi/moments_3/mean_grad/Fill/value*
T0*

index_type0*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
0gradients_1/pi/moments_3/mean_grad/DynamicStitchDynamicStitch(gradients_1/pi/moments_3/mean_grad/range&gradients_1/pi/moments_3/mean_grad/mod(gradients_1/pi/moments_3/mean_grad/Shape'gradients_1/pi/moments_3/mean_grad/Fill*
T0*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
N*
_output_shapes
:
�
,gradients_1/pi/moments_3/mean_grad/Maximum/yConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_3/mean_grad/MaximumMaximum0gradients_1/pi/moments_3/mean_grad/DynamicStitch,gradients_1/pi/moments_3/mean_grad/Maximum/y*
T0*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
+gradients_1/pi/moments_3/mean_grad/floordivFloorDiv(gradients_1/pi/moments_3/mean_grad/Shape*gradients_1/pi/moments_3/mean_grad/Maximum*
T0*;
_class1
/-loc:@gradients_1/pi/moments_3/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_3/mean_grad/ReshapeReshape4gradients_1/pi/sub_3_grad/tuple/control_dependency_10gradients_1/pi/moments_3/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
'gradients_1/pi/moments_3/mean_grad/TileTile*gradients_1/pi/moments_3/mean_grad/Reshape+gradients_1/pi/moments_3/mean_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
m
(gradients_1/pi/moments_3/mean_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_3/mean_grad/truedivRealDiv'gradients_1/pi/moments_3/mean_grad/Tile(gradients_1/pi/moments_3/mean_grad/Const*
T0*#
_output_shapes
:�
�
gradients_1/AddN_1AddN2gradients_1/pi/sub_3_grad/tuple/control_dependencyHgradients_1/pi/moments_3/SquaredDifference_grad/tuple/control_dependency*gradients_1/pi/moments_3/mean_grad/truediv*
T0*4
_class*
(&loc:@gradients_1/pi/sub_3_grad/Reshape*
N*#
_output_shapes
:�
G
*gradients_1/pi/add_6_grad/tuple/group_depsNoOp^gradients_1/AddN_1
�
2gradients_1/pi/add_6_grad/tuple/control_dependencyIdentitygradients_1/AddN_1+^gradients_1/pi/add_6_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/sub_3_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/add_6_grad/tuple/control_dependency_1Identitygradients_1/AddN_1+^gradients_1/pi/add_6_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/sub_3_grad/Reshape*#
_output_shapes
:�
�
#gradients_1/pi/MatMul_1_grad/MatMulBatchMatMul2gradients_1/pi/add_6_grad/tuple/control_dependencypi/add_5*
T0*$
_output_shapes
:��*
adj_x( *
adj_y(
�
%gradients_1/pi/MatMul_1_grad/MatMul_1BatchMatMul
pi/Softmax2gradients_1/pi/add_6_grad/tuple/control_dependency*
T0*#
_output_shapes
:�*
adj_x(*
adj_y( 
�
-gradients_1/pi/MatMul_1_grad/tuple/group_depsNoOp$^gradients_1/pi/MatMul_1_grad/MatMul&^gradients_1/pi/MatMul_1_grad/MatMul_1
�
5gradients_1/pi/MatMul_1_grad/tuple/control_dependencyIdentity#gradients_1/pi/MatMul_1_grad/MatMul.^gradients_1/pi/MatMul_1_grad/tuple/group_deps*$
_output_shapes
:��*
T0*6
_class,
*(loc:@gradients_1/pi/MatMul_1_grad/MatMul
�
7gradients_1/pi/MatMul_1_grad/tuple/control_dependency_1Identity%gradients_1/pi/MatMul_1_grad/MatMul_1.^gradients_1/pi/MatMul_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/pi/MatMul_1_grad/MatMul_1*#
_output_shapes
:�
�
gradients_1/pi/Softmax_grad/mulMul5gradients_1/pi/MatMul_1_grad/tuple/control_dependency
pi/Softmax*
T0*$
_output_shapes
:��
|
1gradients_1/pi/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
valueB :
���������
�
gradients_1/pi/Softmax_grad/SumSumgradients_1/pi/Softmax_grad/mul1gradients_1/pi/Softmax_grad/Sum/reduction_indices*
T0*#
_output_shapes
:�*
	keep_dims(*

Tidx0
�
gradients_1/pi/Softmax_grad/subSub5gradients_1/pi/MatMul_1_grad/tuple/control_dependencygradients_1/pi/Softmax_grad/Sum*
T0*$
_output_shapes
:��
�
!gradients_1/pi/Softmax_grad/mul_1Mulgradients_1/pi/Softmax_grad/sub
pi/Softmax*
T0*$
_output_shapes
:��
t
gradients_1/pi/add_5_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
k
!gradients_1/pi/add_5_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
/gradients_1/pi/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_5_grad/Shape!gradients_1/pi/add_5_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_5_grad/SumSum7gradients_1/pi/MatMul_1_grad/tuple/control_dependency_1/gradients_1/pi/add_5_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/add_5_grad/ReshapeReshapegradients_1/pi/add_5_grad/Sumgradients_1/pi/add_5_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/add_5_grad/Sum_1Sum7gradients_1/pi/MatMul_1_grad/tuple/control_dependency_11gradients_1/pi/add_5_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
#gradients_1/pi/add_5_grad/Reshape_1Reshapegradients_1/pi/add_5_grad/Sum_1!gradients_1/pi/add_5_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients_1/pi/add_5_grad/tuple/group_depsNoOp"^gradients_1/pi/add_5_grad/Reshape$^gradients_1/pi/add_5_grad/Reshape_1
�
2gradients_1/pi/add_5_grad/tuple/control_dependencyIdentity!gradients_1/pi/add_5_grad/Reshape+^gradients_1/pi/add_5_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/add_5_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/add_5_grad/tuple/control_dependency_1Identity#gradients_1/pi/add_5_grad/Reshape_1+^gradients_1/pi/add_5_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/add_5_grad/Reshape_1*
_output_shapes
:
x
#gradients_1/pi/truediv_3_grad/ShapeConst*!
valueB"   �   �   *
dtype0*
_output_shapes
:
h
%gradients_1/pi/truediv_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
3gradients_1/pi/truediv_3_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients_1/pi/truediv_3_grad/Shape%gradients_1/pi/truediv_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
%gradients_1/pi/truediv_3_grad/RealDivRealDiv!gradients_1/pi/Softmax_grad/mul_1	pi/Sqrt_3*
T0*$
_output_shapes
:��
�
!gradients_1/pi/truediv_3_grad/SumSum%gradients_1/pi/truediv_3_grad/RealDiv3gradients_1/pi/truediv_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0* 
_output_shapes
:
��
�
%gradients_1/pi/truediv_3_grad/ReshapeReshape!gradients_1/pi/truediv_3_grad/Sum#gradients_1/pi/truediv_3_grad/Shape*
T0*
Tshape0*$
_output_shapes
:��
b
!gradients_1/pi/truediv_3_grad/NegNeg	pi/MatMul*
T0*$
_output_shapes
:��
�
'gradients_1/pi/truediv_3_grad/RealDiv_1RealDiv!gradients_1/pi/truediv_3_grad/Neg	pi/Sqrt_3*
T0*$
_output_shapes
:��
�
'gradients_1/pi/truediv_3_grad/RealDiv_2RealDiv'gradients_1/pi/truediv_3_grad/RealDiv_1	pi/Sqrt_3*
T0*$
_output_shapes
:��
�
!gradients_1/pi/truediv_3_grad/mulMul!gradients_1/pi/Softmax_grad/mul_1'gradients_1/pi/truediv_3_grad/RealDiv_2*
T0*$
_output_shapes
:��
�
#gradients_1/pi/truediv_3_grad/Sum_1Sum!gradients_1/pi/truediv_3_grad/mul5gradients_1/pi/truediv_3_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
'gradients_1/pi/truediv_3_grad/Reshape_1Reshape#gradients_1/pi/truediv_3_grad/Sum_1%gradients_1/pi/truediv_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
.gradients_1/pi/truediv_3_grad/tuple/group_depsNoOp&^gradients_1/pi/truediv_3_grad/Reshape(^gradients_1/pi/truediv_3_grad/Reshape_1
�
6gradients_1/pi/truediv_3_grad/tuple/control_dependencyIdentity%gradients_1/pi/truediv_3_grad/Reshape/^gradients_1/pi/truediv_3_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/pi/truediv_3_grad/Reshape*$
_output_shapes
:��
�
8gradients_1/pi/truediv_3_grad/tuple/control_dependency_1Identity'gradients_1/pi/truediv_3_grad/Reshape_1/^gradients_1/pi/truediv_3_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients_1/pi/truediv_3_grad/Reshape_1*
_output_shapes
: 
x
#gradients_1/pi/truediv_2_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
z
%gradients_1/pi/truediv_2_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
3gradients_1/pi/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients_1/pi/truediv_2_grad/Shape%gradients_1/pi/truediv_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
%gradients_1/pi/truediv_2_grad/RealDivRealDiv2gradients_1/pi/add_5_grad/tuple/control_dependency	pi/Sqrt_2*
T0*#
_output_shapes
:�
�
!gradients_1/pi/truediv_2_grad/SumSum%gradients_1/pi/truediv_2_grad/RealDiv3gradients_1/pi/truediv_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
%gradients_1/pi/truediv_2_grad/ReshapeReshape!gradients_1/pi/truediv_2_grad/Sum#gradients_1/pi/truediv_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
`
!gradients_1/pi/truediv_2_grad/NegNegpi/mul_2*
T0*#
_output_shapes
:�
�
'gradients_1/pi/truediv_2_grad/RealDiv_1RealDiv!gradients_1/pi/truediv_2_grad/Neg	pi/Sqrt_2*
T0*#
_output_shapes
:�
�
'gradients_1/pi/truediv_2_grad/RealDiv_2RealDiv'gradients_1/pi/truediv_2_grad/RealDiv_1	pi/Sqrt_2*
T0*#
_output_shapes
:�
�
!gradients_1/pi/truediv_2_grad/mulMul2gradients_1/pi/add_5_grad/tuple/control_dependency'gradients_1/pi/truediv_2_grad/RealDiv_2*
T0*#
_output_shapes
:�
�
#gradients_1/pi/truediv_2_grad/Sum_1Sum!gradients_1/pi/truediv_2_grad/mul5gradients_1/pi/truediv_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
'gradients_1/pi/truediv_2_grad/Reshape_1Reshape#gradients_1/pi/truediv_2_grad/Sum_1%gradients_1/pi/truediv_2_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
.gradients_1/pi/truediv_2_grad/tuple/group_depsNoOp&^gradients_1/pi/truediv_2_grad/Reshape(^gradients_1/pi/truediv_2_grad/Reshape_1
�
6gradients_1/pi/truediv_2_grad/tuple/control_dependencyIdentity%gradients_1/pi/truediv_2_grad/Reshape/^gradients_1/pi/truediv_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/pi/truediv_2_grad/Reshape*#
_output_shapes
:�
�
8gradients_1/pi/truediv_2_grad/tuple/control_dependency_1Identity'gradients_1/pi/truediv_2_grad/Reshape_1/^gradients_1/pi/truediv_2_grad/tuple/group_deps*#
_output_shapes
:�*
T0*:
_class0
.,loc:@gradients_1/pi/truediv_2_grad/Reshape_1
�
!gradients_1/pi/MatMul_grad/MatMulBatchMatMul6gradients_1/pi/truediv_3_grad/tuple/control_dependencypi/transpose*
T0*#
_output_shapes
:�*
adj_x( *
adj_y(
�
#gradients_1/pi/MatMul_grad/MatMul_1BatchMatMulpi/add_16gradients_1/pi/truediv_3_grad/tuple/control_dependency*
adj_x(*
adj_y( *
T0*#
_output_shapes
:�
}
+gradients_1/pi/MatMul_grad/tuple/group_depsNoOp"^gradients_1/pi/MatMul_grad/MatMul$^gradients_1/pi/MatMul_grad/MatMul_1
�
3gradients_1/pi/MatMul_grad/tuple/control_dependencyIdentity!gradients_1/pi/MatMul_grad/MatMul,^gradients_1/pi/MatMul_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients_1/pi/MatMul_grad/MatMul
�
5gradients_1/pi/MatMul_grad/tuple/control_dependency_1Identity#gradients_1/pi/MatMul_grad/MatMul_1,^gradients_1/pi/MatMul_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/MatMul_grad/MatMul_1*#
_output_shapes
:�
i
gradients_1/pi/mul_2_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
v
!gradients_1/pi/mul_2_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
/gradients_1/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_2_grad/Shape!gradients_1/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/mul_2_grad/MulMul6gradients_1/pi/truediv_2_grad/tuple/control_dependencypi/sub_2*#
_output_shapes
:�*
T0
�
gradients_1/pi/mul_2_grad/SumSumgradients_1/pi/mul_2_grad/Mul/gradients_1/pi/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
!gradients_1/pi/mul_2_grad/ReshapeReshapegradients_1/pi/mul_2_grad/Sumgradients_1/pi/mul_2_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients_1/pi/mul_2_grad/Mul_1Mulpi/Variable_5/read6gradients_1/pi/truediv_2_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_2_grad/Sum_1Sumgradients_1/pi/mul_2_grad/Mul_11gradients_1/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
#gradients_1/pi/mul_2_grad/Reshape_1Reshapegradients_1/pi/mul_2_grad/Sum_1!gradients_1/pi/mul_2_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
|
*gradients_1/pi/mul_2_grad/tuple/group_depsNoOp"^gradients_1/pi/mul_2_grad/Reshape$^gradients_1/pi/mul_2_grad/Reshape_1
�
2gradients_1/pi/mul_2_grad/tuple/control_dependencyIdentity!gradients_1/pi/mul_2_grad/Reshape+^gradients_1/pi/mul_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/mul_2_grad/Reshape*
_output_shapes
:
�
4gradients_1/pi/mul_2_grad/tuple/control_dependency_1Identity#gradients_1/pi/mul_2_grad/Reshape_1+^gradients_1/pi/mul_2_grad/tuple/group_deps*#
_output_shapes
:�*
T0*6
_class,
*(loc:@gradients_1/pi/mul_2_grad/Reshape_1
�
#gradients_1/pi/Sqrt_2_grad/SqrtGradSqrtGrad	pi/Sqrt_28gradients_1/pi/truediv_2_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�
t
gradients_1/pi/add_1_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
k
!gradients_1/pi/add_1_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
/gradients_1/pi/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_1_grad/Shape!gradients_1/pi/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_1_grad/SumSum3gradients_1/pi/MatMul_grad/tuple/control_dependency/gradients_1/pi/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
!gradients_1/pi/add_1_grad/ReshapeReshapegradients_1/pi/add_1_grad/Sumgradients_1/pi/add_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/add_1_grad/Sum_1Sum3gradients_1/pi/MatMul_grad/tuple/control_dependency1gradients_1/pi/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
#gradients_1/pi/add_1_grad/Reshape_1Reshapegradients_1/pi/add_1_grad/Sum_1!gradients_1/pi/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients_1/pi/add_1_grad/tuple/group_depsNoOp"^gradients_1/pi/add_1_grad/Reshape$^gradients_1/pi/add_1_grad/Reshape_1
�
2gradients_1/pi/add_1_grad/tuple/control_dependencyIdentity!gradients_1/pi/add_1_grad/Reshape+^gradients_1/pi/add_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/add_1_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/add_1_grad/tuple/control_dependency_1Identity#gradients_1/pi/add_1_grad/Reshape_1+^gradients_1/pi/add_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/add_1_grad/Reshape_1*
_output_shapes
:
|
/gradients_1/pi/transpose_grad/InvertPermutationInvertPermutationpi/transpose/perm*
T0*
_output_shapes
:
�
'gradients_1/pi/transpose_grad/transpose	Transpose5gradients_1/pi/MatMul_grad/tuple/control_dependency_1/gradients_1/pi/transpose_grad/InvertPermutation*
T0*#
_output_shapes
:�*
Tperm0
t
gradients_1/pi/sub_2_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
v
!gradients_1/pi/sub_2_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
/gradients_1/pi/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_2_grad/Shape!gradients_1/pi/sub_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/sub_2_grad/SumSum4gradients_1/pi/mul_2_grad/tuple/control_dependency_1/gradients_1/pi/sub_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/sub_2_grad/ReshapeReshapegradients_1/pi/sub_2_grad/Sumgradients_1/pi/sub_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/sub_2_grad/Sum_1Sum4gradients_1/pi/mul_2_grad/tuple/control_dependency_11gradients_1/pi/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
k
gradients_1/pi/sub_2_grad/NegNeggradients_1/pi/sub_2_grad/Sum_1*
T0*
_output_shapes	
:�
�
#gradients_1/pi/sub_2_grad/Reshape_1Reshapegradients_1/pi/sub_2_grad/Neg!gradients_1/pi/sub_2_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
|
*gradients_1/pi/sub_2_grad/tuple/group_depsNoOp"^gradients_1/pi/sub_2_grad/Reshape$^gradients_1/pi/sub_2_grad/Reshape_1
�
2gradients_1/pi/sub_2_grad/tuple/control_dependencyIdentity!gradients_1/pi/sub_2_grad/Reshape+^gradients_1/pi/sub_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/sub_2_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/sub_2_grad/tuple/control_dependency_1Identity#gradients_1/pi/sub_2_grad/Reshape_1+^gradients_1/pi/sub_2_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/sub_2_grad/Reshape_1*#
_output_shapes
:�
t
gradients_1/pi/add_4_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
d
!gradients_1/pi/add_4_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
/gradients_1/pi/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_4_grad/Shape!gradients_1/pi/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_4_grad/SumSum#gradients_1/pi/Sqrt_2_grad/SqrtGrad/gradients_1/pi/add_4_grad/BroadcastGradientArgs*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/add_4_grad/ReshapeReshapegradients_1/pi/add_4_grad/Sumgradients_1/pi/add_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/add_4_grad/Sum_1Sum#gradients_1/pi/Sqrt_2_grad/SqrtGrad1gradients_1/pi/add_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
#gradients_1/pi/add_4_grad/Reshape_1Reshapegradients_1/pi/add_4_grad/Sum_1!gradients_1/pi/add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
*gradients_1/pi/add_4_grad/tuple/group_depsNoOp"^gradients_1/pi/add_4_grad/Reshape$^gradients_1/pi/add_4_grad/Reshape_1
�
2gradients_1/pi/add_4_grad/tuple/control_dependencyIdentity!gradients_1/pi/add_4_grad/Reshape+^gradients_1/pi/add_4_grad/tuple/group_deps*#
_output_shapes
:�*
T0*4
_class*
(&loc:@gradients_1/pi/add_4_grad/Reshape
�
4gradients_1/pi/add_4_grad/tuple/control_dependency_1Identity#gradients_1/pi/add_4_grad/Reshape_1+^gradients_1/pi/add_4_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/add_4_grad/Reshape_1*
_output_shapes
: 
v
!gradients_1/pi/truediv_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
x
#gradients_1/pi/truediv_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
1gradients_1/pi/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients_1/pi/truediv_grad/Shape#gradients_1/pi/truediv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
#gradients_1/pi/truediv_grad/RealDivRealDiv2gradients_1/pi/add_1_grad/tuple/control_dependencypi/Sqrt*
T0*#
_output_shapes
:�
�
gradients_1/pi/truediv_grad/SumSum#gradients_1/pi/truediv_grad/RealDiv1gradients_1/pi/truediv_grad/BroadcastGradientArgs*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
#gradients_1/pi/truediv_grad/ReshapeReshapegradients_1/pi/truediv_grad/Sum!gradients_1/pi/truediv_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
\
gradients_1/pi/truediv_grad/NegNegpi/mul*
T0*#
_output_shapes
:�
�
%gradients_1/pi/truediv_grad/RealDiv_1RealDivgradients_1/pi/truediv_grad/Negpi/Sqrt*#
_output_shapes
:�*
T0
�
%gradients_1/pi/truediv_grad/RealDiv_2RealDiv%gradients_1/pi/truediv_grad/RealDiv_1pi/Sqrt*
T0*#
_output_shapes
:�
�
gradients_1/pi/truediv_grad/mulMul2gradients_1/pi/add_1_grad/tuple/control_dependency%gradients_1/pi/truediv_grad/RealDiv_2*#
_output_shapes
:�*
T0
�
!gradients_1/pi/truediv_grad/Sum_1Sumgradients_1/pi/truediv_grad/mul3gradients_1/pi/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
�
%gradients_1/pi/truediv_grad/Reshape_1Reshape!gradients_1/pi/truediv_grad/Sum_1#gradients_1/pi/truediv_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
,gradients_1/pi/truediv_grad/tuple/group_depsNoOp$^gradients_1/pi/truediv_grad/Reshape&^gradients_1/pi/truediv_grad/Reshape_1
�
4gradients_1/pi/truediv_grad/tuple/control_dependencyIdentity#gradients_1/pi/truediv_grad/Reshape-^gradients_1/pi/truediv_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/truediv_grad/Reshape*#
_output_shapes
:�
�
6gradients_1/pi/truediv_grad/tuple/control_dependency_1Identity%gradients_1/pi/truediv_grad/Reshape_1-^gradients_1/pi/truediv_grad/tuple/group_deps*#
_output_shapes
:�*
T0*8
_class.
,*loc:@gradients_1/pi/truediv_grad/Reshape_1
t
gradients_1/pi/add_3_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
k
!gradients_1/pi/add_3_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
/gradients_1/pi/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_3_grad/Shape!gradients_1/pi/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_3_grad/SumSum'gradients_1/pi/transpose_grad/transpose/gradients_1/pi/add_3_grad/BroadcastGradientArgs*
_output_shapes
:	�*
	keep_dims( *

Tidx0*
T0
�
!gradients_1/pi/add_3_grad/ReshapeReshapegradients_1/pi/add_3_grad/Sumgradients_1/pi/add_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/add_3_grad/Sum_1Sum'gradients_1/pi/transpose_grad/transpose1gradients_1/pi/add_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
�
#gradients_1/pi/add_3_grad/Reshape_1Reshapegradients_1/pi/add_3_grad/Sum_1!gradients_1/pi/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients_1/pi/add_3_grad/tuple/group_depsNoOp"^gradients_1/pi/add_3_grad/Reshape$^gradients_1/pi/add_3_grad/Reshape_1
�
2gradients_1/pi/add_3_grad/tuple/control_dependencyIdentity!gradients_1/pi/add_3_grad/Reshape+^gradients_1/pi/add_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/add_3_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/add_3_grad/tuple/control_dependency_1Identity#gradients_1/pi/add_3_grad/Reshape_1+^gradients_1/pi/add_3_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/add_3_grad/Reshape_1*
_output_shapes
:
�
,gradients_1/pi/moments_2/variance_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
�
+gradients_1/pi/moments_2/variance_grad/SizeConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_2/variance_grad/addAdd'pi/moments_2/variance/reduction_indices+gradients_1/pi/moments_2/variance_grad/Size*
_output_shapes
:*
T0*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape
�
*gradients_1/pi/moments_2/variance_grad/modFloorMod*gradients_1/pi/moments_2/variance_grad/add+gradients_1/pi/moments_2/variance_grad/Size*
T0*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
.gradients_1/pi/moments_2/variance_grad/Shape_1Const*
valueB:*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
:
�
2gradients_1/pi/moments_2/variance_grad/range/startConst*
dtype0*
_output_shapes
: *
value	B : *?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape
�
2gradients_1/pi/moments_2/variance_grad/range/deltaConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients_1/pi/moments_2/variance_grad/rangeRange2gradients_1/pi/moments_2/variance_grad/range/start+gradients_1/pi/moments_2/variance_grad/Size2gradients_1/pi/moments_2/variance_grad/range/delta*
_output_shapes
:*

Tidx0*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape
�
1gradients_1/pi/moments_2/variance_grad/Fill/valueConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
+gradients_1/pi/moments_2/variance_grad/FillFill.gradients_1/pi/moments_2/variance_grad/Shape_11gradients_1/pi/moments_2/variance_grad/Fill/value*
T0*

index_type0*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
4gradients_1/pi/moments_2/variance_grad/DynamicStitchDynamicStitch,gradients_1/pi/moments_2/variance_grad/range*gradients_1/pi/moments_2/variance_grad/mod,gradients_1/pi/moments_2/variance_grad/Shape+gradients_1/pi/moments_2/variance_grad/Fill*
T0*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
N*
_output_shapes
:
�
0gradients_1/pi/moments_2/variance_grad/Maximum/yConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_2/variance_grad/MaximumMaximum4gradients_1/pi/moments_2/variance_grad/DynamicStitch0gradients_1/pi/moments_2/variance_grad/Maximum/y*
T0*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
/gradients_1/pi/moments_2/variance_grad/floordivFloorDiv,gradients_1/pi/moments_2/variance_grad/Shape.gradients_1/pi/moments_2/variance_grad/Maximum*
T0*?
_class5
31loc:@gradients_1/pi/moments_2/variance_grad/Shape*
_output_shapes
:
�
.gradients_1/pi/moments_2/variance_grad/ReshapeReshape2gradients_1/pi/add_4_grad/tuple/control_dependency4gradients_1/pi/moments_2/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
+gradients_1/pi/moments_2/variance_grad/TileTile.gradients_1/pi/moments_2/variance_grad/Reshape/gradients_1/pi/moments_2/variance_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
q
,gradients_1/pi/moments_2/variance_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_2/variance_grad/truedivRealDiv+gradients_1/pi/moments_2/variance_grad/Tile,gradients_1/pi/moments_2/variance_grad/Const*#
_output_shapes
:�*
T0
g
gradients_1/pi/mul_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
t
gradients_1/pi/mul_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
-gradients_1/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_grad/Shapegradients_1/pi/mul_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
�
gradients_1/pi/mul_grad/MulMul4gradients_1/pi/truediv_grad/tuple/control_dependencypi/sub*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_grad/SumSumgradients_1/pi/mul_grad/Mul-gradients_1/pi/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
�
gradients_1/pi/mul_grad/ReshapeReshapegradients_1/pi/mul_grad/Sumgradients_1/pi/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
gradients_1/pi/mul_grad/Mul_1Mulpi/Variable_1/read4gradients_1/pi/truediv_grad/tuple/control_dependency*#
_output_shapes
:�*
T0
�
gradients_1/pi/mul_grad/Sum_1Sumgradients_1/pi/mul_grad/Mul_1/gradients_1/pi/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/mul_grad/Reshape_1Reshapegradients_1/pi/mul_grad/Sum_1gradients_1/pi/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients_1/pi/mul_grad/tuple/group_depsNoOp ^gradients_1/pi/mul_grad/Reshape"^gradients_1/pi/mul_grad/Reshape_1
�
0gradients_1/pi/mul_grad/tuple/control_dependencyIdentitygradients_1/pi/mul_grad/Reshape)^gradients_1/pi/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/pi/mul_grad/Reshape*
_output_shapes
:
�
2gradients_1/pi/mul_grad/tuple/control_dependency_1Identity!gradients_1/pi/mul_grad/Reshape_1)^gradients_1/pi/mul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/mul_grad/Reshape_1*#
_output_shapes
:�
�
!gradients_1/pi/Sqrt_grad/SqrtGradSqrtGradpi/Sqrt6gradients_1/pi/truediv_grad/tuple/control_dependency_1*#
_output_shapes
:�*
T0
x
#gradients_1/pi/truediv_1_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
z
%gradients_1/pi/truediv_1_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
3gradients_1/pi/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients_1/pi/truediv_1_grad/Shape%gradients_1/pi/truediv_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
%gradients_1/pi/truediv_1_grad/RealDivRealDiv2gradients_1/pi/add_3_grad/tuple/control_dependency	pi/Sqrt_1*
T0*#
_output_shapes
:�
�
!gradients_1/pi/truediv_1_grad/SumSum%gradients_1/pi/truediv_1_grad/RealDiv3gradients_1/pi/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
%gradients_1/pi/truediv_1_grad/ReshapeReshape!gradients_1/pi/truediv_1_grad/Sum#gradients_1/pi/truediv_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
`
!gradients_1/pi/truediv_1_grad/NegNegpi/mul_1*#
_output_shapes
:�*
T0
�
'gradients_1/pi/truediv_1_grad/RealDiv_1RealDiv!gradients_1/pi/truediv_1_grad/Neg	pi/Sqrt_1*
T0*#
_output_shapes
:�
�
'gradients_1/pi/truediv_1_grad/RealDiv_2RealDiv'gradients_1/pi/truediv_1_grad/RealDiv_1	pi/Sqrt_1*
T0*#
_output_shapes
:�
�
!gradients_1/pi/truediv_1_grad/mulMul2gradients_1/pi/add_3_grad/tuple/control_dependency'gradients_1/pi/truediv_1_grad/RealDiv_2*
T0*#
_output_shapes
:�
�
#gradients_1/pi/truediv_1_grad/Sum_1Sum!gradients_1/pi/truediv_1_grad/mul5gradients_1/pi/truediv_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
'gradients_1/pi/truediv_1_grad/Reshape_1Reshape#gradients_1/pi/truediv_1_grad/Sum_1%gradients_1/pi/truediv_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
.gradients_1/pi/truediv_1_grad/tuple/group_depsNoOp&^gradients_1/pi/truediv_1_grad/Reshape(^gradients_1/pi/truediv_1_grad/Reshape_1
�
6gradients_1/pi/truediv_1_grad/tuple/control_dependencyIdentity%gradients_1/pi/truediv_1_grad/Reshape/^gradients_1/pi/truediv_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients_1/pi/truediv_1_grad/Reshape*#
_output_shapes
:�
�
8gradients_1/pi/truediv_1_grad/tuple/control_dependency_1Identity'gradients_1/pi/truediv_1_grad/Reshape_1/^gradients_1/pi/truediv_1_grad/tuple/group_deps*#
_output_shapes
:�*
T0*:
_class0
.,loc:@gradients_1/pi/truediv_1_grad/Reshape_1
�
5gradients_1/pi/moments_2/SquaredDifference_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
�
7gradients_1/pi/moments_2/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Egradients_1/pi/moments_2/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients_1/pi/moments_2/SquaredDifference_grad/Shape7gradients_1/pi/moments_2/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients_1/pi/moments_2/SquaredDifference_grad/scalarConst/^gradients_1/pi/moments_2/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
3gradients_1/pi/moments_2/SquaredDifference_grad/MulMul6gradients_1/pi/moments_2/SquaredDifference_grad/scalar.gradients_1/pi/moments_2/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_2/SquaredDifference_grad/subSubpi/dense_2/Relupi/moments_2/StopGradient/^gradients_1/pi/moments_2/variance_grad/truediv*
T0*#
_output_shapes
:�
�
5gradients_1/pi/moments_2/SquaredDifference_grad/mul_1Mul3gradients_1/pi/moments_2/SquaredDifference_grad/Mul3gradients_1/pi/moments_2/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_2/SquaredDifference_grad/SumSum5gradients_1/pi/moments_2/SquaredDifference_grad/mul_1Egradients_1/pi/moments_2/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
7gradients_1/pi/moments_2/SquaredDifference_grad/ReshapeReshape3gradients_1/pi/moments_2/SquaredDifference_grad/Sum5gradients_1/pi/moments_2/SquaredDifference_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
5gradients_1/pi/moments_2/SquaredDifference_grad/Sum_1Sum5gradients_1/pi/moments_2/SquaredDifference_grad/mul_1Ggradients_1/pi/moments_2/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
9gradients_1/pi/moments_2/SquaredDifference_grad/Reshape_1Reshape5gradients_1/pi/moments_2/SquaredDifference_grad/Sum_17gradients_1/pi/moments_2/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients_1/pi/moments_2/SquaredDifference_grad/NegNeg9gradients_1/pi/moments_2/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
@gradients_1/pi/moments_2/SquaredDifference_grad/tuple/group_depsNoOp4^gradients_1/pi/moments_2/SquaredDifference_grad/Neg8^gradients_1/pi/moments_2/SquaredDifference_grad/Reshape
�
Hgradients_1/pi/moments_2/SquaredDifference_grad/tuple/control_dependencyIdentity7gradients_1/pi/moments_2/SquaredDifference_grad/ReshapeA^gradients_1/pi/moments_2/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/moments_2/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Jgradients_1/pi/moments_2/SquaredDifference_grad/tuple/control_dependency_1Identity3gradients_1/pi/moments_2/SquaredDifference_grad/NegA^gradients_1/pi/moments_2/SquaredDifference_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients_1/pi/moments_2/SquaredDifference_grad/Neg*#
_output_shapes
:�
r
gradients_1/pi/sub_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
t
gradients_1/pi/sub_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
-gradients_1/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_grad/Shapegradients_1/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/sub_grad/SumSum2gradients_1/pi/mul_grad/tuple/control_dependency_1-gradients_1/pi/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
gradients_1/pi/sub_grad/ReshapeReshapegradients_1/pi/sub_grad/Sumgradients_1/pi/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/sub_grad/Sum_1Sum2gradients_1/pi/mul_grad/tuple/control_dependency_1/gradients_1/pi/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
g
gradients_1/pi/sub_grad/NegNeggradients_1/pi/sub_grad/Sum_1*
T0*
_output_shapes	
:�
�
!gradients_1/pi/sub_grad/Reshape_1Reshapegradients_1/pi/sub_grad/Neggradients_1/pi/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
v
(gradients_1/pi/sub_grad/tuple/group_depsNoOp ^gradients_1/pi/sub_grad/Reshape"^gradients_1/pi/sub_grad/Reshape_1
�
0gradients_1/pi/sub_grad/tuple/control_dependencyIdentitygradients_1/pi/sub_grad/Reshape)^gradients_1/pi/sub_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/pi/sub_grad/Reshape*#
_output_shapes
:�
�
2gradients_1/pi/sub_grad/tuple/control_dependency_1Identity!gradients_1/pi/sub_grad/Reshape_1)^gradients_1/pi/sub_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/sub_grad/Reshape_1*#
_output_shapes
:�
r
gradients_1/pi/add_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
b
gradients_1/pi/add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
-gradients_1/pi/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_grad/Shapegradients_1/pi/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_grad/SumSum!gradients_1/pi/Sqrt_grad/SqrtGrad-gradients_1/pi/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
�
gradients_1/pi/add_grad/ReshapeReshapegradients_1/pi/add_grad/Sumgradients_1/pi/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
gradients_1/pi/add_grad/Sum_1Sum!gradients_1/pi/Sqrt_grad/SqrtGrad/gradients_1/pi/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
!gradients_1/pi/add_grad/Reshape_1Reshapegradients_1/pi/add_grad/Sum_1gradients_1/pi/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients_1/pi/add_grad/tuple/group_depsNoOp ^gradients_1/pi/add_grad/Reshape"^gradients_1/pi/add_grad/Reshape_1
�
0gradients_1/pi/add_grad/tuple/control_dependencyIdentitygradients_1/pi/add_grad/Reshape)^gradients_1/pi/add_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/pi/add_grad/Reshape*#
_output_shapes
:�
�
2gradients_1/pi/add_grad/tuple/control_dependency_1Identity!gradients_1/pi/add_grad/Reshape_1)^gradients_1/pi/add_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/add_grad/Reshape_1*
_output_shapes
: 
i
gradients_1/pi/mul_1_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
v
!gradients_1/pi/mul_1_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
/gradients_1/pi/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_1_grad/Shape!gradients_1/pi/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/mul_1_grad/MulMul6gradients_1/pi/truediv_1_grad/tuple/control_dependencypi/sub_1*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_1_grad/SumSumgradients_1/pi/mul_1_grad/Mul/gradients_1/pi/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
!gradients_1/pi/mul_1_grad/ReshapeReshapegradients_1/pi/mul_1_grad/Sumgradients_1/pi/mul_1_grad/Shape*
_output_shapes
:*
T0*
Tshape0
�
gradients_1/pi/mul_1_grad/Mul_1Mulpi/Variable_3/read6gradients_1/pi/truediv_1_grad/tuple/control_dependency*
T0*#
_output_shapes
:�
�
gradients_1/pi/mul_1_grad/Sum_1Sumgradients_1/pi/mul_1_grad/Mul_11gradients_1/pi/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
#gradients_1/pi/mul_1_grad/Reshape_1Reshapegradients_1/pi/mul_1_grad/Sum_1!gradients_1/pi/mul_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
|
*gradients_1/pi/mul_1_grad/tuple/group_depsNoOp"^gradients_1/pi/mul_1_grad/Reshape$^gradients_1/pi/mul_1_grad/Reshape_1
�
2gradients_1/pi/mul_1_grad/tuple/control_dependencyIdentity!gradients_1/pi/mul_1_grad/Reshape+^gradients_1/pi/mul_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/mul_1_grad/Reshape*
_output_shapes
:
�
4gradients_1/pi/mul_1_grad/tuple/control_dependency_1Identity#gradients_1/pi/mul_1_grad/Reshape_1+^gradients_1/pi/mul_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/mul_1_grad/Reshape_1*#
_output_shapes
:�
�
#gradients_1/pi/Sqrt_1_grad/SqrtGradSqrtGrad	pi/Sqrt_18gradients_1/pi/truediv_1_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:�

*gradients_1/pi/moments/variance_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
�
)gradients_1/pi/moments/variance_grad/SizeConst*
value	B :*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients_1/pi/moments/variance_grad/addAdd%pi/moments/variance/reduction_indices)gradients_1/pi/moments/variance_grad/Size*
T0*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
_output_shapes
:
�
(gradients_1/pi/moments/variance_grad/modFloorMod(gradients_1/pi/moments/variance_grad/add)gradients_1/pi/moments/variance_grad/Size*
T0*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
_output_shapes
:
�
,gradients_1/pi/moments/variance_grad/Shape_1Const*
valueB:*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
:
�
0gradients_1/pi/moments/variance_grad/range/startConst*
value	B : *=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
0gradients_1/pi/moments/variance_grad/range/deltaConst*
value	B :*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments/variance_grad/rangeRange0gradients_1/pi/moments/variance_grad/range/start)gradients_1/pi/moments/variance_grad/Size0gradients_1/pi/moments/variance_grad/range/delta*
_output_shapes
:*

Tidx0*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape
�
/gradients_1/pi/moments/variance_grad/Fill/valueConst*
value	B :*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
)gradients_1/pi/moments/variance_grad/FillFill,gradients_1/pi/moments/variance_grad/Shape_1/gradients_1/pi/moments/variance_grad/Fill/value*
T0*

index_type0*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
_output_shapes
:
�
2gradients_1/pi/moments/variance_grad/DynamicStitchDynamicStitch*gradients_1/pi/moments/variance_grad/range(gradients_1/pi/moments/variance_grad/mod*gradients_1/pi/moments/variance_grad/Shape)gradients_1/pi/moments/variance_grad/Fill*
N*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape
�
.gradients_1/pi/moments/variance_grad/Maximum/yConst*
value	B :*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients_1/pi/moments/variance_grad/MaximumMaximum2gradients_1/pi/moments/variance_grad/DynamicStitch.gradients_1/pi/moments/variance_grad/Maximum/y*
T0*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape*
_output_shapes
:
�
-gradients_1/pi/moments/variance_grad/floordivFloorDiv*gradients_1/pi/moments/variance_grad/Shape,gradients_1/pi/moments/variance_grad/Maximum*
_output_shapes
:*
T0*=
_class3
1/loc:@gradients_1/pi/moments/variance_grad/Shape
�
,gradients_1/pi/moments/variance_grad/ReshapeReshape0gradients_1/pi/add_grad/tuple/control_dependency2gradients_1/pi/moments/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
)gradients_1/pi/moments/variance_grad/TileTile,gradients_1/pi/moments/variance_grad/Reshape-gradients_1/pi/moments/variance_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
o
*gradients_1/pi/moments/variance_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
,gradients_1/pi/moments/variance_grad/truedivRealDiv)gradients_1/pi/moments/variance_grad/Tile*gradients_1/pi/moments/variance_grad/Const*#
_output_shapes
:�*
T0
t
gradients_1/pi/sub_1_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
v
!gradients_1/pi/sub_1_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
/gradients_1/pi/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/sub_1_grad/Shape!gradients_1/pi/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/sub_1_grad/SumSum4gradients_1/pi/mul_1_grad/tuple/control_dependency_1/gradients_1/pi/sub_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
!gradients_1/pi/sub_1_grad/ReshapeReshapegradients_1/pi/sub_1_grad/Sumgradients_1/pi/sub_1_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
gradients_1/pi/sub_1_grad/Sum_1Sum4gradients_1/pi/mul_1_grad/tuple/control_dependency_11gradients_1/pi/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
k
gradients_1/pi/sub_1_grad/NegNeggradients_1/pi/sub_1_grad/Sum_1*
T0*
_output_shapes	
:�
�
#gradients_1/pi/sub_1_grad/Reshape_1Reshapegradients_1/pi/sub_1_grad/Neg!gradients_1/pi/sub_1_grad/Shape_1*#
_output_shapes
:�*
T0*
Tshape0
|
*gradients_1/pi/sub_1_grad/tuple/group_depsNoOp"^gradients_1/pi/sub_1_grad/Reshape$^gradients_1/pi/sub_1_grad/Reshape_1
�
2gradients_1/pi/sub_1_grad/tuple/control_dependencyIdentity!gradients_1/pi/sub_1_grad/Reshape+^gradients_1/pi/sub_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/sub_1_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/sub_1_grad/tuple/control_dependency_1Identity#gradients_1/pi/sub_1_grad/Reshape_1+^gradients_1/pi/sub_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/sub_1_grad/Reshape_1*#
_output_shapes
:�
t
gradients_1/pi/add_2_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
d
!gradients_1/pi/add_2_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
/gradients_1/pi/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/add_2_grad/Shape!gradients_1/pi/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/pi/add_2_grad/SumSum#gradients_1/pi/Sqrt_1_grad/SqrtGrad/gradients_1/pi/add_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
�
!gradients_1/pi/add_2_grad/ReshapeReshapegradients_1/pi/add_2_grad/Sumgradients_1/pi/add_2_grad/Shape*#
_output_shapes
:�*
T0*
Tshape0
�
gradients_1/pi/add_2_grad/Sum_1Sum#gradients_1/pi/Sqrt_1_grad/SqrtGrad1gradients_1/pi/add_2_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
#gradients_1/pi/add_2_grad/Reshape_1Reshapegradients_1/pi/add_2_grad/Sum_1!gradients_1/pi/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
*gradients_1/pi/add_2_grad/tuple/group_depsNoOp"^gradients_1/pi/add_2_grad/Reshape$^gradients_1/pi/add_2_grad/Reshape_1
�
2gradients_1/pi/add_2_grad/tuple/control_dependencyIdentity!gradients_1/pi/add_2_grad/Reshape+^gradients_1/pi/add_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/pi/add_2_grad/Reshape*#
_output_shapes
:�
�
4gradients_1/pi/add_2_grad/tuple/control_dependency_1Identity#gradients_1/pi/add_2_grad/Reshape_1+^gradients_1/pi/add_2_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients_1/pi/add_2_grad/Reshape_1*
_output_shapes
: 
}
(gradients_1/pi/moments_2/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
'gradients_1/pi/moments_2/mean_grad/SizeConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients_1/pi/moments_2/mean_grad/addAdd#pi/moments_2/mean/reduction_indices'gradients_1/pi/moments_2/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
&gradients_1/pi/moments_2/mean_grad/modFloorMod&gradients_1/pi/moments_2/mean_grad/add'gradients_1/pi/moments_2/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_2/mean_grad/Shape_1Const*
dtype0*
_output_shapes
:*
valueB:*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape
�
.gradients_1/pi/moments_2/mean_grad/range/startConst*
value	B : *;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_2/mean_grad/range/deltaConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients_1/pi/moments_2/mean_grad/rangeRange.gradients_1/pi/moments_2/mean_grad/range/start'gradients_1/pi/moments_2/mean_grad/Size.gradients_1/pi/moments_2/mean_grad/range/delta*
_output_shapes
:*

Tidx0*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape
�
-gradients_1/pi/moments_2/mean_grad/Fill/valueConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
'gradients_1/pi/moments_2/mean_grad/FillFill*gradients_1/pi/moments_2/mean_grad/Shape_1-gradients_1/pi/moments_2/mean_grad/Fill/value*
T0*

index_type0*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
0gradients_1/pi/moments_2/mean_grad/DynamicStitchDynamicStitch(gradients_1/pi/moments_2/mean_grad/range&gradients_1/pi/moments_2/mean_grad/mod(gradients_1/pi/moments_2/mean_grad/Shape'gradients_1/pi/moments_2/mean_grad/Fill*
T0*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
N*
_output_shapes
:
�
,gradients_1/pi/moments_2/mean_grad/Maximum/yConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_2/mean_grad/MaximumMaximum0gradients_1/pi/moments_2/mean_grad/DynamicStitch,gradients_1/pi/moments_2/mean_grad/Maximum/y*
T0*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
+gradients_1/pi/moments_2/mean_grad/floordivFloorDiv(gradients_1/pi/moments_2/mean_grad/Shape*gradients_1/pi/moments_2/mean_grad/Maximum*
T0*;
_class1
/-loc:@gradients_1/pi/moments_2/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_2/mean_grad/ReshapeReshape4gradients_1/pi/sub_2_grad/tuple/control_dependency_10gradients_1/pi/moments_2/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
'gradients_1/pi/moments_2/mean_grad/TileTile*gradients_1/pi/moments_2/mean_grad/Reshape+gradients_1/pi/moments_2/mean_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
m
(gradients_1/pi/moments_2/mean_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_2/mean_grad/truedivRealDiv'gradients_1/pi/moments_2/mean_grad/Tile(gradients_1/pi/moments_2/mean_grad/Const*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments/SquaredDifference_grad/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"   �      
�
5gradients_1/pi/moments/SquaredDifference_grad/Shape_1Const*
dtype0*
_output_shapes
:*!
valueB"   �      
�
Cgradients_1/pi/moments/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients_1/pi/moments/SquaredDifference_grad/Shape5gradients_1/pi/moments/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
4gradients_1/pi/moments/SquaredDifference_grad/scalarConst-^gradients_1/pi/moments/variance_grad/truediv*
dtype0*
_output_shapes
: *
valueB
 *   @
�
1gradients_1/pi/moments/SquaredDifference_grad/MulMul4gradients_1/pi/moments/SquaredDifference_grad/scalar,gradients_1/pi/moments/variance_grad/truediv*
T0*#
_output_shapes
:�
�
1gradients_1/pi/moments/SquaredDifference_grad/subSubpi/dense/Relupi/moments/StopGradient-^gradients_1/pi/moments/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments/SquaredDifference_grad/mul_1Mul1gradients_1/pi/moments/SquaredDifference_grad/Mul1gradients_1/pi/moments/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
1gradients_1/pi/moments/SquaredDifference_grad/SumSum3gradients_1/pi/moments/SquaredDifference_grad/mul_1Cgradients_1/pi/moments/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:	�
�
5gradients_1/pi/moments/SquaredDifference_grad/ReshapeReshape1gradients_1/pi/moments/SquaredDifference_grad/Sum3gradients_1/pi/moments/SquaredDifference_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients_1/pi/moments/SquaredDifference_grad/Sum_1Sum3gradients_1/pi/moments/SquaredDifference_grad/mul_1Egradients_1/pi/moments/SquaredDifference_grad/BroadcastGradientArgs:1*
T0*
_output_shapes	
:�*
	keep_dims( *

Tidx0
�
7gradients_1/pi/moments/SquaredDifference_grad/Reshape_1Reshape3gradients_1/pi/moments/SquaredDifference_grad/Sum_15gradients_1/pi/moments/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
1gradients_1/pi/moments/SquaredDifference_grad/NegNeg7gradients_1/pi/moments/SquaredDifference_grad/Reshape_1*#
_output_shapes
:�*
T0
�
>gradients_1/pi/moments/SquaredDifference_grad/tuple/group_depsNoOp2^gradients_1/pi/moments/SquaredDifference_grad/Neg6^gradients_1/pi/moments/SquaredDifference_grad/Reshape
�
Fgradients_1/pi/moments/SquaredDifference_grad/tuple/control_dependencyIdentity5gradients_1/pi/moments/SquaredDifference_grad/Reshape?^gradients_1/pi/moments/SquaredDifference_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/pi/moments/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Hgradients_1/pi/moments/SquaredDifference_grad/tuple/control_dependency_1Identity1gradients_1/pi/moments/SquaredDifference_grad/Neg?^gradients_1/pi/moments/SquaredDifference_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients_1/pi/moments/SquaredDifference_grad/Neg*#
_output_shapes
:�
�
,gradients_1/pi/moments_1/variance_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
+gradients_1/pi/moments_1/variance_grad/SizeConst*
dtype0*
_output_shapes
: *
value	B :*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape
�
*gradients_1/pi/moments_1/variance_grad/addAdd'pi/moments_1/variance/reduction_indices+gradients_1/pi/moments_1/variance_grad/Size*
T0*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_1/variance_grad/modFloorMod*gradients_1/pi/moments_1/variance_grad/add+gradients_1/pi/moments_1/variance_grad/Size*
T0*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
.gradients_1/pi/moments_1/variance_grad/Shape_1Const*
valueB:*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
:
�
2gradients_1/pi/moments_1/variance_grad/range/startConst*
value	B : *?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
2gradients_1/pi/moments_1/variance_grad/range/deltaConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients_1/pi/moments_1/variance_grad/rangeRange2gradients_1/pi/moments_1/variance_grad/range/start+gradients_1/pi/moments_1/variance_grad/Size2gradients_1/pi/moments_1/variance_grad/range/delta*

Tidx0*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
1gradients_1/pi/moments_1/variance_grad/Fill/valueConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
+gradients_1/pi/moments_1/variance_grad/FillFill.gradients_1/pi/moments_1/variance_grad/Shape_11gradients_1/pi/moments_1/variance_grad/Fill/value*
T0*

index_type0*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
4gradients_1/pi/moments_1/variance_grad/DynamicStitchDynamicStitch,gradients_1/pi/moments_1/variance_grad/range*gradients_1/pi/moments_1/variance_grad/mod,gradients_1/pi/moments_1/variance_grad/Shape+gradients_1/pi/moments_1/variance_grad/Fill*
T0*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
N*
_output_shapes
:
�
0gradients_1/pi/moments_1/variance_grad/Maximum/yConst*
value	B :*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_1/variance_grad/MaximumMaximum4gradients_1/pi/moments_1/variance_grad/DynamicStitch0gradients_1/pi/moments_1/variance_grad/Maximum/y*
_output_shapes
:*
T0*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape
�
/gradients_1/pi/moments_1/variance_grad/floordivFloorDiv,gradients_1/pi/moments_1/variance_grad/Shape.gradients_1/pi/moments_1/variance_grad/Maximum*
T0*?
_class5
31loc:@gradients_1/pi/moments_1/variance_grad/Shape*
_output_shapes
:
�
.gradients_1/pi/moments_1/variance_grad/ReshapeReshape2gradients_1/pi/add_2_grad/tuple/control_dependency4gradients_1/pi/moments_1/variance_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
+gradients_1/pi/moments_1/variance_grad/TileTile.gradients_1/pi/moments_1/variance_grad/Reshape/gradients_1/pi/moments_1/variance_grad/floordiv*#
_output_shapes
:�*

Tmultiples0*
T0
q
,gradients_1/pi/moments_1/variance_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_1/variance_grad/truedivRealDiv+gradients_1/pi/moments_1/variance_grad/Tile,gradients_1/pi/moments_1/variance_grad/Const*
T0*#
_output_shapes
:�
�
gradients_1/AddN_2AddN2gradients_1/pi/sub_2_grad/tuple/control_dependencyHgradients_1/pi/moments_2/SquaredDifference_grad/tuple/control_dependency*gradients_1/pi/moments_2/mean_grad/truediv*
T0*4
_class*
(&loc:@gradients_1/pi/sub_2_grad/Reshape*
N*#
_output_shapes
:�
�
)gradients_1/pi/dense_2/Relu_grad/ReluGradReluGradgradients_1/AddN_2pi/dense_2/Relu*
T0*#
_output_shapes
:�
�
5gradients_1/pi/moments_1/SquaredDifference_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
7gradients_1/pi/moments_1/SquaredDifference_grad/Shape_1Const*!
valueB"   �      *
dtype0*
_output_shapes
:
�
Egradients_1/pi/moments_1/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients_1/pi/moments_1/SquaredDifference_grad/Shape7gradients_1/pi/moments_1/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
6gradients_1/pi/moments_1/SquaredDifference_grad/scalarConst/^gradients_1/pi/moments_1/variance_grad/truediv*
valueB
 *   @*
dtype0*
_output_shapes
: 
�
3gradients_1/pi/moments_1/SquaredDifference_grad/MulMul6gradients_1/pi/moments_1/SquaredDifference_grad/scalar.gradients_1/pi/moments_1/variance_grad/truediv*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_1/SquaredDifference_grad/subSubpi/dense_1/Relupi/moments_1/StopGradient/^gradients_1/pi/moments_1/variance_grad/truediv*
T0*#
_output_shapes
:�
�
5gradients_1/pi/moments_1/SquaredDifference_grad/mul_1Mul3gradients_1/pi/moments_1/SquaredDifference_grad/Mul3gradients_1/pi/moments_1/SquaredDifference_grad/sub*
T0*#
_output_shapes
:�
�
3gradients_1/pi/moments_1/SquaredDifference_grad/SumSum5gradients_1/pi/moments_1/SquaredDifference_grad/mul_1Egradients_1/pi/moments_1/SquaredDifference_grad/BroadcastGradientArgs*
T0*
_output_shapes
:	�*
	keep_dims( *

Tidx0
�
7gradients_1/pi/moments_1/SquaredDifference_grad/ReshapeReshape3gradients_1/pi/moments_1/SquaredDifference_grad/Sum5gradients_1/pi/moments_1/SquaredDifference_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
5gradients_1/pi/moments_1/SquaredDifference_grad/Sum_1Sum5gradients_1/pi/moments_1/SquaredDifference_grad/mul_1Ggradients_1/pi/moments_1/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes	
:�
�
9gradients_1/pi/moments_1/SquaredDifference_grad/Reshape_1Reshape5gradients_1/pi/moments_1/SquaredDifference_grad/Sum_17gradients_1/pi/moments_1/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients_1/pi/moments_1/SquaredDifference_grad/NegNeg9gradients_1/pi/moments_1/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:�
�
@gradients_1/pi/moments_1/SquaredDifference_grad/tuple/group_depsNoOp4^gradients_1/pi/moments_1/SquaredDifference_grad/Neg8^gradients_1/pi/moments_1/SquaredDifference_grad/Reshape
�
Hgradients_1/pi/moments_1/SquaredDifference_grad/tuple/control_dependencyIdentity7gradients_1/pi/moments_1/SquaredDifference_grad/ReshapeA^gradients_1/pi/moments_1/SquaredDifference_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/moments_1/SquaredDifference_grad/Reshape*#
_output_shapes
:�
�
Jgradients_1/pi/moments_1/SquaredDifference_grad/tuple/control_dependency_1Identity3gradients_1/pi/moments_1/SquaredDifference_grad/NegA^gradients_1/pi/moments_1/SquaredDifference_grad/tuple/group_deps*#
_output_shapes
:�*
T0*F
_class<
:8loc:@gradients_1/pi/moments_1/SquaredDifference_grad/Neg
�
/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/pi/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
4gradients_1/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp0^gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGrad*^gradients_1/pi/dense_2/Relu_grad/ReluGrad
�
<gradients_1/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_1/pi/dense_2/Relu_grad/ReluGrad5^gradients_1/pi/dense_2/BiasAdd_grad/tuple/group_deps*#
_output_shapes
:�*
T0*<
_class2
0.loc:@gradients_1/pi/dense_2/Relu_grad/ReluGrad
�
>gradients_1/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGrad5^gradients_1/pi/dense_2/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
{
&gradients_1/pi/moments/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
%gradients_1/pi/moments/mean_grad/SizeConst*
value	B :*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
$gradients_1/pi/moments/mean_grad/addAdd!pi/moments/mean/reduction_indices%gradients_1/pi/moments/mean_grad/Size*
T0*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
_output_shapes
:
�
$gradients_1/pi/moments/mean_grad/modFloorMod$gradients_1/pi/moments/mean_grad/add%gradients_1/pi/moments/mean_grad/Size*
T0*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
_output_shapes
:
�
(gradients_1/pi/moments/mean_grad/Shape_1Const*
valueB:*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
:
�
,gradients_1/pi/moments/mean_grad/range/startConst*
value	B : *9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
,gradients_1/pi/moments/mean_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape
�
&gradients_1/pi/moments/mean_grad/rangeRange,gradients_1/pi/moments/mean_grad/range/start%gradients_1/pi/moments/mean_grad/Size,gradients_1/pi/moments/mean_grad/range/delta*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
+gradients_1/pi/moments/mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape
�
%gradients_1/pi/moments/mean_grad/FillFill(gradients_1/pi/moments/mean_grad/Shape_1+gradients_1/pi/moments/mean_grad/Fill/value*
T0*

index_type0*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
_output_shapes
:
�
.gradients_1/pi/moments/mean_grad/DynamicStitchDynamicStitch&gradients_1/pi/moments/mean_grad/range$gradients_1/pi/moments/mean_grad/mod&gradients_1/pi/moments/mean_grad/Shape%gradients_1/pi/moments/mean_grad/Fill*
T0*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
N*
_output_shapes
:
�
*gradients_1/pi/moments/mean_grad/Maximum/yConst*
value	B :*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients_1/pi/moments/mean_grad/MaximumMaximum.gradients_1/pi/moments/mean_grad/DynamicStitch*gradients_1/pi/moments/mean_grad/Maximum/y*
T0*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
_output_shapes
:
�
)gradients_1/pi/moments/mean_grad/floordivFloorDiv&gradients_1/pi/moments/mean_grad/Shape(gradients_1/pi/moments/mean_grad/Maximum*
T0*9
_class/
-+loc:@gradients_1/pi/moments/mean_grad/Shape*
_output_shapes
:
�
(gradients_1/pi/moments/mean_grad/ReshapeReshape2gradients_1/pi/sub_grad/tuple/control_dependency_1.gradients_1/pi/moments/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
%gradients_1/pi/moments/mean_grad/TileTile(gradients_1/pi/moments/mean_grad/Reshape)gradients_1/pi/moments/mean_grad/floordiv*
T0*#
_output_shapes
:�*

Tmultiples0
k
&gradients_1/pi/moments/mean_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
(gradients_1/pi/moments/mean_grad/truedivRealDiv%gradients_1/pi/moments/mean_grad/Tile&gradients_1/pi/moments/mean_grad/Const*
T0*#
_output_shapes
:�
|
+gradients_1/pi/dense_2/Tensordot_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
�
-gradients_1/pi/dense_2/Tensordot_grad/ReshapeReshape<gradients_1/pi/dense_2/BiasAdd_grad/tuple/control_dependency+gradients_1/pi/dense_2/Tensordot_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
gradients_1/AddN_3AddN0gradients_1/pi/sub_grad/tuple/control_dependencyFgradients_1/pi/moments/SquaredDifference_grad/tuple/control_dependency(gradients_1/pi/moments/mean_grad/truediv*
T0*2
_class(
&$loc:@gradients_1/pi/sub_grad/Reshape*
N*#
_output_shapes
:�
�
'gradients_1/pi/dense/Relu_grad/ReluGradReluGradgradients_1/AddN_3pi/dense/Relu*
T0*#
_output_shapes
:�
}
(gradients_1/pi/moments_1/mean_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
'gradients_1/pi/moments_1/mean_grad/SizeConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
&gradients_1/pi/moments_1/mean_grad/addAdd#pi/moments_1/mean/reduction_indices'gradients_1/pi/moments_1/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
&gradients_1/pi/moments_1/mean_grad/modFloorMod&gradients_1/pi/moments_1/mean_grad/add'gradients_1/pi/moments_1/mean_grad/Size*
T0*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_1/mean_grad/Shape_1Const*
valueB:*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
:
�
.gradients_1/pi/moments_1/mean_grad/range/startConst*
value	B : *;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
.gradients_1/pi/moments_1/mean_grad/range/deltaConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
(gradients_1/pi/moments_1/mean_grad/rangeRange.gradients_1/pi/moments_1/mean_grad/range/start'gradients_1/pi/moments_1/mean_grad/Size.gradients_1/pi/moments_1/mean_grad/range/delta*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
_output_shapes
:*

Tidx0
�
-gradients_1/pi/moments_1/mean_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape
�
'gradients_1/pi/moments_1/mean_grad/FillFill*gradients_1/pi/moments_1/mean_grad/Shape_1-gradients_1/pi/moments_1/mean_grad/Fill/value*
T0*

index_type0*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
0gradients_1/pi/moments_1/mean_grad/DynamicStitchDynamicStitch(gradients_1/pi/moments_1/mean_grad/range&gradients_1/pi/moments_1/mean_grad/mod(gradients_1/pi/moments_1/mean_grad/Shape'gradients_1/pi/moments_1/mean_grad/Fill*
T0*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
N*
_output_shapes
:
�
,gradients_1/pi/moments_1/mean_grad/Maximum/yConst*
value	B :*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_1/mean_grad/MaximumMaximum0gradients_1/pi/moments_1/mean_grad/DynamicStitch,gradients_1/pi/moments_1/mean_grad/Maximum/y*
T0*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
+gradients_1/pi/moments_1/mean_grad/floordivFloorDiv(gradients_1/pi/moments_1/mean_grad/Shape*gradients_1/pi/moments_1/mean_grad/Maximum*
T0*;
_class1
/-loc:@gradients_1/pi/moments_1/mean_grad/Shape*
_output_shapes
:
�
*gradients_1/pi/moments_1/mean_grad/ReshapeReshape4gradients_1/pi/sub_1_grad/tuple/control_dependency_10gradients_1/pi/moments_1/mean_grad/DynamicStitch*
T0*
Tshape0*#
_output_shapes
:�
�
'gradients_1/pi/moments_1/mean_grad/TileTile*gradients_1/pi/moments_1/mean_grad/Reshape+gradients_1/pi/moments_1/mean_grad/floordiv*

Tmultiples0*
T0*#
_output_shapes
:�
m
(gradients_1/pi/moments_1/mean_grad/ConstConst*
valueB
 *  �A*
dtype0*
_output_shapes
: 
�
*gradients_1/pi/moments_1/mean_grad/truedivRealDiv'gradients_1/pi/moments_1/mean_grad/Tile(gradients_1/pi/moments_1/mean_grad/Const*
T0*#
_output_shapes
:�
�
3gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMulMatMul-gradients_1/pi/dense_2/Tensordot_grad/Reshapepi/dense_2/Tensordot/Reshape_1*
transpose_b(*
T0*
_output_shapes
:	�*
transpose_a( 
�
5gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMul_1MatMulpi/dense_2/Tensordot/Reshape-gradients_1/pi/dense_2/Tensordot_grad/Reshape*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
=gradients_1/pi/dense_2/Tensordot/MatMul_grad/tuple/group_depsNoOp4^gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMul6^gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMul_1
�
Egradients_1/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependencyIdentity3gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMul>^gradients_1/pi/dense_2/Tensordot/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMul*
_output_shapes
:	�
�
Ggradients_1/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependency_1Identity5gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMul_1>^gradients_1/pi/dense_2/Tensordot/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/pi/dense_2/Tensordot/MatMul_grad/MatMul_1*
_output_shapes

:
�
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
2gradients_1/pi/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients_1/pi/dense/BiasAdd_grad/BiasAddGrad(^gradients_1/pi/dense/Relu_grad/ReluGrad
�
:gradients_1/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity'gradients_1/pi/dense/Relu_grad/ReluGrad3^gradients_1/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients_1/pi/dense/Relu_grad/ReluGrad*#
_output_shapes
:�
�
<gradients_1/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity-gradients_1/pi/dense/BiasAdd_grad/BiasAddGrad3^gradients_1/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients_1/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
gradients_1/AddN_4AddN2gradients_1/pi/sub_1_grad/tuple/control_dependencyHgradients_1/pi/moments_1/SquaredDifference_grad/tuple/control_dependency*gradients_1/pi/moments_1/mean_grad/truediv*
T0*4
_class*
(&loc:@gradients_1/pi/sub_1_grad/Reshape*
N*#
_output_shapes
:�
�
)gradients_1/pi/dense_1/Relu_grad/ReluGradReluGradgradients_1/AddN_4pi/dense_1/Relu*
T0*#
_output_shapes
:�
�
3gradients_1/pi/dense_2/Tensordot/Reshape_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
5gradients_1/pi/dense_2/Tensordot/Reshape_grad/ReshapeReshapeEgradients_1/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependency3gradients_1/pi/dense_2/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
5gradients_1/pi/dense_2/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
7gradients_1/pi/dense_2/Tensordot/Reshape_1_grad/ReshapeReshapeGgradients_1/pi/dense_2/Tensordot/MatMul_grad/tuple/control_dependency_15gradients_1/pi/dense_2/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:
z
)gradients_1/pi/dense/Tensordot_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
�
+gradients_1/pi/dense/Tensordot_grad/ReshapeReshape:gradients_1/pi/dense/BiasAdd_grad/tuple/control_dependency)gradients_1/pi/dense/Tensordot_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/pi/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
4gradients_1/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp0^gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGrad*^gradients_1/pi/dense_1/Relu_grad/ReluGrad
�
<gradients_1/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity)gradients_1/pi/dense_1/Relu_grad/ReluGrad5^gradients_1/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients_1/pi/dense_1/Relu_grad/ReluGrad*#
_output_shapes
:�
�
>gradients_1/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGrad5^gradients_1/pi/dense_1/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
Agradients_1/pi/dense_2/Tensordot/transpose_grad/InvertPermutationInvertPermutation#pi/dense_2/Tensordot/transpose/perm*
T0*
_output_shapes
:
�
9gradients_1/pi/dense_2/Tensordot/transpose_grad/transpose	Transpose5gradients_1/pi/dense_2/Tensordot/Reshape_grad/ReshapeAgradients_1/pi/dense_2/Tensordot/transpose_grad/InvertPermutation*
T0*#
_output_shapes
:�*
Tperm0
�
Cgradients_1/pi/dense_2/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation%pi/dense_2/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
�
;gradients_1/pi/dense_2/Tensordot/transpose_1_grad/transpose	Transpose7gradients_1/pi/dense_2/Tensordot/Reshape_1_grad/ReshapeCgradients_1/pi/dense_2/Tensordot/transpose_1_grad/InvertPermutation*
T0*
_output_shapes

:*
Tperm0
�
1gradients_1/pi/dense/Tensordot/MatMul_grad/MatMulMatMul+gradients_1/pi/dense/Tensordot_grad/Reshapepi/dense/Tensordot/Reshape_1*
_output_shapes
:	�*
transpose_a( *
transpose_b(*
T0
�
3gradients_1/pi/dense/Tensordot/MatMul_grad/MatMul_1MatMulpi/dense/Tensordot/Reshape+gradients_1/pi/dense/Tensordot_grad/Reshape*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
;gradients_1/pi/dense/Tensordot/MatMul_grad/tuple/group_depsNoOp2^gradients_1/pi/dense/Tensordot/MatMul_grad/MatMul4^gradients_1/pi/dense/Tensordot/MatMul_grad/MatMul_1
�
Cgradients_1/pi/dense/Tensordot/MatMul_grad/tuple/control_dependencyIdentity1gradients_1/pi/dense/Tensordot/MatMul_grad/MatMul<^gradients_1/pi/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients_1/pi/dense/Tensordot/MatMul_grad/MatMul*
_output_shapes
:	�
�
Egradients_1/pi/dense/Tensordot/MatMul_grad/tuple/control_dependency_1Identity3gradients_1/pi/dense/Tensordot/MatMul_grad/MatMul_1<^gradients_1/pi/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients_1/pi/dense/Tensordot/MatMul_grad/MatMul_1*
_output_shapes

:
|
+gradients_1/pi/dense_1/Tensordot_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
�
-gradients_1/pi/dense_1/Tensordot_grad/ReshapeReshape<gradients_1/pi/dense_1/BiasAdd_grad/tuple/control_dependency+gradients_1/pi/dense_1/Tensordot_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
1gradients_1/pi/dense/Tensordot/Reshape_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
3gradients_1/pi/dense/Tensordot/Reshape_grad/ReshapeReshapeCgradients_1/pi/dense/Tensordot/MatMul_grad/tuple/control_dependency1gradients_1/pi/dense/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
3gradients_1/pi/dense/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
�
5gradients_1/pi/dense/Tensordot/Reshape_1_grad/ReshapeReshapeEgradients_1/pi/dense/Tensordot/MatMul_grad/tuple/control_dependency_13gradients_1/pi/dense/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
3gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMulMatMul-gradients_1/pi/dense_1/Tensordot_grad/Reshapepi/dense_1/Tensordot/Reshape_1*
T0*
_output_shapes
:	�*
transpose_a( *
transpose_b(
�
5gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMul_1MatMulpi/dense_1/Tensordot/Reshape-gradients_1/pi/dense_1/Tensordot_grad/Reshape*
_output_shapes

:*
transpose_a(*
transpose_b( *
T0
�
=gradients_1/pi/dense_1/Tensordot/MatMul_grad/tuple/group_depsNoOp4^gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMul6^gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMul_1
�
Egradients_1/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependencyIdentity3gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMul>^gradients_1/pi/dense_1/Tensordot/MatMul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMul*
_output_shapes
:	�
�
Ggradients_1/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependency_1Identity5gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMul_1>^gradients_1/pi/dense_1/Tensordot/MatMul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/pi/dense_1/Tensordot/MatMul_grad/MatMul_1*
_output_shapes

:
�
?gradients_1/pi/dense/Tensordot/transpose_grad/InvertPermutationInvertPermutation!pi/dense/Tensordot/transpose/perm*
T0*
_output_shapes
:
�
7gradients_1/pi/dense/Tensordot/transpose_grad/transpose	Transpose3gradients_1/pi/dense/Tensordot/Reshape_grad/Reshape?gradients_1/pi/dense/Tensordot/transpose_grad/InvertPermutation*
T0*#
_output_shapes
:�*
Tperm0
�
Agradients_1/pi/dense/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation#pi/dense/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
�
9gradients_1/pi/dense/Tensordot/transpose_1_grad/transpose	Transpose5gradients_1/pi/dense/Tensordot/Reshape_1_grad/ReshapeAgradients_1/pi/dense/Tensordot/transpose_1_grad/InvertPermutation*
Tperm0*
T0*
_output_shapes

:
�
3gradients_1/pi/dense_1/Tensordot/Reshape_grad/ShapeConst*!
valueB"   �      *
dtype0*
_output_shapes
:
�
5gradients_1/pi/dense_1/Tensordot/Reshape_grad/ReshapeReshapeEgradients_1/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependency3gradients_1/pi/dense_1/Tensordot/Reshape_grad/Shape*
T0*
Tshape0*#
_output_shapes
:�
�
5gradients_1/pi/dense_1/Tensordot/Reshape_1_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
�
7gradients_1/pi/dense_1/Tensordot/Reshape_1_grad/ReshapeReshapeGgradients_1/pi/dense_1/Tensordot/MatMul_grad/tuple/control_dependency_15gradients_1/pi/dense_1/Tensordot/Reshape_1_grad/Shape*
T0*
Tshape0*
_output_shapes

:
�
Agradients_1/pi/dense_1/Tensordot/transpose_grad/InvertPermutationInvertPermutation#pi/dense_1/Tensordot/transpose/perm*
T0*
_output_shapes
:
�
9gradients_1/pi/dense_1/Tensordot/transpose_grad/transpose	Transpose5gradients_1/pi/dense_1/Tensordot/Reshape_grad/ReshapeAgradients_1/pi/dense_1/Tensordot/transpose_grad/InvertPermutation*
T0*#
_output_shapes
:�*
Tperm0
�
Cgradients_1/pi/dense_1/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation%pi/dense_1/Tensordot/transpose_1/perm*
_output_shapes
:*
T0
�
;gradients_1/pi/dense_1/Tensordot/transpose_1_grad/transpose	Transpose7gradients_1/pi/dense_1/Tensordot/Reshape_1_grad/ReshapeCgradients_1/pi/dense_1/Tensordot/transpose_1_grad/InvertPermutation*
T0*
_output_shapes

:*
Tperm0
�
gradients_1/AddN_5AddN4gradients_1/pi/add_9_grad/tuple/control_dependency_14gradients_1/pi/add_6_grad/tuple/control_dependency_19gradients_1/pi/dense_2/Tensordot/transpose_grad/transpose7gradients_1/pi/dense/Tensordot/transpose_grad/transpose9gradients_1/pi/dense_1/Tensordot/transpose_grad/transpose*
T0*4
_class*
(&loc:@gradients_1/pi/sub_4_grad/Reshape*
N*#
_output_shapes
:�
z
!gradients_1/pi/Reshape_grad/ShapeConst*%
valueB"   2         *
dtype0*
_output_shapes
:
�
#gradients_1/pi/Reshape_grad/ReshapeReshapegradients_1/AddN_5!gradients_1/pi/Reshape_grad/Shape*
T0*
Tshape0*&
_output_shapes
:2
�
*gradients_1/pi/conv2d_1/Relu_grad/ReluGradReluGrad#gradients_1/pi/Reshape_grad/Reshapepi/conv2d_1/Relu*
T0*&
_output_shapes
:2
�
0gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad*gradients_1/pi/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
5gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp1^gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGrad+^gradients_1/pi/conv2d_1/Relu_grad/ReluGrad
�
=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity*gradients_1/pi/conv2d_1/Relu_grad/ReluGrad6^gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/pi/conv2d_1/Relu_grad/ReluGrad*&
_output_shapes
:2
�
?gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity0gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGrad6^gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/pi/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
*gradients_1/pi/conv2d_1/Conv2D_grad/ShapeNShapeNpi/conv2d/Relu!pi/conv2d_1/Conv2D/ReadVariableOp*
T0*
out_type0*
N* 
_output_shapes
::
�
7gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput*gradients_1/pi/conv2d_1/Conv2D_grad/ShapeN!pi/conv2d_1/Conv2D/ReadVariableOp=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:2*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
�
8gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterpi/conv2d/Relu,gradients_1/pi/conv2d_1/Conv2D_grad/ShapeN:1=gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingSAME*&
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
�
4gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_depsNoOp9^gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter8^gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput
�
<gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity7gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput5^gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:2
�
>gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity8gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter5^gradients_1/pi/conv2d_1/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*K
_classA
?=loc:@gradients_1/pi/conv2d_1/Conv2D_grad/Conv2DBackpropFilter
�
(gradients_1/pi/conv2d/Relu_grad/ReluGradReluGrad<gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependencypi/conv2d/Relu*&
_output_shapes
:2*
T0
�
.gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/pi/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
3gradients_1/pi/conv2d/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGrad)^gradients_1/pi/conv2d/Relu_grad/ReluGrad
�
;gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/pi/conv2d/Relu_grad/ReluGrad4^gradients_1/pi/conv2d/BiasAdd_grad/tuple/group_deps*&
_output_shapes
:2*
T0*;
_class1
/-loc:@gradients_1/pi/conv2d/Relu_grad/ReluGrad
�
=gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGrad4^gradients_1/pi/conv2d/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/pi/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
(gradients_1/pi/conv2d/Conv2D_grad/ShapeNShapeNPlaceholderpi/conv2d/Conv2D/ReadVariableOp*
N* 
_output_shapes
::*
T0*
out_type0
�
5gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput(gradients_1/pi/conv2d/Conv2D_grad/ShapeNpi/conv2d/Conv2D/ReadVariableOp;gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
:2*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
�
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
�
2gradients_1/pi/conv2d/Conv2D_grad/tuple/group_depsNoOp7^gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter6^gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput
�
:gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependencyIdentity5gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput3^gradients_1/pi/conv2d/Conv2D_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropInput*&
_output_shapes
:2
�
<gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Identity6gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter3^gradients_1/pi/conv2d/Conv2D_grad/tuple/group_deps*&
_output_shapes
:*
T0*I
_class?
=;loc:@gradients_1/pi/conv2d/Conv2D_grad/Conv2DBackpropFilter
c
Reshape_56/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_56Reshape<gradients_1/pi/conv2d/Conv2D_grad/tuple/control_dependency_1Reshape_56/shape*
T0*
Tshape0*
_output_shapes
:0
c
Reshape_57/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_57Reshape=gradients_1/pi/conv2d/BiasAdd_grad/tuple/control_dependency_1Reshape_57/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_58/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�

Reshape_58Reshape>gradients_1/pi/conv2d_1/Conv2D_grad/tuple/control_dependency_1Reshape_58/shape*
T0*
Tshape0*
_output_shapes	
:�	
c
Reshape_59/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�

Reshape_59Reshape?gradients_1/pi/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Reshape_59/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_60/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_60Reshape9gradients_1/pi/dense/Tensordot/transpose_1_grad/transposeReshape_60/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_61/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_61Reshape<gradients_1/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_61/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_62/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_62Reshape;gradients_1/pi/dense_1/Tensordot/transpose_1_grad/transposeReshape_62/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_63/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_63Reshape>gradients_1/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_63/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_64/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_64Reshape;gradients_1/pi/dense_2/Tensordot/transpose_1_grad/transposeReshape_64/shape*
T0*
Tshape0*
_output_shapes	
:�
c
Reshape_65/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_65Reshape>gradients_1/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_65/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_66/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_66Reshape<gradients_1/v/dense_5/MatMul_grad/tuple/control_dependency_1Reshape_66/shape*
T0*
Tshape0*
_output_shapes

:��
c
Reshape_67/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_67Reshape=gradients_1/v/dense_5/BiasAdd_grad/tuple/control_dependency_1Reshape_67/shape*
_output_shapes	
:�*
T0*
Tshape0
c
Reshape_68/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�

Reshape_68Reshape<gradients_1/v/dense_6/MatMul_grad/tuple/control_dependency_1Reshape_68/shape*
_output_shapes	
:�*
T0*
Tshape0
c
Reshape_69/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�

Reshape_69Reshape=gradients_1/v/dense_6/BiasAdd_grad/tuple/control_dependency_1Reshape_69/shape*
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
�
concat_2ConcatV2
Reshape_56
Reshape_57
Reshape_58
Reshape_59
Reshape_60
Reshape_61
Reshape_62
Reshape_63
Reshape_64
Reshape_65
Reshape_66
Reshape_67
Reshape_68
Reshape_69concat_2/axis*
T0*
N*
_output_shapes

:ݏ*

Tidx0
v
EagerPyFunc_2EagerPyFuncconcat_2*
_output_shapes

:ݏ*
Tin
2*
Tout
2*
token
pyfunc_2
�
Const_7Const*
dtype0*
_output_shapes
:*M
valueDBB"80      �     @     @     @      �           
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
split_2SplitVEagerPyFunc_2Const_7split_2/split_dim*p
_output_shapes^
\:0::�	::�::�::�::��:�:�:*
	num_split*

Tlen0*
T0
i
Reshape_70/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_70Reshapesplit_2Reshape_70/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_71/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_71Reshape	split_2:1Reshape_71/shape*
_output_shapes
:*
T0*
Tshape0
i
Reshape_72/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
q

Reshape_72Reshape	split_2:2Reshape_72/shape*
T0*
Tshape0*&
_output_shapes
:
Z
Reshape_73/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_73Reshape	split_2:3Reshape_73/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_74/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_74Reshape	split_2:4Reshape_74/shape*
T0*
Tshape0*
_output_shapes

:
Z
Reshape_75/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_75Reshape	split_2:5Reshape_75/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_76/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_76Reshape	split_2:6Reshape_76/shape*
_output_shapes

:*
T0*
Tshape0
Z
Reshape_77/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_77Reshape	split_2:7Reshape_77/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_78/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
i

Reshape_78Reshape	split_2:8Reshape_78/shape*
T0*
Tshape0*
_output_shapes

:
Z
Reshape_79/shapeConst*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_79Reshape	split_2:9Reshape_79/shape*
T0*
Tshape0*
_output_shapes
:
a
Reshape_80/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
l

Reshape_80Reshape
split_2:10Reshape_80/shape*
T0*
Tshape0* 
_output_shapes
:
��
[
Reshape_81/shapeConst*
valueB:�*
dtype0*
_output_shapes
:
g

Reshape_81Reshape
split_2:11Reshape_81/shape*
T0*
Tshape0*
_output_shapes	
:�
a
Reshape_82/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
k

Reshape_82Reshape
split_2:12Reshape_82/shape*
T0*
Tshape0*
_output_shapes
:	�
Z
Reshape_83/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_83Reshape
split_2:13Reshape_83/shape*
T0*
Tshape0*
_output_shapes
:
�
'beta1_power_1/Initializer/initial_valueConst*!
_class
loc:@pi/conv2d/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
beta1_power_1VarHandleOp*
dtype0*
_output_shapes
: *
shared_namebeta1_power_1*!
_class
loc:@pi/conv2d/bias*
	container *
shape: 
�
.beta1_power_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta1_power_1*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
�
beta1_power_1/AssignAssignVariableOpbeta1_power_1'beta1_power_1/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0
�
!beta1_power_1/Read/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
�
'beta2_power_1/Initializer/initial_valueConst*!
_class
loc:@pi/conv2d/bias*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
beta2_power_1VarHandleOp*
shared_namebeta2_power_1*!
_class
loc:@pi/conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
.beta2_power_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpbeta2_power_1*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
�
beta2_power_1/AssignAssignVariableOpbeta2_power_1'beta2_power_1/Initializer/initial_value*!
_class
loc:@pi/conv2d/bias*
dtype0
�
!beta2_power_1/Read/ReadVariableOpReadVariableOpbeta2_power_1*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
: 
�
)pi/conv2d/kernel/Adam_2/Initializer/zerosConst*#
_class
loc:@pi/conv2d/kernel*%
valueB*    *
dtype0*&
_output_shapes
:
�
pi/conv2d/kernel/Adam_2VarHandleOp*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_2
�
8pi/conv2d/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam_2*
_output_shapes
: *#
_class
loc:@pi/conv2d/kernel
�
pi/conv2d/kernel/Adam_2/AssignAssignVariableOppi/conv2d/kernel/Adam_2)pi/conv2d/kernel/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d/kernel*
dtype0
�
+pi/conv2d/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_2*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:
�
)pi/conv2d/kernel/Adam_3/Initializer/zerosConst*
dtype0*&
_output_shapes
:*#
_class
loc:@pi/conv2d/kernel*%
valueB*    
�
pi/conv2d/kernel/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d/kernel/Adam_3*#
_class
loc:@pi/conv2d/kernel*
	container *
shape:
�
8pi/conv2d/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/kernel/Adam_3*
_output_shapes
: *#
_class
loc:@pi/conv2d/kernel
�
pi/conv2d/kernel/Adam_3/AssignAssignVariableOppi/conv2d/kernel/Adam_3)pi/conv2d/kernel/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d/kernel*
dtype0
�
+pi/conv2d/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_3*#
_class
loc:@pi/conv2d/kernel*
dtype0*&
_output_shapes
:
�
'pi/conv2d/bias/Adam_2/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/conv2d/bias/Adam_2VarHandleOp*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_2*!
_class
loc:@pi/conv2d/bias*
	container *
shape:
�
6pi/conv2d/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_2*!
_class
loc:@pi/conv2d/bias*
_output_shapes
: 
�
pi/conv2d/bias/Adam_2/AssignAssignVariableOppi/conv2d/bias/Adam_2'pi/conv2d/bias/Adam_2/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0
�
)pi/conv2d/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_2*!
_class
loc:@pi/conv2d/bias*
dtype0*
_output_shapes
:
�
'pi/conv2d/bias/Adam_3/Initializer/zerosConst*!
_class
loc:@pi/conv2d/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/conv2d/bias/Adam_3VarHandleOp*
shape:*
dtype0*
_output_shapes
: *&
shared_namepi/conv2d/bias/Adam_3*!
_class
loc:@pi/conv2d/bias*
	container 
�
6pi/conv2d/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d/bias/Adam_3*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
�
pi/conv2d/bias/Adam_3/AssignAssignVariableOppi/conv2d/bias/Adam_3'pi/conv2d/bias/Adam_3/Initializer/zeros*!
_class
loc:@pi/conv2d/bias*
dtype0
�
)pi/conv2d/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_3*
dtype0*
_output_shapes
:*!
_class
loc:@pi/conv2d/bias
�
;pi/conv2d_1/kernel/Adam_2/Initializer/zeros/shape_as_tensorConst*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            *
dtype0*
_output_shapes
:
�
1pi/conv2d_1/kernel/Adam_2/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    
�
+pi/conv2d_1/kernel/Adam_2/Initializer/zerosFill;pi/conv2d_1/kernel/Adam_2/Initializer/zeros/shape_as_tensor1pi/conv2d_1/kernel/Adam_2/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
�
pi/conv2d_1/kernel/Adam_2VarHandleOp*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_1/kernel/Adam_2
�
:pi/conv2d_1/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_2*
_output_shapes
: *%
_class
loc:@pi/conv2d_1/kernel
�
 pi/conv2d_1/kernel/Adam_2/AssignAssignVariableOppi/conv2d_1/kernel/Adam_2+pi/conv2d_1/kernel/Adam_2/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
�
-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_2*
dtype0*&
_output_shapes
:*%
_class
loc:@pi/conv2d_1/kernel
�
;pi/conv2d_1/kernel/Adam_3/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
_class
loc:@pi/conv2d_1/kernel*%
valueB"            
�
1pi/conv2d_1/kernel/Adam_3/Initializer/zeros/ConstConst*%
_class
loc:@pi/conv2d_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
+pi/conv2d_1/kernel/Adam_3/Initializer/zerosFill;pi/conv2d_1/kernel/Adam_3/Initializer/zeros/shape_as_tensor1pi/conv2d_1/kernel/Adam_3/Initializer/zeros/Const*
T0*%
_class
loc:@pi/conv2d_1/kernel*

index_type0*&
_output_shapes
:
�
pi/conv2d_1/kernel/Adam_3VarHandleOp*%
_class
loc:@pi/conv2d_1/kernel*
	container *
shape:*
dtype0*
_output_shapes
: **
shared_namepi/conv2d_1/kernel/Adam_3
�
:pi/conv2d_1/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/kernel/Adam_3*%
_class
loc:@pi/conv2d_1/kernel*
_output_shapes
: 
�
 pi/conv2d_1/kernel/Adam_3/AssignAssignVariableOppi/conv2d_1/kernel/Adam_3+pi/conv2d_1/kernel/Adam_3/Initializer/zeros*%
_class
loc:@pi/conv2d_1/kernel*
dtype0
�
-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_3*%
_class
loc:@pi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
�
)pi/conv2d_1/bias/Adam_2/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias*
valueB*    
�
pi/conv2d_1/bias/Adam_2VarHandleOp*(
shared_namepi/conv2d_1/bias/Adam_2*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
�
8pi/conv2d_1/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_2*#
_class
loc:@pi/conv2d_1/bias*
_output_shapes
: 
�
pi/conv2d_1/bias/Adam_2/AssignAssignVariableOppi/conv2d_1/bias/Adam_2)pi/conv2d_1/bias/Adam_2/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
�
+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_2*#
_class
loc:@pi/conv2d_1/bias*
dtype0*
_output_shapes
:
�
)pi/conv2d_1/bias/Adam_3/Initializer/zerosConst*
dtype0*
_output_shapes
:*#
_class
loc:@pi/conv2d_1/bias*
valueB*    
�
pi/conv2d_1/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namepi/conv2d_1/bias/Adam_3*#
_class
loc:@pi/conv2d_1/bias*
	container *
shape:
�
8pi/conv2d_1/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/conv2d_1/bias/Adam_3*#
_class
loc:@pi/conv2d_1/bias*
_output_shapes
: 
�
pi/conv2d_1/bias/Adam_3/AssignAssignVariableOppi/conv2d_1/bias/Adam_3)pi/conv2d_1/bias/Adam_3/Initializer/zeros*#
_class
loc:@pi/conv2d_1/bias*
dtype0
�
+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_3*#
_class
loc:@pi/conv2d_1/bias*
dtype0*
_output_shapes
:
�
(pi/dense/kernel/Adam_2/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense/kernel/Adam_2VarHandleOp*"
_class
loc:@pi/dense/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: *'
shared_namepi/dense/kernel/Adam_2
�
7pi/dense/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam_2*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
�
pi/dense/kernel/Adam_2/AssignAssignVariableOppi/dense/kernel/Adam_2(pi/dense/kernel/Adam_2/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
dtype0
�
*pi/dense/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/dense/kernel/Adam_2*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

:
�
(pi/dense/kernel/Adam_3/Initializer/zerosConst*"
_class
loc:@pi/dense/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense/kernel/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namepi/dense/kernel/Adam_3*"
_class
loc:@pi/dense/kernel*
	container *
shape
:
�
7pi/dense/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/kernel/Adam_3*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
�
pi/dense/kernel/Adam_3/AssignAssignVariableOppi/dense/kernel/Adam_3(pi/dense/kernel/Adam_3/Initializer/zeros*"
_class
loc:@pi/dense/kernel*
dtype0
�
*pi/dense/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/dense/kernel/Adam_3*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes

:
�
&pi/dense/bias/Adam_2/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense/bias/Adam_2VarHandleOp*
dtype0*
_output_shapes
: *%
shared_namepi/dense/bias/Adam_2* 
_class
loc:@pi/dense/bias*
	container *
shape:
�
5pi/dense/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias/Adam_2* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
pi/dense/bias/Adam_2/AssignAssignVariableOppi/dense/bias/Adam_2&pi/dense/bias/Adam_2/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0
�
(pi/dense/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/dense/bias/Adam_2*
dtype0*
_output_shapes
:* 
_class
loc:@pi/dense/bias
�
&pi/dense/bias/Adam_3/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense/bias/Adam_3VarHandleOp*%
shared_namepi/dense/bias/Adam_3* 
_class
loc:@pi/dense/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
�
5pi/dense/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense/bias/Adam_3* 
_class
loc:@pi/dense/bias*
_output_shapes
: 
�
pi/dense/bias/Adam_3/AssignAssignVariableOppi/dense/bias/Adam_3&pi/dense/bias/Adam_3/Initializer/zeros* 
_class
loc:@pi/dense/bias*
dtype0
�
(pi/dense/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/dense/bias/Adam_3* 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:
�
*pi/dense_1/kernel/Adam_2/Initializer/zerosConst*
dtype0*
_output_shapes

:*$
_class
loc:@pi/dense_1/kernel*
valueB*    
�
pi/dense_1/kernel/Adam_2VarHandleOp*
dtype0*
_output_shapes
: *)
shared_namepi/dense_1/kernel/Adam_2*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:
�
9pi/dense_1/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel/Adam_2*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
�
pi/dense_1/kernel/Adam_2/AssignAssignVariableOppi/dense_1/kernel/Adam_2*pi/dense_1/kernel/Adam_2/Initializer/zeros*$
_class
loc:@pi/dense_1/kernel*
dtype0
�
,pi/dense_1/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_2*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

:
�
*pi/dense_1/kernel/Adam_3/Initializer/zerosConst*$
_class
loc:@pi/dense_1/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense_1/kernel/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *)
shared_namepi/dense_1/kernel/Adam_3*$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:
�
9pi/dense_1/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/kernel/Adam_3*
_output_shapes
: *$
_class
loc:@pi/dense_1/kernel
�
pi/dense_1/kernel/Adam_3/AssignAssignVariableOppi/dense_1/kernel/Adam_3*pi/dense_1/kernel/Adam_3/Initializer/zeros*
dtype0*$
_class
loc:@pi/dense_1/kernel
�
,pi/dense_1/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_3*
dtype0*
_output_shapes

:*$
_class
loc:@pi/dense_1/kernel
�
(pi/dense_1/bias/Adam_2/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_1/bias/Adam_2VarHandleOp*
shape:*
dtype0*
_output_shapes
: *'
shared_namepi/dense_1/bias/Adam_2*"
_class
loc:@pi/dense_1/bias*
	container 
�
7pi/dense_1/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias/Adam_2*"
_class
loc:@pi/dense_1/bias*
_output_shapes
: 
�
pi/dense_1/bias/Adam_2/AssignAssignVariableOppi/dense_1/bias/Adam_2(pi/dense_1/bias/Adam_2/Initializer/zeros*
dtype0*"
_class
loc:@pi/dense_1/bias
�
*pi/dense_1/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_2*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
�
(pi/dense_1/bias/Adam_3/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_1/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namepi/dense_1/bias/Adam_3*"
_class
loc:@pi/dense_1/bias*
	container *
shape:
�
7pi/dense_1/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_1/bias/Adam_3*
_output_shapes
: *"
_class
loc:@pi/dense_1/bias
�
pi/dense_1/bias/Adam_3/AssignAssignVariableOppi/dense_1/bias/Adam_3(pi/dense_1/bias/Adam_3/Initializer/zeros*"
_class
loc:@pi/dense_1/bias*
dtype0
�
*pi/dense_1/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_3*"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:
�
*pi/dense_2/kernel/Adam_2/Initializer/zerosConst*
dtype0*
_output_shapes

:*$
_class
loc:@pi/dense_2/kernel*
valueB*    
�
pi/dense_2/kernel/Adam_2VarHandleOp*
shape
:*
dtype0*
_output_shapes
: *)
shared_namepi/dense_2/kernel/Adam_2*$
_class
loc:@pi/dense_2/kernel*
	container 
�
9pi/dense_2/kernel/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/kernel/Adam_2*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
�
pi/dense_2/kernel/Adam_2/AssignAssignVariableOppi/dense_2/kernel/Adam_2*pi/dense_2/kernel/Adam_2/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
dtype0
�
,pi/dense_2/kernel/Adam_2/Read/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam_2*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:
�
*pi/dense_2/kernel/Adam_3/Initializer/zerosConst*$
_class
loc:@pi/dense_2/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
pi/dense_2/kernel/Adam_3VarHandleOp*)
shared_namepi/dense_2/kernel/Adam_3*$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:*
dtype0*
_output_shapes
: 
�
9pi/dense_2/kernel/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/kernel/Adam_3*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: 
�
pi/dense_2/kernel/Adam_3/AssignAssignVariableOppi/dense_2/kernel/Adam_3*pi/dense_2/kernel/Adam_3/Initializer/zeros*
dtype0*$
_class
loc:@pi/dense_2/kernel
�
,pi/dense_2/kernel/Adam_3/Read/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam_3*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes

:
�
(pi/dense_2/bias/Adam_2/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_2/bias/Adam_2VarHandleOp*'
shared_namepi/dense_2/bias/Adam_2*"
_class
loc:@pi/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
: 
�
7pi/dense_2/bias/Adam_2/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/bias/Adam_2*"
_class
loc:@pi/dense_2/bias*
_output_shapes
: 
�
pi/dense_2/bias/Adam_2/AssignAssignVariableOppi/dense_2/bias/Adam_2(pi/dense_2/bias/Adam_2/Initializer/zeros*"
_class
loc:@pi/dense_2/bias*
dtype0
�
*pi/dense_2/bias/Adam_2/Read/ReadVariableOpReadVariableOppi/dense_2/bias/Adam_2*"
_class
loc:@pi/dense_2/bias*
dtype0*
_output_shapes
:
�
(pi/dense_2/bias/Adam_3/Initializer/zerosConst*"
_class
loc:@pi/dense_2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
pi/dense_2/bias/Adam_3VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namepi/dense_2/bias/Adam_3*"
_class
loc:@pi/dense_2/bias*
	container *
shape:
�
7pi/dense_2/bias/Adam_3/IsInitialized/VarIsInitializedOpVarIsInitializedOppi/dense_2/bias/Adam_3*"
_class
loc:@pi/dense_2/bias*
_output_shapes
: 
�
pi/dense_2/bias/Adam_3/AssignAssignVariableOppi/dense_2/bias/Adam_3(pi/dense_2/bias/Adam_3/Initializer/zeros*"
_class
loc:@pi/dense_2/bias*
dtype0
�
*pi/dense_2/bias/Adam_3/Read/ReadVariableOpReadVariableOppi/dense_2/bias/Adam_3*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias
�
7v/dense_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_5/kernel*
valueB"�      
�
-v/dense_5/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@v/dense_5/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'v/dense_5/kernel/Adam/Initializer/zerosFill7v/dense_5/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_5/kernel/Adam/Initializer/zeros/Const* 
_output_shapes
:
��*
T0*#
_class
loc:@v/dense_5/kernel*

index_type0
�
v/dense_5/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namev/dense_5/kernel/Adam*#
_class
loc:@v/dense_5/kernel*
	container *
shape:
��
�
6v/dense_5/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_5/kernel/Adam*#
_class
loc:@v/dense_5/kernel*
_output_shapes
: 
�
v/dense_5/kernel/Adam/AssignAssignVariableOpv/dense_5/kernel/Adam'v/dense_5/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_5/kernel*
dtype0
�
)v/dense_5/kernel/Adam/Read/ReadVariableOpReadVariableOpv/dense_5/kernel/Adam*
dtype0* 
_output_shapes
:
��*#
_class
loc:@v/dense_5/kernel
�
9v/dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_5/kernel*
valueB"�      *
dtype0*
_output_shapes
:
�
/v/dense_5/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_5/kernel*
valueB
 *    
�
)v/dense_5/kernel/Adam_1/Initializer/zerosFill9v/dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_5/kernel/Adam_1/Initializer/zeros/Const*
T0*#
_class
loc:@v/dense_5/kernel*

index_type0* 
_output_shapes
:
��
�
v/dense_5/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *(
shared_namev/dense_5/kernel/Adam_1*#
_class
loc:@v/dense_5/kernel*
	container *
shape:
��
�
8v/dense_5/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_5/kernel/Adam_1*#
_class
loc:@v/dense_5/kernel*
_output_shapes
: 
�
v/dense_5/kernel/Adam_1/AssignAssignVariableOpv/dense_5/kernel/Adam_1)v/dense_5/kernel/Adam_1/Initializer/zeros*
dtype0*#
_class
loc:@v/dense_5/kernel
�
+v/dense_5/kernel/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_5/kernel/Adam_1*#
_class
loc:@v/dense_5/kernel*
dtype0* 
_output_shapes
:
��
�
%v/dense_5/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_5/bias*
valueB�*    *
dtype0*
_output_shapes	
:�
�
v/dense_5/bias/AdamVarHandleOp*!
_class
loc:@v/dense_5/bias*
	container *
shape:�*
dtype0*
_output_shapes
: *$
shared_namev/dense_5/bias/Adam
�
4v/dense_5/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_5/bias/Adam*!
_class
loc:@v/dense_5/bias*
_output_shapes
: 
�
v/dense_5/bias/Adam/AssignAssignVariableOpv/dense_5/bias/Adam%v/dense_5/bias/Adam/Initializer/zeros*
dtype0*!
_class
loc:@v/dense_5/bias
�
'v/dense_5/bias/Adam/Read/ReadVariableOpReadVariableOpv/dense_5/bias/Adam*!
_class
loc:@v/dense_5/bias*
dtype0*
_output_shapes	
:�
�
'v/dense_5/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes	
:�*!
_class
loc:@v/dense_5/bias*
valueB�*    
�
v/dense_5/bias/Adam_1VarHandleOp*&
shared_namev/dense_5/bias/Adam_1*!
_class
loc:@v/dense_5/bias*
	container *
shape:�*
dtype0*
_output_shapes
: 
�
6v/dense_5/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_5/bias/Adam_1*
_output_shapes
: *!
_class
loc:@v/dense_5/bias
�
v/dense_5/bias/Adam_1/AssignAssignVariableOpv/dense_5/bias/Adam_1'v/dense_5/bias/Adam_1/Initializer/zeros*!
_class
loc:@v/dense_5/bias*
dtype0
�
)v/dense_5/bias/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_5/bias/Adam_1*
dtype0*
_output_shapes	
:�*!
_class
loc:@v/dense_5/bias
�
'v/dense_6/kernel/Adam/Initializer/zerosConst*#
_class
loc:@v/dense_6/kernel*
valueB	�*    *
dtype0*
_output_shapes
:	�
�
v/dense_6/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *&
shared_namev/dense_6/kernel/Adam*#
_class
loc:@v/dense_6/kernel*
	container *
shape:	�
�
6v/dense_6/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_6/kernel/Adam*#
_class
loc:@v/dense_6/kernel*
_output_shapes
: 
�
v/dense_6/kernel/Adam/AssignAssignVariableOpv/dense_6/kernel/Adam'v/dense_6/kernel/Adam/Initializer/zeros*#
_class
loc:@v/dense_6/kernel*
dtype0
�
)v/dense_6/kernel/Adam/Read/ReadVariableOpReadVariableOpv/dense_6/kernel/Adam*#
_class
loc:@v/dense_6/kernel*
dtype0*
_output_shapes
:	�
�
)v/dense_6/kernel/Adam_1/Initializer/zerosConst*#
_class
loc:@v/dense_6/kernel*
valueB	�*    *
dtype0*
_output_shapes
:	�
�
v/dense_6/kernel/Adam_1VarHandleOp*#
_class
loc:@v/dense_6/kernel*
	container *
shape:	�*
dtype0*
_output_shapes
: *(
shared_namev/dense_6/kernel/Adam_1
�
8v/dense_6/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_6/kernel/Adam_1*#
_class
loc:@v/dense_6/kernel*
_output_shapes
: 
�
v/dense_6/kernel/Adam_1/AssignAssignVariableOpv/dense_6/kernel/Adam_1)v/dense_6/kernel/Adam_1/Initializer/zeros*#
_class
loc:@v/dense_6/kernel*
dtype0
�
+v/dense_6/kernel/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_6/kernel/Adam_1*
dtype0*
_output_shapes
:	�*#
_class
loc:@v/dense_6/kernel
�
%v/dense_6/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_6/bias*
valueB*    *
dtype0*
_output_shapes
:
�
v/dense_6/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *$
shared_namev/dense_6/bias/Adam*!
_class
loc:@v/dense_6/bias*
	container *
shape:
�
4v/dense_6/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_6/bias/Adam*
_output_shapes
: *!
_class
loc:@v/dense_6/bias
�
v/dense_6/bias/Adam/AssignAssignVariableOpv/dense_6/bias/Adam%v/dense_6/bias/Adam/Initializer/zeros*
dtype0*!
_class
loc:@v/dense_6/bias
�
'v/dense_6/bias/Adam/Read/ReadVariableOpReadVariableOpv/dense_6/bias/Adam*!
_class
loc:@v/dense_6/bias*
dtype0*
_output_shapes
:
�
'v/dense_6/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_6/bias*
valueB*    *
dtype0*
_output_shapes
:
�
v/dense_6/bias/Adam_1VarHandleOp*
	container *
shape:*
dtype0*
_output_shapes
: *&
shared_namev/dense_6/bias/Adam_1*!
_class
loc:@v/dense_6/bias
�
6v/dense_6/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpv/dense_6/bias/Adam_1*!
_class
loc:@v/dense_6/bias*
_output_shapes
: 
�
v/dense_6/bias/Adam_1/AssignAssignVariableOpv/dense_6/bias/Adam_1'v/dense_6/bias/Adam_1/Initializer/zeros*
dtype0*!
_class
loc:@v/dense_6/bias
�
)v/dense_6/bias/Adam_1/Read/ReadVariableOpReadVariableOpv/dense_6/bias/Adam_1*
dtype0*
_output_shapes
:*!
_class
loc:@v/dense_6/bias
Y
Adam_1/learning_rateConst*
dtype0*
_output_shapes
: *
valueB
 *��D;
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
 *w�?*
dtype0*
_output_shapes
: 
S
Adam_1/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
?Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
AAdam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
0Adam_1/update_pi/conv2d/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d/kernelpi/conv2d/kernel/Adam_2pi/conv2d/kernel/Adam_3?Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_70*
T0*#
_class
loc:@pi/conv2d/kernel*
use_nesterov( *
use_locking( 
�
=Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
?Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
.Adam_1/update_pi/conv2d/bias/ResourceApplyAdamResourceApplyAdampi/conv2d/biaspi/conv2d/bias/Adam_2pi/conv2d/bias/Adam_3=Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_pi/conv2d/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_71*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@pi/conv2d/bias
�
AAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
CAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
2Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdamResourceApplyAdampi/conv2d_1/kernelpi/conv2d_1/kernel/Adam_2pi/conv2d_1/kernel/Adam_3AAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOpCAdam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_72*
use_locking( *
T0*%
_class
loc:@pi/conv2d_1/kernel*
use_nesterov( 
�
?Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
AAdam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
0Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdamResourceApplyAdampi/conv2d_1/biaspi/conv2d_1/bias/Adam_2pi/conv2d_1/bias/Adam_3?Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOpAAdam_1/update_pi/conv2d_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_73*
T0*#
_class
loc:@pi/conv2d_1/bias*
use_nesterov( *
use_locking( 
�
>Adam_1/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
@Adam_1/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
/Adam_1/update_pi/dense/kernel/ResourceApplyAdamResourceApplyAdampi/dense/kernelpi/dense/kernel/Adam_2pi/dense/kernel/Adam_3>Adam_1/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp@Adam_1/update_pi/dense/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_74*
use_nesterov( *
use_locking( *
T0*"
_class
loc:@pi/dense/kernel
�
<Adam_1/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
>Adam_1/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
-Adam_1/update_pi/dense/bias/ResourceApplyAdamResourceApplyAdampi/dense/biaspi/dense/bias/Adam_2pi/dense/bias/Adam_3<Adam_1/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp>Adam_1/update_pi/dense/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_75*
T0* 
_class
loc:@pi/dense/bias*
use_nesterov( *
use_locking( 
�
@Adam_1/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
BAdam_1/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
1Adam_1/update_pi/dense_1/kernel/ResourceApplyAdamResourceApplyAdampi/dense_1/kernelpi/dense_1/kernel/Adam_2pi/dense_1/kernel/Adam_3@Adam_1/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOpBAdam_1/update_pi/dense_1/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_76*
use_nesterov( *
use_locking( *
T0*$
_class
loc:@pi/dense_1/kernel
�
>Adam_1/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
@Adam_1/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
/Adam_1/update_pi/dense_1/bias/ResourceApplyAdamResourceApplyAdampi/dense_1/biaspi/dense_1/bias/Adam_2pi/dense_1/bias/Adam_3>Adam_1/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp@Adam_1/update_pi/dense_1/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_77*
T0*"
_class
loc:@pi/dense_1/bias*
use_nesterov( *
use_locking( 
�
@Adam_1/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
BAdam_1/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
1Adam_1/update_pi/dense_2/kernel/ResourceApplyAdamResourceApplyAdampi/dense_2/kernelpi/dense_2/kernel/Adam_2pi/dense_2/kernel/Adam_3@Adam_1/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOpBAdam_1/update_pi/dense_2/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_78*
use_locking( *
T0*$
_class
loc:@pi/dense_2/kernel*
use_nesterov( 
�
>Adam_1/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
@Adam_1/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
/Adam_1/update_pi/dense_2/bias/ResourceApplyAdamResourceApplyAdampi/dense_2/biaspi/dense_2/bias/Adam_2pi/dense_2/bias/Adam_3>Adam_1/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOp@Adam_1/update_pi/dense_2/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_79*
use_locking( *
T0*"
_class
loc:@pi/dense_2/bias*
use_nesterov( 
�
?Adam_1/update_v/dense_5/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
AAdam_1/update_v/dense_5/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
0Adam_1/update_v/dense_5/kernel/ResourceApplyAdamResourceApplyAdamv/dense_5/kernelv/dense_5/kernel/Adamv/dense_5/kernel/Adam_1?Adam_1/update_v/dense_5/kernel/ResourceApplyAdam/ReadVariableOpAAdam_1/update_v/dense_5/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_80*
use_locking( *
T0*#
_class
loc:@v/dense_5/kernel*
use_nesterov( 
�
=Adam_1/update_v/dense_5/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
?Adam_1/update_v/dense_5/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
.Adam_1/update_v/dense_5/bias/ResourceApplyAdamResourceApplyAdamv/dense_5/biasv/dense_5/bias/Adamv/dense_5/bias/Adam_1=Adam_1/update_v/dense_5/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_v/dense_5/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_81*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@v/dense_5/bias
�
?Adam_1/update_v/dense_6/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
AAdam_1/update_v/dense_6/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
0Adam_1/update_v/dense_6/kernel/ResourceApplyAdamResourceApplyAdamv/dense_6/kernelv/dense_6/kernel/Adamv/dense_6/kernel/Adam_1?Adam_1/update_v/dense_6/kernel/ResourceApplyAdam/ReadVariableOpAAdam_1/update_v/dense_6/kernel/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_82*
use_locking( *
T0*#
_class
loc:@v/dense_6/kernel*
use_nesterov( 
�
=Adam_1/update_v/dense_6/bias/ResourceApplyAdam/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
�
?Adam_1/update_v/dense_6/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
�
.Adam_1/update_v/dense_6/bias/ResourceApplyAdamResourceApplyAdamv/dense_6/biasv/dense_6/bias/Adamv/dense_6/bias/Adam_1=Adam_1/update_v/dense_6/bias/ResourceApplyAdam/ReadVariableOp?Adam_1/update_v/dense_6/bias/ResourceApplyAdam/ReadVariableOp_1Adam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_83*
T0*!
_class
loc:@v/dense_6/bias*
use_nesterov( *
use_locking( 
�
Adam_1/ReadVariableOpReadVariableOpbeta1_power_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam.^Adam_1/update_pi/dense/bias/ResourceApplyAdam0^Adam_1/update_pi/dense/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_1/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_1/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_2/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_5/bias/ResourceApplyAdam1^Adam_1/update_v/dense_5/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_6/bias/ResourceApplyAdam1^Adam_1/update_v/dense_6/kernel/ResourceApplyAdam*
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
Adam_1/mul*
dtype0*!
_class
loc:@pi/conv2d/bias
�
Adam_1/ReadVariableOp_1ReadVariableOpbeta1_power_1^Adam_1/AssignVariableOp/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam.^Adam_1/update_pi/dense/bias/ResourceApplyAdam0^Adam_1/update_pi/dense/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_1/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_1/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_2/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_5/bias/ResourceApplyAdam1^Adam_1/update_v/dense_5/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_6/bias/ResourceApplyAdam1^Adam_1/update_v/dense_6/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
�
Adam_1/ReadVariableOp_2ReadVariableOpbeta2_power_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam.^Adam_1/update_pi/dense/bias/ResourceApplyAdam0^Adam_1/update_pi/dense/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_1/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_1/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_2/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_5/bias/ResourceApplyAdam1^Adam_1/update_v/dense_5/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_6/bias/ResourceApplyAdam1^Adam_1/update_v/dense_6/kernel/ResourceApplyAdam*
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
�
Adam_1/ReadVariableOp_3ReadVariableOpbeta2_power_1^Adam_1/AssignVariableOp_1/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam.^Adam_1/update_pi/dense/bias/ResourceApplyAdam0^Adam_1/update_pi/dense/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_1/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_1/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_2/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_5/bias/ResourceApplyAdam1^Adam_1/update_v/dense_5/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_6/bias/ResourceApplyAdam1^Adam_1/update_v/dense_6/kernel/ResourceApplyAdam*
dtype0*
_output_shapes
: *!
_class
loc:@pi/conv2d/bias
�
Adam_1NoOp^Adam_1/ReadVariableOp_1^Adam_1/ReadVariableOp_3/^Adam_1/update_pi/conv2d/bias/ResourceApplyAdam1^Adam_1/update_pi/conv2d/kernel/ResourceApplyAdam1^Adam_1/update_pi/conv2d_1/bias/ResourceApplyAdam3^Adam_1/update_pi/conv2d_1/kernel/ResourceApplyAdam.^Adam_1/update_pi/dense/bias/ResourceApplyAdam0^Adam_1/update_pi/dense/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_1/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_1/kernel/ResourceApplyAdam0^Adam_1/update_pi/dense_2/bias/ResourceApplyAdam2^Adam_1/update_pi/dense_2/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_5/bias/ResourceApplyAdam1^Adam_1/update_v/dense_5/kernel/ResourceApplyAdam/^Adam_1/update_v/dense_6/bias/ResourceApplyAdam1^Adam_1/update_v/dense_6/kernel/ResourceApplyAdam
{
Reshape_84/ReadVariableOpReadVariableOppi/conv2d/kernel^Adam_1*
dtype0*&
_output_shapes
:
l
Reshape_84/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_84ReshapeReshape_84/ReadVariableOpReshape_84/shape*
T0*
Tshape0*
_output_shapes
:0
m
Reshape_85/ReadVariableOpReadVariableOppi/conv2d/bias^Adam_1*
dtype0*
_output_shapes
:
l
Reshape_85/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_85ReshapeReshape_85/ReadVariableOpReshape_85/shape*
T0*
Tshape0*
_output_shapes
:
}
Reshape_86/ReadVariableOpReadVariableOppi/conv2d_1/kernel^Adam_1*
dtype0*&
_output_shapes
:
l
Reshape_86/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_86ReshapeReshape_86/ReadVariableOpReshape_86/shape*
_output_shapes	
:�	*
T0*
Tshape0
o
Reshape_87/ReadVariableOpReadVariableOppi/conv2d_1/bias^Adam_1*
dtype0*
_output_shapes
:
l
Reshape_87/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
���������
u

Reshape_87ReshapeReshape_87/ReadVariableOpReshape_87/shape*
T0*
Tshape0*
_output_shapes
:
r
Reshape_88/ReadVariableOpReadVariableOppi/dense/kernel^Adam_1*
dtype0*
_output_shapes

:
l
Reshape_88/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_88ReshapeReshape_88/ReadVariableOpReshape_88/shape*
T0*
Tshape0*
_output_shapes	
:�
l
Reshape_89/ReadVariableOpReadVariableOppi/dense/bias^Adam_1*
dtype0*
_output_shapes
:
l
Reshape_89/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_89ReshapeReshape_89/ReadVariableOpReshape_89/shape*
T0*
Tshape0*
_output_shapes
:
t
Reshape_90/ReadVariableOpReadVariableOppi/dense_1/kernel^Adam_1*
dtype0*
_output_shapes

:
l
Reshape_90/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_90ReshapeReshape_90/ReadVariableOpReshape_90/shape*
T0*
Tshape0*
_output_shapes	
:�
n
Reshape_91/ReadVariableOpReadVariableOppi/dense_1/bias^Adam_1*
dtype0*
_output_shapes
:
l
Reshape_91/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
���������
u

Reshape_91ReshapeReshape_91/ReadVariableOpReshape_91/shape*
T0*
Tshape0*
_output_shapes
:
t
Reshape_92/ReadVariableOpReadVariableOppi/dense_2/kernel^Adam_1*
dtype0*
_output_shapes

:
l
Reshape_92/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_92ReshapeReshape_92/ReadVariableOpReshape_92/shape*
T0*
Tshape0*
_output_shapes	
:�
n
Reshape_93/ReadVariableOpReadVariableOppi/dense_2/bias^Adam_1*
dtype0*
_output_shapes
:
l
Reshape_93/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
u

Reshape_93ReshapeReshape_93/ReadVariableOpReshape_93/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_94/ReadVariableOpReadVariableOpv/dense_5/kernel^Adam_1*
dtype0* 
_output_shapes
:
��
l
Reshape_94/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
���������
w

Reshape_94ReshapeReshape_94/ReadVariableOpReshape_94/shape*
_output_shapes

:��*
T0*
Tshape0
n
Reshape_95/ReadVariableOpReadVariableOpv/dense_5/bias^Adam_1*
dtype0*
_output_shapes	
:�
l
Reshape_95/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
���������
v

Reshape_95ReshapeReshape_95/ReadVariableOpReshape_95/shape*
T0*
Tshape0*
_output_shapes	
:�
t
Reshape_96/ReadVariableOpReadVariableOpv/dense_6/kernel^Adam_1*
dtype0*
_output_shapes
:	�
l
Reshape_96/shapeConst^Adam_1*
valueB:
���������*
dtype0*
_output_shapes
:
v

Reshape_96ReshapeReshape_96/ReadVariableOpReshape_96/shape*
T0*
Tshape0*
_output_shapes	
:�
m
Reshape_97/ReadVariableOpReadVariableOpv/dense_6/bias^Adam_1*
dtype0*
_output_shapes
:
l
Reshape_97/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
���������
u

Reshape_97ReshapeReshape_97/ReadVariableOpReshape_97/shape*
_output_shapes
:*
T0*
Tshape0
X
concat_3/axisConst^Adam_1*
value	B : *
dtype0*
_output_shapes
: 
�
concat_3ConcatV2
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
Reshape_97concat_3/axis*

Tidx0*
T0*
N*
_output_shapes

:ݏ
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
�
Const_8Const^Adam_1*M
valueDBB"80      �     @     @     @      �           *
dtype0*
_output_shapes
:
\
split_3/split_dimConst^Adam_1*
dtype0*
_output_shapes
: *
value	B : 
�
split_3SplitVEagerPyFunc_3Const_8split_3/split_dim*L
_output_shapes:
8::::::::::::::*
	num_split*

Tlen0*
T0
r
Reshape_98/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
o

Reshape_98Reshapesplit_3Reshape_98/shape*
T0*
Tshape0*&
_output_shapes
:
c
Reshape_99/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_99Reshape	split_3:1Reshape_99/shape*
_output_shapes
:*
T0*
Tshape0
s
Reshape_100/shapeConst^Adam_1*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_100Reshape	split_3:2Reshape_100/shape*
T0*
Tshape0*&
_output_shapes
:
d
Reshape_101/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_101Reshape	split_3:3Reshape_101/shape*
T0*
Tshape0*
_output_shapes
:
k
Reshape_102/shapeConst^Adam_1*
valueB"      *
dtype0*
_output_shapes
:
k
Reshape_102Reshape	split_3:4Reshape_102/shape*
_output_shapes

:*
T0*
Tshape0
d
Reshape_103/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
g
Reshape_103Reshape	split_3:5Reshape_103/shape*
_output_shapes
:*
T0*
Tshape0
k
Reshape_104/shapeConst^Adam_1*
valueB"      *
dtype0*
_output_shapes
:
k
Reshape_104Reshape	split_3:6Reshape_104/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_105/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_105Reshape	split_3:7Reshape_105/shape*
T0*
Tshape0*
_output_shapes
:
k
Reshape_106/shapeConst^Adam_1*
valueB"      *
dtype0*
_output_shapes
:
k
Reshape_106Reshape	split_3:8Reshape_106/shape*
T0*
Tshape0*
_output_shapes

:
d
Reshape_107/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_107Reshape	split_3:9Reshape_107/shape*
_output_shapes
:*
T0*
Tshape0
k
Reshape_108/shapeConst^Adam_1*
valueB"�      *
dtype0*
_output_shapes
:
n
Reshape_108Reshape
split_3:10Reshape_108/shape* 
_output_shapes
:
��*
T0*
Tshape0
e
Reshape_109/shapeConst^Adam_1*
valueB:�*
dtype0*
_output_shapes
:
i
Reshape_109Reshape
split_3:11Reshape_109/shape*
T0*
Tshape0*
_output_shapes	
:�
k
Reshape_110/shapeConst^Adam_1*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_110Reshape
split_3:12Reshape_110/shape*
T0*
Tshape0*
_output_shapes
:	�
d
Reshape_111/shapeConst^Adam_1*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_111Reshape
split_3:13Reshape_111/shape*
T0*
Tshape0*
_output_shapes
:
R
AssignVariableOp_14AssignVariableOppi/conv2d/kernel
Reshape_98*
dtype0
�
ReadVariableOp_14ReadVariableOppi/conv2d/kernel^Adam_1^AssignVariableOp_14*
dtype0*&
_output_shapes
:
P
AssignVariableOp_15AssignVariableOppi/conv2d/bias
Reshape_99*
dtype0
{
ReadVariableOp_15ReadVariableOppi/conv2d/bias^Adam_1^AssignVariableOp_15*
dtype0*
_output_shapes
:
U
AssignVariableOp_16AssignVariableOppi/conv2d_1/kernelReshape_100*
dtype0
�
ReadVariableOp_16ReadVariableOppi/conv2d_1/kernel^Adam_1^AssignVariableOp_16*
dtype0*&
_output_shapes
:
S
AssignVariableOp_17AssignVariableOppi/conv2d_1/biasReshape_101*
dtype0
}
ReadVariableOp_17ReadVariableOppi/conv2d_1/bias^Adam_1^AssignVariableOp_17*
dtype0*
_output_shapes
:
R
AssignVariableOp_18AssignVariableOppi/dense/kernelReshape_102*
dtype0
�
ReadVariableOp_18ReadVariableOppi/dense/kernel^Adam_1^AssignVariableOp_18*
dtype0*
_output_shapes

:
P
AssignVariableOp_19AssignVariableOppi/dense/biasReshape_103*
dtype0
z
ReadVariableOp_19ReadVariableOppi/dense/bias^Adam_1^AssignVariableOp_19*
dtype0*
_output_shapes
:
T
AssignVariableOp_20AssignVariableOppi/dense_1/kernelReshape_104*
dtype0
�
ReadVariableOp_20ReadVariableOppi/dense_1/kernel^Adam_1^AssignVariableOp_20*
dtype0*
_output_shapes

:
R
AssignVariableOp_21AssignVariableOppi/dense_1/biasReshape_105*
dtype0
|
ReadVariableOp_21ReadVariableOppi/dense_1/bias^Adam_1^AssignVariableOp_21*
dtype0*
_output_shapes
:
T
AssignVariableOp_22AssignVariableOppi/dense_2/kernelReshape_106*
dtype0
�
ReadVariableOp_22ReadVariableOppi/dense_2/kernel^Adam_1^AssignVariableOp_22*
dtype0*
_output_shapes

:
R
AssignVariableOp_23AssignVariableOppi/dense_2/biasReshape_107*
dtype0
|
ReadVariableOp_23ReadVariableOppi/dense_2/bias^Adam_1^AssignVariableOp_23*
dtype0*
_output_shapes
:
S
AssignVariableOp_24AssignVariableOpv/dense_5/kernelReshape_108*
dtype0
�
ReadVariableOp_24ReadVariableOpv/dense_5/kernel^Adam_1^AssignVariableOp_24*
dtype0* 
_output_shapes
:
��
Q
AssignVariableOp_25AssignVariableOpv/dense_5/biasReshape_109*
dtype0
|
ReadVariableOp_25ReadVariableOpv/dense_5/bias^Adam_1^AssignVariableOp_25*
dtype0*
_output_shapes	
:�
S
AssignVariableOp_26AssignVariableOpv/dense_6/kernelReshape_110*
dtype0
�
ReadVariableOp_26ReadVariableOpv/dense_6/kernel^Adam_1^AssignVariableOp_26*
dtype0*
_output_shapes
:	�
Q
AssignVariableOp_27AssignVariableOpv/dense_6/biasReshape_111*
dtype0
{
ReadVariableOp_27ReadVariableOpv/dense_6/bias^Adam_1^AssignVariableOp_27*
dtype0*
_output_shapes
:
�
group_deps_2NoOp^Adam_1^ReadVariableOp_14^ReadVariableOp_15^ReadVariableOp_16^ReadVariableOp_17^ReadVariableOp_18^ReadVariableOp_19^ReadVariableOp_20^ReadVariableOp_21^ReadVariableOp_22^ReadVariableOp_23^ReadVariableOp_24^ReadVariableOp_25^ReadVariableOp_26^ReadVariableOp_27
,
group_deps_3NoOp^Adam_1^group_deps_2
�
Merge/MergeSummaryMergeSummarypi_loss/summaries/mean_1pi_loss/summaries/stddev_1pi_loss/summaries/max_1pi_loss/summaries/min_1pi_loss/summaries/histogram*
N*
_output_shapes
: 
�
initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta2_power/Assign^beta2_power_1/Assign^pi/Variable/Assign^pi/Variable_1/Assign^pi/Variable_2/Assign^pi/Variable_3/Assign^pi/Variable_4/Assign^pi/Variable_5/Assign^pi/Variable_6/Assign^pi/Variable_7/Assign^pi/Variable_8/Assign^pi/Variable_9/Assign^pi/conv2d/bias/Adam/Assign^pi/conv2d/bias/Adam_1/Assign^pi/conv2d/bias/Adam_2/Assign^pi/conv2d/bias/Adam_3/Assign^pi/conv2d/bias/Assign^pi/conv2d/kernel/Adam/Assign^pi/conv2d/kernel/Adam_1/Assign^pi/conv2d/kernel/Adam_2/Assign^pi/conv2d/kernel/Adam_3/Assign^pi/conv2d/kernel/Assign^pi/conv2d_1/bias/Adam/Assign^pi/conv2d_1/bias/Adam_1/Assign^pi/conv2d_1/bias/Adam_2/Assign^pi/conv2d_1/bias/Adam_3/Assign^pi/conv2d_1/bias/Assign^pi/conv2d_1/kernel/Adam/Assign!^pi/conv2d_1/kernel/Adam_1/Assign!^pi/conv2d_1/kernel/Adam_2/Assign!^pi/conv2d_1/kernel/Adam_3/Assign^pi/conv2d_1/kernel/Assign^pi/dense/bias/Adam/Assign^pi/dense/bias/Adam_1/Assign^pi/dense/bias/Adam_2/Assign^pi/dense/bias/Adam_3/Assign^pi/dense/bias/Assign^pi/dense/kernel/Adam/Assign^pi/dense/kernel/Adam_1/Assign^pi/dense/kernel/Adam_2/Assign^pi/dense/kernel/Adam_3/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Adam/Assign^pi/dense_1/bias/Adam_1/Assign^pi/dense_1/bias/Adam_2/Assign^pi/dense_1/bias/Adam_3/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Adam/Assign ^pi/dense_1/kernel/Adam_1/Assign ^pi/dense_1/kernel/Adam_2/Assign ^pi/dense_1/kernel/Adam_3/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Adam/Assign^pi/dense_2/bias/Adam_1/Assign^pi/dense_2/bias/Adam_2/Assign^pi/dense_2/bias/Adam_3/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Adam/Assign ^pi/dense_2/kernel/Adam_1/Assign ^pi/dense_2/kernel/Adam_2/Assign ^pi/dense_2/kernel/Adam_3/Assign^pi/dense_2/kernel/Assign^pi/dense_3/bias/Adam/Assign^pi/dense_3/bias/Adam_1/Assign^pi/dense_3/bias/Assign^pi/dense_3/kernel/Adam/Assign ^pi/dense_3/kernel/Adam_1/Assign^pi/dense_3/kernel/Assign^pi/dense_4/bias/Adam/Assign^pi/dense_4/bias/Adam_1/Assign^pi/dense_4/bias/Assign^pi/dense_4/kernel/Adam/Assign ^pi/dense_4/kernel/Adam_1/Assign^pi/dense_4/kernel/Assign^v/dense_5/bias/Adam/Assign^v/dense_5/bias/Adam_1/Assign^v/dense_5/bias/Assign^v/dense_5/kernel/Adam/Assign^v/dense_5/kernel/Adam_1/Assign^v/dense_5/kernel/Assign^v/dense_6/bias/Adam/Assign^v/dense_6/bias/Adam_1/Assign^v/dense_6/bias/Assign^v/dense_6/kernel/Adam/Assign^v/dense_6/kernel/Adam_1/Assign^v/dense_6/kernel/Assign
s
Reshape_112/ReadVariableOpReadVariableOppi/conv2d/kernel*
dtype0*&
_output_shapes
:
d
Reshape_112/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_112ReshapeReshape_112/ReadVariableOpReshape_112/shape*
_output_shapes
:0*
T0*
Tshape0
e
Reshape_113/ReadVariableOpReadVariableOppi/conv2d/bias*
dtype0*
_output_shapes
:
d
Reshape_113/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_113ReshapeReshape_113/ReadVariableOpReshape_113/shape*
T0*
Tshape0*
_output_shapes
:
u
Reshape_114/ReadVariableOpReadVariableOppi/conv2d_1/kernel*
dtype0*&
_output_shapes
:
d
Reshape_114/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_114ReshapeReshape_114/ReadVariableOpReshape_114/shape*
T0*
Tshape0*
_output_shapes	
:�	
g
Reshape_115/ReadVariableOpReadVariableOppi/conv2d_1/bias*
dtype0*
_output_shapes
:
d
Reshape_115/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_115ReshapeReshape_115/ReadVariableOpReshape_115/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_116/ReadVariableOpReadVariableOppi/dense/kernel*
dtype0*
_output_shapes

:
d
Reshape_116/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_116ReshapeReshape_116/ReadVariableOpReshape_116/shape*
T0*
Tshape0*
_output_shapes	
:�
d
Reshape_117/ReadVariableOpReadVariableOppi/dense/bias*
dtype0*
_output_shapes
:
d
Reshape_117/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_117ReshapeReshape_117/ReadVariableOpReshape_117/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_118/ReadVariableOpReadVariableOppi/dense_1/kernel*
dtype0*
_output_shapes

:
d
Reshape_118/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_118ReshapeReshape_118/ReadVariableOpReshape_118/shape*
_output_shapes	
:�*
T0*
Tshape0
f
Reshape_119/ReadVariableOpReadVariableOppi/dense_1/bias*
dtype0*
_output_shapes
:
d
Reshape_119/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_119ReshapeReshape_119/ReadVariableOpReshape_119/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_120/ReadVariableOpReadVariableOppi/dense_2/kernel*
dtype0*
_output_shapes

:
d
Reshape_120/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_120ReshapeReshape_120/ReadVariableOpReshape_120/shape*
_output_shapes	
:�*
T0*
Tshape0
f
Reshape_121/ReadVariableOpReadVariableOppi/dense_2/bias*
dtype0*
_output_shapes
:
d
Reshape_121/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_121ReshapeReshape_121/ReadVariableOpReshape_121/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_122/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
n
Reshape_122Reshapepi/Variable/readReshape_122/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_123/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p
Reshape_123Reshapepi/Variable_1/readReshape_123/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_124/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p
Reshape_124Reshapepi/Variable_2/readReshape_124/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_125/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
p
Reshape_125Reshapepi/Variable_3/readReshape_125/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_126/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p
Reshape_126Reshapepi/Variable_4/readReshape_126/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_127/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p
Reshape_127Reshapepi/Variable_5/readReshape_127/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_128/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p
Reshape_128Reshapepi/Variable_6/readReshape_128/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_129/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p
Reshape_129Reshapepi/Variable_7/readReshape_129/shape*
_output_shapes
:*
T0*
Tshape0
d
Reshape_130/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
p
Reshape_130Reshapepi/Variable_8/readReshape_130/shape*
T0*
Tshape0*
_output_shapes
:
d
Reshape_131/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
p
Reshape_131Reshapepi/Variable_9/readReshape_131/shape*
T0*
Tshape0*
_output_shapes
:
n
Reshape_132/ReadVariableOpReadVariableOppi/dense_3/kernel*
dtype0* 
_output_shapes
:
��
d
Reshape_132/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
z
Reshape_132ReshapeReshape_132/ReadVariableOpReshape_132/shape*
_output_shapes

:��*
T0*
Tshape0
g
Reshape_133/ReadVariableOpReadVariableOppi/dense_3/bias*
dtype0*
_output_shapes	
:�
d
Reshape_133/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_133ReshapeReshape_133/ReadVariableOpReshape_133/shape*
T0*
Tshape0*
_output_shapes	
:�
m
Reshape_134/ReadVariableOpReadVariableOppi/dense_4/kernel*
dtype0*
_output_shapes
:	�
d
Reshape_134/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_134ReshapeReshape_134/ReadVariableOpReshape_134/shape*
T0*
Tshape0*
_output_shapes	
:�
f
Reshape_135/ReadVariableOpReadVariableOppi/dense_4/bias*
dtype0*
_output_shapes
:
d
Reshape_135/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_135ReshapeReshape_135/ReadVariableOpReshape_135/shape*
T0*
Tshape0*
_output_shapes
:
m
Reshape_136/ReadVariableOpReadVariableOpv/dense_5/kernel*
dtype0* 
_output_shapes
:
��
d
Reshape_136/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
z
Reshape_136ReshapeReshape_136/ReadVariableOpReshape_136/shape*
T0*
Tshape0*
_output_shapes

:��
f
Reshape_137/ReadVariableOpReadVariableOpv/dense_5/bias*
dtype0*
_output_shapes	
:�
d
Reshape_137/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_137ReshapeReshape_137/ReadVariableOpReshape_137/shape*
_output_shapes	
:�*
T0*
Tshape0
l
Reshape_138/ReadVariableOpReadVariableOpv/dense_6/kernel*
dtype0*
_output_shapes
:	�
d
Reshape_138/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_138ReshapeReshape_138/ReadVariableOpReshape_138/shape*
T0*
Tshape0*
_output_shapes	
:�
e
Reshape_139/ReadVariableOpReadVariableOpv/dense_6/bias*
dtype0*
_output_shapes
:
d
Reshape_139/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_139ReshapeReshape_139/ReadVariableOpReshape_139/shape*
_output_shapes
:*
T0*
Tshape0
^
Reshape_140/ReadVariableOpReadVariableOpbeta1_power*
dtype0*
_output_shapes
: 
d
Reshape_140/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_140ReshapeReshape_140/ReadVariableOpReshape_140/shape*
T0*
Tshape0*
_output_shapes
:
^
Reshape_141/ReadVariableOpReadVariableOpbeta2_power*
dtype0*
_output_shapes
: 
d
Reshape_141/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_141ReshapeReshape_141/ReadVariableOpReshape_141/shape*
T0*
Tshape0*
_output_shapes
:
x
Reshape_142/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_142/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_142ReshapeReshape_142/ReadVariableOpReshape_142/shape*
T0*
Tshape0*
_output_shapes
:0
z
Reshape_143/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_143/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_143ReshapeReshape_143/ReadVariableOpReshape_143/shape*
T0*
Tshape0*
_output_shapes
:0
j
Reshape_144/ReadVariableOpReadVariableOppi/conv2d/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_144/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_144ReshapeReshape_144/ReadVariableOpReshape_144/shape*
_output_shapes
:*
T0*
Tshape0
l
Reshape_145/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_145/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_145ReshapeReshape_145/ReadVariableOpReshape_145/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_146/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam*
dtype0*&
_output_shapes
:
d
Reshape_146/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_146ReshapeReshape_146/ReadVariableOpReshape_146/shape*
T0*
Tshape0*
_output_shapes	
:�	
|
Reshape_147/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_1*
dtype0*&
_output_shapes
:
d
Reshape_147/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_147ReshapeReshape_147/ReadVariableOpReshape_147/shape*
T0*
Tshape0*
_output_shapes	
:�	
l
Reshape_148/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_148/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_148ReshapeReshape_148/ReadVariableOpReshape_148/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_149/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_149/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_149ReshapeReshape_149/ReadVariableOpReshape_149/shape*
T0*
Tshape0*
_output_shapes
:
o
Reshape_150/ReadVariableOpReadVariableOppi/dense/kernel/Adam*
dtype0*
_output_shapes

:
d
Reshape_150/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_150ReshapeReshape_150/ReadVariableOpReshape_150/shape*
T0*
Tshape0*
_output_shapes	
:�
q
Reshape_151/ReadVariableOpReadVariableOppi/dense/kernel/Adam_1*
dtype0*
_output_shapes

:
d
Reshape_151/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_151ReshapeReshape_151/ReadVariableOpReshape_151/shape*
_output_shapes	
:�*
T0*
Tshape0
i
Reshape_152/ReadVariableOpReadVariableOppi/dense/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_152/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_152ReshapeReshape_152/ReadVariableOpReshape_152/shape*
T0*
Tshape0*
_output_shapes
:
k
Reshape_153/ReadVariableOpReadVariableOppi/dense/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_153/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_153ReshapeReshape_153/ReadVariableOpReshape_153/shape*
T0*
Tshape0*
_output_shapes
:
q
Reshape_154/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam*
dtype0*
_output_shapes

:
d
Reshape_154/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_154ReshapeReshape_154/ReadVariableOpReshape_154/shape*
T0*
Tshape0*
_output_shapes	
:�
s
Reshape_155/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_1*
dtype0*
_output_shapes

:
d
Reshape_155/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_155ReshapeReshape_155/ReadVariableOpReshape_155/shape*
T0*
Tshape0*
_output_shapes	
:�
k
Reshape_156/ReadVariableOpReadVariableOppi/dense_1/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_156/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_156ReshapeReshape_156/ReadVariableOpReshape_156/shape*
T0*
Tshape0*
_output_shapes
:
m
Reshape_157/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_157/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_157ReshapeReshape_157/ReadVariableOpReshape_157/shape*
T0*
Tshape0*
_output_shapes
:
q
Reshape_158/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam*
dtype0*
_output_shapes

:
d
Reshape_158/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_158ReshapeReshape_158/ReadVariableOpReshape_158/shape*
T0*
Tshape0*
_output_shapes	
:�
s
Reshape_159/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam_1*
dtype0*
_output_shapes

:
d
Reshape_159/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_159ReshapeReshape_159/ReadVariableOpReshape_159/shape*
_output_shapes	
:�*
T0*
Tshape0
k
Reshape_160/ReadVariableOpReadVariableOppi/dense_2/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_160/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_160ReshapeReshape_160/ReadVariableOpReshape_160/shape*
T0*
Tshape0*
_output_shapes
:
m
Reshape_161/ReadVariableOpReadVariableOppi/dense_2/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_161/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_161ReshapeReshape_161/ReadVariableOpReshape_161/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_162/ReadVariableOpReadVariableOppi/dense_3/kernel/Adam*
dtype0* 
_output_shapes
:
��
d
Reshape_162/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
z
Reshape_162ReshapeReshape_162/ReadVariableOpReshape_162/shape*
T0*
Tshape0*
_output_shapes

:��
u
Reshape_163/ReadVariableOpReadVariableOppi/dense_3/kernel/Adam_1*
dtype0* 
_output_shapes
:
��
d
Reshape_163/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
z
Reshape_163ReshapeReshape_163/ReadVariableOpReshape_163/shape*
T0*
Tshape0*
_output_shapes

:��
l
Reshape_164/ReadVariableOpReadVariableOppi/dense_3/bias/Adam*
dtype0*
_output_shapes	
:�
d
Reshape_164/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_164ReshapeReshape_164/ReadVariableOpReshape_164/shape*
T0*
Tshape0*
_output_shapes	
:�
n
Reshape_165/ReadVariableOpReadVariableOppi/dense_3/bias/Adam_1*
dtype0*
_output_shapes	
:�
d
Reshape_165/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_165ReshapeReshape_165/ReadVariableOpReshape_165/shape*
T0*
Tshape0*
_output_shapes	
:�
r
Reshape_166/ReadVariableOpReadVariableOppi/dense_4/kernel/Adam*
dtype0*
_output_shapes
:	�
d
Reshape_166/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_166ReshapeReshape_166/ReadVariableOpReshape_166/shape*
_output_shapes	
:�*
T0*
Tshape0
t
Reshape_167/ReadVariableOpReadVariableOppi/dense_4/kernel/Adam_1*
dtype0*
_output_shapes
:	�
d
Reshape_167/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_167ReshapeReshape_167/ReadVariableOpReshape_167/shape*
T0*
Tshape0*
_output_shapes	
:�
k
Reshape_168/ReadVariableOpReadVariableOppi/dense_4/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_168/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_168ReshapeReshape_168/ReadVariableOpReshape_168/shape*
_output_shapes
:*
T0*
Tshape0
m
Reshape_169/ReadVariableOpReadVariableOppi/dense_4/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_169/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_169ReshapeReshape_169/ReadVariableOpReshape_169/shape*
_output_shapes
:*
T0*
Tshape0
`
Reshape_170/ReadVariableOpReadVariableOpbeta1_power_1*
dtype0*
_output_shapes
: 
d
Reshape_170/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_170ReshapeReshape_170/ReadVariableOpReshape_170/shape*
T0*
Tshape0*
_output_shapes
:
`
Reshape_171/ReadVariableOpReadVariableOpbeta2_power_1*
dtype0*
_output_shapes
: 
d
Reshape_171/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_171ReshapeReshape_171/ReadVariableOpReshape_171/shape*
T0*
Tshape0*
_output_shapes
:
z
Reshape_172/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_172/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_172ReshapeReshape_172/ReadVariableOpReshape_172/shape*
T0*
Tshape0*
_output_shapes
:0
z
Reshape_173/ReadVariableOpReadVariableOppi/conv2d/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_173/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_173ReshapeReshape_173/ReadVariableOpReshape_173/shape*
_output_shapes
:0*
T0*
Tshape0
l
Reshape_174/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_174/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_174ReshapeReshape_174/ReadVariableOpReshape_174/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_175/ReadVariableOpReadVariableOppi/conv2d/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_175/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_175ReshapeReshape_175/ReadVariableOpReshape_175/shape*
T0*
Tshape0*
_output_shapes
:
|
Reshape_176/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_2*
dtype0*&
_output_shapes
:
d
Reshape_176/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_176ReshapeReshape_176/ReadVariableOpReshape_176/shape*
_output_shapes	
:�	*
T0*
Tshape0
|
Reshape_177/ReadVariableOpReadVariableOppi/conv2d_1/kernel/Adam_3*
dtype0*&
_output_shapes
:
d
Reshape_177/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_177ReshapeReshape_177/ReadVariableOpReshape_177/shape*
T0*
Tshape0*
_output_shapes	
:�	
n
Reshape_178/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_178/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_178ReshapeReshape_178/ReadVariableOpReshape_178/shape*
_output_shapes
:*
T0*
Tshape0
n
Reshape_179/ReadVariableOpReadVariableOppi/conv2d_1/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_179/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_179ReshapeReshape_179/ReadVariableOpReshape_179/shape*
_output_shapes
:*
T0*
Tshape0
q
Reshape_180/ReadVariableOpReadVariableOppi/dense/kernel/Adam_2*
dtype0*
_output_shapes

:
d
Reshape_180/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_180ReshapeReshape_180/ReadVariableOpReshape_180/shape*
T0*
Tshape0*
_output_shapes	
:�
q
Reshape_181/ReadVariableOpReadVariableOppi/dense/kernel/Adam_3*
dtype0*
_output_shapes

:
d
Reshape_181/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_181ReshapeReshape_181/ReadVariableOpReshape_181/shape*
_output_shapes	
:�*
T0*
Tshape0
k
Reshape_182/ReadVariableOpReadVariableOppi/dense/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_182/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_182ReshapeReshape_182/ReadVariableOpReshape_182/shape*
_output_shapes
:*
T0*
Tshape0
k
Reshape_183/ReadVariableOpReadVariableOppi/dense/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_183/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_183ReshapeReshape_183/ReadVariableOpReshape_183/shape*
T0*
Tshape0*
_output_shapes
:
s
Reshape_184/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_2*
dtype0*
_output_shapes

:
d
Reshape_184/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_184ReshapeReshape_184/ReadVariableOpReshape_184/shape*
T0*
Tshape0*
_output_shapes	
:�
s
Reshape_185/ReadVariableOpReadVariableOppi/dense_1/kernel/Adam_3*
dtype0*
_output_shapes

:
d
Reshape_185/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_185ReshapeReshape_185/ReadVariableOpReshape_185/shape*
T0*
Tshape0*
_output_shapes	
:�
m
Reshape_186/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_186/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_186ReshapeReshape_186/ReadVariableOpReshape_186/shape*
T0*
Tshape0*
_output_shapes
:
m
Reshape_187/ReadVariableOpReadVariableOppi/dense_1/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_187/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_187ReshapeReshape_187/ReadVariableOpReshape_187/shape*
_output_shapes
:*
T0*
Tshape0
s
Reshape_188/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam_2*
dtype0*
_output_shapes

:
d
Reshape_188/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_188ReshapeReshape_188/ReadVariableOpReshape_188/shape*
T0*
Tshape0*
_output_shapes	
:�
s
Reshape_189/ReadVariableOpReadVariableOppi/dense_2/kernel/Adam_3*
dtype0*
_output_shapes

:
d
Reshape_189/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_189ReshapeReshape_189/ReadVariableOpReshape_189/shape*
T0*
Tshape0*
_output_shapes	
:�
m
Reshape_190/ReadVariableOpReadVariableOppi/dense_2/bias/Adam_2*
dtype0*
_output_shapes
:
d
Reshape_190/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_190ReshapeReshape_190/ReadVariableOpReshape_190/shape*
_output_shapes
:*
T0*
Tshape0
m
Reshape_191/ReadVariableOpReadVariableOppi/dense_2/bias/Adam_3*
dtype0*
_output_shapes
:
d
Reshape_191/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_191ReshapeReshape_191/ReadVariableOpReshape_191/shape*
T0*
Tshape0*
_output_shapes
:
r
Reshape_192/ReadVariableOpReadVariableOpv/dense_5/kernel/Adam*
dtype0* 
_output_shapes
:
��
d
Reshape_192/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
z
Reshape_192ReshapeReshape_192/ReadVariableOpReshape_192/shape*
T0*
Tshape0*
_output_shapes

:��
t
Reshape_193/ReadVariableOpReadVariableOpv/dense_5/kernel/Adam_1*
dtype0* 
_output_shapes
:
��
d
Reshape_193/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
z
Reshape_193ReshapeReshape_193/ReadVariableOpReshape_193/shape*
T0*
Tshape0*
_output_shapes

:��
k
Reshape_194/ReadVariableOpReadVariableOpv/dense_5/bias/Adam*
dtype0*
_output_shapes	
:�
d
Reshape_194/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_194ReshapeReshape_194/ReadVariableOpReshape_194/shape*
T0*
Tshape0*
_output_shapes	
:�
m
Reshape_195/ReadVariableOpReadVariableOpv/dense_5/bias/Adam_1*
dtype0*
_output_shapes	
:�
d
Reshape_195/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
y
Reshape_195ReshapeReshape_195/ReadVariableOpReshape_195/shape*
_output_shapes	
:�*
T0*
Tshape0
q
Reshape_196/ReadVariableOpReadVariableOpv/dense_6/kernel/Adam*
dtype0*
_output_shapes
:	�
d
Reshape_196/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_196ReshapeReshape_196/ReadVariableOpReshape_196/shape*
T0*
Tshape0*
_output_shapes	
:�
s
Reshape_197/ReadVariableOpReadVariableOpv/dense_6/kernel/Adam_1*
dtype0*
_output_shapes
:	�
d
Reshape_197/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
y
Reshape_197ReshapeReshape_197/ReadVariableOpReshape_197/shape*
T0*
Tshape0*
_output_shapes	
:�
j
Reshape_198/ReadVariableOpReadVariableOpv/dense_6/bias/Adam*
dtype0*
_output_shapes
:
d
Reshape_198/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
x
Reshape_198ReshapeReshape_198/ReadVariableOpReshape_198/shape*
T0*
Tshape0*
_output_shapes
:
l
Reshape_199/ReadVariableOpReadVariableOpv/dense_6/bias/Adam_1*
dtype0*
_output_shapes
:
d
Reshape_199/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
x
Reshape_199ReshapeReshape_199/ReadVariableOpReshape_199/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�	
concat_4ConcatV2Reshape_112Reshape_113Reshape_114Reshape_115Reshape_116Reshape_117Reshape_118Reshape_119Reshape_120Reshape_121Reshape_122Reshape_123Reshape_124Reshape_125Reshape_126Reshape_127Reshape_128Reshape_129Reshape_130Reshape_131Reshape_132Reshape_133Reshape_134Reshape_135Reshape_136Reshape_137Reshape_138Reshape_139Reshape_140Reshape_141Reshape_142Reshape_143Reshape_144Reshape_145Reshape_146Reshape_147Reshape_148Reshape_149Reshape_150Reshape_151Reshape_152Reshape_153Reshape_154Reshape_155Reshape_156Reshape_157Reshape_158Reshape_159Reshape_160Reshape_161Reshape_162Reshape_163Reshape_164Reshape_165Reshape_166Reshape_167Reshape_168Reshape_169Reshape_170Reshape_171Reshape_172Reshape_173Reshape_174Reshape_175Reshape_176Reshape_177Reshape_178Reshape_179Reshape_180Reshape_181Reshape_182Reshape_183Reshape_184Reshape_185Reshape_186Reshape_187Reshape_188Reshape_189Reshape_190Reshape_191Reshape_192Reshape_193Reshape_194Reshape_195Reshape_196Reshape_197Reshape_198Reshape_199concat_4/axis*
T0*
NX*
_output_shapes

:��*

Tidx0
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
�
Const_9Const*�
value�B�X"�0      �     @     @     @                                    �            �                 0   0         �  �        @  @        @  @        @  @         �   �                          0   0         �  �        @  @        @  @        @  @         �   �                    *
dtype0*
_output_shapes
:X
S
split_4/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
split_4SplitVEagerPyFunc_4Const_9split_4/split_dim*
T0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
	num_splitX*

Tlen0
j
Reshape_200/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
q
Reshape_200Reshapesplit_4Reshape_200/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_201/shapeConst*
dtype0*
_output_shapes
:*
valueB:
g
Reshape_201Reshape	split_4:1Reshape_201/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_202/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
s
Reshape_202Reshape	split_4:2Reshape_202/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_203/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_203Reshape	split_4:3Reshape_203/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_204/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
k
Reshape_204Reshape	split_4:4Reshape_204/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_205/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_205Reshape	split_4:5Reshape_205/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_206/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
k
Reshape_206Reshape	split_4:6Reshape_206/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_207/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_207Reshape	split_4:7Reshape_207/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_208/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
k
Reshape_208Reshape	split_4:8Reshape_208/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_209/shapeConst*
valueB:*
dtype0*
_output_shapes
:
g
Reshape_209Reshape	split_4:9Reshape_209/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_210/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_210Reshape
split_4:10Reshape_210/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_211/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_211Reshape
split_4:11Reshape_211/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_212/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_212Reshape
split_4:12Reshape_212/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_213/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_213Reshape
split_4:13Reshape_213/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_214/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_214Reshape
split_4:14Reshape_214/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_215/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_215Reshape
split_4:15Reshape_215/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_216/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_216Reshape
split_4:16Reshape_216/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_217/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_217Reshape
split_4:17Reshape_217/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_218/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_218Reshape
split_4:18Reshape_218/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_219/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_219Reshape
split_4:19Reshape_219/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_220/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
n
Reshape_220Reshape
split_4:20Reshape_220/shape* 
_output_shapes
:
��*
T0*
Tshape0
\
Reshape_221/shapeConst*
valueB:�*
dtype0*
_output_shapes
:
i
Reshape_221Reshape
split_4:21Reshape_221/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_222/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_222Reshape
split_4:22Reshape_222/shape*
T0*
Tshape0*
_output_shapes
:	�
[
Reshape_223/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_223Reshape
split_4:23Reshape_223/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_224/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
n
Reshape_224Reshape
split_4:24Reshape_224/shape*
T0*
Tshape0* 
_output_shapes
:
��
\
Reshape_225/shapeConst*
valueB:�*
dtype0*
_output_shapes
:
i
Reshape_225Reshape
split_4:25Reshape_225/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_226/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
m
Reshape_226Reshape
split_4:26Reshape_226/shape*
T0*
Tshape0*
_output_shapes
:	�
[
Reshape_227/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_227Reshape
split_4:27Reshape_227/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_228/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_228Reshape
split_4:28Reshape_228/shape*
_output_shapes
: *
T0*
Tshape0
T
Reshape_229/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_229Reshape
split_4:29Reshape_229/shape*
T0*
Tshape0*
_output_shapes
: 
j
Reshape_230/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_230Reshape
split_4:30Reshape_230/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_231/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_231Reshape
split_4:31Reshape_231/shape*&
_output_shapes
:*
T0*
Tshape0
[
Reshape_232/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_232Reshape
split_4:32Reshape_232/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_233/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_233Reshape
split_4:33Reshape_233/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_234/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_234Reshape
split_4:34Reshape_234/shape*&
_output_shapes
:*
T0*
Tshape0
j
Reshape_235/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_235Reshape
split_4:35Reshape_235/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_236/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_236Reshape
split_4:36Reshape_236/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_237/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_237Reshape
split_4:37Reshape_237/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_238/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_238Reshape
split_4:38Reshape_238/shape*
T0*
Tshape0*
_output_shapes

:
b
Reshape_239/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_239Reshape
split_4:39Reshape_239/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_240/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_240Reshape
split_4:40Reshape_240/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_241/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_241Reshape
split_4:41Reshape_241/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_242/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_242Reshape
split_4:42Reshape_242/shape*
_output_shapes

:*
T0*
Tshape0
b
Reshape_243/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_243Reshape
split_4:43Reshape_243/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_244/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_244Reshape
split_4:44Reshape_244/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_245/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_245Reshape
split_4:45Reshape_245/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_246/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
l
Reshape_246Reshape
split_4:46Reshape_246/shape*
_output_shapes

:*
T0*
Tshape0
b
Reshape_247/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_247Reshape
split_4:47Reshape_247/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_248/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_248Reshape
split_4:48Reshape_248/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_249/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_249Reshape
split_4:49Reshape_249/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_250/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
n
Reshape_250Reshape
split_4:50Reshape_250/shape*
T0*
Tshape0* 
_output_shapes
:
��
b
Reshape_251/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
n
Reshape_251Reshape
split_4:51Reshape_251/shape*
T0*
Tshape0* 
_output_shapes
:
��
\
Reshape_252/shapeConst*
dtype0*
_output_shapes
:*
valueB:�
i
Reshape_252Reshape
split_4:52Reshape_252/shape*
T0*
Tshape0*
_output_shapes	
:�
\
Reshape_253/shapeConst*
valueB:�*
dtype0*
_output_shapes
:
i
Reshape_253Reshape
split_4:53Reshape_253/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_254/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_254Reshape
split_4:54Reshape_254/shape*
T0*
Tshape0*
_output_shapes
:	�
b
Reshape_255/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_255Reshape
split_4:55Reshape_255/shape*
T0*
Tshape0*
_output_shapes
:	�
[
Reshape_256/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_256Reshape
split_4:56Reshape_256/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_257/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_257Reshape
split_4:57Reshape_257/shape*
T0*
Tshape0*
_output_shapes
:
T
Reshape_258/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_258Reshape
split_4:58Reshape_258/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_259/shapeConst*
valueB *
dtype0*
_output_shapes
: 
d
Reshape_259Reshape
split_4:59Reshape_259/shape*
_output_shapes
: *
T0*
Tshape0
j
Reshape_260/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_260Reshape
split_4:60Reshape_260/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_261/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_261Reshape
split_4:61Reshape_261/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_262/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_262Reshape
split_4:62Reshape_262/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_263/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_263Reshape
split_4:63Reshape_263/shape*
T0*
Tshape0*
_output_shapes
:
j
Reshape_264/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            
t
Reshape_264Reshape
split_4:64Reshape_264/shape*
T0*
Tshape0*&
_output_shapes
:
j
Reshape_265/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
t
Reshape_265Reshape
split_4:65Reshape_265/shape*
T0*
Tshape0*&
_output_shapes
:
[
Reshape_266/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_266Reshape
split_4:66Reshape_266/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_267/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_267Reshape
split_4:67Reshape_267/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_268/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
l
Reshape_268Reshape
split_4:68Reshape_268/shape*
_output_shapes

:*
T0*
Tshape0
b
Reshape_269/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_269Reshape
split_4:69Reshape_269/shape*
_output_shapes

:*
T0*
Tshape0
[
Reshape_270/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_270Reshape
split_4:70Reshape_270/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_271/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_271Reshape
split_4:71Reshape_271/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_272/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_272Reshape
split_4:72Reshape_272/shape*
_output_shapes

:*
T0*
Tshape0
b
Reshape_273/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
l
Reshape_273Reshape
split_4:73Reshape_273/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_274/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_274Reshape
split_4:74Reshape_274/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_275/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_275Reshape
split_4:75Reshape_275/shape*
T0*
Tshape0*
_output_shapes
:
b
Reshape_276/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_276Reshape
split_4:76Reshape_276/shape*
T0*
Tshape0*
_output_shapes

:
b
Reshape_277/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
l
Reshape_277Reshape
split_4:77Reshape_277/shape*
T0*
Tshape0*
_output_shapes

:
[
Reshape_278/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_278Reshape
split_4:78Reshape_278/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_279/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_279Reshape
split_4:79Reshape_279/shape*
_output_shapes
:*
T0*
Tshape0
b
Reshape_280/shapeConst*
valueB"�      *
dtype0*
_output_shapes
:
n
Reshape_280Reshape
split_4:80Reshape_280/shape*
T0*
Tshape0* 
_output_shapes
:
��
b
Reshape_281/shapeConst*
dtype0*
_output_shapes
:*
valueB"�      
n
Reshape_281Reshape
split_4:81Reshape_281/shape*
T0*
Tshape0* 
_output_shapes
:
��
\
Reshape_282/shapeConst*
valueB:�*
dtype0*
_output_shapes
:
i
Reshape_282Reshape
split_4:82Reshape_282/shape*
_output_shapes	
:�*
T0*
Tshape0
\
Reshape_283/shapeConst*
valueB:�*
dtype0*
_output_shapes
:
i
Reshape_283Reshape
split_4:83Reshape_283/shape*
T0*
Tshape0*
_output_shapes	
:�
b
Reshape_284/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_284Reshape
split_4:84Reshape_284/shape*
T0*
Tshape0*
_output_shapes
:	�
b
Reshape_285/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
m
Reshape_285Reshape
split_4:85Reshape_285/shape*
T0*
Tshape0*
_output_shapes
:	�
[
Reshape_286/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_286Reshape
split_4:86Reshape_286/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_287/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_287Reshape
split_4:87Reshape_287/shape*
T0*
Tshape0*
_output_shapes
:
S
AssignVariableOp_28AssignVariableOppi/conv2d/kernelReshape_200*
dtype0
�
ReadVariableOp_28ReadVariableOppi/conv2d/kernel^AssignVariableOp_28*
dtype0*&
_output_shapes
:
Q
AssignVariableOp_29AssignVariableOppi/conv2d/biasReshape_201*
dtype0
r
ReadVariableOp_29ReadVariableOppi/conv2d/bias^AssignVariableOp_29*
dtype0*
_output_shapes
:
U
AssignVariableOp_30AssignVariableOppi/conv2d_1/kernelReshape_202*
dtype0
�
ReadVariableOp_30ReadVariableOppi/conv2d_1/kernel^AssignVariableOp_30*
dtype0*&
_output_shapes
:
S
AssignVariableOp_31AssignVariableOppi/conv2d_1/biasReshape_203*
dtype0
t
ReadVariableOp_31ReadVariableOppi/conv2d_1/bias^AssignVariableOp_31*
dtype0*
_output_shapes
:
R
AssignVariableOp_32AssignVariableOppi/dense/kernelReshape_204*
dtype0
w
ReadVariableOp_32ReadVariableOppi/dense/kernel^AssignVariableOp_32*
dtype0*
_output_shapes

:
P
AssignVariableOp_33AssignVariableOppi/dense/biasReshape_205*
dtype0
q
ReadVariableOp_33ReadVariableOppi/dense/bias^AssignVariableOp_33*
dtype0*
_output_shapes
:
T
AssignVariableOp_34AssignVariableOppi/dense_1/kernelReshape_206*
dtype0
y
ReadVariableOp_34ReadVariableOppi/dense_1/kernel^AssignVariableOp_34*
dtype0*
_output_shapes

:
R
AssignVariableOp_35AssignVariableOppi/dense_1/biasReshape_207*
dtype0
s
ReadVariableOp_35ReadVariableOppi/dense_1/bias^AssignVariableOp_35*
dtype0*
_output_shapes
:
T
AssignVariableOp_36AssignVariableOppi/dense_2/kernelReshape_208*
dtype0
y
ReadVariableOp_36ReadVariableOppi/dense_2/kernel^AssignVariableOp_36*
dtype0*
_output_shapes

:
R
AssignVariableOp_37AssignVariableOppi/dense_2/biasReshape_209*
dtype0
s
ReadVariableOp_37ReadVariableOppi/dense_2/bias^AssignVariableOp_37*
dtype0*
_output_shapes
:
�
AssignAssignpi/VariableReshape_210*
use_locking(*
T0*
_class
loc:@pi/Variable*
validate_shape(*
_output_shapes
:
�
Assign_1Assignpi/Variable_1Reshape_211*
T0* 
_class
loc:@pi/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
�
Assign_2Assignpi/Variable_2Reshape_212*
use_locking(*
T0* 
_class
loc:@pi/Variable_2*
validate_shape(*
_output_shapes
:
�
Assign_3Assignpi/Variable_3Reshape_213*
use_locking(*
T0* 
_class
loc:@pi/Variable_3*
validate_shape(*
_output_shapes
:
�
Assign_4Assignpi/Variable_4Reshape_214*
T0* 
_class
loc:@pi/Variable_4*
validate_shape(*
_output_shapes
:*
use_locking(
�
Assign_5Assignpi/Variable_5Reshape_215*
T0* 
_class
loc:@pi/Variable_5*
validate_shape(*
_output_shapes
:*
use_locking(
�
Assign_6Assignpi/Variable_6Reshape_216*
T0* 
_class
loc:@pi/Variable_6*
validate_shape(*
_output_shapes
:*
use_locking(
�
Assign_7Assignpi/Variable_7Reshape_217*
use_locking(*
T0* 
_class
loc:@pi/Variable_7*
validate_shape(*
_output_shapes
:
�
Assign_8Assignpi/Variable_8Reshape_218*
use_locking(*
T0* 
_class
loc:@pi/Variable_8*
validate_shape(*
_output_shapes
:
�
Assign_9Assignpi/Variable_9Reshape_219*
T0* 
_class
loc:@pi/Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(
T
AssignVariableOp_38AssignVariableOppi/dense_3/kernelReshape_220*
dtype0
{
ReadVariableOp_38ReadVariableOppi/dense_3/kernel^AssignVariableOp_38*
dtype0* 
_output_shapes
:
��
R
AssignVariableOp_39AssignVariableOppi/dense_3/biasReshape_221*
dtype0
t
ReadVariableOp_39ReadVariableOppi/dense_3/bias^AssignVariableOp_39*
dtype0*
_output_shapes	
:�
T
AssignVariableOp_40AssignVariableOppi/dense_4/kernelReshape_222*
dtype0
z
ReadVariableOp_40ReadVariableOppi/dense_4/kernel^AssignVariableOp_40*
dtype0*
_output_shapes
:	�
R
AssignVariableOp_41AssignVariableOppi/dense_4/biasReshape_223*
dtype0
s
ReadVariableOp_41ReadVariableOppi/dense_4/bias^AssignVariableOp_41*
dtype0*
_output_shapes
:
S
AssignVariableOp_42AssignVariableOpv/dense_5/kernelReshape_224*
dtype0
z
ReadVariableOp_42ReadVariableOpv/dense_5/kernel^AssignVariableOp_42*
dtype0* 
_output_shapes
:
��
Q
AssignVariableOp_43AssignVariableOpv/dense_5/biasReshape_225*
dtype0
s
ReadVariableOp_43ReadVariableOpv/dense_5/bias^AssignVariableOp_43*
dtype0*
_output_shapes	
:�
S
AssignVariableOp_44AssignVariableOpv/dense_6/kernelReshape_226*
dtype0
y
ReadVariableOp_44ReadVariableOpv/dense_6/kernel^AssignVariableOp_44*
dtype0*
_output_shapes
:	�
Q
AssignVariableOp_45AssignVariableOpv/dense_6/biasReshape_227*
dtype0
r
ReadVariableOp_45ReadVariableOpv/dense_6/bias^AssignVariableOp_45*
dtype0*
_output_shapes
:
N
AssignVariableOp_46AssignVariableOpbeta1_powerReshape_228*
dtype0
k
ReadVariableOp_46ReadVariableOpbeta1_power^AssignVariableOp_46*
dtype0*
_output_shapes
: 
N
AssignVariableOp_47AssignVariableOpbeta2_powerReshape_229*
dtype0
k
ReadVariableOp_47ReadVariableOpbeta2_power^AssignVariableOp_47*
dtype0*
_output_shapes
: 
X
AssignVariableOp_48AssignVariableOppi/conv2d/kernel/AdamReshape_230*
dtype0
�
ReadVariableOp_48ReadVariableOppi/conv2d/kernel/Adam^AssignVariableOp_48*
dtype0*&
_output_shapes
:
Z
AssignVariableOp_49AssignVariableOppi/conv2d/kernel/Adam_1Reshape_231*
dtype0
�
ReadVariableOp_49ReadVariableOppi/conv2d/kernel/Adam_1^AssignVariableOp_49*
dtype0*&
_output_shapes
:
V
AssignVariableOp_50AssignVariableOppi/conv2d/bias/AdamReshape_232*
dtype0
w
ReadVariableOp_50ReadVariableOppi/conv2d/bias/Adam^AssignVariableOp_50*
dtype0*
_output_shapes
:
X
AssignVariableOp_51AssignVariableOppi/conv2d/bias/Adam_1Reshape_233*
dtype0
y
ReadVariableOp_51ReadVariableOppi/conv2d/bias/Adam_1^AssignVariableOp_51*
dtype0*
_output_shapes
:
Z
AssignVariableOp_52AssignVariableOppi/conv2d_1/kernel/AdamReshape_234*
dtype0
�
ReadVariableOp_52ReadVariableOppi/conv2d_1/kernel/Adam^AssignVariableOp_52*
dtype0*&
_output_shapes
:
\
AssignVariableOp_53AssignVariableOppi/conv2d_1/kernel/Adam_1Reshape_235*
dtype0
�
ReadVariableOp_53ReadVariableOppi/conv2d_1/kernel/Adam_1^AssignVariableOp_53*
dtype0*&
_output_shapes
:
X
AssignVariableOp_54AssignVariableOppi/conv2d_1/bias/AdamReshape_236*
dtype0
y
ReadVariableOp_54ReadVariableOppi/conv2d_1/bias/Adam^AssignVariableOp_54*
dtype0*
_output_shapes
:
Z
AssignVariableOp_55AssignVariableOppi/conv2d_1/bias/Adam_1Reshape_237*
dtype0
{
ReadVariableOp_55ReadVariableOppi/conv2d_1/bias/Adam_1^AssignVariableOp_55*
dtype0*
_output_shapes
:
W
AssignVariableOp_56AssignVariableOppi/dense/kernel/AdamReshape_238*
dtype0
|
ReadVariableOp_56ReadVariableOppi/dense/kernel/Adam^AssignVariableOp_56*
dtype0*
_output_shapes

:
Y
AssignVariableOp_57AssignVariableOppi/dense/kernel/Adam_1Reshape_239*
dtype0
~
ReadVariableOp_57ReadVariableOppi/dense/kernel/Adam_1^AssignVariableOp_57*
dtype0*
_output_shapes

:
U
AssignVariableOp_58AssignVariableOppi/dense/bias/AdamReshape_240*
dtype0
v
ReadVariableOp_58ReadVariableOppi/dense/bias/Adam^AssignVariableOp_58*
dtype0*
_output_shapes
:
W
AssignVariableOp_59AssignVariableOppi/dense/bias/Adam_1Reshape_241*
dtype0
x
ReadVariableOp_59ReadVariableOppi/dense/bias/Adam_1^AssignVariableOp_59*
dtype0*
_output_shapes
:
Y
AssignVariableOp_60AssignVariableOppi/dense_1/kernel/AdamReshape_242*
dtype0
~
ReadVariableOp_60ReadVariableOppi/dense_1/kernel/Adam^AssignVariableOp_60*
dtype0*
_output_shapes

:
[
AssignVariableOp_61AssignVariableOppi/dense_1/kernel/Adam_1Reshape_243*
dtype0
�
ReadVariableOp_61ReadVariableOppi/dense_1/kernel/Adam_1^AssignVariableOp_61*
dtype0*
_output_shapes

:
W
AssignVariableOp_62AssignVariableOppi/dense_1/bias/AdamReshape_244*
dtype0
x
ReadVariableOp_62ReadVariableOppi/dense_1/bias/Adam^AssignVariableOp_62*
dtype0*
_output_shapes
:
Y
AssignVariableOp_63AssignVariableOppi/dense_1/bias/Adam_1Reshape_245*
dtype0
z
ReadVariableOp_63ReadVariableOppi/dense_1/bias/Adam_1^AssignVariableOp_63*
dtype0*
_output_shapes
:
Y
AssignVariableOp_64AssignVariableOppi/dense_2/kernel/AdamReshape_246*
dtype0
~
ReadVariableOp_64ReadVariableOppi/dense_2/kernel/Adam^AssignVariableOp_64*
dtype0*
_output_shapes

:
[
AssignVariableOp_65AssignVariableOppi/dense_2/kernel/Adam_1Reshape_247*
dtype0
�
ReadVariableOp_65ReadVariableOppi/dense_2/kernel/Adam_1^AssignVariableOp_65*
dtype0*
_output_shapes

:
W
AssignVariableOp_66AssignVariableOppi/dense_2/bias/AdamReshape_248*
dtype0
x
ReadVariableOp_66ReadVariableOppi/dense_2/bias/Adam^AssignVariableOp_66*
dtype0*
_output_shapes
:
Y
AssignVariableOp_67AssignVariableOppi/dense_2/bias/Adam_1Reshape_249*
dtype0
z
ReadVariableOp_67ReadVariableOppi/dense_2/bias/Adam_1^AssignVariableOp_67*
dtype0*
_output_shapes
:
Y
AssignVariableOp_68AssignVariableOppi/dense_3/kernel/AdamReshape_250*
dtype0
�
ReadVariableOp_68ReadVariableOppi/dense_3/kernel/Adam^AssignVariableOp_68*
dtype0* 
_output_shapes
:
��
[
AssignVariableOp_69AssignVariableOppi/dense_3/kernel/Adam_1Reshape_251*
dtype0
�
ReadVariableOp_69ReadVariableOppi/dense_3/kernel/Adam_1^AssignVariableOp_69*
dtype0* 
_output_shapes
:
��
W
AssignVariableOp_70AssignVariableOppi/dense_3/bias/AdamReshape_252*
dtype0
y
ReadVariableOp_70ReadVariableOppi/dense_3/bias/Adam^AssignVariableOp_70*
dtype0*
_output_shapes	
:�
Y
AssignVariableOp_71AssignVariableOppi/dense_3/bias/Adam_1Reshape_253*
dtype0
{
ReadVariableOp_71ReadVariableOppi/dense_3/bias/Adam_1^AssignVariableOp_71*
dtype0*
_output_shapes	
:�
Y
AssignVariableOp_72AssignVariableOppi/dense_4/kernel/AdamReshape_254*
dtype0

ReadVariableOp_72ReadVariableOppi/dense_4/kernel/Adam^AssignVariableOp_72*
dtype0*
_output_shapes
:	�
[
AssignVariableOp_73AssignVariableOppi/dense_4/kernel/Adam_1Reshape_255*
dtype0
�
ReadVariableOp_73ReadVariableOppi/dense_4/kernel/Adam_1^AssignVariableOp_73*
dtype0*
_output_shapes
:	�
W
AssignVariableOp_74AssignVariableOppi/dense_4/bias/AdamReshape_256*
dtype0
x
ReadVariableOp_74ReadVariableOppi/dense_4/bias/Adam^AssignVariableOp_74*
dtype0*
_output_shapes
:
Y
AssignVariableOp_75AssignVariableOppi/dense_4/bias/Adam_1Reshape_257*
dtype0
z
ReadVariableOp_75ReadVariableOppi/dense_4/bias/Adam_1^AssignVariableOp_75*
dtype0*
_output_shapes
:
P
AssignVariableOp_76AssignVariableOpbeta1_power_1Reshape_258*
dtype0
m
ReadVariableOp_76ReadVariableOpbeta1_power_1^AssignVariableOp_76*
dtype0*
_output_shapes
: 
P
AssignVariableOp_77AssignVariableOpbeta2_power_1Reshape_259*
dtype0
m
ReadVariableOp_77ReadVariableOpbeta2_power_1^AssignVariableOp_77*
dtype0*
_output_shapes
: 
Z
AssignVariableOp_78AssignVariableOppi/conv2d/kernel/Adam_2Reshape_260*
dtype0
�
ReadVariableOp_78ReadVariableOppi/conv2d/kernel/Adam_2^AssignVariableOp_78*
dtype0*&
_output_shapes
:
Z
AssignVariableOp_79AssignVariableOppi/conv2d/kernel/Adam_3Reshape_261*
dtype0
�
ReadVariableOp_79ReadVariableOppi/conv2d/kernel/Adam_3^AssignVariableOp_79*
dtype0*&
_output_shapes
:
X
AssignVariableOp_80AssignVariableOppi/conv2d/bias/Adam_2Reshape_262*
dtype0
y
ReadVariableOp_80ReadVariableOppi/conv2d/bias/Adam_2^AssignVariableOp_80*
dtype0*
_output_shapes
:
X
AssignVariableOp_81AssignVariableOppi/conv2d/bias/Adam_3Reshape_263*
dtype0
y
ReadVariableOp_81ReadVariableOppi/conv2d/bias/Adam_3^AssignVariableOp_81*
dtype0*
_output_shapes
:
\
AssignVariableOp_82AssignVariableOppi/conv2d_1/kernel/Adam_2Reshape_264*
dtype0
�
ReadVariableOp_82ReadVariableOppi/conv2d_1/kernel/Adam_2^AssignVariableOp_82*
dtype0*&
_output_shapes
:
\
AssignVariableOp_83AssignVariableOppi/conv2d_1/kernel/Adam_3Reshape_265*
dtype0
�
ReadVariableOp_83ReadVariableOppi/conv2d_1/kernel/Adam_3^AssignVariableOp_83*
dtype0*&
_output_shapes
:
Z
AssignVariableOp_84AssignVariableOppi/conv2d_1/bias/Adam_2Reshape_266*
dtype0
{
ReadVariableOp_84ReadVariableOppi/conv2d_1/bias/Adam_2^AssignVariableOp_84*
dtype0*
_output_shapes
:
Z
AssignVariableOp_85AssignVariableOppi/conv2d_1/bias/Adam_3Reshape_267*
dtype0
{
ReadVariableOp_85ReadVariableOppi/conv2d_1/bias/Adam_3^AssignVariableOp_85*
dtype0*
_output_shapes
:
Y
AssignVariableOp_86AssignVariableOppi/dense/kernel/Adam_2Reshape_268*
dtype0
~
ReadVariableOp_86ReadVariableOppi/dense/kernel/Adam_2^AssignVariableOp_86*
dtype0*
_output_shapes

:
Y
AssignVariableOp_87AssignVariableOppi/dense/kernel/Adam_3Reshape_269*
dtype0
~
ReadVariableOp_87ReadVariableOppi/dense/kernel/Adam_3^AssignVariableOp_87*
dtype0*
_output_shapes

:
W
AssignVariableOp_88AssignVariableOppi/dense/bias/Adam_2Reshape_270*
dtype0
x
ReadVariableOp_88ReadVariableOppi/dense/bias/Adam_2^AssignVariableOp_88*
dtype0*
_output_shapes
:
W
AssignVariableOp_89AssignVariableOppi/dense/bias/Adam_3Reshape_271*
dtype0
x
ReadVariableOp_89ReadVariableOppi/dense/bias/Adam_3^AssignVariableOp_89*
dtype0*
_output_shapes
:
[
AssignVariableOp_90AssignVariableOppi/dense_1/kernel/Adam_2Reshape_272*
dtype0
�
ReadVariableOp_90ReadVariableOppi/dense_1/kernel/Adam_2^AssignVariableOp_90*
dtype0*
_output_shapes

:
[
AssignVariableOp_91AssignVariableOppi/dense_1/kernel/Adam_3Reshape_273*
dtype0
�
ReadVariableOp_91ReadVariableOppi/dense_1/kernel/Adam_3^AssignVariableOp_91*
dtype0*
_output_shapes

:
Y
AssignVariableOp_92AssignVariableOppi/dense_1/bias/Adam_2Reshape_274*
dtype0
z
ReadVariableOp_92ReadVariableOppi/dense_1/bias/Adam_2^AssignVariableOp_92*
dtype0*
_output_shapes
:
Y
AssignVariableOp_93AssignVariableOppi/dense_1/bias/Adam_3Reshape_275*
dtype0
z
ReadVariableOp_93ReadVariableOppi/dense_1/bias/Adam_3^AssignVariableOp_93*
dtype0*
_output_shapes
:
[
AssignVariableOp_94AssignVariableOppi/dense_2/kernel/Adam_2Reshape_276*
dtype0
�
ReadVariableOp_94ReadVariableOppi/dense_2/kernel/Adam_2^AssignVariableOp_94*
dtype0*
_output_shapes

:
[
AssignVariableOp_95AssignVariableOppi/dense_2/kernel/Adam_3Reshape_277*
dtype0
�
ReadVariableOp_95ReadVariableOppi/dense_2/kernel/Adam_3^AssignVariableOp_95*
dtype0*
_output_shapes

:
Y
AssignVariableOp_96AssignVariableOppi/dense_2/bias/Adam_2Reshape_278*
dtype0
z
ReadVariableOp_96ReadVariableOppi/dense_2/bias/Adam_2^AssignVariableOp_96*
dtype0*
_output_shapes
:
Y
AssignVariableOp_97AssignVariableOppi/dense_2/bias/Adam_3Reshape_279*
dtype0
z
ReadVariableOp_97ReadVariableOppi/dense_2/bias/Adam_3^AssignVariableOp_97*
dtype0*
_output_shapes
:
X
AssignVariableOp_98AssignVariableOpv/dense_5/kernel/AdamReshape_280*
dtype0

ReadVariableOp_98ReadVariableOpv/dense_5/kernel/Adam^AssignVariableOp_98*
dtype0* 
_output_shapes
:
��
Z
AssignVariableOp_99AssignVariableOpv/dense_5/kernel/Adam_1Reshape_281*
dtype0
�
ReadVariableOp_99ReadVariableOpv/dense_5/kernel/Adam_1^AssignVariableOp_99*
dtype0* 
_output_shapes
:
��
W
AssignVariableOp_100AssignVariableOpv/dense_5/bias/AdamReshape_282*
dtype0
z
ReadVariableOp_100ReadVariableOpv/dense_5/bias/Adam^AssignVariableOp_100*
dtype0*
_output_shapes	
:�
Y
AssignVariableOp_101AssignVariableOpv/dense_5/bias/Adam_1Reshape_283*
dtype0
|
ReadVariableOp_101ReadVariableOpv/dense_5/bias/Adam_1^AssignVariableOp_101*
dtype0*
_output_shapes	
:�
Y
AssignVariableOp_102AssignVariableOpv/dense_6/kernel/AdamReshape_284*
dtype0
�
ReadVariableOp_102ReadVariableOpv/dense_6/kernel/Adam^AssignVariableOp_102*
dtype0*
_output_shapes
:	�
[
AssignVariableOp_103AssignVariableOpv/dense_6/kernel/Adam_1Reshape_285*
dtype0
�
ReadVariableOp_103ReadVariableOpv/dense_6/kernel/Adam_1^AssignVariableOp_103*
dtype0*
_output_shapes
:	�
W
AssignVariableOp_104AssignVariableOpv/dense_6/bias/AdamReshape_286*
dtype0
y
ReadVariableOp_104ReadVariableOpv/dense_6/bias/Adam^AssignVariableOp_104*
dtype0*
_output_shapes
:
Y
AssignVariableOp_105AssignVariableOpv/dense_6/bias/Adam_1Reshape_287*
dtype0
{
ReadVariableOp_105ReadVariableOpv/dense_6/bias/Adam_1^AssignVariableOp_105*
dtype0*
_output_shapes
:
�
group_deps_4NoOp^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5	^Assign_6	^Assign_7	^Assign_8	^Assign_9^ReadVariableOp_100^ReadVariableOp_101^ReadVariableOp_102^ReadVariableOp_103^ReadVariableOp_104^ReadVariableOp_105^ReadVariableOp_28^ReadVariableOp_29^ReadVariableOp_30^ReadVariableOp_31^ReadVariableOp_32^ReadVariableOp_33^ReadVariableOp_34^ReadVariableOp_35^ReadVariableOp_36^ReadVariableOp_37^ReadVariableOp_38^ReadVariableOp_39^ReadVariableOp_40^ReadVariableOp_41^ReadVariableOp_42^ReadVariableOp_43^ReadVariableOp_44^ReadVariableOp_45^ReadVariableOp_46^ReadVariableOp_47^ReadVariableOp_48^ReadVariableOp_49^ReadVariableOp_50^ReadVariableOp_51^ReadVariableOp_52^ReadVariableOp_53^ReadVariableOp_54^ReadVariableOp_55^ReadVariableOp_56^ReadVariableOp_57^ReadVariableOp_58^ReadVariableOp_59^ReadVariableOp_60^ReadVariableOp_61^ReadVariableOp_62^ReadVariableOp_63^ReadVariableOp_64^ReadVariableOp_65^ReadVariableOp_66^ReadVariableOp_67^ReadVariableOp_68^ReadVariableOp_69^ReadVariableOp_70^ReadVariableOp_71^ReadVariableOp_72^ReadVariableOp_73^ReadVariableOp_74^ReadVariableOp_75^ReadVariableOp_76^ReadVariableOp_77^ReadVariableOp_78^ReadVariableOp_79^ReadVariableOp_80^ReadVariableOp_81^ReadVariableOp_82^ReadVariableOp_83^ReadVariableOp_84^ReadVariableOp_85^ReadVariableOp_86^ReadVariableOp_87^ReadVariableOp_88^ReadVariableOp_89^ReadVariableOp_90^ReadVariableOp_91^ReadVariableOp_92^ReadVariableOp_93^ReadVariableOp_94^ReadVariableOp_95^ReadVariableOp_96^ReadVariableOp_97^ReadVariableOp_98^ReadVariableOp_99
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
shape: *
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_fca86e55c49c473ba07631dc6d034de2/part*
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
save/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1*
dtype0*
_output_shapes
:X
�
save/SaveV2/shape_and_slicesConst*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:X
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOppi/Variablepi/Variable_1pi/Variable_2pi/Variable_3pi/Variable_4pi/Variable_5pi/Variable_6pi/Variable_7pi/Variable_8pi/Variable_9"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp(pi/dense/bias/Adam_2/Read/ReadVariableOp(pi/dense/bias/Adam_3/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp*pi/dense/kernel/Adam_2/Read/ReadVariableOp*pi/dense/kernel/Adam_3/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp*pi/dense_1/bias/Adam_2/Read/ReadVariableOp*pi/dense_1/bias/Adam_3/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp,pi/dense_1/kernel/Adam_2/Read/ReadVariableOp,pi/dense_1/kernel/Adam_3/Read/ReadVariableOp#pi/dense_2/bias/Read/ReadVariableOp(pi/dense_2/bias/Adam/Read/ReadVariableOp*pi/dense_2/bias/Adam_1/Read/ReadVariableOp*pi/dense_2/bias/Adam_2/Read/ReadVariableOp*pi/dense_2/bias/Adam_3/Read/ReadVariableOp%pi/dense_2/kernel/Read/ReadVariableOp*pi/dense_2/kernel/Adam/Read/ReadVariableOp,pi/dense_2/kernel/Adam_1/Read/ReadVariableOp,pi/dense_2/kernel/Adam_2/Read/ReadVariableOp,pi/dense_2/kernel/Adam_3/Read/ReadVariableOp#pi/dense_3/bias/Read/ReadVariableOp(pi/dense_3/bias/Adam/Read/ReadVariableOp*pi/dense_3/bias/Adam_1/Read/ReadVariableOp%pi/dense_3/kernel/Read/ReadVariableOp*pi/dense_3/kernel/Adam/Read/ReadVariableOp,pi/dense_3/kernel/Adam_1/Read/ReadVariableOp#pi/dense_4/bias/Read/ReadVariableOp(pi/dense_4/bias/Adam/Read/ReadVariableOp*pi/dense_4/bias/Adam_1/Read/ReadVariableOp%pi/dense_4/kernel/Read/ReadVariableOp*pi/dense_4/kernel/Adam/Read/ReadVariableOp,pi/dense_4/kernel/Adam_1/Read/ReadVariableOp"v/dense_5/bias/Read/ReadVariableOp'v/dense_5/bias/Adam/Read/ReadVariableOp)v/dense_5/bias/Adam_1/Read/ReadVariableOp$v/dense_5/kernel/Read/ReadVariableOp)v/dense_5/kernel/Adam/Read/ReadVariableOp+v/dense_5/kernel/Adam_1/Read/ReadVariableOp"v/dense_6/bias/Read/ReadVariableOp'v/dense_6/bias/Adam/Read/ReadVariableOp)v/dense_6/bias/Adam_1/Read/ReadVariableOp$v/dense_6/kernel/Read/ReadVariableOp)v/dense_6/kernel/Adam/Read/ReadVariableOp+v/dense_6/kernel/Adam_1/Read/ReadVariableOp*f
dtypes\
Z2X
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
�
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
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
�
save/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:X*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1
�
save/RestoreV2/shape_and_slicesConst*
dtype0*
_output_shapes
:X*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*f
dtypes\
Z2X
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpbeta1_powersave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
_output_shapes
:*
T0
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
�
save/AssignAssignpi/Variablesave/RestoreV2:4*
T0*
_class
loc:@pi/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_1Assignpi/Variable_1save/RestoreV2:5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_1
�
save/Assign_2Assignpi/Variable_2save/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@pi/Variable_2*
validate_shape(*
_output_shapes
:
�
save/Assign_3Assignpi/Variable_3save/RestoreV2:7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_3
�
save/Assign_4Assignpi/Variable_4save/RestoreV2:8*
T0* 
_class
loc:@pi/Variable_4*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_5Assignpi/Variable_5save/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@pi/Variable_5*
validate_shape(*
_output_shapes
:
�
save/Assign_6Assignpi/Variable_6save/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@pi/Variable_6*
validate_shape(*
_output_shapes
:
�
save/Assign_7Assignpi/Variable_7save/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_7
�
save/Assign_8Assignpi/Variable_8save/RestoreV2:12*
T0* 
_class
loc:@pi/Variable_8*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_9Assignpi/Variable_9save/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_9
Q
save/Identity_5Identitysave/RestoreV2:14*
T0*
_output_shapes
:
Y
save/AssignVariableOp_4AssignVariableOppi/conv2d/biassave/Identity_5*
dtype0
Q
save/Identity_6Identitysave/RestoreV2:15*
T0*
_output_shapes
:
^
save/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:16*
T0*
_output_shapes
:
`
save/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save/Identity_7*
dtype0
Q
save/Identity_8Identitysave/RestoreV2:17*
T0*
_output_shapes
:
`
save/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save/Identity_8*
dtype0
Q
save/Identity_9Identitysave/RestoreV2:18*
T0*
_output_shapes
:
`
save/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:19*
T0*
_output_shapes
:
\
save/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:20*
T0*
_output_shapes
:
b
save/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:21*
T0*
_output_shapes
:
d
save/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:22*
T0*
_output_shapes
:
d
save/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:23*
T0*
_output_shapes
:
d
save/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:24*
T0*
_output_shapes
:
]
save/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:25*
_output_shapes
:*
T0
b
save/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:26*
T0*
_output_shapes
:
d
save/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:27*
T0*
_output_shapes
:
d
save/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:28*
T0*
_output_shapes
:
d
save/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:29*
T0*
_output_shapes
:
_
save/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:30*
T0*
_output_shapes
:
d
save/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:31*
T0*
_output_shapes
:
f
save/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:32*
_output_shapes
:*
T0
f
save/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:33*
T0*
_output_shapes
:
f
save/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:34*
T0*
_output_shapes
:
Z
save/AssignVariableOp_24AssignVariableOppi/dense/biassave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:35*
T0*
_output_shapes
:
_
save/AssignVariableOp_25AssignVariableOppi/dense/bias/Adamsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:36*
T0*
_output_shapes
:
a
save/AssignVariableOp_26AssignVariableOppi/dense/bias/Adam_1save/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:37*
T0*
_output_shapes
:
a
save/AssignVariableOp_27AssignVariableOppi/dense/bias/Adam_2save/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:38*
T0*
_output_shapes
:
a
save/AssignVariableOp_28AssignVariableOppi/dense/bias/Adam_3save/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:39*
T0*
_output_shapes
:
\
save/AssignVariableOp_29AssignVariableOppi/dense/kernelsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:40*
T0*
_output_shapes
:
a
save/AssignVariableOp_30AssignVariableOppi/dense/kernel/Adamsave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:41*
_output_shapes
:*
T0
c
save/AssignVariableOp_31AssignVariableOppi/dense/kernel/Adam_1save/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:42*
T0*
_output_shapes
:
c
save/AssignVariableOp_32AssignVariableOppi/dense/kernel/Adam_2save/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:43*
T0*
_output_shapes
:
c
save/AssignVariableOp_33AssignVariableOppi/dense/kernel/Adam_3save/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:44*
T0*
_output_shapes
:
\
save/AssignVariableOp_34AssignVariableOppi/dense_1/biassave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:45*
T0*
_output_shapes
:
a
save/AssignVariableOp_35AssignVariableOppi/dense_1/bias/Adamsave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:46*
_output_shapes
:*
T0
c
save/AssignVariableOp_36AssignVariableOppi/dense_1/bias/Adam_1save/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:47*
T0*
_output_shapes
:
c
save/AssignVariableOp_37AssignVariableOppi/dense_1/bias/Adam_2save/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:48*
T0*
_output_shapes
:
c
save/AssignVariableOp_38AssignVariableOppi/dense_1/bias/Adam_3save/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:49*
T0*
_output_shapes
:
^
save/AssignVariableOp_39AssignVariableOppi/dense_1/kernelsave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:50*
T0*
_output_shapes
:
c
save/AssignVariableOp_40AssignVariableOppi/dense_1/kernel/Adamsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:51*
T0*
_output_shapes
:
e
save/AssignVariableOp_41AssignVariableOppi/dense_1/kernel/Adam_1save/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:52*
T0*
_output_shapes
:
e
save/AssignVariableOp_42AssignVariableOppi/dense_1/kernel/Adam_2save/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:53*
T0*
_output_shapes
:
e
save/AssignVariableOp_43AssignVariableOppi/dense_1/kernel/Adam_3save/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:54*
T0*
_output_shapes
:
\
save/AssignVariableOp_44AssignVariableOppi/dense_2/biassave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:55*
T0*
_output_shapes
:
a
save/AssignVariableOp_45AssignVariableOppi/dense_2/bias/Adamsave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:56*
T0*
_output_shapes
:
c
save/AssignVariableOp_46AssignVariableOppi/dense_2/bias/Adam_1save/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:57*
T0*
_output_shapes
:
c
save/AssignVariableOp_47AssignVariableOppi/dense_2/bias/Adam_2save/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:58*
T0*
_output_shapes
:
c
save/AssignVariableOp_48AssignVariableOppi/dense_2/bias/Adam_3save/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:59*
T0*
_output_shapes
:
^
save/AssignVariableOp_49AssignVariableOppi/dense_2/kernelsave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:60*
T0*
_output_shapes
:
c
save/AssignVariableOp_50AssignVariableOppi/dense_2/kernel/Adamsave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:61*
T0*
_output_shapes
:
e
save/AssignVariableOp_51AssignVariableOppi/dense_2/kernel/Adam_1save/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:62*
T0*
_output_shapes
:
e
save/AssignVariableOp_52AssignVariableOppi/dense_2/kernel/Adam_2save/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:63*
T0*
_output_shapes
:
e
save/AssignVariableOp_53AssignVariableOppi/dense_2/kernel/Adam_3save/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:64*
T0*
_output_shapes
:
\
save/AssignVariableOp_54AssignVariableOppi/dense_3/biassave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:65*
T0*
_output_shapes
:
a
save/AssignVariableOp_55AssignVariableOppi/dense_3/bias/Adamsave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:66*
T0*
_output_shapes
:
c
save/AssignVariableOp_56AssignVariableOppi/dense_3/bias/Adam_1save/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:67*
_output_shapes
:*
T0
^
save/AssignVariableOp_57AssignVariableOppi/dense_3/kernelsave/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:68*
T0*
_output_shapes
:
c
save/AssignVariableOp_58AssignVariableOppi/dense_3/kernel/Adamsave/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:69*
_output_shapes
:*
T0
e
save/AssignVariableOp_59AssignVariableOppi/dense_3/kernel/Adam_1save/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:70*
T0*
_output_shapes
:
\
save/AssignVariableOp_60AssignVariableOppi/dense_4/biassave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:71*
T0*
_output_shapes
:
a
save/AssignVariableOp_61AssignVariableOppi/dense_4/bias/Adamsave/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:72*
T0*
_output_shapes
:
c
save/AssignVariableOp_62AssignVariableOppi/dense_4/bias/Adam_1save/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:73*
T0*
_output_shapes
:
^
save/AssignVariableOp_63AssignVariableOppi/dense_4/kernelsave/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:74*
_output_shapes
:*
T0
c
save/AssignVariableOp_64AssignVariableOppi/dense_4/kernel/Adamsave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:75*
T0*
_output_shapes
:
e
save/AssignVariableOp_65AssignVariableOppi/dense_4/kernel/Adam_1save/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:76*
T0*
_output_shapes
:
[
save/AssignVariableOp_66AssignVariableOpv/dense_5/biassave/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:77*
T0*
_output_shapes
:
`
save/AssignVariableOp_67AssignVariableOpv/dense_5/bias/Adamsave/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:78*
_output_shapes
:*
T0
b
save/AssignVariableOp_68AssignVariableOpv/dense_5/bias/Adam_1save/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:79*
T0*
_output_shapes
:
]
save/AssignVariableOp_69AssignVariableOpv/dense_5/kernelsave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:80*
T0*
_output_shapes
:
b
save/AssignVariableOp_70AssignVariableOpv/dense_5/kernel/Adamsave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:81*
T0*
_output_shapes
:
d
save/AssignVariableOp_71AssignVariableOpv/dense_5/kernel/Adam_1save/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:82*
_output_shapes
:*
T0
[
save/AssignVariableOp_72AssignVariableOpv/dense_6/biassave/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:83*
T0*
_output_shapes
:
`
save/AssignVariableOp_73AssignVariableOpv/dense_6/bias/Adamsave/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:84*
T0*
_output_shapes
:
b
save/AssignVariableOp_74AssignVariableOpv/dense_6/bias/Adam_1save/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:85*
T0*
_output_shapes
:
]
save/AssignVariableOp_75AssignVariableOpv/dense_6/kernelsave/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:86*
T0*
_output_shapes
:
b
save/AssignVariableOp_76AssignVariableOpv/dense_6/kernel/Adamsave/Identity_77*
dtype0
R
save/Identity_78Identitysave/RestoreV2:87*
_output_shapes
:*
T0
d
save/AssignVariableOp_77AssignVariableOpv/dense_6/kernel/Adam_1save/Identity_78*
dtype0
�
save/restore_shardNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_8^save/AssignVariableOp_9^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
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
shape: *
dtype0*
_output_shapes
: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
dtype0*
_output_shapes
: *
shape: 
�
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_ec2a477068a3447796bad279eda9b6bf/part*
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
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
�
save_1/SaveV2/tensor_namesConst*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1*
dtype0*
_output_shapes
:X
�
save_1/SaveV2/shape_and_slicesConst*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:X
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOppi/Variablepi/Variable_1pi/Variable_2pi/Variable_3pi/Variable_4pi/Variable_5pi/Variable_6pi/Variable_7pi/Variable_8pi/Variable_9"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp(pi/dense/bias/Adam_2/Read/ReadVariableOp(pi/dense/bias/Adam_3/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp*pi/dense/kernel/Adam_2/Read/ReadVariableOp*pi/dense/kernel/Adam_3/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp*pi/dense_1/bias/Adam_2/Read/ReadVariableOp*pi/dense_1/bias/Adam_3/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp,pi/dense_1/kernel/Adam_2/Read/ReadVariableOp,pi/dense_1/kernel/Adam_3/Read/ReadVariableOp#pi/dense_2/bias/Read/ReadVariableOp(pi/dense_2/bias/Adam/Read/ReadVariableOp*pi/dense_2/bias/Adam_1/Read/ReadVariableOp*pi/dense_2/bias/Adam_2/Read/ReadVariableOp*pi/dense_2/bias/Adam_3/Read/ReadVariableOp%pi/dense_2/kernel/Read/ReadVariableOp*pi/dense_2/kernel/Adam/Read/ReadVariableOp,pi/dense_2/kernel/Adam_1/Read/ReadVariableOp,pi/dense_2/kernel/Adam_2/Read/ReadVariableOp,pi/dense_2/kernel/Adam_3/Read/ReadVariableOp#pi/dense_3/bias/Read/ReadVariableOp(pi/dense_3/bias/Adam/Read/ReadVariableOp*pi/dense_3/bias/Adam_1/Read/ReadVariableOp%pi/dense_3/kernel/Read/ReadVariableOp*pi/dense_3/kernel/Adam/Read/ReadVariableOp,pi/dense_3/kernel/Adam_1/Read/ReadVariableOp#pi/dense_4/bias/Read/ReadVariableOp(pi/dense_4/bias/Adam/Read/ReadVariableOp*pi/dense_4/bias/Adam_1/Read/ReadVariableOp%pi/dense_4/kernel/Read/ReadVariableOp*pi/dense_4/kernel/Adam/Read/ReadVariableOp,pi/dense_4/kernel/Adam_1/Read/ReadVariableOp"v/dense_5/bias/Read/ReadVariableOp'v/dense_5/bias/Adam/Read/ReadVariableOp)v/dense_5/bias/Adam_1/Read/ReadVariableOp$v/dense_5/kernel/Read/ReadVariableOp)v/dense_5/kernel/Adam/Read/ReadVariableOp+v/dense_5/kernel/Adam_1/Read/ReadVariableOp"v/dense_6/bias/Read/ReadVariableOp'v/dense_6/bias/Adam/Read/ReadVariableOp)v/dense_6/bias/Adam_1/Read/ReadVariableOp$v/dense_6/kernel/Read/ReadVariableOp)v/dense_6/kernel/Adam/Read/ReadVariableOp+v/dense_6/kernel/Adam_1/Read/ReadVariableOp*f
dtypes\
Z2X
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
�
save_1/RestoreV2/tensor_namesConst*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1*
dtype0*
_output_shapes
:X
�
!save_1/RestoreV2/shape_and_slicesConst*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:X
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*f
dtypes\
Z2X
R
save_1/Identity_1Identitysave_1/RestoreV2*
T0*
_output_shapes
:
X
save_1/AssignVariableOpAssignVariableOpbeta1_powersave_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:1*
T0*
_output_shapes
:
\
save_1/AssignVariableOp_1AssignVariableOpbeta1_power_1save_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:2*
T0*
_output_shapes
:
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
�
save_1/AssignAssignpi/Variablesave_1/RestoreV2:4*
T0*
_class
loc:@pi/Variable*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_1/Assign_1Assignpi/Variable_1save_1/RestoreV2:5*
T0* 
_class
loc:@pi/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_1/Assign_2Assignpi/Variable_2save_1/RestoreV2:6*
use_locking(*
T0* 
_class
loc:@pi/Variable_2*
validate_shape(*
_output_shapes
:
�
save_1/Assign_3Assignpi/Variable_3save_1/RestoreV2:7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_3
�
save_1/Assign_4Assignpi/Variable_4save_1/RestoreV2:8*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_4
�
save_1/Assign_5Assignpi/Variable_5save_1/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@pi/Variable_5*
validate_shape(*
_output_shapes
:
�
save_1/Assign_6Assignpi/Variable_6save_1/RestoreV2:10*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_6
�
save_1/Assign_7Assignpi/Variable_7save_1/RestoreV2:11*
use_locking(*
T0* 
_class
loc:@pi/Variable_7*
validate_shape(*
_output_shapes
:
�
save_1/Assign_8Assignpi/Variable_8save_1/RestoreV2:12*
T0* 
_class
loc:@pi/Variable_8*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_1/Assign_9Assignpi/Variable_9save_1/RestoreV2:13*
use_locking(*
T0* 
_class
loc:@pi/Variable_9*
validate_shape(*
_output_shapes
:
U
save_1/Identity_5Identitysave_1/RestoreV2:14*
T0*
_output_shapes
:
]
save_1/AssignVariableOp_4AssignVariableOppi/conv2d/biassave_1/Identity_5*
dtype0
U
save_1/Identity_6Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave_1/Identity_6*
dtype0
U
save_1/Identity_7Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save_1/Identity_7*
dtype0
U
save_1/Identity_8Identitysave_1/RestoreV2:17*
_output_shapes
:*
T0
d
save_1/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save_1/Identity_8*
dtype0
U
save_1/Identity_9Identitysave_1/RestoreV2:18*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save_1/Identity_9*
dtype0
V
save_1/Identity_10Identitysave_1/RestoreV2:19*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:20*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:21*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:22*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:23*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save_1/Identity_14*
dtype0
V
save_1/Identity_15Identitysave_1/RestoreV2:24*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:25*
_output_shapes
:*
T0
f
save_1/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:26*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:27*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:28*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save_1/Identity_19*
dtype0
V
save_1/Identity_20Identitysave_1/RestoreV2:29*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave_1/Identity_20*
dtype0
V
save_1/Identity_21Identitysave_1/RestoreV2:30*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave_1/Identity_21*
dtype0
V
save_1/Identity_22Identitysave_1/RestoreV2:31*
_output_shapes
:*
T0
j
save_1/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save_1/Identity_22*
dtype0
V
save_1/Identity_23Identitysave_1/RestoreV2:32*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save_1/Identity_23*
dtype0
V
save_1/Identity_24Identitysave_1/RestoreV2:33*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save_1/Identity_24*
dtype0
V
save_1/Identity_25Identitysave_1/RestoreV2:34*
_output_shapes
:*
T0
^
save_1/AssignVariableOp_24AssignVariableOppi/dense/biassave_1/Identity_25*
dtype0
V
save_1/Identity_26Identitysave_1/RestoreV2:35*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_25AssignVariableOppi/dense/bias/Adamsave_1/Identity_26*
dtype0
V
save_1/Identity_27Identitysave_1/RestoreV2:36*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_26AssignVariableOppi/dense/bias/Adam_1save_1/Identity_27*
dtype0
V
save_1/Identity_28Identitysave_1/RestoreV2:37*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_27AssignVariableOppi/dense/bias/Adam_2save_1/Identity_28*
dtype0
V
save_1/Identity_29Identitysave_1/RestoreV2:38*
_output_shapes
:*
T0
e
save_1/AssignVariableOp_28AssignVariableOppi/dense/bias/Adam_3save_1/Identity_29*
dtype0
V
save_1/Identity_30Identitysave_1/RestoreV2:39*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_29AssignVariableOppi/dense/kernelsave_1/Identity_30*
dtype0
V
save_1/Identity_31Identitysave_1/RestoreV2:40*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_30AssignVariableOppi/dense/kernel/Adamsave_1/Identity_31*
dtype0
V
save_1/Identity_32Identitysave_1/RestoreV2:41*
_output_shapes
:*
T0
g
save_1/AssignVariableOp_31AssignVariableOppi/dense/kernel/Adam_1save_1/Identity_32*
dtype0
V
save_1/Identity_33Identitysave_1/RestoreV2:42*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_32AssignVariableOppi/dense/kernel/Adam_2save_1/Identity_33*
dtype0
V
save_1/Identity_34Identitysave_1/RestoreV2:43*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_33AssignVariableOppi/dense/kernel/Adam_3save_1/Identity_34*
dtype0
V
save_1/Identity_35Identitysave_1/RestoreV2:44*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_34AssignVariableOppi/dense_1/biassave_1/Identity_35*
dtype0
V
save_1/Identity_36Identitysave_1/RestoreV2:45*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_35AssignVariableOppi/dense_1/bias/Adamsave_1/Identity_36*
dtype0
V
save_1/Identity_37Identitysave_1/RestoreV2:46*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_36AssignVariableOppi/dense_1/bias/Adam_1save_1/Identity_37*
dtype0
V
save_1/Identity_38Identitysave_1/RestoreV2:47*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_37AssignVariableOppi/dense_1/bias/Adam_2save_1/Identity_38*
dtype0
V
save_1/Identity_39Identitysave_1/RestoreV2:48*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_38AssignVariableOppi/dense_1/bias/Adam_3save_1/Identity_39*
dtype0
V
save_1/Identity_40Identitysave_1/RestoreV2:49*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_39AssignVariableOppi/dense_1/kernelsave_1/Identity_40*
dtype0
V
save_1/Identity_41Identitysave_1/RestoreV2:50*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_40AssignVariableOppi/dense_1/kernel/Adamsave_1/Identity_41*
dtype0
V
save_1/Identity_42Identitysave_1/RestoreV2:51*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_41AssignVariableOppi/dense_1/kernel/Adam_1save_1/Identity_42*
dtype0
V
save_1/Identity_43Identitysave_1/RestoreV2:52*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_42AssignVariableOppi/dense_1/kernel/Adam_2save_1/Identity_43*
dtype0
V
save_1/Identity_44Identitysave_1/RestoreV2:53*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_43AssignVariableOppi/dense_1/kernel/Adam_3save_1/Identity_44*
dtype0
V
save_1/Identity_45Identitysave_1/RestoreV2:54*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_44AssignVariableOppi/dense_2/biassave_1/Identity_45*
dtype0
V
save_1/Identity_46Identitysave_1/RestoreV2:55*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_45AssignVariableOppi/dense_2/bias/Adamsave_1/Identity_46*
dtype0
V
save_1/Identity_47Identitysave_1/RestoreV2:56*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_46AssignVariableOppi/dense_2/bias/Adam_1save_1/Identity_47*
dtype0
V
save_1/Identity_48Identitysave_1/RestoreV2:57*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_47AssignVariableOppi/dense_2/bias/Adam_2save_1/Identity_48*
dtype0
V
save_1/Identity_49Identitysave_1/RestoreV2:58*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_48AssignVariableOppi/dense_2/bias/Adam_3save_1/Identity_49*
dtype0
V
save_1/Identity_50Identitysave_1/RestoreV2:59*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_49AssignVariableOppi/dense_2/kernelsave_1/Identity_50*
dtype0
V
save_1/Identity_51Identitysave_1/RestoreV2:60*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_50AssignVariableOppi/dense_2/kernel/Adamsave_1/Identity_51*
dtype0
V
save_1/Identity_52Identitysave_1/RestoreV2:61*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_51AssignVariableOppi/dense_2/kernel/Adam_1save_1/Identity_52*
dtype0
V
save_1/Identity_53Identitysave_1/RestoreV2:62*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_52AssignVariableOppi/dense_2/kernel/Adam_2save_1/Identity_53*
dtype0
V
save_1/Identity_54Identitysave_1/RestoreV2:63*
_output_shapes
:*
T0
i
save_1/AssignVariableOp_53AssignVariableOppi/dense_2/kernel/Adam_3save_1/Identity_54*
dtype0
V
save_1/Identity_55Identitysave_1/RestoreV2:64*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_54AssignVariableOppi/dense_3/biassave_1/Identity_55*
dtype0
V
save_1/Identity_56Identitysave_1/RestoreV2:65*
_output_shapes
:*
T0
e
save_1/AssignVariableOp_55AssignVariableOppi/dense_3/bias/Adamsave_1/Identity_56*
dtype0
V
save_1/Identity_57Identitysave_1/RestoreV2:66*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_56AssignVariableOppi/dense_3/bias/Adam_1save_1/Identity_57*
dtype0
V
save_1/Identity_58Identitysave_1/RestoreV2:67*
_output_shapes
:*
T0
b
save_1/AssignVariableOp_57AssignVariableOppi/dense_3/kernelsave_1/Identity_58*
dtype0
V
save_1/Identity_59Identitysave_1/RestoreV2:68*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_58AssignVariableOppi/dense_3/kernel/Adamsave_1/Identity_59*
dtype0
V
save_1/Identity_60Identitysave_1/RestoreV2:69*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_59AssignVariableOppi/dense_3/kernel/Adam_1save_1/Identity_60*
dtype0
V
save_1/Identity_61Identitysave_1/RestoreV2:70*
T0*
_output_shapes
:
`
save_1/AssignVariableOp_60AssignVariableOppi/dense_4/biassave_1/Identity_61*
dtype0
V
save_1/Identity_62Identitysave_1/RestoreV2:71*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_61AssignVariableOppi/dense_4/bias/Adamsave_1/Identity_62*
dtype0
V
save_1/Identity_63Identitysave_1/RestoreV2:72*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_62AssignVariableOppi/dense_4/bias/Adam_1save_1/Identity_63*
dtype0
V
save_1/Identity_64Identitysave_1/RestoreV2:73*
T0*
_output_shapes
:
b
save_1/AssignVariableOp_63AssignVariableOppi/dense_4/kernelsave_1/Identity_64*
dtype0
V
save_1/Identity_65Identitysave_1/RestoreV2:74*
_output_shapes
:*
T0
g
save_1/AssignVariableOp_64AssignVariableOppi/dense_4/kernel/Adamsave_1/Identity_65*
dtype0
V
save_1/Identity_66Identitysave_1/RestoreV2:75*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_65AssignVariableOppi/dense_4/kernel/Adam_1save_1/Identity_66*
dtype0
V
save_1/Identity_67Identitysave_1/RestoreV2:76*
_output_shapes
:*
T0
_
save_1/AssignVariableOp_66AssignVariableOpv/dense_5/biassave_1/Identity_67*
dtype0
V
save_1/Identity_68Identitysave_1/RestoreV2:77*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_67AssignVariableOpv/dense_5/bias/Adamsave_1/Identity_68*
dtype0
V
save_1/Identity_69Identitysave_1/RestoreV2:78*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_68AssignVariableOpv/dense_5/bias/Adam_1save_1/Identity_69*
dtype0
V
save_1/Identity_70Identitysave_1/RestoreV2:79*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_69AssignVariableOpv/dense_5/kernelsave_1/Identity_70*
dtype0
V
save_1/Identity_71Identitysave_1/RestoreV2:80*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_70AssignVariableOpv/dense_5/kernel/Adamsave_1/Identity_71*
dtype0
V
save_1/Identity_72Identitysave_1/RestoreV2:81*
_output_shapes
:*
T0
h
save_1/AssignVariableOp_71AssignVariableOpv/dense_5/kernel/Adam_1save_1/Identity_72*
dtype0
V
save_1/Identity_73Identitysave_1/RestoreV2:82*
T0*
_output_shapes
:
_
save_1/AssignVariableOp_72AssignVariableOpv/dense_6/biassave_1/Identity_73*
dtype0
V
save_1/Identity_74Identitysave_1/RestoreV2:83*
T0*
_output_shapes
:
d
save_1/AssignVariableOp_73AssignVariableOpv/dense_6/bias/Adamsave_1/Identity_74*
dtype0
V
save_1/Identity_75Identitysave_1/RestoreV2:84*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_74AssignVariableOpv/dense_6/bias/Adam_1save_1/Identity_75*
dtype0
V
save_1/Identity_76Identitysave_1/RestoreV2:85*
_output_shapes
:*
T0
a
save_1/AssignVariableOp_75AssignVariableOpv/dense_6/kernelsave_1/Identity_76*
dtype0
V
save_1/Identity_77Identitysave_1/RestoreV2:86*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_76AssignVariableOpv/dense_6/kernel/Adamsave_1/Identity_77*
dtype0
V
save_1/Identity_78Identitysave_1/RestoreV2:87*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_77AssignVariableOpv/dense_6/kernel/Adam_1save_1/Identity_78*
dtype0
�
save_1/restore_shardNoOp^save_1/Assign^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_26^save_1/AssignVariableOp_27^save_1/AssignVariableOp_28^save_1/AssignVariableOp_29^save_1/AssignVariableOp_3^save_1/AssignVariableOp_30^save_1/AssignVariableOp_31^save_1/AssignVariableOp_32^save_1/AssignVariableOp_33^save_1/AssignVariableOp_34^save_1/AssignVariableOp_35^save_1/AssignVariableOp_36^save_1/AssignVariableOp_37^save_1/AssignVariableOp_38^save_1/AssignVariableOp_39^save_1/AssignVariableOp_4^save_1/AssignVariableOp_40^save_1/AssignVariableOp_41^save_1/AssignVariableOp_42^save_1/AssignVariableOp_43^save_1/AssignVariableOp_44^save_1/AssignVariableOp_45^save_1/AssignVariableOp_46^save_1/AssignVariableOp_47^save_1/AssignVariableOp_48^save_1/AssignVariableOp_49^save_1/AssignVariableOp_5^save_1/AssignVariableOp_50^save_1/AssignVariableOp_51^save_1/AssignVariableOp_52^save_1/AssignVariableOp_53^save_1/AssignVariableOp_54^save_1/AssignVariableOp_55^save_1/AssignVariableOp_56^save_1/AssignVariableOp_57^save_1/AssignVariableOp_58^save_1/AssignVariableOp_59^save_1/AssignVariableOp_6^save_1/AssignVariableOp_60^save_1/AssignVariableOp_61^save_1/AssignVariableOp_62^save_1/AssignVariableOp_63^save_1/AssignVariableOp_64^save_1/AssignVariableOp_65^save_1/AssignVariableOp_66^save_1/AssignVariableOp_67^save_1/AssignVariableOp_68^save_1/AssignVariableOp_69^save_1/AssignVariableOp_7^save_1/AssignVariableOp_70^save_1/AssignVariableOp_71^save_1/AssignVariableOp_72^save_1/AssignVariableOp_73^save_1/AssignVariableOp_74^save_1/AssignVariableOp_75^save_1/AssignVariableOp_76^save_1/AssignVariableOp_77^save_1/AssignVariableOp_8^save_1/AssignVariableOp_9^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
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
dtype0*
_output_shapes
: *
shape: 
�
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_413e630cd5f54172aeb38091af38e254/part*
dtype0*
_output_shapes
: 
{
save_2/StringJoin
StringJoinsave_2/Constsave_2/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_2/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_2/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards*
_output_shapes
: 
�
save_2/SaveV2/tensor_namesConst*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1*
dtype0*
_output_shapes
:X
�
save_2/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:X*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOppi/Variablepi/Variable_1pi/Variable_2pi/Variable_3pi/Variable_4pi/Variable_5pi/Variable_6pi/Variable_7pi/Variable_8pi/Variable_9"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp(pi/dense/bias/Adam_2/Read/ReadVariableOp(pi/dense/bias/Adam_3/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp*pi/dense/kernel/Adam_2/Read/ReadVariableOp*pi/dense/kernel/Adam_3/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp*pi/dense_1/bias/Adam_2/Read/ReadVariableOp*pi/dense_1/bias/Adam_3/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp,pi/dense_1/kernel/Adam_2/Read/ReadVariableOp,pi/dense_1/kernel/Adam_3/Read/ReadVariableOp#pi/dense_2/bias/Read/ReadVariableOp(pi/dense_2/bias/Adam/Read/ReadVariableOp*pi/dense_2/bias/Adam_1/Read/ReadVariableOp*pi/dense_2/bias/Adam_2/Read/ReadVariableOp*pi/dense_2/bias/Adam_3/Read/ReadVariableOp%pi/dense_2/kernel/Read/ReadVariableOp*pi/dense_2/kernel/Adam/Read/ReadVariableOp,pi/dense_2/kernel/Adam_1/Read/ReadVariableOp,pi/dense_2/kernel/Adam_2/Read/ReadVariableOp,pi/dense_2/kernel/Adam_3/Read/ReadVariableOp#pi/dense_3/bias/Read/ReadVariableOp(pi/dense_3/bias/Adam/Read/ReadVariableOp*pi/dense_3/bias/Adam_1/Read/ReadVariableOp%pi/dense_3/kernel/Read/ReadVariableOp*pi/dense_3/kernel/Adam/Read/ReadVariableOp,pi/dense_3/kernel/Adam_1/Read/ReadVariableOp#pi/dense_4/bias/Read/ReadVariableOp(pi/dense_4/bias/Adam/Read/ReadVariableOp*pi/dense_4/bias/Adam_1/Read/ReadVariableOp%pi/dense_4/kernel/Read/ReadVariableOp*pi/dense_4/kernel/Adam/Read/ReadVariableOp,pi/dense_4/kernel/Adam_1/Read/ReadVariableOp"v/dense_5/bias/Read/ReadVariableOp'v/dense_5/bias/Adam/Read/ReadVariableOp)v/dense_5/bias/Adam_1/Read/ReadVariableOp$v/dense_5/kernel/Read/ReadVariableOp)v/dense_5/kernel/Adam/Read/ReadVariableOp+v/dense_5/kernel/Adam_1/Read/ReadVariableOp"v/dense_6/bias/Read/ReadVariableOp'v/dense_6/bias/Adam/Read/ReadVariableOp)v/dense_6/bias/Adam_1/Read/ReadVariableOp$v/dense_6/kernel/Read/ReadVariableOp)v/dense_6/kernel/Adam/Read/ReadVariableOp+v/dense_6/kernel/Adam_1/Read/ReadVariableOp*f
dtypes\
Z2X
�
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
�
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency*
N*
_output_shapes
:*
T0*

axis 
�
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const*
delete_old_dirs(
�
save_2/IdentityIdentitysave_2/Const^save_2/MergeV2Checkpoints^save_2/control_dependency*
T0*
_output_shapes
: 
�
save_2/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
:X*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1
�
!save_2/RestoreV2/shape_and_slicesConst*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:X
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*f
dtypes\
Z2X
R
save_2/Identity_1Identitysave_2/RestoreV2*
T0*
_output_shapes
:
X
save_2/AssignVariableOpAssignVariableOpbeta1_powersave_2/Identity_1*
dtype0
T
save_2/Identity_2Identitysave_2/RestoreV2:1*
T0*
_output_shapes
:
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
�
save_2/AssignAssignpi/Variablesave_2/RestoreV2:4*
use_locking(*
T0*
_class
loc:@pi/Variable*
validate_shape(*
_output_shapes
:
�
save_2/Assign_1Assignpi/Variable_1save_2/RestoreV2:5*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_1
�
save_2/Assign_2Assignpi/Variable_2save_2/RestoreV2:6*
T0* 
_class
loc:@pi/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_2/Assign_3Assignpi/Variable_3save_2/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@pi/Variable_3*
validate_shape(*
_output_shapes
:
�
save_2/Assign_4Assignpi/Variable_4save_2/RestoreV2:8*
use_locking(*
T0* 
_class
loc:@pi/Variable_4*
validate_shape(*
_output_shapes
:
�
save_2/Assign_5Assignpi/Variable_5save_2/RestoreV2:9*
use_locking(*
T0* 
_class
loc:@pi/Variable_5*
validate_shape(*
_output_shapes
:
�
save_2/Assign_6Assignpi/Variable_6save_2/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@pi/Variable_6*
validate_shape(*
_output_shapes
:
�
save_2/Assign_7Assignpi/Variable_7save_2/RestoreV2:11*
use_locking(*
T0* 
_class
loc:@pi/Variable_7*
validate_shape(*
_output_shapes
:
�
save_2/Assign_8Assignpi/Variable_8save_2/RestoreV2:12*
use_locking(*
T0* 
_class
loc:@pi/Variable_8*
validate_shape(*
_output_shapes
:
�
save_2/Assign_9Assignpi/Variable_9save_2/RestoreV2:13*
T0* 
_class
loc:@pi/Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(
U
save_2/Identity_5Identitysave_2/RestoreV2:14*
T0*
_output_shapes
:
]
save_2/AssignVariableOp_4AssignVariableOppi/conv2d/biassave_2/Identity_5*
dtype0
U
save_2/Identity_6Identitysave_2/RestoreV2:15*
T0*
_output_shapes
:
b
save_2/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave_2/Identity_6*
dtype0
U
save_2/Identity_7Identitysave_2/RestoreV2:16*
T0*
_output_shapes
:
d
save_2/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save_2/Identity_7*
dtype0
U
save_2/Identity_8Identitysave_2/RestoreV2:17*
T0*
_output_shapes
:
d
save_2/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save_2/Identity_8*
dtype0
U
save_2/Identity_9Identitysave_2/RestoreV2:18*
_output_shapes
:*
T0
d
save_2/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save_2/Identity_9*
dtype0
V
save_2/Identity_10Identitysave_2/RestoreV2:19*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave_2/Identity_10*
dtype0
V
save_2/Identity_11Identitysave_2/RestoreV2:20*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave_2/Identity_11*
dtype0
V
save_2/Identity_12Identitysave_2/RestoreV2:21*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save_2/Identity_12*
dtype0
V
save_2/Identity_13Identitysave_2/RestoreV2:22*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save_2/Identity_13*
dtype0
V
save_2/Identity_14Identitysave_2/RestoreV2:23*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save_2/Identity_14*
dtype0
V
save_2/Identity_15Identitysave_2/RestoreV2:24*
T0*
_output_shapes
:
a
save_2/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave_2/Identity_15*
dtype0
V
save_2/Identity_16Identitysave_2/RestoreV2:25*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave_2/Identity_16*
dtype0
V
save_2/Identity_17Identitysave_2/RestoreV2:26*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save_2/Identity_17*
dtype0
V
save_2/Identity_18Identitysave_2/RestoreV2:27*
_output_shapes
:*
T0
h
save_2/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save_2/Identity_18*
dtype0
V
save_2/Identity_19Identitysave_2/RestoreV2:28*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save_2/Identity_19*
dtype0
V
save_2/Identity_20Identitysave_2/RestoreV2:29*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave_2/Identity_20*
dtype0
V
save_2/Identity_21Identitysave_2/RestoreV2:30*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave_2/Identity_21*
dtype0
V
save_2/Identity_22Identitysave_2/RestoreV2:31*
_output_shapes
:*
T0
j
save_2/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save_2/Identity_22*
dtype0
V
save_2/Identity_23Identitysave_2/RestoreV2:32*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save_2/Identity_23*
dtype0
V
save_2/Identity_24Identitysave_2/RestoreV2:33*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save_2/Identity_24*
dtype0
V
save_2/Identity_25Identitysave_2/RestoreV2:34*
_output_shapes
:*
T0
^
save_2/AssignVariableOp_24AssignVariableOppi/dense/biassave_2/Identity_25*
dtype0
V
save_2/Identity_26Identitysave_2/RestoreV2:35*
_output_shapes
:*
T0
c
save_2/AssignVariableOp_25AssignVariableOppi/dense/bias/Adamsave_2/Identity_26*
dtype0
V
save_2/Identity_27Identitysave_2/RestoreV2:36*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_26AssignVariableOppi/dense/bias/Adam_1save_2/Identity_27*
dtype0
V
save_2/Identity_28Identitysave_2/RestoreV2:37*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_27AssignVariableOppi/dense/bias/Adam_2save_2/Identity_28*
dtype0
V
save_2/Identity_29Identitysave_2/RestoreV2:38*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_28AssignVariableOppi/dense/bias/Adam_3save_2/Identity_29*
dtype0
V
save_2/Identity_30Identitysave_2/RestoreV2:39*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_29AssignVariableOppi/dense/kernelsave_2/Identity_30*
dtype0
V
save_2/Identity_31Identitysave_2/RestoreV2:40*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_30AssignVariableOppi/dense/kernel/Adamsave_2/Identity_31*
dtype0
V
save_2/Identity_32Identitysave_2/RestoreV2:41*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_31AssignVariableOppi/dense/kernel/Adam_1save_2/Identity_32*
dtype0
V
save_2/Identity_33Identitysave_2/RestoreV2:42*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_32AssignVariableOppi/dense/kernel/Adam_2save_2/Identity_33*
dtype0
V
save_2/Identity_34Identitysave_2/RestoreV2:43*
_output_shapes
:*
T0
g
save_2/AssignVariableOp_33AssignVariableOppi/dense/kernel/Adam_3save_2/Identity_34*
dtype0
V
save_2/Identity_35Identitysave_2/RestoreV2:44*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_34AssignVariableOppi/dense_1/biassave_2/Identity_35*
dtype0
V
save_2/Identity_36Identitysave_2/RestoreV2:45*
_output_shapes
:*
T0
e
save_2/AssignVariableOp_35AssignVariableOppi/dense_1/bias/Adamsave_2/Identity_36*
dtype0
V
save_2/Identity_37Identitysave_2/RestoreV2:46*
_output_shapes
:*
T0
g
save_2/AssignVariableOp_36AssignVariableOppi/dense_1/bias/Adam_1save_2/Identity_37*
dtype0
V
save_2/Identity_38Identitysave_2/RestoreV2:47*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_37AssignVariableOppi/dense_1/bias/Adam_2save_2/Identity_38*
dtype0
V
save_2/Identity_39Identitysave_2/RestoreV2:48*
_output_shapes
:*
T0
g
save_2/AssignVariableOp_38AssignVariableOppi/dense_1/bias/Adam_3save_2/Identity_39*
dtype0
V
save_2/Identity_40Identitysave_2/RestoreV2:49*
_output_shapes
:*
T0
b
save_2/AssignVariableOp_39AssignVariableOppi/dense_1/kernelsave_2/Identity_40*
dtype0
V
save_2/Identity_41Identitysave_2/RestoreV2:50*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_40AssignVariableOppi/dense_1/kernel/Adamsave_2/Identity_41*
dtype0
V
save_2/Identity_42Identitysave_2/RestoreV2:51*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_41AssignVariableOppi/dense_1/kernel/Adam_1save_2/Identity_42*
dtype0
V
save_2/Identity_43Identitysave_2/RestoreV2:52*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_42AssignVariableOppi/dense_1/kernel/Adam_2save_2/Identity_43*
dtype0
V
save_2/Identity_44Identitysave_2/RestoreV2:53*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_43AssignVariableOppi/dense_1/kernel/Adam_3save_2/Identity_44*
dtype0
V
save_2/Identity_45Identitysave_2/RestoreV2:54*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_44AssignVariableOppi/dense_2/biassave_2/Identity_45*
dtype0
V
save_2/Identity_46Identitysave_2/RestoreV2:55*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_45AssignVariableOppi/dense_2/bias/Adamsave_2/Identity_46*
dtype0
V
save_2/Identity_47Identitysave_2/RestoreV2:56*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_46AssignVariableOppi/dense_2/bias/Adam_1save_2/Identity_47*
dtype0
V
save_2/Identity_48Identitysave_2/RestoreV2:57*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_47AssignVariableOppi/dense_2/bias/Adam_2save_2/Identity_48*
dtype0
V
save_2/Identity_49Identitysave_2/RestoreV2:58*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_48AssignVariableOppi/dense_2/bias/Adam_3save_2/Identity_49*
dtype0
V
save_2/Identity_50Identitysave_2/RestoreV2:59*
_output_shapes
:*
T0
b
save_2/AssignVariableOp_49AssignVariableOppi/dense_2/kernelsave_2/Identity_50*
dtype0
V
save_2/Identity_51Identitysave_2/RestoreV2:60*
_output_shapes
:*
T0
g
save_2/AssignVariableOp_50AssignVariableOppi/dense_2/kernel/Adamsave_2/Identity_51*
dtype0
V
save_2/Identity_52Identitysave_2/RestoreV2:61*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_51AssignVariableOppi/dense_2/kernel/Adam_1save_2/Identity_52*
dtype0
V
save_2/Identity_53Identitysave_2/RestoreV2:62*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_52AssignVariableOppi/dense_2/kernel/Adam_2save_2/Identity_53*
dtype0
V
save_2/Identity_54Identitysave_2/RestoreV2:63*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_53AssignVariableOppi/dense_2/kernel/Adam_3save_2/Identity_54*
dtype0
V
save_2/Identity_55Identitysave_2/RestoreV2:64*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_54AssignVariableOppi/dense_3/biassave_2/Identity_55*
dtype0
V
save_2/Identity_56Identitysave_2/RestoreV2:65*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_55AssignVariableOppi/dense_3/bias/Adamsave_2/Identity_56*
dtype0
V
save_2/Identity_57Identitysave_2/RestoreV2:66*
_output_shapes
:*
T0
g
save_2/AssignVariableOp_56AssignVariableOppi/dense_3/bias/Adam_1save_2/Identity_57*
dtype0
V
save_2/Identity_58Identitysave_2/RestoreV2:67*
T0*
_output_shapes
:
b
save_2/AssignVariableOp_57AssignVariableOppi/dense_3/kernelsave_2/Identity_58*
dtype0
V
save_2/Identity_59Identitysave_2/RestoreV2:68*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_58AssignVariableOppi/dense_3/kernel/Adamsave_2/Identity_59*
dtype0
V
save_2/Identity_60Identitysave_2/RestoreV2:69*
T0*
_output_shapes
:
i
save_2/AssignVariableOp_59AssignVariableOppi/dense_3/kernel/Adam_1save_2/Identity_60*
dtype0
V
save_2/Identity_61Identitysave_2/RestoreV2:70*
T0*
_output_shapes
:
`
save_2/AssignVariableOp_60AssignVariableOppi/dense_4/biassave_2/Identity_61*
dtype0
V
save_2/Identity_62Identitysave_2/RestoreV2:71*
T0*
_output_shapes
:
e
save_2/AssignVariableOp_61AssignVariableOppi/dense_4/bias/Adamsave_2/Identity_62*
dtype0
V
save_2/Identity_63Identitysave_2/RestoreV2:72*
T0*
_output_shapes
:
g
save_2/AssignVariableOp_62AssignVariableOppi/dense_4/bias/Adam_1save_2/Identity_63*
dtype0
V
save_2/Identity_64Identitysave_2/RestoreV2:73*
_output_shapes
:*
T0
b
save_2/AssignVariableOp_63AssignVariableOppi/dense_4/kernelsave_2/Identity_64*
dtype0
V
save_2/Identity_65Identitysave_2/RestoreV2:74*
_output_shapes
:*
T0
g
save_2/AssignVariableOp_64AssignVariableOppi/dense_4/kernel/Adamsave_2/Identity_65*
dtype0
V
save_2/Identity_66Identitysave_2/RestoreV2:75*
_output_shapes
:*
T0
i
save_2/AssignVariableOp_65AssignVariableOppi/dense_4/kernel/Adam_1save_2/Identity_66*
dtype0
V
save_2/Identity_67Identitysave_2/RestoreV2:76*
_output_shapes
:*
T0
_
save_2/AssignVariableOp_66AssignVariableOpv/dense_5/biassave_2/Identity_67*
dtype0
V
save_2/Identity_68Identitysave_2/RestoreV2:77*
_output_shapes
:*
T0
d
save_2/AssignVariableOp_67AssignVariableOpv/dense_5/bias/Adamsave_2/Identity_68*
dtype0
V
save_2/Identity_69Identitysave_2/RestoreV2:78*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_68AssignVariableOpv/dense_5/bias/Adam_1save_2/Identity_69*
dtype0
V
save_2/Identity_70Identitysave_2/RestoreV2:79*
T0*
_output_shapes
:
a
save_2/AssignVariableOp_69AssignVariableOpv/dense_5/kernelsave_2/Identity_70*
dtype0
V
save_2/Identity_71Identitysave_2/RestoreV2:80*
_output_shapes
:*
T0
f
save_2/AssignVariableOp_70AssignVariableOpv/dense_5/kernel/Adamsave_2/Identity_71*
dtype0
V
save_2/Identity_72Identitysave_2/RestoreV2:81*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_71AssignVariableOpv/dense_5/kernel/Adam_1save_2/Identity_72*
dtype0
V
save_2/Identity_73Identitysave_2/RestoreV2:82*
T0*
_output_shapes
:
_
save_2/AssignVariableOp_72AssignVariableOpv/dense_6/biassave_2/Identity_73*
dtype0
V
save_2/Identity_74Identitysave_2/RestoreV2:83*
T0*
_output_shapes
:
d
save_2/AssignVariableOp_73AssignVariableOpv/dense_6/bias/Adamsave_2/Identity_74*
dtype0
V
save_2/Identity_75Identitysave_2/RestoreV2:84*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_74AssignVariableOpv/dense_6/bias/Adam_1save_2/Identity_75*
dtype0
V
save_2/Identity_76Identitysave_2/RestoreV2:85*
_output_shapes
:*
T0
a
save_2/AssignVariableOp_75AssignVariableOpv/dense_6/kernelsave_2/Identity_76*
dtype0
V
save_2/Identity_77Identitysave_2/RestoreV2:86*
T0*
_output_shapes
:
f
save_2/AssignVariableOp_76AssignVariableOpv/dense_6/kernel/Adamsave_2/Identity_77*
dtype0
V
save_2/Identity_78Identitysave_2/RestoreV2:87*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_77AssignVariableOpv/dense_6/kernel/Adam_1save_2/Identity_78*
dtype0
�
save_2/restore_shardNoOp^save_2/Assign^save_2/AssignVariableOp^save_2/AssignVariableOp_1^save_2/AssignVariableOp_10^save_2/AssignVariableOp_11^save_2/AssignVariableOp_12^save_2/AssignVariableOp_13^save_2/AssignVariableOp_14^save_2/AssignVariableOp_15^save_2/AssignVariableOp_16^save_2/AssignVariableOp_17^save_2/AssignVariableOp_18^save_2/AssignVariableOp_19^save_2/AssignVariableOp_2^save_2/AssignVariableOp_20^save_2/AssignVariableOp_21^save_2/AssignVariableOp_22^save_2/AssignVariableOp_23^save_2/AssignVariableOp_24^save_2/AssignVariableOp_25^save_2/AssignVariableOp_26^save_2/AssignVariableOp_27^save_2/AssignVariableOp_28^save_2/AssignVariableOp_29^save_2/AssignVariableOp_3^save_2/AssignVariableOp_30^save_2/AssignVariableOp_31^save_2/AssignVariableOp_32^save_2/AssignVariableOp_33^save_2/AssignVariableOp_34^save_2/AssignVariableOp_35^save_2/AssignVariableOp_36^save_2/AssignVariableOp_37^save_2/AssignVariableOp_38^save_2/AssignVariableOp_39^save_2/AssignVariableOp_4^save_2/AssignVariableOp_40^save_2/AssignVariableOp_41^save_2/AssignVariableOp_42^save_2/AssignVariableOp_43^save_2/AssignVariableOp_44^save_2/AssignVariableOp_45^save_2/AssignVariableOp_46^save_2/AssignVariableOp_47^save_2/AssignVariableOp_48^save_2/AssignVariableOp_49^save_2/AssignVariableOp_5^save_2/AssignVariableOp_50^save_2/AssignVariableOp_51^save_2/AssignVariableOp_52^save_2/AssignVariableOp_53^save_2/AssignVariableOp_54^save_2/AssignVariableOp_55^save_2/AssignVariableOp_56^save_2/AssignVariableOp_57^save_2/AssignVariableOp_58^save_2/AssignVariableOp_59^save_2/AssignVariableOp_6^save_2/AssignVariableOp_60^save_2/AssignVariableOp_61^save_2/AssignVariableOp_62^save_2/AssignVariableOp_63^save_2/AssignVariableOp_64^save_2/AssignVariableOp_65^save_2/AssignVariableOp_66^save_2/AssignVariableOp_67^save_2/AssignVariableOp_68^save_2/AssignVariableOp_69^save_2/AssignVariableOp_7^save_2/AssignVariableOp_70^save_2/AssignVariableOp_71^save_2/AssignVariableOp_72^save_2/AssignVariableOp_73^save_2/AssignVariableOp_74^save_2/AssignVariableOp_75^save_2/AssignVariableOp_76^save_2/AssignVariableOp_77^save_2/AssignVariableOp_8^save_2/AssignVariableOp_9^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
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
�
save_3/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_37f7b0a105474e4fa288d86b598d0427/part
{
save_3/StringJoin
StringJoinsave_3/Constsave_3/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_3/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
�
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:X*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1
�
save_3/SaveV2/shape_and_slicesConst*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:X
�
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesbeta1_power/Read/ReadVariableOp!beta1_power_1/Read/ReadVariableOpbeta2_power/Read/ReadVariableOp!beta2_power_1/Read/ReadVariableOppi/Variablepi/Variable_1pi/Variable_2pi/Variable_3pi/Variable_4pi/Variable_5pi/Variable_6pi/Variable_7pi/Variable_8pi/Variable_9"pi/conv2d/bias/Read/ReadVariableOp'pi/conv2d/bias/Adam/Read/ReadVariableOp)pi/conv2d/bias/Adam_1/Read/ReadVariableOp)pi/conv2d/bias/Adam_2/Read/ReadVariableOp)pi/conv2d/bias/Adam_3/Read/ReadVariableOp$pi/conv2d/kernel/Read/ReadVariableOp)pi/conv2d/kernel/Adam/Read/ReadVariableOp+pi/conv2d/kernel/Adam_1/Read/ReadVariableOp+pi/conv2d/kernel/Adam_2/Read/ReadVariableOp+pi/conv2d/kernel/Adam_3/Read/ReadVariableOp$pi/conv2d_1/bias/Read/ReadVariableOp)pi/conv2d_1/bias/Adam/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp+pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp&pi/conv2d_1/kernel/Read/ReadVariableOp+pi/conv2d_1/kernel/Adam/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp-pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp!pi/dense/bias/Read/ReadVariableOp&pi/dense/bias/Adam/Read/ReadVariableOp(pi/dense/bias/Adam_1/Read/ReadVariableOp(pi/dense/bias/Adam_2/Read/ReadVariableOp(pi/dense/bias/Adam_3/Read/ReadVariableOp#pi/dense/kernel/Read/ReadVariableOp(pi/dense/kernel/Adam/Read/ReadVariableOp*pi/dense/kernel/Adam_1/Read/ReadVariableOp*pi/dense/kernel/Adam_2/Read/ReadVariableOp*pi/dense/kernel/Adam_3/Read/ReadVariableOp#pi/dense_1/bias/Read/ReadVariableOp(pi/dense_1/bias/Adam/Read/ReadVariableOp*pi/dense_1/bias/Adam_1/Read/ReadVariableOp*pi/dense_1/bias/Adam_2/Read/ReadVariableOp*pi/dense_1/bias/Adam_3/Read/ReadVariableOp%pi/dense_1/kernel/Read/ReadVariableOp*pi/dense_1/kernel/Adam/Read/ReadVariableOp,pi/dense_1/kernel/Adam_1/Read/ReadVariableOp,pi/dense_1/kernel/Adam_2/Read/ReadVariableOp,pi/dense_1/kernel/Adam_3/Read/ReadVariableOp#pi/dense_2/bias/Read/ReadVariableOp(pi/dense_2/bias/Adam/Read/ReadVariableOp*pi/dense_2/bias/Adam_1/Read/ReadVariableOp*pi/dense_2/bias/Adam_2/Read/ReadVariableOp*pi/dense_2/bias/Adam_3/Read/ReadVariableOp%pi/dense_2/kernel/Read/ReadVariableOp*pi/dense_2/kernel/Adam/Read/ReadVariableOp,pi/dense_2/kernel/Adam_1/Read/ReadVariableOp,pi/dense_2/kernel/Adam_2/Read/ReadVariableOp,pi/dense_2/kernel/Adam_3/Read/ReadVariableOp#pi/dense_3/bias/Read/ReadVariableOp(pi/dense_3/bias/Adam/Read/ReadVariableOp*pi/dense_3/bias/Adam_1/Read/ReadVariableOp%pi/dense_3/kernel/Read/ReadVariableOp*pi/dense_3/kernel/Adam/Read/ReadVariableOp,pi/dense_3/kernel/Adam_1/Read/ReadVariableOp#pi/dense_4/bias/Read/ReadVariableOp(pi/dense_4/bias/Adam/Read/ReadVariableOp*pi/dense_4/bias/Adam_1/Read/ReadVariableOp%pi/dense_4/kernel/Read/ReadVariableOp*pi/dense_4/kernel/Adam/Read/ReadVariableOp,pi/dense_4/kernel/Adam_1/Read/ReadVariableOp"v/dense_5/bias/Read/ReadVariableOp'v/dense_5/bias/Adam/Read/ReadVariableOp)v/dense_5/bias/Adam_1/Read/ReadVariableOp$v/dense_5/kernel/Read/ReadVariableOp)v/dense_5/kernel/Adam/Read/ReadVariableOp+v/dense_5/kernel/Adam_1/Read/ReadVariableOp"v/dense_6/bias/Read/ReadVariableOp'v/dense_6/bias/Adam/Read/ReadVariableOp)v/dense_6/bias/Adam_1/Read/ReadVariableOp$v/dense_6/kernel/Read/ReadVariableOp)v/dense_6/kernel/Adam/Read/ReadVariableOp+v/dense_6/kernel/Adam_1/Read/ReadVariableOp*f
dtypes\
Z2X
�
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
�
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency*
T0*

axis *
N*
_output_shapes
:
�
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const*
delete_old_dirs(
�
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency*
T0*
_output_shapes
: 
�
save_3/RestoreV2/tensor_namesConst*�
value�B�XBbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/VariableBpi/Variable_1Bpi/Variable_2Bpi/Variable_3Bpi/Variable_4Bpi/Variable_5Bpi/Variable_6Bpi/Variable_7Bpi/Variable_8Bpi/Variable_9Bpi/conv2d/biasBpi/conv2d/bias/AdamBpi/conv2d/bias/Adam_1Bpi/conv2d/bias/Adam_2Bpi/conv2d/bias/Adam_3Bpi/conv2d/kernelBpi/conv2d/kernel/AdamBpi/conv2d/kernel/Adam_1Bpi/conv2d/kernel/Adam_2Bpi/conv2d/kernel/Adam_3Bpi/conv2d_1/biasBpi/conv2d_1/bias/AdamBpi/conv2d_1/bias/Adam_1Bpi/conv2d_1/bias/Adam_2Bpi/conv2d_1/bias/Adam_3Bpi/conv2d_1/kernelBpi/conv2d_1/kernel/AdamBpi/conv2d_1/kernel/Adam_1Bpi/conv2d_1/kernel/Adam_2Bpi/conv2d_1/kernel/Adam_3Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/bias/Adam_2Bpi/dense/bias/Adam_3Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense/kernel/Adam_2Bpi/dense/kernel/Adam_3Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/bias/Adam_2Bpi/dense_1/bias/Adam_3Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_1/kernel/Adam_2Bpi/dense_1/kernel/Adam_3Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/bias/Adam_2Bpi/dense_2/bias/Adam_3Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bpi/dense_2/kernel/Adam_2Bpi/dense_2/kernel/Adam_3Bpi/dense_3/biasBpi/dense_3/bias/AdamBpi/dense_3/bias/Adam_1Bpi/dense_3/kernelBpi/dense_3/kernel/AdamBpi/dense_3/kernel/Adam_1Bpi/dense_4/biasBpi/dense_4/bias/AdamBpi/dense_4/bias/Adam_1Bpi/dense_4/kernelBpi/dense_4/kernel/AdamBpi/dense_4/kernel/Adam_1Bv/dense_5/biasBv/dense_5/bias/AdamBv/dense_5/bias/Adam_1Bv/dense_5/kernelBv/dense_5/kernel/AdamBv/dense_5/kernel/Adam_1Bv/dense_6/biasBv/dense_6/bias/AdamBv/dense_6/bias/Adam_1Bv/dense_6/kernelBv/dense_6/kernel/AdamBv/dense_6/kernel/Adam_1*
dtype0*
_output_shapes
:X
�
!save_3/RestoreV2/shape_and_slicesConst*�
value�B�XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:X
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*f
dtypes\
Z2X*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
R
save_3/Identity_1Identitysave_3/RestoreV2*
T0*
_output_shapes
:
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
save_3/Identity_4Identitysave_3/RestoreV2:3*
_output_shapes
:*
T0
\
save_3/AssignVariableOp_3AssignVariableOpbeta2_power_1save_3/Identity_4*
dtype0
�
save_3/AssignAssignpi/Variablesave_3/RestoreV2:4*
use_locking(*
T0*
_class
loc:@pi/Variable*
validate_shape(*
_output_shapes
:
�
save_3/Assign_1Assignpi/Variable_1save_3/RestoreV2:5*
T0* 
_class
loc:@pi/Variable_1*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_3/Assign_2Assignpi/Variable_2save_3/RestoreV2:6*
T0* 
_class
loc:@pi/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_3/Assign_3Assignpi/Variable_3save_3/RestoreV2:7*
T0* 
_class
loc:@pi/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(
�
save_3/Assign_4Assignpi/Variable_4save_3/RestoreV2:8*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_4
�
save_3/Assign_5Assignpi/Variable_5save_3/RestoreV2:9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_5
�
save_3/Assign_6Assignpi/Variable_6save_3/RestoreV2:10*
use_locking(*
T0* 
_class
loc:@pi/Variable_6*
validate_shape(*
_output_shapes
:
�
save_3/Assign_7Assignpi/Variable_7save_3/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_7
�
save_3/Assign_8Assignpi/Variable_8save_3/RestoreV2:12*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@pi/Variable_8
�
save_3/Assign_9Assignpi/Variable_9save_3/RestoreV2:13*
use_locking(*
T0* 
_class
loc:@pi/Variable_9*
validate_shape(*
_output_shapes
:
U
save_3/Identity_5Identitysave_3/RestoreV2:14*
T0*
_output_shapes
:
]
save_3/AssignVariableOp_4AssignVariableOppi/conv2d/biassave_3/Identity_5*
dtype0
U
save_3/Identity_6Identitysave_3/RestoreV2:15*
_output_shapes
:*
T0
b
save_3/AssignVariableOp_5AssignVariableOppi/conv2d/bias/Adamsave_3/Identity_6*
dtype0
U
save_3/Identity_7Identitysave_3/RestoreV2:16*
T0*
_output_shapes
:
d
save_3/AssignVariableOp_6AssignVariableOppi/conv2d/bias/Adam_1save_3/Identity_7*
dtype0
U
save_3/Identity_8Identitysave_3/RestoreV2:17*
_output_shapes
:*
T0
d
save_3/AssignVariableOp_7AssignVariableOppi/conv2d/bias/Adam_2save_3/Identity_8*
dtype0
U
save_3/Identity_9Identitysave_3/RestoreV2:18*
T0*
_output_shapes
:
d
save_3/AssignVariableOp_8AssignVariableOppi/conv2d/bias/Adam_3save_3/Identity_9*
dtype0
V
save_3/Identity_10Identitysave_3/RestoreV2:19*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_9AssignVariableOppi/conv2d/kernelsave_3/Identity_10*
dtype0
V
save_3/Identity_11Identitysave_3/RestoreV2:20*
_output_shapes
:*
T0
f
save_3/AssignVariableOp_10AssignVariableOppi/conv2d/kernel/Adamsave_3/Identity_11*
dtype0
V
save_3/Identity_12Identitysave_3/RestoreV2:21*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_11AssignVariableOppi/conv2d/kernel/Adam_1save_3/Identity_12*
dtype0
V
save_3/Identity_13Identitysave_3/RestoreV2:22*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_12AssignVariableOppi/conv2d/kernel/Adam_2save_3/Identity_13*
dtype0
V
save_3/Identity_14Identitysave_3/RestoreV2:23*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_13AssignVariableOppi/conv2d/kernel/Adam_3save_3/Identity_14*
dtype0
V
save_3/Identity_15Identitysave_3/RestoreV2:24*
T0*
_output_shapes
:
a
save_3/AssignVariableOp_14AssignVariableOppi/conv2d_1/biassave_3/Identity_15*
dtype0
V
save_3/Identity_16Identitysave_3/RestoreV2:25*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_15AssignVariableOppi/conv2d_1/bias/Adamsave_3/Identity_16*
dtype0
V
save_3/Identity_17Identitysave_3/RestoreV2:26*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_16AssignVariableOppi/conv2d_1/bias/Adam_1save_3/Identity_17*
dtype0
V
save_3/Identity_18Identitysave_3/RestoreV2:27*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_17AssignVariableOppi/conv2d_1/bias/Adam_2save_3/Identity_18*
dtype0
V
save_3/Identity_19Identitysave_3/RestoreV2:28*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_18AssignVariableOppi/conv2d_1/bias/Adam_3save_3/Identity_19*
dtype0
V
save_3/Identity_20Identitysave_3/RestoreV2:29*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_19AssignVariableOppi/conv2d_1/kernelsave_3/Identity_20*
dtype0
V
save_3/Identity_21Identitysave_3/RestoreV2:30*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_20AssignVariableOppi/conv2d_1/kernel/Adamsave_3/Identity_21*
dtype0
V
save_3/Identity_22Identitysave_3/RestoreV2:31*
_output_shapes
:*
T0
j
save_3/AssignVariableOp_21AssignVariableOppi/conv2d_1/kernel/Adam_1save_3/Identity_22*
dtype0
V
save_3/Identity_23Identitysave_3/RestoreV2:32*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_22AssignVariableOppi/conv2d_1/kernel/Adam_2save_3/Identity_23*
dtype0
V
save_3/Identity_24Identitysave_3/RestoreV2:33*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_23AssignVariableOppi/conv2d_1/kernel/Adam_3save_3/Identity_24*
dtype0
V
save_3/Identity_25Identitysave_3/RestoreV2:34*
_output_shapes
:*
T0
^
save_3/AssignVariableOp_24AssignVariableOppi/dense/biassave_3/Identity_25*
dtype0
V
save_3/Identity_26Identitysave_3/RestoreV2:35*
T0*
_output_shapes
:
c
save_3/AssignVariableOp_25AssignVariableOppi/dense/bias/Adamsave_3/Identity_26*
dtype0
V
save_3/Identity_27Identitysave_3/RestoreV2:36*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_26AssignVariableOppi/dense/bias/Adam_1save_3/Identity_27*
dtype0
V
save_3/Identity_28Identitysave_3/RestoreV2:37*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_27AssignVariableOppi/dense/bias/Adam_2save_3/Identity_28*
dtype0
V
save_3/Identity_29Identitysave_3/RestoreV2:38*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_28AssignVariableOppi/dense/bias/Adam_3save_3/Identity_29*
dtype0
V
save_3/Identity_30Identitysave_3/RestoreV2:39*
_output_shapes
:*
T0
`
save_3/AssignVariableOp_29AssignVariableOppi/dense/kernelsave_3/Identity_30*
dtype0
V
save_3/Identity_31Identitysave_3/RestoreV2:40*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_30AssignVariableOppi/dense/kernel/Adamsave_3/Identity_31*
dtype0
V
save_3/Identity_32Identitysave_3/RestoreV2:41*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_31AssignVariableOppi/dense/kernel/Adam_1save_3/Identity_32*
dtype0
V
save_3/Identity_33Identitysave_3/RestoreV2:42*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_32AssignVariableOppi/dense/kernel/Adam_2save_3/Identity_33*
dtype0
V
save_3/Identity_34Identitysave_3/RestoreV2:43*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_33AssignVariableOppi/dense/kernel/Adam_3save_3/Identity_34*
dtype0
V
save_3/Identity_35Identitysave_3/RestoreV2:44*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_34AssignVariableOppi/dense_1/biassave_3/Identity_35*
dtype0
V
save_3/Identity_36Identitysave_3/RestoreV2:45*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_35AssignVariableOppi/dense_1/bias/Adamsave_3/Identity_36*
dtype0
V
save_3/Identity_37Identitysave_3/RestoreV2:46*
_output_shapes
:*
T0
g
save_3/AssignVariableOp_36AssignVariableOppi/dense_1/bias/Adam_1save_3/Identity_37*
dtype0
V
save_3/Identity_38Identitysave_3/RestoreV2:47*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_37AssignVariableOppi/dense_1/bias/Adam_2save_3/Identity_38*
dtype0
V
save_3/Identity_39Identitysave_3/RestoreV2:48*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_38AssignVariableOppi/dense_1/bias/Adam_3save_3/Identity_39*
dtype0
V
save_3/Identity_40Identitysave_3/RestoreV2:49*
T0*
_output_shapes
:
b
save_3/AssignVariableOp_39AssignVariableOppi/dense_1/kernelsave_3/Identity_40*
dtype0
V
save_3/Identity_41Identitysave_3/RestoreV2:50*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_40AssignVariableOppi/dense_1/kernel/Adamsave_3/Identity_41*
dtype0
V
save_3/Identity_42Identitysave_3/RestoreV2:51*
_output_shapes
:*
T0
i
save_3/AssignVariableOp_41AssignVariableOppi/dense_1/kernel/Adam_1save_3/Identity_42*
dtype0
V
save_3/Identity_43Identitysave_3/RestoreV2:52*
T0*
_output_shapes
:
i
save_3/AssignVariableOp_42AssignVariableOppi/dense_1/kernel/Adam_2save_3/Identity_43*
dtype0
V
save_3/Identity_44Identitysave_3/RestoreV2:53*
T0*
_output_shapes
:
i
save_3/AssignVariableOp_43AssignVariableOppi/dense_1/kernel/Adam_3save_3/Identity_44*
dtype0
V
save_3/Identity_45Identitysave_3/RestoreV2:54*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_44AssignVariableOppi/dense_2/biassave_3/Identity_45*
dtype0
V
save_3/Identity_46Identitysave_3/RestoreV2:55*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_45AssignVariableOppi/dense_2/bias/Adamsave_3/Identity_46*
dtype0
V
save_3/Identity_47Identitysave_3/RestoreV2:56*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_46AssignVariableOppi/dense_2/bias/Adam_1save_3/Identity_47*
dtype0
V
save_3/Identity_48Identitysave_3/RestoreV2:57*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_47AssignVariableOppi/dense_2/bias/Adam_2save_3/Identity_48*
dtype0
V
save_3/Identity_49Identitysave_3/RestoreV2:58*
_output_shapes
:*
T0
g
save_3/AssignVariableOp_48AssignVariableOppi/dense_2/bias/Adam_3save_3/Identity_49*
dtype0
V
save_3/Identity_50Identitysave_3/RestoreV2:59*
T0*
_output_shapes
:
b
save_3/AssignVariableOp_49AssignVariableOppi/dense_2/kernelsave_3/Identity_50*
dtype0
V
save_3/Identity_51Identitysave_3/RestoreV2:60*
_output_shapes
:*
T0
g
save_3/AssignVariableOp_50AssignVariableOppi/dense_2/kernel/Adamsave_3/Identity_51*
dtype0
V
save_3/Identity_52Identitysave_3/RestoreV2:61*
T0*
_output_shapes
:
i
save_3/AssignVariableOp_51AssignVariableOppi/dense_2/kernel/Adam_1save_3/Identity_52*
dtype0
V
save_3/Identity_53Identitysave_3/RestoreV2:62*
_output_shapes
:*
T0
i
save_3/AssignVariableOp_52AssignVariableOppi/dense_2/kernel/Adam_2save_3/Identity_53*
dtype0
V
save_3/Identity_54Identitysave_3/RestoreV2:63*
T0*
_output_shapes
:
i
save_3/AssignVariableOp_53AssignVariableOppi/dense_2/kernel/Adam_3save_3/Identity_54*
dtype0
V
save_3/Identity_55Identitysave_3/RestoreV2:64*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_54AssignVariableOppi/dense_3/biassave_3/Identity_55*
dtype0
V
save_3/Identity_56Identitysave_3/RestoreV2:65*
_output_shapes
:*
T0
e
save_3/AssignVariableOp_55AssignVariableOppi/dense_3/bias/Adamsave_3/Identity_56*
dtype0
V
save_3/Identity_57Identitysave_3/RestoreV2:66*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_56AssignVariableOppi/dense_3/bias/Adam_1save_3/Identity_57*
dtype0
V
save_3/Identity_58Identitysave_3/RestoreV2:67*
_output_shapes
:*
T0
b
save_3/AssignVariableOp_57AssignVariableOppi/dense_3/kernelsave_3/Identity_58*
dtype0
V
save_3/Identity_59Identitysave_3/RestoreV2:68*
_output_shapes
:*
T0
g
save_3/AssignVariableOp_58AssignVariableOppi/dense_3/kernel/Adamsave_3/Identity_59*
dtype0
V
save_3/Identity_60Identitysave_3/RestoreV2:69*
T0*
_output_shapes
:
i
save_3/AssignVariableOp_59AssignVariableOppi/dense_3/kernel/Adam_1save_3/Identity_60*
dtype0
V
save_3/Identity_61Identitysave_3/RestoreV2:70*
T0*
_output_shapes
:
`
save_3/AssignVariableOp_60AssignVariableOppi/dense_4/biassave_3/Identity_61*
dtype0
V
save_3/Identity_62Identitysave_3/RestoreV2:71*
T0*
_output_shapes
:
e
save_3/AssignVariableOp_61AssignVariableOppi/dense_4/bias/Adamsave_3/Identity_62*
dtype0
V
save_3/Identity_63Identitysave_3/RestoreV2:72*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_62AssignVariableOppi/dense_4/bias/Adam_1save_3/Identity_63*
dtype0
V
save_3/Identity_64Identitysave_3/RestoreV2:73*
T0*
_output_shapes
:
b
save_3/AssignVariableOp_63AssignVariableOppi/dense_4/kernelsave_3/Identity_64*
dtype0
V
save_3/Identity_65Identitysave_3/RestoreV2:74*
T0*
_output_shapes
:
g
save_3/AssignVariableOp_64AssignVariableOppi/dense_4/kernel/Adamsave_3/Identity_65*
dtype0
V
save_3/Identity_66Identitysave_3/RestoreV2:75*
_output_shapes
:*
T0
i
save_3/AssignVariableOp_65AssignVariableOppi/dense_4/kernel/Adam_1save_3/Identity_66*
dtype0
V
save_3/Identity_67Identitysave_3/RestoreV2:76*
T0*
_output_shapes
:
_
save_3/AssignVariableOp_66AssignVariableOpv/dense_5/biassave_3/Identity_67*
dtype0
V
save_3/Identity_68Identitysave_3/RestoreV2:77*
T0*
_output_shapes
:
d
save_3/AssignVariableOp_67AssignVariableOpv/dense_5/bias/Adamsave_3/Identity_68*
dtype0
V
save_3/Identity_69Identitysave_3/RestoreV2:78*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_68AssignVariableOpv/dense_5/bias/Adam_1save_3/Identity_69*
dtype0
V
save_3/Identity_70Identitysave_3/RestoreV2:79*
T0*
_output_shapes
:
a
save_3/AssignVariableOp_69AssignVariableOpv/dense_5/kernelsave_3/Identity_70*
dtype0
V
save_3/Identity_71Identitysave_3/RestoreV2:80*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_70AssignVariableOpv/dense_5/kernel/Adamsave_3/Identity_71*
dtype0
V
save_3/Identity_72Identitysave_3/RestoreV2:81*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_71AssignVariableOpv/dense_5/kernel/Adam_1save_3/Identity_72*
dtype0
V
save_3/Identity_73Identitysave_3/RestoreV2:82*
_output_shapes
:*
T0
_
save_3/AssignVariableOp_72AssignVariableOpv/dense_6/biassave_3/Identity_73*
dtype0
V
save_3/Identity_74Identitysave_3/RestoreV2:83*
T0*
_output_shapes
:
d
save_3/AssignVariableOp_73AssignVariableOpv/dense_6/bias/Adamsave_3/Identity_74*
dtype0
V
save_3/Identity_75Identitysave_3/RestoreV2:84*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_74AssignVariableOpv/dense_6/bias/Adam_1save_3/Identity_75*
dtype0
V
save_3/Identity_76Identitysave_3/RestoreV2:85*
_output_shapes
:*
T0
a
save_3/AssignVariableOp_75AssignVariableOpv/dense_6/kernelsave_3/Identity_76*
dtype0
V
save_3/Identity_77Identitysave_3/RestoreV2:86*
T0*
_output_shapes
:
f
save_3/AssignVariableOp_76AssignVariableOpv/dense_6/kernel/Adamsave_3/Identity_77*
dtype0
V
save_3/Identity_78Identitysave_3/RestoreV2:87*
_output_shapes
:*
T0
h
save_3/AssignVariableOp_77AssignVariableOpv/dense_6/kernel/Adam_1save_3/Identity_78*
dtype0
�
save_3/restore_shardNoOp^save_3/Assign^save_3/AssignVariableOp^save_3/AssignVariableOp_1^save_3/AssignVariableOp_10^save_3/AssignVariableOp_11^save_3/AssignVariableOp_12^save_3/AssignVariableOp_13^save_3/AssignVariableOp_14^save_3/AssignVariableOp_15^save_3/AssignVariableOp_16^save_3/AssignVariableOp_17^save_3/AssignVariableOp_18^save_3/AssignVariableOp_19^save_3/AssignVariableOp_2^save_3/AssignVariableOp_20^save_3/AssignVariableOp_21^save_3/AssignVariableOp_22^save_3/AssignVariableOp_23^save_3/AssignVariableOp_24^save_3/AssignVariableOp_25^save_3/AssignVariableOp_26^save_3/AssignVariableOp_27^save_3/AssignVariableOp_28^save_3/AssignVariableOp_29^save_3/AssignVariableOp_3^save_3/AssignVariableOp_30^save_3/AssignVariableOp_31^save_3/AssignVariableOp_32^save_3/AssignVariableOp_33^save_3/AssignVariableOp_34^save_3/AssignVariableOp_35^save_3/AssignVariableOp_36^save_3/AssignVariableOp_37^save_3/AssignVariableOp_38^save_3/AssignVariableOp_39^save_3/AssignVariableOp_4^save_3/AssignVariableOp_40^save_3/AssignVariableOp_41^save_3/AssignVariableOp_42^save_3/AssignVariableOp_43^save_3/AssignVariableOp_44^save_3/AssignVariableOp_45^save_3/AssignVariableOp_46^save_3/AssignVariableOp_47^save_3/AssignVariableOp_48^save_3/AssignVariableOp_49^save_3/AssignVariableOp_5^save_3/AssignVariableOp_50^save_3/AssignVariableOp_51^save_3/AssignVariableOp_52^save_3/AssignVariableOp_53^save_3/AssignVariableOp_54^save_3/AssignVariableOp_55^save_3/AssignVariableOp_56^save_3/AssignVariableOp_57^save_3/AssignVariableOp_58^save_3/AssignVariableOp_59^save_3/AssignVariableOp_6^save_3/AssignVariableOp_60^save_3/AssignVariableOp_61^save_3/AssignVariableOp_62^save_3/AssignVariableOp_63^save_3/AssignVariableOp_64^save_3/AssignVariableOp_65^save_3/AssignVariableOp_66^save_3/AssignVariableOp_67^save_3/AssignVariableOp_68^save_3/AssignVariableOp_69^save_3/AssignVariableOp_7^save_3/AssignVariableOp_70^save_3/AssignVariableOp_71^save_3/AssignVariableOp_72^save_3/AssignVariableOp_73^save_3/AssignVariableOp_74^save_3/AssignVariableOp_75^save_3/AssignVariableOp_76^save_3/AssignVariableOp_77^save_3/AssignVariableOp_8^save_3/AssignVariableOp_9^save_3/Assign_1^save_3/Assign_2^save_3/Assign_3^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
1
save_3/restore_allNoOp^save_3/restore_shard "B
save_3/Const:0save_3/Identity:0save_3/restore_all (5 @F8"
train_op

Adam
Adam_1"�^
	variables�^�^
�
pi/conv2d/kernel:0pi/conv2d/kernel/Assign&pi/conv2d/kernel/Read/ReadVariableOp:0(2-pi/conv2d/kernel/Initializer/random_uniform:08
w
pi/conv2d/bias:0pi/conv2d/bias/Assign$pi/conv2d/bias/Read/ReadVariableOp:0(2"pi/conv2d/bias/Initializer/zeros:08
�
pi/conv2d_1/kernel:0pi/conv2d_1/kernel/Assign(pi/conv2d_1/kernel/Read/ReadVariableOp:0(2/pi/conv2d_1/kernel/Initializer/random_uniform:08

pi/conv2d_1/bias:0pi/conv2d_1/bias/Assign&pi/conv2d_1/bias/Read/ReadVariableOp:0(2$pi/conv2d_1/bias/Initializer/zeros:08
�
pi/dense/kernel:0pi/dense/kernel/Assign%pi/dense/kernel/Read/ReadVariableOp:0(2,pi/dense/kernel/Initializer/random_uniform:08
s
pi/dense/bias:0pi/dense/bias/Assign#pi/dense/bias/Read/ReadVariableOp:0(2!pi/dense/bias/Initializer/zeros:08
�
pi/dense_1/kernel:0pi/dense_1/kernel/Assign'pi/dense_1/kernel/Read/ReadVariableOp:0(2.pi/dense_1/kernel/Initializer/random_uniform:08
{
pi/dense_1/bias:0pi/dense_1/bias/Assign%pi/dense_1/bias/Read/ReadVariableOp:0(2#pi/dense_1/bias/Initializer/zeros:08
�
pi/dense_2/kernel:0pi/dense_2/kernel/Assign'pi/dense_2/kernel/Read/ReadVariableOp:0(2.pi/dense_2/kernel/Initializer/random_uniform:08
{
pi/dense_2/bias:0pi/dense_2/bias/Assign%pi/dense_2/bias/Read/ReadVariableOp:0(2#pi/dense_2/bias/Initializer/zeros:08
C
pi/Variable:0pi/Variable/Assignpi/Variable/read:02
pi/zeros:0
H
pi/Variable_1:0pi/Variable_1/Assignpi/Variable_1/read:02	pi/ones:0
K
pi/Variable_2:0pi/Variable_2/Assignpi/Variable_2/read:02pi/zeros_1:0
J
pi/Variable_3:0pi/Variable_3/Assignpi/Variable_3/read:02pi/ones_1:0
K
pi/Variable_4:0pi/Variable_4/Assignpi/Variable_4/read:02pi/zeros_2:0
J
pi/Variable_5:0pi/Variable_5/Assignpi/Variable_5/read:02pi/ones_2:0
K
pi/Variable_6:0pi/Variable_6/Assignpi/Variable_6/read:02pi/zeros_3:0
J
pi/Variable_7:0pi/Variable_7/Assignpi/Variable_7/read:02pi/ones_3:0
K
pi/Variable_8:0pi/Variable_8/Assignpi/Variable_8/read:02pi/zeros_4:0
J
pi/Variable_9:0pi/Variable_9/Assignpi/Variable_9/read:02pi/ones_4:0
�
pi/dense_3/kernel:0pi/dense_3/kernel/Assign'pi/dense_3/kernel/Read/ReadVariableOp:0(2.pi/dense_3/kernel/Initializer/random_uniform:08
{
pi/dense_3/bias:0pi/dense_3/bias/Assign%pi/dense_3/bias/Read/ReadVariableOp:0(2#pi/dense_3/bias/Initializer/zeros:08
�
pi/dense_4/kernel:0pi/dense_4/kernel/Assign'pi/dense_4/kernel/Read/ReadVariableOp:0(2.pi/dense_4/kernel/Initializer/random_uniform:08
{
pi/dense_4/bias:0pi/dense_4/bias/Assign%pi/dense_4/bias/Read/ReadVariableOp:0(2#pi/dense_4/bias/Initializer/zeros:08
�
v/dense_5/kernel:0v/dense_5/kernel/Assign&v/dense_5/kernel/Read/ReadVariableOp:0(2-v/dense_5/kernel/Initializer/random_uniform:08
w
v/dense_5/bias:0v/dense_5/bias/Assign$v/dense_5/bias/Read/ReadVariableOp:0(2"v/dense_5/bias/Initializer/zeros:08
�
v/dense_6/kernel:0v/dense_6/kernel/Assign&v/dense_6/kernel/Read/ReadVariableOp:0(2-v/dense_6/kernel/Initializer/random_uniform:08
w
v/dense_6/bias:0v/dense_6/bias/Assign$v/dense_6/bias/Read/ReadVariableOp:0(2"v/dense_6/bias/Initializer/zeros:08
q
beta1_power:0beta1_power/Assign!beta1_power/Read/ReadVariableOp:0(2'beta1_power/Initializer/initial_value:0
q
beta2_power:0beta2_power/Assign!beta2_power/Read/ReadVariableOp:0(2'beta2_power/Initializer/initial_value:0
�
pi/conv2d/kernel/Adam:0pi/conv2d/kernel/Adam/Assign+pi/conv2d/kernel/Adam/Read/ReadVariableOp:0(2)pi/conv2d/kernel/Adam/Initializer/zeros:0
�
pi/conv2d/kernel/Adam_1:0pi/conv2d/kernel/Adam_1/Assign-pi/conv2d/kernel/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d/kernel/Adam_1/Initializer/zeros:0
�
pi/conv2d/bias/Adam:0pi/conv2d/bias/Adam/Assign)pi/conv2d/bias/Adam/Read/ReadVariableOp:0(2'pi/conv2d/bias/Adam/Initializer/zeros:0
�
pi/conv2d/bias/Adam_1:0pi/conv2d/bias/Adam_1/Assign+pi/conv2d/bias/Adam_1/Read/ReadVariableOp:0(2)pi/conv2d/bias/Adam_1/Initializer/zeros:0
�
pi/conv2d_1/kernel/Adam:0pi/conv2d_1/kernel/Adam/Assign-pi/conv2d_1/kernel/Adam/Read/ReadVariableOp:0(2+pi/conv2d_1/kernel/Adam/Initializer/zeros:0
�
pi/conv2d_1/kernel/Adam_1:0 pi/conv2d_1/kernel/Adam_1/Assign/pi/conv2d_1/kernel/Adam_1/Read/ReadVariableOp:0(2-pi/conv2d_1/kernel/Adam_1/Initializer/zeros:0
�
pi/conv2d_1/bias/Adam:0pi/conv2d_1/bias/Adam/Assign+pi/conv2d_1/bias/Adam/Read/ReadVariableOp:0(2)pi/conv2d_1/bias/Adam/Initializer/zeros:0
�
pi/conv2d_1/bias/Adam_1:0pi/conv2d_1/bias/Adam_1/Assign-pi/conv2d_1/bias/Adam_1/Read/ReadVariableOp:0(2+pi/conv2d_1/bias/Adam_1/Initializer/zeros:0
�
pi/dense/kernel/Adam:0pi/dense/kernel/Adam/Assign*pi/dense/kernel/Adam/Read/ReadVariableOp:0(2(pi/dense/kernel/Adam/Initializer/zeros:0
�
pi/dense/kernel/Adam_1:0pi/dense/kernel/Adam_1/Assign,pi/dense/kernel/Adam_1/Read/ReadVariableOp:0(2*pi/dense/kernel/Adam_1/Initializer/zeros:0
�
pi/dense/bias/Adam:0pi/dense/bias/Adam/Assign(pi/dense/bias/Adam/Read/ReadVariableOp:0(2&pi/dense/bias/Adam/Initializer/zeros:0
�
pi/dense/bias/Adam_1:0pi/dense/bias/Adam_1/Assign*pi/dense/bias/Adam_1/Read/ReadVariableOp:0(2(pi/dense/bias/Adam_1/Initializer/zeros:0
�
pi/dense_1/kernel/Adam:0pi/dense_1/kernel/Adam/Assign,pi/dense_1/kernel/Adam/Read/ReadVariableOp:0(2*pi/dense_1/kernel/Adam/Initializer/zeros:0
�
pi/dense_1/kernel/Adam_1:0pi/dense_1/kernel/Adam_1/Assign.pi/dense_1/kernel/Adam_1/Read/ReadVariableOp:0(2,pi/dense_1/kernel/Adam_1/Initializer/zeros:0
�
pi/dense_1/bias/Adam:0pi/dense_1/bias/Adam/Assign*pi/dense_1/bias/Adam/Read/ReadVariableOp:0(2(pi/dense_1/bias/Adam/Initializer/zeros:0
�
pi/dense_1/bias/Adam_1:0pi/dense_1/bias/Adam_1/Assign,pi/dense_1/bias/Adam_1/Read/ReadVariableOp:0(2*pi/dense_1/bias/Adam_1/Initializer/zeros:0
�
pi/dense_2/kernel/Adam:0pi/dense_2/kernel/Adam/Assign,pi/dense_2/kernel/Adam/Read/ReadVariableOp:0(2*pi/dense_2/kernel/Adam/Initializer/zeros:0
�
pi/dense_2/kernel/Adam_1:0pi/dense_2/kernel/Adam_1/Assign.pi/dense_2/kernel/Adam_1/Read/ReadVariableOp:0(2,pi/dense_2/kernel/Adam_1/Initializer/zeros:0
�
pi/dense_2/bias/Adam:0pi/dense_2/bias/Adam/Assign*pi/dense_2/bias/Adam/Read/ReadVariableOp:0(2(pi/dense_2/bias/Adam/Initializer/zeros:0
�
pi/dense_2/bias/Adam_1:0pi/dense_2/bias/Adam_1/Assign,pi/dense_2/bias/Adam_1/Read/ReadVariableOp:0(2*pi/dense_2/bias/Adam_1/Initializer/zeros:0
�
pi/dense_3/kernel/Adam:0pi/dense_3/kernel/Adam/Assign,pi/dense_3/kernel/Adam/Read/ReadVariableOp:0(2*pi/dense_3/kernel/Adam/Initializer/zeros:0
�
pi/dense_3/kernel/Adam_1:0pi/dense_3/kernel/Adam_1/Assign.pi/dense_3/kernel/Adam_1/Read/ReadVariableOp:0(2,pi/dense_3/kernel/Adam_1/Initializer/zeros:0
�
pi/dense_3/bias/Adam:0pi/dense_3/bias/Adam/Assign*pi/dense_3/bias/Adam/Read/ReadVariableOp:0(2(pi/dense_3/bias/Adam/Initializer/zeros:0
�
pi/dense_3/bias/Adam_1:0pi/dense_3/bias/Adam_1/Assign,pi/dense_3/bias/Adam_1/Read/ReadVariableOp:0(2*pi/dense_3/bias/Adam_1/Initializer/zeros:0
�
pi/dense_4/kernel/Adam:0pi/dense_4/kernel/Adam/Assign,pi/dense_4/kernel/Adam/Read/ReadVariableOp:0(2*pi/dense_4/kernel/Adam/Initializer/zeros:0
�
pi/dense_4/kernel/Adam_1:0pi/dense_4/kernel/Adam_1/Assign.pi/dense_4/kernel/Adam_1/Read/ReadVariableOp:0(2,pi/dense_4/kernel/Adam_1/Initializer/zeros:0
�
pi/dense_4/bias/Adam:0pi/dense_4/bias/Adam/Assign*pi/dense_4/bias/Adam/Read/ReadVariableOp:0(2(pi/dense_4/bias/Adam/Initializer/zeros:0
�
pi/dense_4/bias/Adam_1:0pi/dense_4/bias/Adam_1/Assign,pi/dense_4/bias/Adam_1/Read/ReadVariableOp:0(2*pi/dense_4/bias/Adam_1/Initializer/zeros:0
y
beta1_power_1:0beta1_power_1/Assign#beta1_power_1/Read/ReadVariableOp:0(2)beta1_power_1/Initializer/initial_value:0
y
beta2_power_1:0beta2_power_1/Assign#beta2_power_1/Read/ReadVariableOp:0(2)beta2_power_1/Initializer/initial_value:0
�
pi/conv2d/kernel/Adam_2:0pi/conv2d/kernel/Adam_2/Assign-pi/conv2d/kernel/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d/kernel/Adam_2/Initializer/zeros:0
�
pi/conv2d/kernel/Adam_3:0pi/conv2d/kernel/Adam_3/Assign-pi/conv2d/kernel/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d/kernel/Adam_3/Initializer/zeros:0
�
pi/conv2d/bias/Adam_2:0pi/conv2d/bias/Adam_2/Assign+pi/conv2d/bias/Adam_2/Read/ReadVariableOp:0(2)pi/conv2d/bias/Adam_2/Initializer/zeros:0
�
pi/conv2d/bias/Adam_3:0pi/conv2d/bias/Adam_3/Assign+pi/conv2d/bias/Adam_3/Read/ReadVariableOp:0(2)pi/conv2d/bias/Adam_3/Initializer/zeros:0
�
pi/conv2d_1/kernel/Adam_2:0 pi/conv2d_1/kernel/Adam_2/Assign/pi/conv2d_1/kernel/Adam_2/Read/ReadVariableOp:0(2-pi/conv2d_1/kernel/Adam_2/Initializer/zeros:0
�
pi/conv2d_1/kernel/Adam_3:0 pi/conv2d_1/kernel/Adam_3/Assign/pi/conv2d_1/kernel/Adam_3/Read/ReadVariableOp:0(2-pi/conv2d_1/kernel/Adam_3/Initializer/zeros:0
�
pi/conv2d_1/bias/Adam_2:0pi/conv2d_1/bias/Adam_2/Assign-pi/conv2d_1/bias/Adam_2/Read/ReadVariableOp:0(2+pi/conv2d_1/bias/Adam_2/Initializer/zeros:0
�
pi/conv2d_1/bias/Adam_3:0pi/conv2d_1/bias/Adam_3/Assign-pi/conv2d_1/bias/Adam_3/Read/ReadVariableOp:0(2+pi/conv2d_1/bias/Adam_3/Initializer/zeros:0
�
pi/dense/kernel/Adam_2:0pi/dense/kernel/Adam_2/Assign,pi/dense/kernel/Adam_2/Read/ReadVariableOp:0(2*pi/dense/kernel/Adam_2/Initializer/zeros:0
�
pi/dense/kernel/Adam_3:0pi/dense/kernel/Adam_3/Assign,pi/dense/kernel/Adam_3/Read/ReadVariableOp:0(2*pi/dense/kernel/Adam_3/Initializer/zeros:0
�
pi/dense/bias/Adam_2:0pi/dense/bias/Adam_2/Assign*pi/dense/bias/Adam_2/Read/ReadVariableOp:0(2(pi/dense/bias/Adam_2/Initializer/zeros:0
�
pi/dense/bias/Adam_3:0pi/dense/bias/Adam_3/Assign*pi/dense/bias/Adam_3/Read/ReadVariableOp:0(2(pi/dense/bias/Adam_3/Initializer/zeros:0
�
pi/dense_1/kernel/Adam_2:0pi/dense_1/kernel/Adam_2/Assign.pi/dense_1/kernel/Adam_2/Read/ReadVariableOp:0(2,pi/dense_1/kernel/Adam_2/Initializer/zeros:0
�
pi/dense_1/kernel/Adam_3:0pi/dense_1/kernel/Adam_3/Assign.pi/dense_1/kernel/Adam_3/Read/ReadVariableOp:0(2,pi/dense_1/kernel/Adam_3/Initializer/zeros:0
�
pi/dense_1/bias/Adam_2:0pi/dense_1/bias/Adam_2/Assign,pi/dense_1/bias/Adam_2/Read/ReadVariableOp:0(2*pi/dense_1/bias/Adam_2/Initializer/zeros:0
�
pi/dense_1/bias/Adam_3:0pi/dense_1/bias/Adam_3/Assign,pi/dense_1/bias/Adam_3/Read/ReadVariableOp:0(2*pi/dense_1/bias/Adam_3/Initializer/zeros:0
�
pi/dense_2/kernel/Adam_2:0pi/dense_2/kernel/Adam_2/Assign.pi/dense_2/kernel/Adam_2/Read/ReadVariableOp:0(2,pi/dense_2/kernel/Adam_2/Initializer/zeros:0
�
pi/dense_2/kernel/Adam_3:0pi/dense_2/kernel/Adam_3/Assign.pi/dense_2/kernel/Adam_3/Read/ReadVariableOp:0(2,pi/dense_2/kernel/Adam_3/Initializer/zeros:0
�
pi/dense_2/bias/Adam_2:0pi/dense_2/bias/Adam_2/Assign,pi/dense_2/bias/Adam_2/Read/ReadVariableOp:0(2*pi/dense_2/bias/Adam_2/Initializer/zeros:0
�
pi/dense_2/bias/Adam_3:0pi/dense_2/bias/Adam_3/Assign,pi/dense_2/bias/Adam_3/Read/ReadVariableOp:0(2*pi/dense_2/bias/Adam_3/Initializer/zeros:0
�
v/dense_5/kernel/Adam:0v/dense_5/kernel/Adam/Assign+v/dense_5/kernel/Adam/Read/ReadVariableOp:0(2)v/dense_5/kernel/Adam/Initializer/zeros:0
�
v/dense_5/kernel/Adam_1:0v/dense_5/kernel/Adam_1/Assign-v/dense_5/kernel/Adam_1/Read/ReadVariableOp:0(2+v/dense_5/kernel/Adam_1/Initializer/zeros:0
�
v/dense_5/bias/Adam:0v/dense_5/bias/Adam/Assign)v/dense_5/bias/Adam/Read/ReadVariableOp:0(2'v/dense_5/bias/Adam/Initializer/zeros:0
�
v/dense_5/bias/Adam_1:0v/dense_5/bias/Adam_1/Assign+v/dense_5/bias/Adam_1/Read/ReadVariableOp:0(2)v/dense_5/bias/Adam_1/Initializer/zeros:0
�
v/dense_6/kernel/Adam:0v/dense_6/kernel/Adam/Assign+v/dense_6/kernel/Adam/Read/ReadVariableOp:0(2)v/dense_6/kernel/Adam/Initializer/zeros:0
�
v/dense_6/kernel/Adam_1:0v/dense_6/kernel/Adam_1/Assign-v/dense_6/kernel/Adam_1/Read/ReadVariableOp:0(2+v/dense_6/kernel/Adam_1/Initializer/zeros:0
�
v/dense_6/bias/Adam:0v/dense_6/bias/Adam/Assign)v/dense_6/bias/Adam/Read/ReadVariableOp:0(2'v/dense_6/bias/Adam/Initializer/zeros:0
�
v/dense_6/bias/Adam_1:0v/dense_6/bias/Adam_1/Assign+v/dense_6/bias/Adam_1/Read/ReadVariableOp:0(2)v/dense_6/bias/Adam_1/Initializer/zeros:0"�
trainable_variables��
�
pi/conv2d/kernel:0pi/conv2d/kernel/Assign&pi/conv2d/kernel/Read/ReadVariableOp:0(2-pi/conv2d/kernel/Initializer/random_uniform:08
w
pi/conv2d/bias:0pi/conv2d/bias/Assign$pi/conv2d/bias/Read/ReadVariableOp:0(2"pi/conv2d/bias/Initializer/zeros:08
�
pi/conv2d_1/kernel:0pi/conv2d_1/kernel/Assign(pi/conv2d_1/kernel/Read/ReadVariableOp:0(2/pi/conv2d_1/kernel/Initializer/random_uniform:08

pi/conv2d_1/bias:0pi/conv2d_1/bias/Assign&pi/conv2d_1/bias/Read/ReadVariableOp:0(2$pi/conv2d_1/bias/Initializer/zeros:08
�
pi/dense/kernel:0pi/dense/kernel/Assign%pi/dense/kernel/Read/ReadVariableOp:0(2,pi/dense/kernel/Initializer/random_uniform:08
s
pi/dense/bias:0pi/dense/bias/Assign#pi/dense/bias/Read/ReadVariableOp:0(2!pi/dense/bias/Initializer/zeros:08
�
pi/dense_1/kernel:0pi/dense_1/kernel/Assign'pi/dense_1/kernel/Read/ReadVariableOp:0(2.pi/dense_1/kernel/Initializer/random_uniform:08
{
pi/dense_1/bias:0pi/dense_1/bias/Assign%pi/dense_1/bias/Read/ReadVariableOp:0(2#pi/dense_1/bias/Initializer/zeros:08
�
pi/dense_2/kernel:0pi/dense_2/kernel/Assign'pi/dense_2/kernel/Read/ReadVariableOp:0(2.pi/dense_2/kernel/Initializer/random_uniform:08
{
pi/dense_2/bias:0pi/dense_2/bias/Assign%pi/dense_2/bias/Read/ReadVariableOp:0(2#pi/dense_2/bias/Initializer/zeros:08
�
pi/dense_3/kernel:0pi/dense_3/kernel/Assign'pi/dense_3/kernel/Read/ReadVariableOp:0(2.pi/dense_3/kernel/Initializer/random_uniform:08
{
pi/dense_3/bias:0pi/dense_3/bias/Assign%pi/dense_3/bias/Read/ReadVariableOp:0(2#pi/dense_3/bias/Initializer/zeros:08
�
pi/dense_4/kernel:0pi/dense_4/kernel/Assign'pi/dense_4/kernel/Read/ReadVariableOp:0(2.pi/dense_4/kernel/Initializer/random_uniform:08
{
pi/dense_4/bias:0pi/dense_4/bias/Assign%pi/dense_4/bias/Read/ReadVariableOp:0(2#pi/dense_4/bias/Initializer/zeros:08
�
v/dense_5/kernel:0v/dense_5/kernel/Assign&v/dense_5/kernel/Read/ReadVariableOp:0(2-v/dense_5/kernel/Initializer/random_uniform:08
w
v/dense_5/bias:0v/dense_5/bias/Assign$v/dense_5/bias/Read/ReadVariableOp:0(2"v/dense_5/bias/Initializer/zeros:08
�
v/dense_6/kernel:0v/dense_6/kernel/Assign&v/dense_6/kernel/Read/ReadVariableOp:0(2-v/dense_6/kernel/Initializer/random_uniform:08
w
v/dense_6/bias:0v/dense_6/bias/Assign$v/dense_6/bias/Read/ReadVariableOp:0(2"v/dense_6/bias/Initializer/zeros:08"�
	summaries�
�
pi_loss/summaries/mean_1:0
pi_loss/summaries/stddev_1:0
pi_loss/summaries/max_1:0
pi_loss/summaries/min_1:0
pi_loss/summaries/histogram:0*�
serving_default�
(
x#
Placeholder:02
v
v/Squeeze:0
pi
pi/Squeeze:0	tensorflow/serving/predict