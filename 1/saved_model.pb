Ō
*Ū)
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

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
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
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
n
ClipByValue
t"T
clip_value_min"T
clip_value_max"T
output"T" 
Ttype:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

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
”
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
:
Less
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
#
	LogicalOr
x

y

z

w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ļ
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
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
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.8.02v1.8.0-0-g93bc2e2072Ś°
p
dense_1_inputPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
_output_shapes
: *
valueB
 *ó5æ*
dtype0
_
dense_1/random_uniform/maxConst*
_output_shapes
: *
valueB
 *ó5?*
dtype0
Ø
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
_output_shapes

:*
seed2Æį£*
seed±’å)*
T0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
_output_shapes
: *
T0

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0*
_output_shapes

:
~
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0*
_output_shapes

:

dense_1/kernel
VariableV2*
_output_shapes

:*
	container *
shape
:*
shared_name *
dtype0
¼
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
{
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
Z
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_1/bias
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
©
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
q
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
:*
T0

dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’*
T0
W
dense_1/ReluReludense_1/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *=æ*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *=?*
dtype0*
_output_shapes
: 
Ø
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
seed±’å)*
T0*
dtype0*
_output_shapes

:*
seed2ÄÉĖ
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
_output_shapes

:*
T0
~
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
_output_shapes

:*
T0

dense_2/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes

:*
	container *
shape
:
¼
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
_output_shapes

:*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
{
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes

:
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
©
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

dense_2/MatMulMatMuldense_1/Reludense_2/kernel/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*'
_output_shapes
:’’’’’’’’’*
T0*
data_formatNHWC
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:’’’’’’’’’
O

tf_examplePlaceholder*
dtype0*
_output_shapes
:*
shape:
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
h
&ParseExample/ParseExample/dense_keys_0Const*
value	B Bx*
dtype0*
_output_shapes
: 

ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0ParseExample/Const*'
_output_shapes
:’’’’’’’’’*
Nsparse *
dense_shapes
:*
sparse_types
 *
Tdense
2*
Ndense
Z
xIdentityParseExample/ParseExample*
T0*'
_output_shapes
:’’’’’’’’’

sequential_1/dense_1/MatMulMatMulxdense_1/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
 
sequential_1/dense_1/BiasAddBiasAddsequential_1/dense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
q
sequential_1/dense_1/ReluRelusequential_1/dense_1/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
­
sequential_1/dense_2/MatMulMatMulsequential_1/dense_1/Reludense_2/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 
 
sequential_1/dense_2/BiasAddBiasAddsequential_1/dense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
w
sequential_1/dense_2/SoftmaxSoftmaxsequential_1/dense_2/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
_
Adam/iterations/initial_valueConst*
_output_shapes
: *
value	B	 R *
dtype0	
s
Adam/iterations
VariableV2*
dtype0	*
_output_shapes
: *
	container *
shape: *
shared_name 
¾
Adam/iterations/AssignAssignAdam/iterationsAdam/iterations/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*"
_class
loc:@Adam/iterations
v
Adam/iterations/readIdentityAdam/iterations*
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
Z
Adam/lr/initial_valueConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
k
Adam/lr
VariableV2*
_output_shapes
: *
	container *
shape: *
shared_name *
dtype0

Adam/lr/AssignAssignAdam/lrAdam/lr/initial_value*
T0*
_class
loc:@Adam/lr*
validate_shape(*
_output_shapes
: *
use_locking(
^
Adam/lr/readIdentityAdam/lr*
T0*
_class
loc:@Adam/lr*
_output_shapes
: 
^
Adam/beta_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
o
Adam/beta_1
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
®
Adam/beta_1/AssignAssignAdam/beta_1Adam/beta_1/initial_value*
T0*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(
j
Adam/beta_1/readIdentityAdam/beta_1*
T0*
_class
loc:@Adam/beta_1*
_output_shapes
: 
^
Adam/beta_2/initial_valueConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
o
Adam/beta_2
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
®
Adam/beta_2/AssignAssignAdam/beta_2Adam/beta_2/initial_value*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 
j
Adam/beta_2/readIdentityAdam/beta_2*
_output_shapes
: *
T0*
_class
loc:@Adam/beta_2
]
Adam/decay/initial_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n

Adam/decay
VariableV2*
shape: *
shared_name *
dtype0*
_output_shapes
: *
	container 
Ŗ
Adam/decay/AssignAssign
Adam/decayAdam/decay/initial_value*
use_locking(*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: 
g
Adam/decay/readIdentity
Adam/decay*
_output_shapes
: *
T0*
_class
loc:@Adam/decay

dense_2_targetPlaceholder*
dtype0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*%
shape:’’’’’’’’’’’’’’’’’’
q
dense_2_sample_weightsPlaceholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
r
'loss/dense_2_loss/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
„
loss/dense_2_loss/SumSumdense_2/Softmax'loss/dense_2_loss/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’*
	keep_dims(*

Tidx0
~
loss/dense_2_loss/truedivRealDivdense_2/Softmaxloss/dense_2_loss/Sum*'
_output_shapes
:’’’’’’’’’*
T0
\
loss/dense_2_loss/ConstConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
\
loss/dense_2_loss/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
loss/dense_2_loss/subSubloss/dense_2_loss/sub/xloss/dense_2_loss/Const*
T0*
_output_shapes
: 
«
loss/dense_2_loss/clip_by_valueClipByValueloss/dense_2_loss/truedivloss/dense_2_loss/Constloss/dense_2_loss/sub*'
_output_shapes
:’’’’’’’’’*
T0
o
loss/dense_2_loss/LogLogloss/dense_2_loss/clip_by_value*
T0*'
_output_shapes
:’’’’’’’’’
u
loss/dense_2_loss/mulMuldense_2_targetloss/dense_2_loss/Log*
T0*'
_output_shapes
:’’’’’’’’’
t
)loss/dense_2_loss/Sum_1/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
«
loss/dense_2_loss/Sum_1Sumloss/dense_2_loss/mul)loss/dense_2_loss/Sum_1/reduction_indices*#
_output_shapes
:’’’’’’’’’*
	keep_dims( *

Tidx0*
T0
c
loss/dense_2_loss/NegNegloss/dense_2_loss/Sum_1*
T0*#
_output_shapes
:’’’’’’’’’
k
(loss/dense_2_loss/Mean/reduction_indicesConst*
_output_shapes
: *
valueB *
dtype0
Ŗ
loss/dense_2_loss/MeanMeanloss/dense_2_loss/Neg(loss/dense_2_loss/Mean/reduction_indices*
T0*#
_output_shapes
:’’’’’’’’’*
	keep_dims( *

Tidx0
|
loss/dense_2_loss/mul_1Mulloss/dense_2_loss/Meandense_2_sample_weights*#
_output_shapes
:’’’’’’’’’*
T0
a
loss/dense_2_loss/NotEqual/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_2_loss/NotEqualNotEqualdense_2_sample_weightsloss/dense_2_loss/NotEqual/y*
T0*#
_output_shapes
:’’’’’’’’’
w
loss/dense_2_loss/CastCastloss/dense_2_loss/NotEqual*

SrcT0
*#
_output_shapes
:’’’’’’’’’*

DstT0
c
loss/dense_2_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_1Meanloss/dense_2_loss/Castloss/dense_2_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0

loss/dense_2_loss/truediv_1RealDivloss/dense_2_loss/mul_1loss/dense_2_loss/Mean_1*#
_output_shapes
:’’’’’’’’’*
T0
c
loss/dense_2_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:

loss/dense_2_loss/Mean_2Meanloss/dense_2_loss/truediv_1loss/dense_2_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_2_loss/Mean_2*
_output_shapes
: *
T0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

metrics/acc/ArgMaxArgMaxdense_2_targetmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:’’’’’’’’’*

Tidx0*
T0
i
metrics/acc/ArgMax_1/dimensionConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

metrics/acc/ArgMax_1ArgMaxdense_2/Softmaxmetrics/acc/ArgMax_1/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:’’’’’’’’’
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:’’’’’’’’’
h
metrics/acc/CastCastmetrics/acc/Equal*#
_output_shapes
:’’’’’’’’’*

DstT0*

SrcT0

[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
}
training/Adam/gradients/ShapeConst*
_class
loc:@loss/mul*
valueB *
dtype0*
_output_shapes
: 

!training/Adam/gradients/grad_ys_0Const*
_class
loc:@loss/mul*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¶
training/Adam/gradients/FillFilltraining/Adam/gradients/Shape!training/Adam/gradients/grad_ys_0*
T0*
_class
loc:@loss/mul*

index_type0*
_output_shapes
: 
¦
)training/Adam/gradients/loss/mul_grad/MulMultraining/Adam/gradients/Fillloss/dense_2_loss/Mean_2*
_output_shapes
: *
T0*
_class
loc:@loss/mul

+training/Adam/gradients/loss/mul_grad/Mul_1Multraining/Adam/gradients/Fill
loss/mul/x*
T0*
_class
loc:@loss/mul*
_output_shapes
: 
ŗ
Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shapeConst*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB:*
dtype0*
_output_shapes
:

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ReshapeReshape+training/Adam/gradients/loss/mul_grad/Mul_1Ctraining/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape/shape*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
Tshape0*
_output_shapes
:
Ć
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ShapeShapeloss/dense_2_loss/truediv_1*+
_class!
loc:@loss/dense_2_loss/Mean_2*
out_type0*
_output_shapes
:*
T0
«
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/TileTile=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape*#
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2
Å
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1Shapeloss/dense_2_loss/truediv_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
out_type0*
_output_shapes
:
­
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2Const*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB *
dtype0*
_output_shapes
: 
²
;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ConstConst*
dtype0*
_output_shapes
:*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB: 
©
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/ProdProd=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_1;training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2
“
=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1Const*+
_class!
loc:@loss/dense_2_loss/Mean_2*
valueB: *
dtype0*
_output_shapes
:
­
<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Shape_2=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Const_1*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: *
	keep_dims( *

Tidx0
®
?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/yConst*+
_class!
loc:@loss/dense_2_loss/Mean_2*
value	B :*
dtype0*
_output_shapes
: 

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/MaximumMaximum<training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum/y*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Maximum*
_output_shapes
: *
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2
ß
:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/floordiv*

SrcT0*+
_class!
loc:@loss/dense_2_loss/Mean_2*
_output_shapes
: *

DstT0

=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivRealDiv:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Tile:training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/Cast*
T0*+
_class!
loc:@loss/dense_2_loss/Mean_2*#
_output_shapes
:’’’’’’’’’
Å
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ShapeShapeloss/dense_2_loss/mul_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
out_type0*
_output_shapes
:
³
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1Const*
_output_shapes
: *.
_class$
" loc:@loss/dense_2_loss/truediv_1*
valueB *
dtype0
Ö
Ntraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivRealDiv=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivloss/dense_2_loss/Mean_1*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:’’’’’’’’’*
T0
Å
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/SumSum@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDivNtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
µ
@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape*#
_output_shapes
:’’’’’’’’’*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0
ŗ
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/NegNegloss/dense_2_loss/mul_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:’’’’’’’’’

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1RealDiv<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Negloss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:’’’’’’’’’

Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2RealDivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_1loss/dense_2_loss/Mean_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:’’’’’’’’’
¤
<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulMul=training/Adam/gradients/loss/dense_2_loss/Mean_2_grad/truedivBtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/RealDiv_2*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*#
_output_shapes
:’’’’’’’’’
Å
>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1Sum<training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/mulPtraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/BroadcastGradientArgs:1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
_output_shapes
:*
	keep_dims( *

Tidx0
®
Btraining/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape_1Reshape>training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Sum_1@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Shape_1*
T0*.
_class$
" loc:@loss/dense_2_loss/truediv_1*
Tshape0*
_output_shapes
: 
¼
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ShapeShapeloss/dense_2_loss/Mean*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
out_type0*
_output_shapes
:
¾
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1Shapedense_2_sample_weights*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
out_type0*
_output_shapes
:
Ę
Jtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ó
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/MulMul@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshapedense_2_sample_weights*#
_output_shapes
:’’’’’’’’’*
T0**
_class 
loc:@loss/dense_2_loss/mul_1
±
8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/SumSum8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/MulJtraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
_output_shapes
:*
	keep_dims( *

Tidx0
„
<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeReshape8training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape*#
_output_shapes
:’’’’’’’’’*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
Tshape0
õ
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Mulloss/dense_2_loss/Mean@training/Adam/gradients/loss/dense_2_loss/truediv_1_grad/Reshape*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*#
_output_shapes
:’’’’’’’’’
·
:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Mul_1Ltraining/Adam/gradients/loss/dense_2_loss/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0**
_class 
loc:@loss/dense_2_loss/mul_1
«
>training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Reshape_1Reshape:training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Sum_1<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/Shape_1*
T0**
_class 
loc:@loss/dense_2_loss/mul_1*
Tshape0*#
_output_shapes
:’’’’’’’’’
¹
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ShapeShapeloss/dense_2_loss/Neg*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
„
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/SizeConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :
š
7training/Adam/gradients/loss/dense_2_loss/Mean_grad/addAdd(loss/dense_2_loss/Mean/reduction_indices8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Mean_grad/modFloorMod7training/Adam/gradients/loss/dense_2_loss/Mean_grad/add8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
°
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1Const*
_output_shapes
:*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0
¬
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/startConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B : *
dtype0*
_output_shapes
: 
¬
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/deltaConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 
Ń
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/rangeRange?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/start8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Size?training/Adam/gradients/loss/dense_2_loss/Mean_grad/range/delta*
_output_shapes
:*

Tidx0*)
_class
loc:@loss/dense_2_loss/Mean
«
>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/valueConst*)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/FillFill;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_1>training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill/value*)
_class
loc:@loss/dense_2_loss/Mean*

index_type0*
_output_shapes
: *
T0

Atraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitchDynamicStitch9training/Adam/gradients/loss/dense_2_loss/Mean_grad/range7training/Adam/gradients/loss/dense_2_loss/Mean_grad/mod9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Fill*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
N*#
_output_shapes
:’’’’’’’’’
Ŗ
=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/yConst*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :*
dtype0
”
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/MaximumMaximumAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:’’’’’’’’’

<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordivFloorDiv9training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum*
T0*)
_class
loc:@loss/dense_2_loss/Mean*#
_output_shapes
:’’’’’’’’’
£
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/ReshapeReshape<training/Adam/gradients/loss/dense_2_loss/mul_1_grad/ReshapeAtraining/Adam/gradients/loss/dense_2_loss/Mean_grad/DynamicStitch*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
Tshape0*
_output_shapes
:

8training/Adam/gradients/loss/dense_2_loss/Mean_grad/TileTile;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Reshape<training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
:*

Tmultiples0*
T0
»
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_2Shapeloss/dense_2_loss/Neg*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
¼
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3Shapeloss/dense_2_loss/Mean*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
out_type0*
_output_shapes
:
®
9training/Adam/gradients/loss/dense_2_loss/Mean_grad/ConstConst*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
”
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/ProdProd;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_29training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0*)
_class
loc:@loss/dense_2_loss/Mean
°
;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1Const*)
_class
loc:@loss/dense_2_loss/Mean*
valueB: *
dtype0*
_output_shapes
:
„
:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1Prod;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Shape_3;training/Adam/gradients/loss/dense_2_loss/Mean_grad/Const_1*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
¬
?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/yConst*
dtype0*
_output_shapes
: *)
_class
loc:@loss/dense_2_loss/Mean*
value	B :

=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1Maximum:training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod_1?training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1/y*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 

>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1FloorDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Prod=training/Adam/gradients/loss/dense_2_loss/Mean_grad/Maximum_1*
T0*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: 
Ū
8training/Adam/gradients/loss/dense_2_loss/Mean_grad/CastCast>training/Adam/gradients/loss/dense_2_loss/Mean_grad/floordiv_1*)
_class
loc:@loss/dense_2_loss/Mean*
_output_shapes
: *

DstT0*

SrcT0

;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truedivRealDiv8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Tile8training/Adam/gradients/loss/dense_2_loss/Mean_grad/Cast*#
_output_shapes
:’’’’’’’’’*
T0*)
_class
loc:@loss/dense_2_loss/Mean
Ņ
6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegNeg;training/Adam/gradients/loss/dense_2_loss/Mean_grad/truediv*
T0*(
_class
loc:@loss/dense_2_loss/Neg*#
_output_shapes
:’’’’’’’’’
»
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ShapeShapeloss/dense_2_loss/mul*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
out_type0*
_output_shapes
:
§
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/SizeConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 
ņ
8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/addAdd)loss/dense_2_loss/Sum_1/reduction_indices9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: 

8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/modFloorMod8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/add9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size**
_class 
loc:@loss/dense_2_loss/Sum_1*
_output_shapes
: *
T0
«
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1Const**
_class 
loc:@loss/dense_2_loss/Sum_1*
valueB *
dtype0*
_output_shapes
: 
®
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/startConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B : *
dtype0*
_output_shapes
: 
®
@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/deltaConst*
dtype0*
_output_shapes
: **
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :
Ö
:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/rangeRange@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/start9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Size@training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0**
_class 
loc:@loss/dense_2_loss/Sum_1
­
?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/valueConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 

9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/FillFill<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape_1?training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill/value*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*

index_type0*
_output_shapes
: 
£
Btraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitchDynamicStitch:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/range8training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/mod:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Fill*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*
N*#
_output_shapes
:’’’’’’’’’
¬
>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/yConst**
_class 
loc:@loss/dense_2_loss/Sum_1*
value	B :*
dtype0*
_output_shapes
: 
„
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/MaximumMaximumBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch>training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum/y*#
_output_shapes
:’’’’’’’’’*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1

=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordivFloorDiv:training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Shape<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Maximum*
_output_shapes
:*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1
 
<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/Neg_grad/NegBtraining/Adam/gradients/loss/dense_2_loss/Sum_1_grad/DynamicStitch**
_class 
loc:@loss/dense_2_loss/Sum_1*
Tshape0*
_output_shapes
:*
T0
®
9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/TileTile<training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Reshape=training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/floordiv*

Tmultiples0*
T0**
_class 
loc:@loss/dense_2_loss/Sum_1*'
_output_shapes
:’’’’’’’’’
°
8training/Adam/gradients/loss/dense_2_loss/mul_grad/ShapeShapedense_2_target*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0*
_output_shapes
:
¹
:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1Shapeloss/dense_2_loss/Log*
_output_shapes
:*
T0*(
_class
loc:@loss/dense_2_loss/mul*
out_type0
¾
Htraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*
T0*(
_class
loc:@loss/dense_2_loss/mul*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ė
6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulMul9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tileloss/dense_2_loss/Log*
T0*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:’’’’’’’’’
©
6training/Adam/gradients/loss/dense_2_loss/mul_grad/SumSum6training/Adam/gradients/loss/dense_2_loss/mul_grad/MulHtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ŗ
:training/Adam/gradients/loss/dense_2_loss/mul_grad/ReshapeReshape6training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape*
T0*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
ę
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Muldense_2_target9training/Adam/gradients/loss/dense_2_loss/Sum_1_grad/Tile*(
_class
loc:@loss/dense_2_loss/mul*'
_output_shapes
:’’’’’’’’’*
T0
Æ
8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1Sum8training/Adam/gradients/loss/dense_2_loss/mul_grad/Mul_1Jtraining/Adam/gradients/loss/dense_2_loss/mul_grad/BroadcastGradientArgs:1*
T0*(
_class
loc:@loss/dense_2_loss/mul*
_output_shapes
:*
	keep_dims( *

Tidx0
§
<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1Reshape8training/Adam/gradients/loss/dense_2_loss/mul_grad/Sum_1:training/Adam/gradients/loss/dense_2_loss/mul_grad/Shape_1*(
_class
loc:@loss/dense_2_loss/mul*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0

=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal
Reciprocalloss/dense_2_loss/clip_by_value=^training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1*'
_output_shapes
:’’’’’’’’’*
T0*(
_class
loc:@loss/dense_2_loss/Log

6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulMul<training/Adam/gradients/loss/dense_2_loss/mul_grad/Reshape_1=training/Adam/gradients/loss/dense_2_loss/Log_grad/Reciprocal*
T0*(
_class
loc:@loss/dense_2_loss/Log*'
_output_shapes
:’’’’’’’’’
Ļ
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeShapeloss/dense_2_loss/truediv*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
»
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1Const*
dtype0*
_output_shapes
: *2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB 
»
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2Const*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB *
dtype0*
_output_shapes
: 
ī
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_3Shape6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
out_type0*
_output_shapes
:
Į
Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/ConstConst*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
valueB
 *    *
dtype0*
_output_shapes
: 
Ņ
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zerosFillDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_3Htraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros/Const*'
_output_shapes
:’’’’’’’’’*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*

index_type0
ć
Atraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/LessLessloss/dense_2_loss/truedivloss/dense_2_loss/Const*'
_output_shapes
:’’’’’’’’’*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
ē
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/GreaterGreaterloss/dense_2_loss/truedivloss/dense_2_loss/sub*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’*
T0
ę
Rtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
č
Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1BroadcastGradientArgsBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ShapeDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
¹
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/LogicalOr	LogicalOrAtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/LessDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Greater*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’
÷
Ctraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectSelectFtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/LogicalOrBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros6training/Adam/gradients/loss/dense_2_loss/Log_grad/mul*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’
ō
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1SelectAtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Less6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*'
_output_shapes
:’’’’’’’’’*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
÷
Etraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_2SelectDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Greater6training/Adam/gradients/loss/dense_2_loss/Log_grad/mulBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/zeros*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*'
_output_shapes
:’’’’’’’’’
Ö
@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumSumCtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SelectTtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
É
Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/SumBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*'
_output_shapes
:’’’’’’’’’
Ś
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_1Ttraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs:1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
_output_shapes
:*
	keep_dims( *

Tidx0
¾
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_1ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_1Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_1*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0*
_output_shapes
: 
Ü
Btraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_2SumEtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Select_2Vtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/BroadcastGradientArgs_1:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value
¾
Ftraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape_2ReshapeBtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Sum_2Dtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Shape_2*
_output_shapes
: *
T0*2
_class(
&$loc:@loss/dense_2_loss/clip_by_value*
Tshape0
¹
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/ShapeShapedense_2/Softmax*
_output_shapes
:*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0
Į
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1Shapeloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
out_type0*
_output_shapes
:
Ī
Ltraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv

>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivRealDivDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshapeloss/dense_2_loss/Sum*'
_output_shapes
:’’’’’’’’’*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
½
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/SumSum>training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDivLtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
_output_shapes
:*
	keep_dims( *

Tidx0
±
>training/Adam/gradients/loss/dense_2_loss/truediv_grad/ReshapeReshape:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0
²
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/NegNegdense_2/Softmax*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:’’’’’’’’’
ž
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1RealDiv:training/Adam/gradients/loss/dense_2_loss/truediv_grad/Negloss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:’’’’’’’’’

@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2RealDiv@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_1loss/dense_2_loss/Sum*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:’’’’’’’’’
©
:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulMulDtraining/Adam/gradients/loss/dense_2_loss/clip_by_value_grad/Reshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/RealDiv_2*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*'
_output_shapes
:’’’’’’’’’
½
<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1Sum:training/Adam/gradients/loss/dense_2_loss/truediv_grad/mulNtraining/Adam/gradients/loss/dense_2_loss/truediv_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv
·
@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1Reshape<training/Adam/gradients/loss/dense_2_loss/truediv_grad/Sum_1>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Shape_1*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
Tshape0*'
_output_shapes
:’’’’’’’’’
±
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/ShapeShapedense_2/Softmax*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
out_type0*
_output_shapes
:
£
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/SizeConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 
ź
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/addAdd'loss/dense_2_loss/Sum/reduction_indices7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
_output_shapes
: *
T0*(
_class
loc:@loss/dense_2_loss/Sum
ž
6training/Adam/gradients/loss/dense_2_loss/Sum_grad/modFloorMod6training/Adam/gradients/loss/dense_2_loss/Sum_grad/add7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size*
_output_shapes
: *
T0*(
_class
loc:@loss/dense_2_loss/Sum
§
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1Const*(
_class
loc:@loss/dense_2_loss/Sum*
valueB *
dtype0*
_output_shapes
: 
Ŗ
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/startConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B : *
dtype0*
_output_shapes
: 
Ŗ
>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/deltaConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 
Ģ
8training/Adam/gradients/loss/dense_2_loss/Sum_grad/rangeRange>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/start7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Size>training/Adam/gradients/loss/dense_2_loss/Sum_grad/range/delta*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:*

Tidx0
©
=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/valueConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 

7training/Adam/gradients/loss/dense_2_loss/Sum_grad/FillFill:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape_1=training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill/value*
_output_shapes
: *
T0*(
_class
loc:@loss/dense_2_loss/Sum*

index_type0

@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitchDynamicStitch8training/Adam/gradients/loss/dense_2_loss/Sum_grad/range6training/Adam/gradients/loss/dense_2_loss/Sum_grad/mod8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Fill*
N*#
_output_shapes
:’’’’’’’’’*
T0*(
_class
loc:@loss/dense_2_loss/Sum
Ø
<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/yConst*(
_class
loc:@loss/dense_2_loss/Sum*
value	B :*
dtype0*
_output_shapes
: 

:training/Adam/gradients/loss/dense_2_loss/Sum_grad/MaximumMaximum@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch<training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum/y*
T0*(
_class
loc:@loss/dense_2_loss/Sum*#
_output_shapes
:’’’’’’’’’

;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordivFloorDiv8training/Adam/gradients/loss/dense_2_loss/Sum_grad/Shape:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Maximum*
T0*(
_class
loc:@loss/dense_2_loss/Sum*
_output_shapes
:
¤
:training/Adam/gradients/loss/dense_2_loss/Sum_grad/ReshapeReshape@training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape_1@training/Adam/gradients/loss/dense_2_loss/Sum_grad/DynamicStitch*(
_class
loc:@loss/dense_2_loss/Sum*
Tshape0*
_output_shapes
:*
T0
¦
7training/Adam/gradients/loss/dense_2_loss/Sum_grad/TileTile:training/Adam/gradients/loss/dense_2_loss/Sum_grad/Reshape;training/Adam/gradients/loss/dense_2_loss/Sum_grad/floordiv*'
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0*(
_class
loc:@loss/dense_2_loss/Sum

training/Adam/gradients/AddNAddN>training/Adam/gradients/loss/dense_2_loss/truediv_grad/Reshape7training/Adam/gradients/loss/dense_2_loss/Sum_grad/Tile*'
_output_shapes
:’’’’’’’’’*
T0*,
_class"
 loc:@loss/dense_2_loss/truediv*
N
¼
0training/Adam/gradients/dense_2/Softmax_grad/mulMultraining/Adam/gradients/AddNdense_2/Softmax*'
_output_shapes
:’’’’’’’’’*
T0*"
_class
loc:@dense_2/Softmax
°
Btraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indicesConst*
_output_shapes
:*"
_class
loc:@dense_2/Softmax*
valueB:*
dtype0

0training/Adam/gradients/dense_2/Softmax_grad/SumSum0training/Adam/gradients/dense_2/Softmax_grad/mulBtraining/Adam/gradients/dense_2/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:’’’’’’’’’*
	keep_dims( *

Tidx0*
T0*"
_class
loc:@dense_2/Softmax
Æ
:training/Adam/gradients/dense_2/Softmax_grad/Reshape/shapeConst*"
_class
loc:@dense_2/Softmax*
valueB"’’’’   *
dtype0*
_output_shapes
:

4training/Adam/gradients/dense_2/Softmax_grad/ReshapeReshape0training/Adam/gradients/dense_2/Softmax_grad/Sum:training/Adam/gradients/dense_2/Softmax_grad/Reshape/shape*
T0*"
_class
loc:@dense_2/Softmax*
Tshape0*'
_output_shapes
:’’’’’’’’’
į
0training/Adam/gradients/dense_2/Softmax_grad/subSubtraining/Adam/gradients/AddN4training/Adam/gradients/dense_2/Softmax_grad/Reshape*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:’’’’’’’’’
Ņ
2training/Adam/gradients/dense_2/Softmax_grad/mul_1Mul0training/Adam/gradients/dense_2/Softmax_grad/subdense_2/Softmax*
T0*"
_class
loc:@dense_2/Softmax*'
_output_shapes
:’’’’’’’’’
Ū
8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
_output_shapes
:*
T0*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC

2training/Adam/gradients/dense_2/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_2/Softmax_grad/mul_1dense_2/kernel/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0*!
_class
loc:@dense_2/MatMul
ņ
4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1MatMuldense_1/Relu2training/Adam/gradients/dense_2/Softmax_grad/mul_1*
T0*!
_class
loc:@dense_2/MatMul*
_output_shapes

:*
transpose_a(*
transpose_b( 
Ó
2training/Adam/gradients/dense_1/Relu_grad/ReluGradReluGrad2training/Adam/gradients/dense_2/MatMul_grad/MatMuldense_1/Relu*'
_output_shapes
:’’’’’’’’’*
T0*
_class
loc:@dense_1/Relu
Ū
8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes
:

2training/Adam/gradients/dense_1/MatMul_grad/MatMulMatMul2training/Adam/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
T0*!
_class
loc:@dense_1/MatMul*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(
ó
4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input2training/Adam/gradients/dense_1/Relu_grad/ReluGrad*
T0*!
_class
loc:@dense_1/MatMul*
_output_shapes

:*
transpose_a(*
transpose_b( 
_
training/Adam/AssignAdd/valueConst*
_output_shapes
: *
value	B	 R*
dtype0	
¬
training/Adam/AssignAdd	AssignAddAdam/iterationstraining/Adam/AssignAdd/value*
use_locking( *
T0	*"
_class
loc:@Adam/iterations*
_output_shapes
: 
`
training/Adam/CastCastAdam/iterations/read*
_output_shapes
: *

DstT0*

SrcT0	
X
training/Adam/add/yConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
b
training/Adam/addAddtraining/Adam/Casttraining/Adam/add/y*
T0*
_output_shapes
: 
^
training/Adam/PowPowAdam/beta_2/readtraining/Adam/add*
T0*
_output_shapes
: 
X
training/Adam/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
a
training/Adam/subSubtraining/Adam/sub/xtraining/Adam/Pow*
T0*
_output_shapes
: 
X
training/Adam/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_1Const*
valueB
 *  *
dtype0*
_output_shapes
: 

training/Adam/clip_by_valueClipByValuetraining/Adam/subtraining/Adam/Consttraining/Adam/Const_1*
_output_shapes
: *
T0
X
training/Adam/SqrtSqrttraining/Adam/clip_by_value*
_output_shapes
: *
T0
`
training/Adam/Pow_1PowAdam/beta_1/readtraining/Adam/add*
T0*
_output_shapes
: 
Z
training/Adam/sub_1/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
g
training/Adam/sub_1Subtraining/Adam/sub_1/xtraining/Adam/Pow_1*
T0*
_output_shapes
: 
j
training/Adam/truedivRealDivtraining/Adam/Sqrttraining/Adam/sub_1*
_output_shapes
: *
T0
^
training/Adam/mulMulAdam/lr/readtraining/Adam/truediv*
_output_shapes
: *
T0
h
training/Adam/zerosConst*
valueB*    *
dtype0*
_output_shapes

:

training/Adam/Variable
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
Ń
training/Adam/Variable/AssignAssigntraining/Adam/Variabletraining/Adam/zeros*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

:

training/Adam/Variable/readIdentitytraining/Adam/Variable*
T0*)
_class
loc:@training/Adam/Variable*
_output_shapes

:
b
training/Adam/zeros_1Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_1
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Õ
training/Adam/Variable_1/AssignAssigntraining/Adam/Variable_1training/Adam/zeros_1*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
:

training/Adam/Variable_1/readIdentitytraining/Adam/Variable_1*
T0*+
_class!
loc:@training/Adam/Variable_1*
_output_shapes
:
j
training/Adam/zeros_2Const*
valueB*    *
dtype0*
_output_shapes

:

training/Adam/Variable_2
VariableV2*
shared_name *
dtype0*
_output_shapes

:*
	container *
shape
:
Ł
training/Adam/Variable_2/AssignAssigntraining/Adam/Variable_2training/Adam/zeros_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

:

training/Adam/Variable_2/readIdentitytraining/Adam/Variable_2*
T0*+
_class!
loc:@training/Adam/Variable_2*
_output_shapes

:
b
training/Adam/zeros_3Const*
dtype0*
_output_shapes
:*
valueB*    

training/Adam/Variable_3
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Õ
training/Adam/Variable_3/AssignAssigntraining/Adam/Variable_3training/Adam/zeros_3*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3

training/Adam/Variable_3/readIdentitytraining/Adam/Variable_3*
_output_shapes
:*
T0*+
_class!
loc:@training/Adam/Variable_3
j
training/Adam/zeros_4Const*
valueB*    *
dtype0*
_output_shapes

:

training/Adam/Variable_4
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
Ł
training/Adam/Variable_4/AssignAssigntraining/Adam/Variable_4training/Adam/zeros_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:

training/Adam/Variable_4/readIdentitytraining/Adam/Variable_4*
T0*+
_class!
loc:@training/Adam/Variable_4*
_output_shapes

:
b
training/Adam/zeros_5Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_5
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Õ
training/Adam/Variable_5/AssignAssigntraining/Adam/Variable_5training/Adam/zeros_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
:

training/Adam/Variable_5/readIdentitytraining/Adam/Variable_5*
T0*+
_class!
loc:@training/Adam/Variable_5*
_output_shapes
:
j
training/Adam/zeros_6Const*
_output_shapes

:*
valueB*    *
dtype0

training/Adam/Variable_6
VariableV2*
dtype0*
_output_shapes

:*
	container *
shape
:*
shared_name 
Ł
training/Adam/Variable_6/AssignAssigntraining/Adam/Variable_6training/Adam/zeros_6*
_output_shapes

:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(

training/Adam/Variable_6/readIdentitytraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
_output_shapes

:*
T0
b
training/Adam/zeros_7Const*
valueB*    *
dtype0*
_output_shapes
:

training/Adam/Variable_7
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Õ
training/Adam/Variable_7/AssignAssigntraining/Adam/Variable_7training/Adam/zeros_7*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(

training/Adam/Variable_7/readIdentitytraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
_output_shapes
:*
T0
o
%training/Adam/zeros_8/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
`
training/Adam/zeros_8/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_8Fill%training/Adam/zeros_8/shape_as_tensortraining/Adam/zeros_8/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_8
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 
Õ
training/Adam/Variable_8/AssignAssigntraining/Adam/Variable_8training/Adam/zeros_8*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:

training/Adam/Variable_8/readIdentitytraining/Adam/Variable_8*
T0*+
_class!
loc:@training/Adam/Variable_8*
_output_shapes
:
o
%training/Adam/zeros_9/shape_as_tensorConst*
_output_shapes
:*
valueB:*
dtype0
`
training/Adam/zeros_9/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_9Fill%training/Adam/zeros_9/shape_as_tensortraining/Adam/zeros_9/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_9
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Õ
training/Adam/Variable_9/AssignAssigntraining/Adam/Variable_9training/Adam/zeros_9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_9

training/Adam/Variable_9/readIdentitytraining/Adam/Variable_9*
T0*+
_class!
loc:@training/Adam/Variable_9*
_output_shapes
:
p
&training/Adam/zeros_10/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_10/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

training/Adam/zeros_10Fill&training/Adam/zeros_10/shape_as_tensortraining/Adam/zeros_10/Const*
_output_shapes
:*
T0*

index_type0

training/Adam/Variable_10
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ł
 training/Adam/Variable_10/AssignAssigntraining/Adam/Variable_10training/Adam/zeros_10*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10*
validate_shape(*
_output_shapes
:

training/Adam/Variable_10/readIdentitytraining/Adam/Variable_10*
_output_shapes
:*
T0*,
_class"
 loc:@training/Adam/Variable_10
p
&training/Adam/zeros_11/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
a
training/Adam/zeros_11/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    

training/Adam/zeros_11Fill&training/Adam/zeros_11/shape_as_tensortraining/Adam/zeros_11/Const*
T0*

index_type0*
_output_shapes
:

training/Adam/Variable_11
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Ł
 training/Adam/Variable_11/AssignAssigntraining/Adam/Variable_11training/Adam/zeros_11*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(*
_output_shapes
:

training/Adam/Variable_11/readIdentitytraining/Adam/Variable_11*
T0*,
_class"
 loc:@training/Adam/Variable_11*
_output_shapes
:
r
training/Adam/mul_1MulAdam/beta_1/readtraining/Adam/Variable/read*
T0*
_output_shapes

:
Z
training/Adam/sub_2/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_2Subtraining/Adam/sub_2/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_2Multraining/Adam/sub_24training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
m
training/Adam/add_1Addtraining/Adam/mul_1training/Adam/mul_2*
T0*
_output_shapes

:
t
training/Adam/mul_3MulAdam/beta_2/readtraining/Adam/Variable_4/read*
T0*
_output_shapes

:
Z
training/Adam/sub_3/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_3Subtraining/Adam/sub_3/xAdam/beta_2/read*
T0*
_output_shapes
: 
}
training/Adam/SquareSquare4training/Adam/gradients/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:*
T0
n
training/Adam/mul_4Multraining/Adam/sub_3training/Adam/Square*
T0*
_output_shapes

:
m
training/Adam/add_2Addtraining/Adam/mul_3training/Adam/mul_4*
T0*
_output_shapes

:
k
training/Adam/mul_5Multraining/Adam/multraining/Adam/add_1*
_output_shapes

:*
T0
Z
training/Adam/Const_2Const*
_output_shapes
: *
valueB
 *    *
dtype0
Z
training/Adam/Const_3Const*
valueB
 *  *
dtype0*
_output_shapes
: 

training/Adam/clip_by_value_1ClipByValuetraining/Adam/add_2training/Adam/Const_2training/Adam/Const_3*
T0*
_output_shapes

:
d
training/Adam/Sqrt_1Sqrttraining/Adam/clip_by_value_1*
_output_shapes

:*
T0
Z
training/Adam/add_3/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_3Addtraining/Adam/Sqrt_1training/Adam/add_3/y*
_output_shapes

:*
T0
u
training/Adam/truediv_1RealDivtraining/Adam/mul_5training/Adam/add_3*
_output_shapes

:*
T0
q
training/Adam/sub_4Subdense_1/kernel/readtraining/Adam/truediv_1*
T0*
_output_shapes

:
Č
training/Adam/AssignAssigntraining/Adam/Variabletraining/Adam/add_1*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable
Ī
training/Adam/Assign_1Assigntraining/Adam/Variable_4training/Adam/add_2*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:
ŗ
training/Adam/Assign_2Assigndense_1/kerneltraining/Adam/sub_4*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
_output_shapes

:
p
training/Adam/mul_6MulAdam/beta_1/readtraining/Adam/Variable_1/read*
T0*
_output_shapes
:
Z
training/Adam/sub_5/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_5Subtraining/Adam/sub_5/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_7Multraining/Adam/sub_58training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:*
T0
i
training/Adam/add_4Addtraining/Adam/mul_6training/Adam/mul_7*
T0*
_output_shapes
:
p
training/Adam/mul_8MulAdam/beta_2/readtraining/Adam/Variable_5/read*
T0*
_output_shapes
:
Z
training/Adam/sub_6/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_6Subtraining/Adam/sub_6/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_1Square8training/Adam/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/mul_9Multraining/Adam/sub_6training/Adam/Square_1*
T0*
_output_shapes
:
i
training/Adam/add_5Addtraining/Adam/mul_8training/Adam/mul_9*
T0*
_output_shapes
:
h
training/Adam/mul_10Multraining/Adam/multraining/Adam/add_4*
T0*
_output_shapes
:
Z
training/Adam/Const_4Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_5Const*
valueB
 *  *
dtype0*
_output_shapes
: 

training/Adam/clip_by_value_2ClipByValuetraining/Adam/add_5training/Adam/Const_4training/Adam/Const_5*
T0*
_output_shapes
:
`
training/Adam/Sqrt_2Sqrttraining/Adam/clip_by_value_2*
T0*
_output_shapes
:
Z
training/Adam/add_6/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
l
training/Adam/add_6Addtraining/Adam/Sqrt_2training/Adam/add_6/y*
T0*
_output_shapes
:
r
training/Adam/truediv_2RealDivtraining/Adam/mul_10training/Adam/add_6*
_output_shapes
:*
T0
k
training/Adam/sub_7Subdense_1/bias/readtraining/Adam/truediv_2*
T0*
_output_shapes
:
Ź
training/Adam/Assign_3Assigntraining/Adam/Variable_1training/Adam/add_4*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
:
Ź
training/Adam/Assign_4Assigntraining/Adam/Variable_5training/Adam/add_5*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
:
²
training/Adam/Assign_5Assigndense_1/biastraining/Adam/sub_7*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
u
training/Adam/mul_11MulAdam/beta_1/readtraining/Adam/Variable_2/read*
_output_shapes

:*
T0
Z
training/Adam/sub_8/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_8Subtraining/Adam/sub_8/xAdam/beta_1/read*
T0*
_output_shapes
: 

training/Adam/mul_12Multraining/Adam/sub_84training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
o
training/Adam/add_7Addtraining/Adam/mul_11training/Adam/mul_12*
T0*
_output_shapes

:
u
training/Adam/mul_13MulAdam/beta_2/readtraining/Adam/Variable_6/read*
_output_shapes

:*
T0
Z
training/Adam/sub_9/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
d
training/Adam/sub_9Subtraining/Adam/sub_9/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_2Square4training/Adam/gradients/dense_2/MatMul_grad/MatMul_1*
T0*
_output_shapes

:
q
training/Adam/mul_14Multraining/Adam/sub_9training/Adam/Square_2*
_output_shapes

:*
T0
o
training/Adam/add_8Addtraining/Adam/mul_13training/Adam/mul_14*
_output_shapes

:*
T0
l
training/Adam/mul_15Multraining/Adam/multraining/Adam/add_7*
T0*
_output_shapes

:
Z
training/Adam/Const_6Const*
dtype0*
_output_shapes
: *
valueB
 *    
Z
training/Adam/Const_7Const*
valueB
 *  *
dtype0*
_output_shapes
: 

training/Adam/clip_by_value_3ClipByValuetraining/Adam/add_8training/Adam/Const_6training/Adam/Const_7*
_output_shapes

:*
T0
d
training/Adam/Sqrt_3Sqrttraining/Adam/clip_by_value_3*
_output_shapes

:*
T0
Z
training/Adam/add_9/yConst*
valueB
 *æÖ3*
dtype0*
_output_shapes
: 
p
training/Adam/add_9Addtraining/Adam/Sqrt_3training/Adam/add_9/y*
T0*
_output_shapes

:
v
training/Adam/truediv_3RealDivtraining/Adam/mul_15training/Adam/add_9*
_output_shapes

:*
T0
r
training/Adam/sub_10Subdense_2/kernel/readtraining/Adam/truediv_3*
_output_shapes

:*
T0
Ī
training/Adam/Assign_6Assigntraining/Adam/Variable_2training/Adam/add_7*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

:
Ī
training/Adam/Assign_7Assigntraining/Adam/Variable_6training/Adam/add_8*
T0*+
_class!
loc:@training/Adam/Variable_6*
validate_shape(*
_output_shapes

:*
use_locking(
»
training/Adam/Assign_8Assigndense_2/kerneltraining/Adam/sub_10*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:
q
training/Adam/mul_16MulAdam/beta_1/readtraining/Adam/Variable_3/read*
T0*
_output_shapes
:
[
training/Adam/sub_11/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_11Subtraining/Adam/sub_11/xAdam/beta_1/read*
_output_shapes
: *
T0

training/Adam/mul_17Multraining/Adam/sub_118training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
l
training/Adam/add_10Addtraining/Adam/mul_16training/Adam/mul_17*
T0*
_output_shapes
:
q
training/Adam/mul_18MulAdam/beta_2/readtraining/Adam/Variable_7/read*
T0*
_output_shapes
:
[
training/Adam/sub_12/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
f
training/Adam/sub_12Subtraining/Adam/sub_12/xAdam/beta_2/read*
T0*
_output_shapes
: 

training/Adam/Square_3Square8training/Adam/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:
n
training/Adam/mul_19Multraining/Adam/sub_12training/Adam/Square_3*
T0*
_output_shapes
:
l
training/Adam/add_11Addtraining/Adam/mul_18training/Adam/mul_19*
T0*
_output_shapes
:
i
training/Adam/mul_20Multraining/Adam/multraining/Adam/add_10*
T0*
_output_shapes
:
Z
training/Adam/Const_8Const*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
training/Adam/Const_9Const*
valueB
 *  *
dtype0*
_output_shapes
: 

training/Adam/clip_by_value_4ClipByValuetraining/Adam/add_11training/Adam/Const_8training/Adam/Const_9*
T0*
_output_shapes
:
`
training/Adam/Sqrt_4Sqrttraining/Adam/clip_by_value_4*
T0*
_output_shapes
:
[
training/Adam/add_12/yConst*
_output_shapes
: *
valueB
 *æÖ3*
dtype0
n
training/Adam/add_12Addtraining/Adam/Sqrt_4training/Adam/add_12/y*
T0*
_output_shapes
:
s
training/Adam/truediv_4RealDivtraining/Adam/mul_20training/Adam/add_12*
T0*
_output_shapes
:
l
training/Adam/sub_13Subdense_2/bias/readtraining/Adam/truediv_4*
_output_shapes
:*
T0
Ė
training/Adam/Assign_9Assigntraining/Adam/Variable_3training/Adam/add_10*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(*
_output_shapes
:*
use_locking(
Ģ
training/Adam/Assign_10Assigntraining/Adam/Variable_7training/Adam/add_11*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:
“
training/Adam/Assign_11Assigndense_2/biastraining/Adam/sub_13*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:
’
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/Adam/Assign^training/Adam/AssignAdd^training/Adam/Assign_1^training/Adam/Assign_10^training/Adam/Assign_11^training/Adam/Assign_2^training/Adam/Assign_3^training/Adam/Assign_4^training/Adam/Assign_5^training/Adam/Assign_6^training/Adam/Assign_7^training/Adam/Assign_8^training/Adam/Assign_9

IsVariableInitializedIsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializeddense_2/kernel*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializedAdam/iterations*
_output_shapes
: *"
_class
loc:@Adam/iterations*
dtype0	
z
IsVariableInitialized_5IsVariableInitializedAdam/lr*
_class
loc:@Adam/lr*
dtype0*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedAdam/beta_1*
_class
loc:@Adam/beta_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedAdam/beta_2*
_class
loc:@Adam/beta_2*
dtype0*
_output_shapes
: 

IsVariableInitialized_8IsVariableInitialized
Adam/decay*
_class
loc:@Adam/decay*
dtype0*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedtraining/Adam/Variable*)
_class
loc:@training/Adam/Variable*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedtraining/Adam/Variable_1*+
_class!
loc:@training/Adam/Variable_1*
dtype0*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedtraining/Adam/Variable_2*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_2*
dtype0

IsVariableInitialized_12IsVariableInitializedtraining/Adam/Variable_3*
_output_shapes
: *+
_class!
loc:@training/Adam/Variable_3*
dtype0

IsVariableInitialized_13IsVariableInitializedtraining/Adam/Variable_4*+
_class!
loc:@training/Adam/Variable_4*
dtype0*
_output_shapes
: 

IsVariableInitialized_14IsVariableInitializedtraining/Adam/Variable_5*+
_class!
loc:@training/Adam/Variable_5*
dtype0*
_output_shapes
: 

IsVariableInitialized_15IsVariableInitializedtraining/Adam/Variable_6*+
_class!
loc:@training/Adam/Variable_6*
dtype0*
_output_shapes
: 

IsVariableInitialized_16IsVariableInitializedtraining/Adam/Variable_7*+
_class!
loc:@training/Adam/Variable_7*
dtype0*
_output_shapes
: 

IsVariableInitialized_17IsVariableInitializedtraining/Adam/Variable_8*+
_class!
loc:@training/Adam/Variable_8*
dtype0*
_output_shapes
: 

IsVariableInitialized_18IsVariableInitializedtraining/Adam/Variable_9*+
_class!
loc:@training/Adam/Variable_9*
dtype0*
_output_shapes
: 

IsVariableInitialized_19IsVariableInitializedtraining/Adam/Variable_10*,
_class"
 loc:@training/Adam/Variable_10*
dtype0*
_output_shapes
: 

IsVariableInitialized_20IsVariableInitializedtraining/Adam/Variable_11*,
_class"
 loc:@training/Adam/Variable_11*
dtype0*
_output_shapes
: 
č
initNoOp^Adam/beta_1/Assign^Adam/beta_2/Assign^Adam/decay/Assign^Adam/iterations/Assign^Adam/lr/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign^training/Adam/Variable/Assign ^training/Adam/Variable_1/Assign!^training/Adam/Variable_10/Assign!^training/Adam/Variable_11/Assign ^training/Adam/Variable_2/Assign ^training/Adam/Variable_3/Assign ^training/Adam/Variable_4/Assign ^training/Adam/Variable_5/Assign ^training/Adam/Variable_6/Assign ^training/Adam/Variable_7/Assign ^training/Adam/Variable_8/Assign ^training/Adam/Variable_9/Assign
J
TopKV2/kConst*
value	B :*
dtype0*
_output_shapes
: 

TopKV2TopKV2sequential_1/dense_2/SoftmaxTopKV2/k*:
_output_shapes(
&:’’’’’’’’’:’’’’’’’’’*
sorted(*
T0
z
ConstConst*A
value8B6BIris-setosaBIris-versicolorBIris-virginica*
dtype0*
_output_shapes
:
V
index_to_string/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
]
index_to_string/range/startConst*
_output_shapes
: *
value	B : *
dtype0
]
index_to_string/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

index_to_string/rangeRangeindex_to_string/range/startindex_to_string/Sizeindex_to_string/range/delta*
_output_shapes
:*

Tidx0
j
index_to_string/ToInt64Castindex_to_string/range*
_output_shapes
:*

DstT0	*

SrcT0

index_to_stringHashTableV2*
use_node_name_sharing( *
	key_dtype0	*
	container *
value_dtype0*
_output_shapes
: *
shared_name 
Y
index_to_string/ConstConst*
valueB	 BUNK*
dtype0*
_output_shapes
: 
x
index_to_string/table_initInitializeTableV2index_to_stringindex_to_string/ToInt64Const*

Tval0*

Tkey0	
Z
ToInt64CastTopKV2:1*

SrcT0*'
_output_shapes
:’’’’’’’’’*

DstT0	

index_to_string_LookupLookupTableFindV2index_to_stringToInt64index_to_string/Const*'
_output_shapes
:’’’’’’’’’*	
Tin0	*

Tout0
4
init_all_tablesNoOp^index_to_string/table_init
(
legacy_init_opNoOp^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_576dc508d7cf4e5887b27fdf6beaabd7/part
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
value	B :*
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
„
save/SaveV2/tensor_namesConst"/device:CPU:0*É
valueæB¼BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ė
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesAdam/beta_1Adam/beta_2
Adam/decayAdam/iterationsAdam/lrdense_1/biasdense_1/kerneldense_2/biasdense_2/kerneltraining/Adam/Variabletraining/Adam/Variable_1training/Adam/Variable_10training/Adam/Variable_11training/Adam/Variable_2training/Adam/Variable_3training/Adam/Variable_4training/Adam/Variable_5training/Adam/Variable_6training/Adam/Variable_7training/Adam/Variable_8training/Adam/Variable_9"/device:CPU:0*#
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
¬
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ø
save/RestoreV2/tensor_namesConst"/device:CPU:0*É
valueæB¼BAdam/beta_1BAdam/beta_2B
Adam/decayBAdam/iterationsBAdam/lrBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBtraining/Adam/VariableBtraining/Adam/Variable_1Btraining/Adam/Variable_10Btraining/Adam/Variable_11Btraining/Adam/Variable_2Btraining/Adam/Variable_3Btraining/Adam/Variable_4Btraining/Adam/Variable_5Btraining/Adam/Variable_6Btraining/Adam/Variable_7Btraining/Adam/Variable_8Btraining/Adam/Variable_9*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*#
dtypes
2	*h
_output_shapesV
T:::::::::::::::::::::

save/AssignAssignAdam/beta_1save/RestoreV2*
_class
loc:@Adam/beta_1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
 
save/Assign_1AssignAdam/beta_2save/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Adam/beta_2*
validate_shape(*
_output_shapes
: 

save/Assign_2Assign
Adam/decaysave/RestoreV2:2*
T0*
_class
loc:@Adam/decay*
validate_shape(*
_output_shapes
: *
use_locking(
Ø
save/Assign_3AssignAdam/iterationssave/RestoreV2:3*"
_class
loc:@Adam/iterations*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	

save/Assign_4AssignAdam/lrsave/RestoreV2:4*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Adam/lr
¦
save/Assign_5Assigndense_1/biassave/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes
:
®
save/Assign_6Assigndense_1/kernelsave/RestoreV2:6*
_output_shapes

:*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
¦
save/Assign_7Assigndense_2/biassave/RestoreV2:7*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
®
save/Assign_8Assigndense_2/kernelsave/RestoreV2:8*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes

:
¾
save/Assign_9Assigntraining/Adam/Variablesave/RestoreV2:9*
use_locking(*
T0*)
_class
loc:@training/Adam/Variable*
validate_shape(*
_output_shapes

:
Ą
save/Assign_10Assigntraining/Adam/Variable_1save/RestoreV2:10*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_1*
validate_shape(*
_output_shapes
:
Ā
save/Assign_11Assigntraining/Adam/Variable_10save/RestoreV2:11*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_10
Ā
save/Assign_12Assigntraining/Adam/Variable_11save/RestoreV2:12*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@training/Adam/Variable_11*
validate_shape(
Ä
save/Assign_13Assigntraining/Adam/Variable_2save/RestoreV2:13*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_2*
validate_shape(*
_output_shapes

:
Ą
save/Assign_14Assigntraining/Adam/Variable_3save/RestoreV2:14*
_output_shapes
:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_3*
validate_shape(
Ä
save/Assign_15Assigntraining/Adam/Variable_4save/RestoreV2:15*+
_class!
loc:@training/Adam/Variable_4*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
Ą
save/Assign_16Assigntraining/Adam/Variable_5save/RestoreV2:16*
T0*+
_class!
loc:@training/Adam/Variable_5*
validate_shape(*
_output_shapes
:*
use_locking(
Ä
save/Assign_17Assigntraining/Adam/Variable_6save/RestoreV2:17*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_6
Ą
save/Assign_18Assigntraining/Adam/Variable_7save/RestoreV2:18*
T0*+
_class!
loc:@training/Adam/Variable_7*
validate_shape(*
_output_shapes
:*
use_locking(
Ą
save/Assign_19Assigntraining/Adam/Variable_8save/RestoreV2:19*
use_locking(*
T0*+
_class!
loc:@training/Adam/Variable_8*
validate_shape(*
_output_shapes
:
Ą
save/Assign_20Assigntraining/Adam/Variable_9save/RestoreV2:20*
T0*+
_class!
loc:@training/Adam/Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(
ó
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"¹
	variables«Ø
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
d
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:0
D
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:0
T
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:0
T
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:0
P
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:0
o
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:0
w
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:0
w
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:0
w
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:0
w
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:0
w
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:0
w
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:0
w
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:0
w
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:0
w
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:0
{
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:0
{
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:0"$
legacy_init_op

legacy_init_op"3
table_initializer

index_to_string/table_init"Ć
trainable_variables«Ø
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
d
Adam/iterations:0Adam/iterations/AssignAdam/iterations/read:02Adam/iterations/initial_value:0
D
	Adam/lr:0Adam/lr/AssignAdam/lr/read:02Adam/lr/initial_value:0
T
Adam/beta_1:0Adam/beta_1/AssignAdam/beta_1/read:02Adam/beta_1/initial_value:0
T
Adam/beta_2:0Adam/beta_2/AssignAdam/beta_2/read:02Adam/beta_2/initial_value:0
P
Adam/decay:0Adam/decay/AssignAdam/decay/read:02Adam/decay/initial_value:0
o
training/Adam/Variable:0training/Adam/Variable/Assigntraining/Adam/Variable/read:02training/Adam/zeros:0
w
training/Adam/Variable_1:0training/Adam/Variable_1/Assigntraining/Adam/Variable_1/read:02training/Adam/zeros_1:0
w
training/Adam/Variable_2:0training/Adam/Variable_2/Assigntraining/Adam/Variable_2/read:02training/Adam/zeros_2:0
w
training/Adam/Variable_3:0training/Adam/Variable_3/Assigntraining/Adam/Variable_3/read:02training/Adam/zeros_3:0
w
training/Adam/Variable_4:0training/Adam/Variable_4/Assigntraining/Adam/Variable_4/read:02training/Adam/zeros_4:0
w
training/Adam/Variable_5:0training/Adam/Variable_5/Assigntraining/Adam/Variable_5/read:02training/Adam/zeros_5:0
w
training/Adam/Variable_6:0training/Adam/Variable_6/Assigntraining/Adam/Variable_6/read:02training/Adam/zeros_6:0
w
training/Adam/Variable_7:0training/Adam/Variable_7/Assigntraining/Adam/Variable_7/read:02training/Adam/zeros_7:0
w
training/Adam/Variable_8:0training/Adam/Variable_8/Assigntraining/Adam/Variable_8/read:02training/Adam/zeros_8:0
w
training/Adam/Variable_9:0training/Adam/Variable_9/Assigntraining/Adam/Variable_9/read:02training/Adam/zeros_9:0
{
training/Adam/Variable_10:0 training/Adam/Variable_10/Assign training/Adam/Variable_10/read:02training/Adam/zeros_10:0
{
training/Adam/Variable_11:0 training/Adam/Variable_11/Assign training/Adam/Variable_11/read:02training/Adam/zeros_11:0*
predict-iris
$
inputs
x:0’’’’’’’’’C

prediction5
sequential_1/dense_2/Softmax:0’’’’’’’’’tensorflow/serving/predict*ø
serving_default¤

inputs
tf_example:0:
classes/
index_to_string_Lookup:0’’’’’’’’’)
scores
TopKV2:0’’’’’’’’’tensorflow/serving/classify