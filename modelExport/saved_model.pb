”й;
ЈDРD
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"TА

value"T

output_ref"TА" 
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
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
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

ControlTrigger
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
)
Exit	
data"T
output"T"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
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
.
IsFinite
x"T
y
"
Ttype:
2
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

2
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
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

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
М
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

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
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
list(type)(0И
К
ReverseSequence

input"T
seq_lengths"Tlen
output"T"
seq_dimint"
	batch_dimint "	
Ttype"
Tlentype0	:
2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
•

ScatterAdd
ref"TА
indices"Tindices
updates"T

output_ref"TА" 
Ttype:
2	"
Tindicestype:
2	"
use_lockingbool( 
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
0
Sigmoid
x"T
y"T"
Ttype:

2
=
SigmoidGrad
y"T
dy"T
z"T"
Ttype:

2
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
-
Sqrt
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
A

StackPopV2

handle
elem"	elem_type"
	elem_typetypeИ
X
StackPushV2

handle	
elem"T
output"T"	
Ttype"
swap_memorybool( И
S
StackV2
max_size

handle"
	elem_typetype"

stack_namestring И
2
StopGradient

input"T
output"T"	
Ttype
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
`
TensorArrayGradV3

handle
flow_in
grad_handle
flow_out"
sourcestringИ
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
ё
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
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
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
Ѕ
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.7.02v1.7.0-3-g024aecf414дв3
L
PlaceholderPlaceholder*
shape: *
dtype0*
_output_shapes
: 
d
global_step/initial_valueConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
o
global_step
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
Ѓ
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0*
_class
loc:@global_step
z
labelPlaceholder*%
shape:€€€€€€€€€€€€€€€€€€*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
В
Placeholder_1Placeholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
]
inputs/SignSignPlaceholder_1*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
^
inputs/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
З

inputs/SumSuminputs/Signinputs/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
k
inputs/random_normal/shapeConst*
valueB"N  @   *
dtype0*
_output_shapes
:
^
inputs/random_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    
`
inputs/random_normal/stddevConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
≠
)inputs/random_normal/RandomStandardNormalRandomStandardNormalinputs/random_normal/shape*
T0*
dtype0*
_output_shapes
:	ќ$@*
seed2 *

seed 
С
inputs/random_normal/mulMul)inputs/random_normal/RandomStandardNormalinputs/random_normal/stddev*
T0*
_output_shapes
:	ќ$@
z
inputs/random_normalAddinputs/random_normal/mulinputs/random_normal/mean*
T0*
_output_shapes
:	ќ$@
Е
inputs/Variable
VariableV2*
shape:	ќ$@*
shared_name *
dtype0*
_output_shapes
:	ќ$@*
	container 
Њ
inputs/Variable/AssignAssigninputs/Variableinputs/random_normal*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@*
use_locking(

inputs/Variable/readIdentityinputs/Variable*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
m
inputs/random_normal_1/shapeConst*
valueB"А      *
dtype0*
_output_shapes
:
`
inputs/random_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
inputs/random_normal_1/stddevConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
±
+inputs/random_normal_1/RandomStandardNormalRandomStandardNormalinputs/random_normal_1/shape*

seed *
T0*
dtype0*
_output_shapes
:	А*
seed2 
Ч
inputs/random_normal_1/mulMul+inputs/random_normal_1/RandomStandardNormalinputs/random_normal_1/stddev*
T0*
_output_shapes
:	А
А
inputs/random_normal_1Addinputs/random_normal_1/mulinputs/random_normal_1/mean*
T0*
_output_shapes
:	А
З
inputs/Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:	А*
	container *
shape:	А
∆
inputs/Variable_1/AssignAssigninputs/Variable_1inputs/random_normal_1*
use_locking(*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А
Е
inputs/Variable_1/readIdentityinputs/Variable_1*
T0*$
_class
loc:@inputs/Variable_1*
_output_shapes
:	А
f
inputs/random_normal_2/shapeConst*
valueB:*
dtype0*
_output_shapes
:
`
inputs/random_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
b
inputs/random_normal_2/stddevConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ђ
+inputs/random_normal_2/RandomStandardNormalRandomStandardNormalinputs/random_normal_2/shape*

seed *
T0*
dtype0*
_output_shapes
:*
seed2 
Т
inputs/random_normal_2/mulMul+inputs/random_normal_2/RandomStandardNormalinputs/random_normal_2/stddev*
_output_shapes
:*
T0
{
inputs/random_normal_2Addinputs/random_normal_2/mulinputs/random_normal_2/mean*
T0*
_output_shapes
:
}
inputs/Variable_2
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:
Ѕ
inputs/Variable_2/AssignAssigninputs/Variable_2inputs/random_normal_2*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
А
inputs/Variable_2/readIdentityinputs/Variable_2*
T0*$
_class
loc:@inputs/Variable_2*
_output_shapes
:
„
inputs/embedding_lookupGatherinputs/Variable/readPlaceholder_1*"
_class
loc:@inputs/Variable*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tindices0*
Tparams0*
validate_indices(
e
#biLSTM/bidirectional_rnn/fw/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
l
*biLSTM/bidirectional_rnn/fw/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
l
*biLSTM/bidirectional_rnn/fw/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
“
$biLSTM/bidirectional_rnn/fw/fw/rangeRange*biLSTM/bidirectional_rnn/fw/fw/range/start#biLSTM/bidirectional_rnn/fw/fw/Rank*biLSTM/bidirectional_rnn/fw/fw/range/delta*
_output_shapes
:*

Tidx0

.biLSTM/bidirectional_rnn/fw/fw/concat/values_0Const*
dtype0*
_output_shapes
:*
valueB"       
l
*biLSTM/bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
н
%biLSTM/bidirectional_rnn/fw/fw/concatConcatV2.biLSTM/bidirectional_rnn/fw/fw/concat/values_0$biLSTM/bidirectional_rnn/fw/fw/range*biLSTM/bidirectional_rnn/fw/fw/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
Ѕ
(biLSTM/bidirectional_rnn/fw/fw/transpose	Transposeinputs/embedding_lookup%biLSTM/bidirectional_rnn/fw/fw/concat*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0
t
.biLSTM/bidirectional_rnn/fw/fw/sequence_lengthIdentity
inputs/Sum*
T0*#
_output_shapes
:€€€€€€€€€
М
$biLSTM/bidirectional_rnn/fw/fw/ShapeShape(biLSTM/bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
|
2biLSTM/bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4biLSTM/bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4biLSTM/bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
,biLSTM/bidirectional_rnn/fw/fw/strided_sliceStridedSlice$biLSTM/bidirectional_rnn/fw/fw/Shape2biLSTM/bidirectional_rnn/fw/fw/strided_slice/stack4biLSTM/bidirectional_rnn/fw/fw/strided_slice/stack_14biLSTM/bidirectional_rnn/fw/fw/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
Ь
ZbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Я
VbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_sliceZbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
Ы
QbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Щ
WbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ь
RbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatConcatV2VbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDimsQbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstWbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ь
WbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
QbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zerosFillRbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatWbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
Ю
\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
£
XbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_slice\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
Э
SbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
Ю
\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
£
XbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_slice\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2/dim*
_output_shapes
:*

Tdim0*
T0
Э
SbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
Ы
YbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
TbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1ConcatV2XbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2SbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2YbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ю
YbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
–
SbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1FillTbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1YbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
Ю
\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3/dimConst*
_output_shapes
: *
value	B : *
dtype0
£
XbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_slice\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3/dim*
T0*
_output_shapes
:*

Tdim0
Э
SbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_3Const*
valueB:@*
dtype0*
_output_shapes
:
Ю
\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
£
XbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_slice\biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
Э
SbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstConst*
_output_shapes
:*
valueB:@*
dtype0
Ы
YbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
TbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatConcatV2XbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDimsSbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstYbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
Ю
YbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
–
SbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zerosFillTbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatYbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
†
^biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
І
ZbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_slice^biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1/dim*
T0*
_output_shapes
:*

Tdim0
Я
UbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
†
^biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 
І
ZbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_slice^biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
Я
UbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
Э
[biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
ђ
VbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1ConcatV2ZbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2UbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2[biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
†
[biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
÷
UbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1FillVbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1[biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/Const*'
_output_shapes
:€€€€€€€€€@*
T0*

index_type0
†
^biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
І
ZbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3
ExpandDims,biLSTM/bidirectional_rnn/fw/fw/strided_slice^biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3/dim*
_output_shapes
:*

Tdim0*
T0
Я
UbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_3Const*
valueB:@*
dtype0*
_output_shapes
:
Ф
&biLSTM/bidirectional_rnn/fw/fw/Shape_1Shape.biLSTM/bidirectional_rnn/fw/fw/sequence_length*
T0*
out_type0*
_output_shapes
:
Ф
$biLSTM/bidirectional_rnn/fw/fw/stackPack,biLSTM/bidirectional_rnn/fw/fw/strided_slice*

axis *
N*
_output_shapes
:*
T0
†
$biLSTM/bidirectional_rnn/fw/fw/EqualEqual&biLSTM/bidirectional_rnn/fw/fw/Shape_1$biLSTM/bidirectional_rnn/fw/fw/stack*
T0*
_output_shapes
:
n
$biLSTM/bidirectional_rnn/fw/fw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
™
"biLSTM/bidirectional_rnn/fw/fw/AllAll$biLSTM/bidirectional_rnn/fw/fw/Equal$biLSTM/bidirectional_rnn/fw/fw/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ї
+biLSTM/bidirectional_rnn/fw/fw/Assert/ConstConst*
dtype0*
_output_shapes
: *_
valueVBT BNExpected shape for Tensor biLSTM/bidirectional_rnn/fw/fw/sequence_length:0 is 
~
-biLSTM/bidirectional_rnn/fw/fw/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
¬
3biLSTM/bidirectional_rnn/fw/fw/Assert/Assert/data_0Const*_
valueVBT BNExpected shape for Tensor biLSTM/bidirectional_rnn/fw/fw/sequence_length:0 is *
dtype0*
_output_shapes
: 
Д
3biLSTM/bidirectional_rnn/fw/fw/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
≤
,biLSTM/bidirectional_rnn/fw/fw/Assert/AssertAssert"biLSTM/bidirectional_rnn/fw/fw/All3biLSTM/bidirectional_rnn/fw/fw/Assert/Assert/data_0$biLSTM/bidirectional_rnn/fw/fw/stack3biLSTM/bidirectional_rnn/fw/fw/Assert/Assert/data_2&biLSTM/bidirectional_rnn/fw/fw/Shape_1*
T
2*
	summarize
√
*biLSTM/bidirectional_rnn/fw/fw/CheckSeqLenIdentity.biLSTM/bidirectional_rnn/fw/fw/sequence_length-^biLSTM/bidirectional_rnn/fw/fw/Assert/Assert*#
_output_shapes
:€€€€€€€€€*
T0
О
&biLSTM/bidirectional_rnn/fw/fw/Shape_2Shape(biLSTM/bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
~
4biLSTM/bidirectional_rnn/fw/fw/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6biLSTM/bidirectional_rnn/fw/fw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6biLSTM/bidirectional_rnn/fw/fw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
.biLSTM/bidirectional_rnn/fw/fw/strided_slice_1StridedSlice&biLSTM/bidirectional_rnn/fw/fw/Shape_24biLSTM/bidirectional_rnn/fw/fw/strided_slice_1/stack6biLSTM/bidirectional_rnn/fw/fw/strided_slice_1/stack_16biLSTM/bidirectional_rnn/fw/fw/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
О
&biLSTM/bidirectional_rnn/fw/fw/Shape_3Shape(biLSTM/bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
~
4biLSTM/bidirectional_rnn/fw/fw/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
А
6biLSTM/bidirectional_rnn/fw/fw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6biLSTM/bidirectional_rnn/fw/fw/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
.biLSTM/bidirectional_rnn/fw/fw/strided_slice_2StridedSlice&biLSTM/bidirectional_rnn/fw/fw/Shape_34biLSTM/bidirectional_rnn/fw/fw/strided_slice_2/stack6biLSTM/bidirectional_rnn/fw/fw/strided_slice_2/stack_16biLSTM/bidirectional_rnn/fw/fw/strided_slice_2/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
o
-biLSTM/bidirectional_rnn/fw/fw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
«
)biLSTM/bidirectional_rnn/fw/fw/ExpandDims
ExpandDims.biLSTM/bidirectional_rnn/fw/fw/strided_slice_2-biLSTM/bidirectional_rnn/fw/fw/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
p
&biLSTM/bidirectional_rnn/fw/fw/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
n
,biLSTM/bidirectional_rnn/fw/fw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
о
'biLSTM/bidirectional_rnn/fw/fw/concat_1ConcatV2)biLSTM/bidirectional_rnn/fw/fw/ExpandDims&biLSTM/bidirectional_rnn/fw/fw/Const_1,biLSTM/bidirectional_rnn/fw/fw/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
o
*biLSTM/bidirectional_rnn/fw/fw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≈
$biLSTM/bidirectional_rnn/fw/fw/zerosFill'biLSTM/bidirectional_rnn/fw/fw/concat_1*biLSTM/bidirectional_rnn/fw/fw/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
p
&biLSTM/bidirectional_rnn/fw/fw/Const_2Const*
_output_shapes
:*
valueB: *
dtype0
ї
"biLSTM/bidirectional_rnn/fw/fw/MinMin*biLSTM/bidirectional_rnn/fw/fw/CheckSeqLen&biLSTM/bidirectional_rnn/fw/fw/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
p
&biLSTM/bidirectional_rnn/fw/fw/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
ї
"biLSTM/bidirectional_rnn/fw/fw/MaxMax*biLSTM/bidirectional_rnn/fw/fw/CheckSeqLen&biLSTM/bidirectional_rnn/fw/fw/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
#biLSTM/bidirectional_rnn/fw/fw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
‘
*biLSTM/bidirectional_rnn/fw/fw/TensorArrayTensorArrayV3.biLSTM/bidirectional_rnn/fw/fw/strided_slice_1*J
tensor_array_name53biLSTM/bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:€€€€€€€€€@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
’
,biLSTM/bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV3.biLSTM/bidirectional_rnn/fw/fw/strided_slice_1*I
tensor_array_name42biLSTM/bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:€€€€€€€€€@*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
Я
7biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeShape(biLSTM/bidirectional_rnn/fw/fw/transpose*
T0*
out_type0*
_output_shapes
:
П
EbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
С
GbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
С
GbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
у
?biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSlice7biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeEbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackGbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1GbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

=biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

=biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
∞
7biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRange=biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/start?biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice=biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
Р
YbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3,biLSTM/bidirectional_rnn/fw/fw/TensorArray_17biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/range(biLSTM/bidirectional_rnn/fw/fw/transpose.biLSTM/bidirectional_rnn/fw/fw/TensorArray_1:1*
T0*;
_class1
/-loc:@biLSTM/bidirectional_rnn/fw/fw/transpose*
_output_shapes
: 
j
(biLSTM/bidirectional_rnn/fw/fw/Maximum/xConst*
_output_shapes
: *
value	B :*
dtype0
†
&biLSTM/bidirectional_rnn/fw/fw/MaximumMaximum(biLSTM/bidirectional_rnn/fw/fw/Maximum/x"biLSTM/bidirectional_rnn/fw/fw/Max*
T0*
_output_shapes
: 
™
&biLSTM/bidirectional_rnn/fw/fw/MinimumMinimum.biLSTM/bidirectional_rnn/fw/fw/strided_slice_1&biLSTM/bidirectional_rnn/fw/fw/Maximum*
T0*
_output_shapes
: 
x
6biLSTM/bidirectional_rnn/fw/fw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
ю
*biLSTM/bidirectional_rnn/fw/fw/while/EnterEnter6biLSTM/bidirectional_rnn/fw/fw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
н
,biLSTM/bidirectional_rnn/fw/fw/while/Enter_1Enter#biLSTM/bidirectional_rnn/fw/fw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
ц
,biLSTM/bidirectional_rnn/fw/fw/while/Enter_2Enter,biLSTM/bidirectional_rnn/fw/fw/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
ђ
,biLSTM/bidirectional_rnn/fw/fw/while/Enter_3EnterQbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
Ѓ
,biLSTM/bidirectional_rnn/fw/fw/while/Enter_4EnterSbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
Ѓ
,biLSTM/bidirectional_rnn/fw/fw/while/Enter_5EnterSbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
∞
,biLSTM/bidirectional_rnn/fw/fw/while/Enter_6EnterUbiLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
њ
*biLSTM/bidirectional_rnn/fw/fw/while/MergeMerge*biLSTM/bidirectional_rnn/fw/fw/while/Enter2biLSTM/bidirectional_rnn/fw/fw/while/NextIteration*
N*
_output_shapes
: : *
T0
≈
,biLSTM/bidirectional_rnn/fw/fw/while/Merge_1Merge,biLSTM/bidirectional_rnn/fw/fw/while/Enter_14biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
≈
,biLSTM/bidirectional_rnn/fw/fw/while/Merge_2Merge,biLSTM/bidirectional_rnn/fw/fw/while/Enter_24biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_2*
N*
_output_shapes
: : *
T0
÷
,biLSTM/bidirectional_rnn/fw/fw/while/Merge_3Merge,biLSTM/bidirectional_rnn/fw/fw/while/Enter_34biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_3*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
÷
,biLSTM/bidirectional_rnn/fw/fw/while/Merge_4Merge,biLSTM/bidirectional_rnn/fw/fw/while/Enter_44biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_4*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
÷
,biLSTM/bidirectional_rnn/fw/fw/while/Merge_5Merge,biLSTM/bidirectional_rnn/fw/fw/while/Enter_54biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_5*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
÷
,biLSTM/bidirectional_rnn/fw/fw/while/Merge_6Merge,biLSTM/bidirectional_rnn/fw/fw/while/Enter_64biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_6*
N*)
_output_shapes
:€€€€€€€€€@: *
T0
ѓ
)biLSTM/bidirectional_rnn/fw/fw/while/LessLess*biLSTM/bidirectional_rnn/fw/fw/while/Merge/biLSTM/bidirectional_rnn/fw/fw/while/Less/Enter*
T0*
_output_shapes
: 
ы
/biLSTM/bidirectional_rnn/fw/fw/while/Less/EnterEnter.biLSTM/bidirectional_rnn/fw/fw/strided_slice_1*
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
µ
+biLSTM/bidirectional_rnn/fw/fw/while/Less_1Less,biLSTM/bidirectional_rnn/fw/fw/while/Merge_11biLSTM/bidirectional_rnn/fw/fw/while/Less_1/Enter*
T0*
_output_shapes
: 
х
1biLSTM/bidirectional_rnn/fw/fw/while/Less_1/EnterEnter&biLSTM/bidirectional_rnn/fw/fw/Minimum*
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
≠
/biLSTM/bidirectional_rnn/fw/fw/while/LogicalAnd
LogicalAnd)biLSTM/bidirectional_rnn/fw/fw/while/Less+biLSTM/bidirectional_rnn/fw/fw/while/Less_1*
_output_shapes
: 
В
-biLSTM/bidirectional_rnn/fw/fw/while/LoopCondLoopCond/biLSTM/bidirectional_rnn/fw/fw/while/LogicalAnd*
_output_shapes
: 
т
+biLSTM/bidirectional_rnn/fw/fw/while/SwitchSwitch*biLSTM/bidirectional_rnn/fw/fw/while/Merge-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/while/Merge
ш
-biLSTM/bidirectional_rnn/fw/fw/while/Switch_1Switch,biLSTM/bidirectional_rnn/fw/fw/while/Merge_1-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/while/Merge_1*
_output_shapes
: : *
T0
ш
-biLSTM/bidirectional_rnn/fw/fw/while/Switch_2Switch,biLSTM/bidirectional_rnn/fw/fw/while/Merge_2-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/while/Merge_2
Ъ
-biLSTM/bidirectional_rnn/fw/fw/while/Switch_3Switch,biLSTM/bidirectional_rnn/fw/fw/while/Merge_3-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/while/Merge_3*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Ъ
-biLSTM/bidirectional_rnn/fw/fw/while/Switch_4Switch,biLSTM/bidirectional_rnn/fw/fw/while/Merge_4-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/while/Merge_4*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Ъ
-biLSTM/bidirectional_rnn/fw/fw/while/Switch_5Switch,biLSTM/bidirectional_rnn/fw/fw/while/Merge_5-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/while/Merge_5
Ъ
-biLSTM/bidirectional_rnn/fw/fw/while/Switch_6Switch,biLSTM/bidirectional_rnn/fw/fw/while/Merge_6-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/while/Merge_6*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Й
-biLSTM/bidirectional_rnn/fw/fw/while/IdentityIdentity-biLSTM/bidirectional_rnn/fw/fw/while/Switch:1*
_output_shapes
: *
T0
Н
/biLSTM/bidirectional_rnn/fw/fw/while/Identity_1Identity/biLSTM/bidirectional_rnn/fw/fw/while/Switch_1:1*
T0*
_output_shapes
: 
Н
/biLSTM/bidirectional_rnn/fw/fw/while/Identity_2Identity/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2:1*
_output_shapes
: *
T0
Ю
/biLSTM/bidirectional_rnn/fw/fw/while/Identity_3Identity/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3:1*'
_output_shapes
:€€€€€€€€€@*
T0
Ю
/biLSTM/bidirectional_rnn/fw/fw/while/Identity_4Identity/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4:1*'
_output_shapes
:€€€€€€€€€@*
T0
Ю
/biLSTM/bidirectional_rnn/fw/fw/while/Identity_5Identity/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5:1*'
_output_shapes
:€€€€€€€€€@*
T0
Ю
/biLSTM/bidirectional_rnn/fw/fw/while/Identity_6Identity/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6:1*
T0*'
_output_shapes
:€€€€€€€€€@
Ь
*biLSTM/bidirectional_rnn/fw/fw/while/add/yConst.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ђ
(biLSTM/bidirectional_rnn/fw/fw/while/addAdd-biLSTM/bidirectional_rnn/fw/fw/while/Identity*biLSTM/bidirectional_rnn/fw/fw/while/add/y*
T0*
_output_shapes
: 
∞
6biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV3<biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter/biLSTM/bidirectional_rnn/fw/fw/while/Identity_1>biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:€€€€€€€€€@
К
<biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter,biLSTM/bidirectional_rnn/fw/fw/TensorArray_1*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
µ
>biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1EnterYbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
ў
1biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqualGreaterEqual/biLSTM/bidirectional_rnn/fw/fw/while/Identity_17biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
М
7biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/EnterEnter*biLSTM/bidirectional_rnn/fw/fw/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:€€€€€€€€€*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ч
ibiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
Й
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *   Њ*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Й
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Ы
qbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformibiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
seed2 
Њ
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/subSubgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
“
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulqbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ƒ
cbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniformAddgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min* 
_output_shapes
:
АА*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
Э
HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
VariableV2*
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container 
є
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignAssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelcbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
ќ
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/readIdentityHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
АА
О
hbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
ю
^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
љ
XbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zerosFillhbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensor^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
П
FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
VariableV2*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
£
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignAssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasXbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(
≈
KbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/readIdentityFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
T0*
_output_shapes	
:А
≈
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/ConstConst.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ћ
YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axisConst.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
м
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concatConcatV26biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/biLSTM/bidirectional_rnn/fw/fw/while/Identity_4YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis*
N*(
_output_shapes
:€€€€€€€€€А*

Tidx0*
T0
й
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulMatMulTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concatZbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
ѕ
ZbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ё
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAddBiasAddTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul[biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
…
[biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/EnterEnterKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
«
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1Const.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Д
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/splitSplitSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/ConstUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split*
T0
 
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2Const.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Є
QbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/AddAddUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:2UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2*'
_output_shapes
:€€€€€€€€€@*
T0
е
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/SigmoidSigmoidQbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add*'
_output_shapes
:€€€€€€€€€@*
T0
Т
QbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MulMul/biLSTM/bidirectional_rnn/fw/fw/while/Identity_3UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*'
_output_shapes
:€€€€€€€€€@*
T0
й
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1SigmoidSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split*'
_output_shapes
:€€€€€€€€€@*
T0
г
RbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/TanhTanhUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:1*
T0*'
_output_shapes
:€€€€€€€€€@
є
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1MulWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1RbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*'
_output_shapes
:€€€€€€€€€@*
T0
і
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1AddQbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MulSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*'
_output_shapes
:€€€€€€€€€@*
T0
г
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1TanhSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*'
_output_shapes
:€€€€€€€€€@*
T0
л
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2SigmoidUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:3*
T0*'
_output_shapes
:€€€€€€€€€@
ї
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2MulTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*'
_output_shapes
:€€€€€€€€€@*
T0
Ч
ibiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
Й
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *   Њ*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0
Й
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Ы
qbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformibiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
АА*

seed *
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
Њ
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/subSubgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/maxgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
“
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulqbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ƒ
cbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniformAddgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/mulgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Э
HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
VariableV2*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
є
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignAssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelcbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
ќ
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/readIdentityHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
АА
О
hbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
ю
^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
љ
XbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zerosFillhbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensor^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/Const*
_output_shapes	
:А*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
П
FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
£
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignAssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasXbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
≈
KbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/readIdentityFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А*
T0
≈
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/ConstConst.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ћ
YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axisConst.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Й
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concatConcatV2SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2/biLSTM/bidirectional_rnn/fw/fw/while/Identity_6YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axis*
T0*
N*(
_output_shapes
:€€€€€€€€€А*

Tidx0
й
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMulMatMulTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concatZbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( *
T0
ѕ
ZbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ё
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAddBiasAddTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul[biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А*
T0
…
[biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/EnterEnterKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
«
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_1Const.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Д
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/splitSplitSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/ConstUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split*
T0
 
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2Const.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Є
QbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/AddAddUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:2UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2*
T0*'
_output_shapes
:€€€€€€€€€@
е
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/SigmoidSigmoidQbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add*
T0*'
_output_shapes
:€€€€€€€€€@
Т
QbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MulMul/biLSTM/bidirectional_rnn/fw/fw/while/Identity_5UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
T0*'
_output_shapes
:€€€€€€€€€@
й
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1SigmoidSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split*
T0*'
_output_shapes
:€€€€€€€€€@
г
RbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/TanhTanhUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:1*'
_output_shapes
:€€€€€€€€€@*
T0
є
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1MulWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1RbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
T0*'
_output_shapes
:€€€€€€€€€@
і
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1AddQbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MulSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1*
T0*'
_output_shapes
:€€€€€€€€€@
г
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1TanhSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@
л
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2SigmoidUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:3*
T0*'
_output_shapes
:€€€€€€€€€@
ї
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2MulTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*'
_output_shapes
:€€€€€€€€€@*
T0
К
+biLSTM/bidirectional_rnn/fw/fw/while/SelectSelect1biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual1biLSTM/bidirectional_rnn/fw/fw/while/Select/EnterSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*'
_output_shapes
:€€€€€€€€€@*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2
м
1biLSTM/bidirectional_rnn/fw/fw/while/Select/EnterEnter$biLSTM/bidirectional_rnn/fw/fw/zeros*
parallel_iterations *
is_constant(*'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2
К
-biLSTM/bidirectional_rnn/fw/fw/while/Select_1Select1biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/biLSTM/bidirectional_rnn/fw/fw/while/Identity_3SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*'
_output_shapes
:€€€€€€€€€@
К
-biLSTM/bidirectional_rnn/fw/fw/while/Select_2Select1biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/biLSTM/bidirectional_rnn/fw/fw/while/Identity_4SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*'
_output_shapes
:€€€€€€€€€@
К
-biLSTM/bidirectional_rnn/fw/fw/while/Select_3Select1biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/biLSTM/bidirectional_rnn/fw/fw/while/Identity_5SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*'
_output_shapes
:€€€€€€€€€@
К
-biLSTM/bidirectional_rnn/fw/fw/while/Select_4Select1biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/biLSTM/bidirectional_rnn/fw/fw/while/Identity_6SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*'
_output_shapes
:€€€€€€€€€@*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2
∆
HbiLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3NbiLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter/biLSTM/bidirectional_rnn/fw/fw/while/Identity_1+biLSTM/bidirectional_rnn/fw/fw/while/Select/biLSTM/bidirectional_rnn/fw/fw/while/Identity_2*
_output_shapes
: *
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2
В
NbiLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter*biLSTM/bidirectional_rnn/fw/fw/TensorArray*
is_constant(*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
parallel_iterations 
Ю
,biLSTM/bidirectional_rnn/fw/fw/while/add_1/yConst.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
±
*biLSTM/bidirectional_rnn/fw/fw/while/add_1Add/biLSTM/bidirectional_rnn/fw/fw/while/Identity_1,biLSTM/bidirectional_rnn/fw/fw/while/add_1/y*
T0*
_output_shapes
: 
О
2biLSTM/bidirectional_rnn/fw/fw/while/NextIterationNextIteration(biLSTM/bidirectional_rnn/fw/fw/while/add*
_output_shapes
: *
T0
Т
4biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_1NextIteration*biLSTM/bidirectional_rnn/fw/fw/while/add_1*
T0*
_output_shapes
: 
∞
4biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationHbiLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
¶
4biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_3NextIteration-biLSTM/bidirectional_rnn/fw/fw/while/Select_1*'
_output_shapes
:€€€€€€€€€@*
T0
¶
4biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_4NextIteration-biLSTM/bidirectional_rnn/fw/fw/while/Select_2*'
_output_shapes
:€€€€€€€€€@*
T0
¶
4biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_5NextIteration-biLSTM/bidirectional_rnn/fw/fw/while/Select_3*'
_output_shapes
:€€€€€€€€€@*
T0
¶
4biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_6NextIteration-biLSTM/bidirectional_rnn/fw/fw/while/Select_4*'
_output_shapes
:€€€€€€€€€@*
T0

)biLSTM/bidirectional_rnn/fw/fw/while/ExitExit+biLSTM/bidirectional_rnn/fw/fw/while/Switch*
_output_shapes
: *
T0
Г
+biLSTM/bidirectional_rnn/fw/fw/while/Exit_1Exit-biLSTM/bidirectional_rnn/fw/fw/while/Switch_1*
T0*
_output_shapes
: 
Г
+biLSTM/bidirectional_rnn/fw/fw/while/Exit_2Exit-biLSTM/bidirectional_rnn/fw/fw/while/Switch_2*
T0*
_output_shapes
: 
Ф
+biLSTM/bidirectional_rnn/fw/fw/while/Exit_3Exit-biLSTM/bidirectional_rnn/fw/fw/while/Switch_3*'
_output_shapes
:€€€€€€€€€@*
T0
Ф
+biLSTM/bidirectional_rnn/fw/fw/while/Exit_4Exit-biLSTM/bidirectional_rnn/fw/fw/while/Switch_4*'
_output_shapes
:€€€€€€€€€@*
T0
Ф
+biLSTM/bidirectional_rnn/fw/fw/while/Exit_5Exit-biLSTM/bidirectional_rnn/fw/fw/while/Switch_5*'
_output_shapes
:€€€€€€€€€@*
T0
Ф
+biLSTM/bidirectional_rnn/fw/fw/while/Exit_6Exit-biLSTM/bidirectional_rnn/fw/fw/while/Switch_6*
T0*'
_output_shapes
:€€€€€€€€€@
Ж
AbiLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3*biLSTM/bidirectional_rnn/fw/fw/TensorArray+biLSTM/bidirectional_rnn/fw/fw/while/Exit_2*=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
Љ
;biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray
Љ
;biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
value	B :*=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
л
5biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/rangeRange;biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/range/startAbiLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3;biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0*=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray
Т
CbiLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3*biLSTM/bidirectional_rnn/fw/fw/TensorArray5biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/range+biLSTM/bidirectional_rnn/fw/fw/while/Exit_2*=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray*
dtype0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
element_shape:€€€€€€€€€@
p
&biLSTM/bidirectional_rnn/fw/fw/Const_4Const*
valueB:@*
dtype0*
_output_shapes
:
g
%biLSTM/bidirectional_rnn/fw/fw/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
n
,biLSTM/bidirectional_rnn/fw/fw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
n
,biLSTM/bidirectional_rnn/fw/fw/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Џ
&biLSTM/bidirectional_rnn/fw/fw/range_1Range,biLSTM/bidirectional_rnn/fw/fw/range_1/start%biLSTM/bidirectional_rnn/fw/fw/Rank_1,biLSTM/bidirectional_rnn/fw/fw/range_1/delta*
_output_shapes
:*

Tidx0
Б
0biLSTM/bidirectional_rnn/fw/fw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
n
,biLSTM/bidirectional_rnn/fw/fw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
х
'biLSTM/bidirectional_rnn/fw/fw/concat_2ConcatV20biLSTM/bidirectional_rnn/fw/fw/concat_2/values_0&biLSTM/bidirectional_rnn/fw/fw/range_1,biLSTM/bidirectional_rnn/fw/fw/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:
с
*biLSTM/bidirectional_rnn/fw/fw/transpose_1	TransposeCbiLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3'biLSTM/bidirectional_rnn/fw/fw/concat_2*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0*
T0
ќ
+biLSTM/bidirectional_rnn/bw/ReverseSequenceReverseSequenceinputs/embedding_lookup
inputs/Sum*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*

Tlen0*
	batch_dim *
T0*
seq_dim
e
#biLSTM/bidirectional_rnn/bw/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
l
*biLSTM/bidirectional_rnn/bw/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
l
*biLSTM/bidirectional_rnn/bw/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
“
$biLSTM/bidirectional_rnn/bw/bw/rangeRange*biLSTM/bidirectional_rnn/bw/bw/range/start#biLSTM/bidirectional_rnn/bw/bw/Rank*biLSTM/bidirectional_rnn/bw/bw/range/delta*
_output_shapes
:*

Tidx0

.biLSTM/bidirectional_rnn/bw/bw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
l
*biLSTM/bidirectional_rnn/bw/bw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
н
%biLSTM/bidirectional_rnn/bw/bw/concatConcatV2.biLSTM/bidirectional_rnn/bw/bw/concat/values_0$biLSTM/bidirectional_rnn/bw/bw/range*biLSTM/bidirectional_rnn/bw/bw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
’
(biLSTM/bidirectional_rnn/bw/bw/transpose	Transpose+biLSTM/bidirectional_rnn/bw/ReverseSequence%biLSTM/bidirectional_rnn/bw/bw/concat*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0
t
.biLSTM/bidirectional_rnn/bw/bw/sequence_lengthIdentity
inputs/Sum*
T0*#
_output_shapes
:€€€€€€€€€
М
$biLSTM/bidirectional_rnn/bw/bw/ShapeShape(biLSTM/bidirectional_rnn/bw/bw/transpose*
_output_shapes
:*
T0*
out_type0
|
2biLSTM/bidirectional_rnn/bw/bw/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
~
4biLSTM/bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4biLSTM/bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ф
,biLSTM/bidirectional_rnn/bw/bw/strided_sliceStridedSlice$biLSTM/bidirectional_rnn/bw/bw/Shape2biLSTM/bidirectional_rnn/bw/bw/strided_slice/stack4biLSTM/bidirectional_rnn/bw/bw/strided_slice/stack_14biLSTM/bidirectional_rnn/bw/bw/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
Ь
ZbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
Я
VbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_sliceZbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
Ы
QbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Щ
WbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ь
RbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatConcatV2VbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDimsQbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ConstWbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ь
WbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
 
QbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zerosFillRbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concatWbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
Ю
\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
£
XbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_slice\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
Э
SbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
Ю
\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2/dimConst*
_output_shapes
: *
value	B : *
dtype0
£
XbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_slice\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2/dim*
T0*
_output_shapes
:*

Tdim0
Э
SbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
Ы
YbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
TbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1ConcatV2XbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_2SbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_2YbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
Ю
YbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
–
SbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1FillTbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/concat_1YbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1/Const*

index_type0*'
_output_shapes
:€€€€€€€€€@*
T0
Ю
\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
£
XbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_slice\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0*
_output_shapes
:
Э
SbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/Const_3Const*
valueB:@*
dtype0*
_output_shapes
:
Ю
\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
£
XbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_slice\biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
Э
SbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstConst*
valueB:@*
dtype0*
_output_shapes
:
Ы
YbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
TbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatConcatV2XbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDimsSbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ConstYbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ю
YbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
–
SbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zerosFillTbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concatYbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros/Const*'
_output_shapes
:€€€€€€€€€@*
T0*

index_type0
†
^biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
І
ZbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_slice^biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_1/dim*
_output_shapes
:*

Tdim0*
T0
Я
UbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
†
^biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2/dimConst*
dtype0*
_output_shapes
: *
value	B : 
І
ZbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_slice^biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2/dim*

Tdim0*
T0*
_output_shapes
:
Я
UbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2Const*
valueB:@*
dtype0*
_output_shapes
:
Э
[biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
ђ
VbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1ConcatV2ZbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_2UbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_2[biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1/axis*
_output_shapes
:*

Tidx0*
T0*
N
†
[biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    
÷
UbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1FillVbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/concat_1[biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
†
^biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 
І
ZbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3
ExpandDims,biLSTM/bidirectional_rnn/bw/bw/strided_slice^biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/ExpandDims_3/dim*
_output_shapes
:*

Tdim0*
T0
Я
UbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/Const_3Const*
dtype0*
_output_shapes
:*
valueB:@
Ф
&biLSTM/bidirectional_rnn/bw/bw/Shape_1Shape.biLSTM/bidirectional_rnn/bw/bw/sequence_length*
out_type0*
_output_shapes
:*
T0
Ф
$biLSTM/bidirectional_rnn/bw/bw/stackPack,biLSTM/bidirectional_rnn/bw/bw/strided_slice*
T0*

axis *
N*
_output_shapes
:
†
$biLSTM/bidirectional_rnn/bw/bw/EqualEqual&biLSTM/bidirectional_rnn/bw/bw/Shape_1$biLSTM/bidirectional_rnn/bw/bw/stack*
T0*
_output_shapes
:
n
$biLSTM/bidirectional_rnn/bw/bw/ConstConst*
valueB: *
dtype0*
_output_shapes
:
™
"biLSTM/bidirectional_rnn/bw/bw/AllAll$biLSTM/bidirectional_rnn/bw/bw/Equal$biLSTM/bidirectional_rnn/bw/bw/Const*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ї
+biLSTM/bidirectional_rnn/bw/bw/Assert/ConstConst*_
valueVBT BNExpected shape for Tensor biLSTM/bidirectional_rnn/bw/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 
~
-biLSTM/bidirectional_rnn/bw/bw/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
¬
3biLSTM/bidirectional_rnn/bw/bw/Assert/Assert/data_0Const*_
valueVBT BNExpected shape for Tensor biLSTM/bidirectional_rnn/bw/bw/sequence_length:0 is *
dtype0*
_output_shapes
: 
Д
3biLSTM/bidirectional_rnn/bw/bw/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
≤
,biLSTM/bidirectional_rnn/bw/bw/Assert/AssertAssert"biLSTM/bidirectional_rnn/bw/bw/All3biLSTM/bidirectional_rnn/bw/bw/Assert/Assert/data_0$biLSTM/bidirectional_rnn/bw/bw/stack3biLSTM/bidirectional_rnn/bw/bw/Assert/Assert/data_2&biLSTM/bidirectional_rnn/bw/bw/Shape_1*
	summarize*
T
2
√
*biLSTM/bidirectional_rnn/bw/bw/CheckSeqLenIdentity.biLSTM/bidirectional_rnn/bw/bw/sequence_length-^biLSTM/bidirectional_rnn/bw/bw/Assert/Assert*#
_output_shapes
:€€€€€€€€€*
T0
О
&biLSTM/bidirectional_rnn/bw/bw/Shape_2Shape(biLSTM/bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
~
4biLSTM/bidirectional_rnn/bw/bw/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
А
6biLSTM/bidirectional_rnn/bw/bw/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6biLSTM/bidirectional_rnn/bw/bw/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ю
.biLSTM/bidirectional_rnn/bw/bw/strided_slice_1StridedSlice&biLSTM/bidirectional_rnn/bw/bw/Shape_24biLSTM/bidirectional_rnn/bw/bw/strided_slice_1/stack6biLSTM/bidirectional_rnn/bw/bw/strided_slice_1/stack_16biLSTM/bidirectional_rnn/bw/bw/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
О
&biLSTM/bidirectional_rnn/bw/bw/Shape_3Shape(biLSTM/bidirectional_rnn/bw/bw/transpose*
_output_shapes
:*
T0*
out_type0
~
4biLSTM/bidirectional_rnn/bw/bw/strided_slice_2/stackConst*
_output_shapes
:*
valueB:*
dtype0
А
6biLSTM/bidirectional_rnn/bw/bw/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6biLSTM/bidirectional_rnn/bw/bw/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ю
.biLSTM/bidirectional_rnn/bw/bw/strided_slice_2StridedSlice&biLSTM/bidirectional_rnn/bw/bw/Shape_34biLSTM/bidirectional_rnn/bw/bw/strided_slice_2/stack6biLSTM/bidirectional_rnn/bw/bw/strided_slice_2/stack_16biLSTM/bidirectional_rnn/bw/bw/strided_slice_2/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
o
-biLSTM/bidirectional_rnn/bw/bw/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
«
)biLSTM/bidirectional_rnn/bw/bw/ExpandDims
ExpandDims.biLSTM/bidirectional_rnn/bw/bw/strided_slice_2-biLSTM/bidirectional_rnn/bw/bw/ExpandDims/dim*
T0*
_output_shapes
:*

Tdim0
p
&biLSTM/bidirectional_rnn/bw/bw/Const_1Const*
valueB:@*
dtype0*
_output_shapes
:
n
,biLSTM/bidirectional_rnn/bw/bw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
о
'biLSTM/bidirectional_rnn/bw/bw/concat_1ConcatV2)biLSTM/bidirectional_rnn/bw/bw/ExpandDims&biLSTM/bidirectional_rnn/bw/bw/Const_1,biLSTM/bidirectional_rnn/bw/bw/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
o
*biLSTM/bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
≈
$biLSTM/bidirectional_rnn/bw/bw/zerosFill'biLSTM/bidirectional_rnn/bw/bw/concat_1*biLSTM/bidirectional_rnn/bw/bw/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
p
&biLSTM/bidirectional_rnn/bw/bw/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
ї
"biLSTM/bidirectional_rnn/bw/bw/MinMin*biLSTM/bidirectional_rnn/bw/bw/CheckSeqLen&biLSTM/bidirectional_rnn/bw/bw/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
p
&biLSTM/bidirectional_rnn/bw/bw/Const_3Const*
valueB: *
dtype0*
_output_shapes
:
ї
"biLSTM/bidirectional_rnn/bw/bw/MaxMax*biLSTM/bidirectional_rnn/bw/bw/CheckSeqLen&biLSTM/bidirectional_rnn/bw/bw/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
#biLSTM/bidirectional_rnn/bw/bw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
‘
*biLSTM/bidirectional_rnn/bw/bw/TensorArrayTensorArrayV3.biLSTM/bidirectional_rnn/bw/bw/strided_slice_1*$
element_shape:€€€€€€€€€@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*J
tensor_array_name53biLSTM/bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
’
,biLSTM/bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV3.biLSTM/bidirectional_rnn/bw/bw/strided_slice_1*$
element_shape:€€€€€€€€€@*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*I
tensor_array_name42biLSTM/bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: 
Я
7biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeShape(biLSTM/bidirectional_rnn/bw/bw/transpose*
T0*
out_type0*
_output_shapes
:
П
EbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
С
GbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
С
GbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
у
?biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSlice7biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeEbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackGbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1GbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 

=biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

=biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
∞
7biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRange=biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/start?biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice=biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:€€€€€€€€€
Р
YbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3,biLSTM/bidirectional_rnn/bw/bw/TensorArray_17biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/range(biLSTM/bidirectional_rnn/bw/bw/transpose.biLSTM/bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*;
_class1
/-loc:@biLSTM/bidirectional_rnn/bw/bw/transpose*
_output_shapes
: 
j
(biLSTM/bidirectional_rnn/bw/bw/Maximum/xConst*
_output_shapes
: *
value	B :*
dtype0
†
&biLSTM/bidirectional_rnn/bw/bw/MaximumMaximum(biLSTM/bidirectional_rnn/bw/bw/Maximum/x"biLSTM/bidirectional_rnn/bw/bw/Max*
_output_shapes
: *
T0
™
&biLSTM/bidirectional_rnn/bw/bw/MinimumMinimum.biLSTM/bidirectional_rnn/bw/bw/strided_slice_1&biLSTM/bidirectional_rnn/bw/bw/Maximum*
T0*
_output_shapes
: 
x
6biLSTM/bidirectional_rnn/bw/bw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
ю
*biLSTM/bidirectional_rnn/bw/bw/while/EnterEnter6biLSTM/bidirectional_rnn/bw/bw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
н
,biLSTM/bidirectional_rnn/bw/bw/while/Enter_1Enter#biLSTM/bidirectional_rnn/bw/bw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
ц
,biLSTM/bidirectional_rnn/bw/bw/while/Enter_2Enter,biLSTM/bidirectional_rnn/bw/bw/TensorArray:1*
is_constant( *
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
ђ
,biLSTM/bidirectional_rnn/bw/bw/while/Enter_3EnterQbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ѓ
,biLSTM/bidirectional_rnn/bw/bw/while/Enter_4EnterSbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
Ѓ
,biLSTM/bidirectional_rnn/bw/bw/while/Enter_5EnterSbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros*'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
∞
,biLSTM/bidirectional_rnn/bw/bw/while/Enter_6EnterUbiLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
њ
*biLSTM/bidirectional_rnn/bw/bw/while/MergeMerge*biLSTM/bidirectional_rnn/bw/bw/while/Enter2biLSTM/bidirectional_rnn/bw/bw/while/NextIteration*
T0*
N*
_output_shapes
: : 
≈
,biLSTM/bidirectional_rnn/bw/bw/while/Merge_1Merge,biLSTM/bidirectional_rnn/bw/bw/while/Enter_14biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
≈
,biLSTM/bidirectional_rnn/bw/bw/while/Merge_2Merge,biLSTM/bidirectional_rnn/bw/bw/while/Enter_24biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
÷
,biLSTM/bidirectional_rnn/bw/bw/while/Merge_3Merge,biLSTM/bidirectional_rnn/bw/bw/while/Enter_34biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_3*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
÷
,biLSTM/bidirectional_rnn/bw/bw/while/Merge_4Merge,biLSTM/bidirectional_rnn/bw/bw/while/Enter_44biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_4*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
÷
,biLSTM/bidirectional_rnn/bw/bw/while/Merge_5Merge,biLSTM/bidirectional_rnn/bw/bw/while/Enter_54biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_5*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
÷
,biLSTM/bidirectional_rnn/bw/bw/while/Merge_6Merge,biLSTM/bidirectional_rnn/bw/bw/while/Enter_64biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_6*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
ѓ
)biLSTM/bidirectional_rnn/bw/bw/while/LessLess*biLSTM/bidirectional_rnn/bw/bw/while/Merge/biLSTM/bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 
ы
/biLSTM/bidirectional_rnn/bw/bw/while/Less/EnterEnter.biLSTM/bidirectional_rnn/bw/bw/strided_slice_1*
is_constant(*
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
µ
+biLSTM/bidirectional_rnn/bw/bw/while/Less_1Less,biLSTM/bidirectional_rnn/bw/bw/while/Merge_11biLSTM/bidirectional_rnn/bw/bw/while/Less_1/Enter*
T0*
_output_shapes
: 
х
1biLSTM/bidirectional_rnn/bw/bw/while/Less_1/EnterEnter&biLSTM/bidirectional_rnn/bw/bw/Minimum*
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
≠
/biLSTM/bidirectional_rnn/bw/bw/while/LogicalAnd
LogicalAnd)biLSTM/bidirectional_rnn/bw/bw/while/Less+biLSTM/bidirectional_rnn/bw/bw/while/Less_1*
_output_shapes
: 
В
-biLSTM/bidirectional_rnn/bw/bw/while/LoopCondLoopCond/biLSTM/bidirectional_rnn/bw/bw/while/LogicalAnd*
_output_shapes
: 
т
+biLSTM/bidirectional_rnn/bw/bw/while/SwitchSwitch*biLSTM/bidirectional_rnn/bw/bw/while/Merge-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*
T0*=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/while/Merge*
_output_shapes
: : 
ш
-biLSTM/bidirectional_rnn/bw/bw/while/Switch_1Switch,biLSTM/bidirectional_rnn/bw/bw/while/Merge_1-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/while/Merge_1
ш
-biLSTM/bidirectional_rnn/bw/bw/while/Switch_2Switch,biLSTM/bidirectional_rnn/bw/bw/while/Merge_2-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/while/Merge_2*
_output_shapes
: : *
T0
Ъ
-biLSTM/bidirectional_rnn/bw/bw/while/Switch_3Switch,biLSTM/bidirectional_rnn/bw/bw/while/Merge_3-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/while/Merge_3*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Ъ
-biLSTM/bidirectional_rnn/bw/bw/while/Switch_4Switch,biLSTM/bidirectional_rnn/bw/bw/while/Merge_4-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/while/Merge_4*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Ъ
-biLSTM/bidirectional_rnn/bw/bw/while/Switch_5Switch,biLSTM/bidirectional_rnn/bw/bw/while/Merge_5-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/while/Merge_5*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Ъ
-biLSTM/bidirectional_rnn/bw/bw/while/Switch_6Switch,biLSTM/bidirectional_rnn/bw/bw/while/Merge_6-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/while/Merge_6*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Й
-biLSTM/bidirectional_rnn/bw/bw/while/IdentityIdentity-biLSTM/bidirectional_rnn/bw/bw/while/Switch:1*
_output_shapes
: *
T0
Н
/biLSTM/bidirectional_rnn/bw/bw/while/Identity_1Identity/biLSTM/bidirectional_rnn/bw/bw/while/Switch_1:1*
_output_shapes
: *
T0
Н
/biLSTM/bidirectional_rnn/bw/bw/while/Identity_2Identity/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2:1*
T0*
_output_shapes
: 
Ю
/biLSTM/bidirectional_rnn/bw/bw/while/Identity_3Identity/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3:1*'
_output_shapes
:€€€€€€€€€@*
T0
Ю
/biLSTM/bidirectional_rnn/bw/bw/while/Identity_4Identity/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4:1*
T0*'
_output_shapes
:€€€€€€€€€@
Ю
/biLSTM/bidirectional_rnn/bw/bw/while/Identity_5Identity/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5:1*
T0*'
_output_shapes
:€€€€€€€€€@
Ю
/biLSTM/bidirectional_rnn/bw/bw/while/Identity_6Identity/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6:1*'
_output_shapes
:€€€€€€€€€@*
T0
Ь
*biLSTM/bidirectional_rnn/bw/bw/while/add/yConst.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ђ
(biLSTM/bidirectional_rnn/bw/bw/while/addAdd-biLSTM/bidirectional_rnn/bw/bw/while/Identity*biLSTM/bidirectional_rnn/bw/bw/while/add/y*
T0*
_output_shapes
: 
∞
6biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV3<biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter/biLSTM/bidirectional_rnn/bw/bw/while/Identity_1>biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:€€€€€€€€€@
К
<biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter,biLSTM/bidirectional_rnn/bw/bw/TensorArray_1*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
µ
>biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1EnterYbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
ў
1biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqualGreaterEqual/biLSTM/bidirectional_rnn/bw/bw/while/Identity_17biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
М
7biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/EnterEnter*biLSTM/bidirectional_rnn/bw/bw/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *#
_output_shapes
:€€€€€€€€€*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ч
ibiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
Й
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *   Њ*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0
Й
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Ы
qbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformibiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
АА*

seed *
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
seed2 
Њ
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/subSubgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/maxgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
_output_shapes
: 
“
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulqbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ƒ
cbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniformAddgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/mulgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform/min* 
_output_shapes
:
АА*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
Э
HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
є
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignAssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelcbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
ќ
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/readIdentityHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
АА
О
hbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
ю
^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
љ
XbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zerosFillhbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensor^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
П
FbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:А
£
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignAssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasXbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(
≈
KbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/readIdentityFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
T0*
_output_shapes	
:А
≈
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/ConstConst.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ћ
YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axisConst.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
м
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concatConcatV26biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/biLSTM/bidirectional_rnn/bw/bw/while/Identity_4YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis*(
_output_shapes
:€€€€€€€€€А*

Tidx0*
T0*
N
й
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMulMatMulTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concatZbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
ѕ
ZbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
АА*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Ё
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAddBiasAddTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul[biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
…
[biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/EnterEnterKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:А*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
«
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1Const.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Д
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/splitSplitSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/ConstUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split*
T0
 
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2Const.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Є
QbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/AddAddUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:2UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2*'
_output_shapes
:€€€€€€€€€@*
T0
е
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/SigmoidSigmoidQbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add*
T0*'
_output_shapes
:€€€€€€€€€@
Т
QbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MulMul/biLSTM/bidirectional_rnn/bw/bw/while/Identity_3UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*'
_output_shapes
:€€€€€€€€€@*
T0
й
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1SigmoidSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split*
T0*'
_output_shapes
:€€€€€€€€€@
г
RbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/TanhTanhUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:1*
T0*'
_output_shapes
:€€€€€€€€€@
є
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1MulWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1RbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*'
_output_shapes
:€€€€€€€€€@*
T0
і
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1AddQbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MulSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
T0*'
_output_shapes
:€€€€€€€€€@
г
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1TanhSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*'
_output_shapes
:€€€€€€€€€@*
T0
л
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2SigmoidUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:3*
T0*'
_output_shapes
:€€€€€€€€€@
ї
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2MulTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
T0*'
_output_shapes
:€€€€€€€€€@
Ч
ibiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0
Й
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *   Њ*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Й
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
Ы
qbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformibiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0* 
_output_shapes
:
АА*

seed *
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
Њ
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/subSubgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/maxgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/min*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
_output_shapes
: 
“
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/mulMulqbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/RandomUniformgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/sub*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
ƒ
cbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniformAddgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/mulgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform/min*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА*
T0
Э
HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
	container *
shape:
АА
є
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignAssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelcbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(
ќ
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/readIdentityHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
T0* 
_output_shapes
:
АА
О
hbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
ю
^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
љ
XbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zerosFillhbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/shape_as_tensor^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
П
FbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
£
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignAssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasXbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
≈
KbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/readIdentityFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А*
T0
≈
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/ConstConst.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ћ
YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axisConst.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Й
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concatConcatV2SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2/biLSTM/bidirectional_rnn/bw/bw/while/Identity_6YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axis*

Tidx0*
T0*
N*(
_output_shapes
:€€€€€€€€€А
й
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMulMatMulTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concatZbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b( 
ѕ
ZbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
АА*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Ё
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAddBiasAddTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul[biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
…
[biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/EnterEnterKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read*
is_constant(*
parallel_iterations *
_output_shapes	
:А*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
«
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_1Const.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Д
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/splitSplitSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/ConstUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd*`
_output_shapesN
L:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@:€€€€€€€€€@*
	num_split*
T0
 
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2Const.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Є
QbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/AddAddUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:2UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2*'
_output_shapes
:€€€€€€€€€@*
T0
е
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/SigmoidSigmoidQbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add*
T0*'
_output_shapes
:€€€€€€€€€@
Т
QbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MulMul/biLSTM/bidirectional_rnn/bw/bw/while/Identity_5UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*'
_output_shapes
:€€€€€€€€€@*
T0
й
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1SigmoidSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split*'
_output_shapes
:€€€€€€€€€@*
T0
г
RbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/TanhTanhUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:1*'
_output_shapes
:€€€€€€€€€@*
T0
є
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1MulWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1RbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*'
_output_shapes
:€€€€€€€€€@*
T0
і
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1AddQbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MulSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1*
T0*'
_output_shapes
:€€€€€€€€€@
г
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1TanhSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*'
_output_shapes
:€€€€€€€€€@*
T0
л
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2SigmoidUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:3*
T0*'
_output_shapes
:€€€€€€€€€@
ї
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2MulTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
T0*'
_output_shapes
:€€€€€€€€€@
К
+biLSTM/bidirectional_rnn/bw/bw/while/SelectSelect1biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual1biLSTM/bidirectional_rnn/bw/bw/while/Select/EnterSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*'
_output_shapes
:€€€€€€€€€@*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2
м
1biLSTM/bidirectional_rnn/bw/bw/while/Select/EnterEnter$biLSTM/bidirectional_rnn/bw/bw/zeros*
is_constant(*'
_output_shapes
:€€€€€€€€€@*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
parallel_iterations 
К
-biLSTM/bidirectional_rnn/bw/bw/while/Select_1Select1biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/biLSTM/bidirectional_rnn/bw/bw/while/Identity_3SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1*'
_output_shapes
:€€€€€€€€€@
К
-biLSTM/bidirectional_rnn/bw/bw/while/Select_2Select1biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/biLSTM/bidirectional_rnn/bw/bw/while/Identity_4SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*'
_output_shapes
:€€€€€€€€€@
К
-biLSTM/bidirectional_rnn/bw/bw/while/Select_3Select1biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/biLSTM/bidirectional_rnn/bw/bw/while/Identity_5SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1*'
_output_shapes
:€€€€€€€€€@
К
-biLSTM/bidirectional_rnn/bw/bw/while/Select_4Select1biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/biLSTM/bidirectional_rnn/bw/bw/while/Identity_6SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*'
_output_shapes
:€€€€€€€€€@*
T0
∆
HbiLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3NbiLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter/biLSTM/bidirectional_rnn/bw/bw/while/Identity_1+biLSTM/bidirectional_rnn/bw/bw/while/Select/biLSTM/bidirectional_rnn/bw/bw/while/Identity_2*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes
: *
T0
В
NbiLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter*biLSTM/bidirectional_rnn/bw/bw/TensorArray*
is_constant(*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
parallel_iterations 
Ю
,biLSTM/bidirectional_rnn/bw/bw/while/add_1/yConst.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
±
*biLSTM/bidirectional_rnn/bw/bw/while/add_1Add/biLSTM/bidirectional_rnn/bw/bw/while/Identity_1,biLSTM/bidirectional_rnn/bw/bw/while/add_1/y*
_output_shapes
: *
T0
О
2biLSTM/bidirectional_rnn/bw/bw/while/NextIterationNextIteration(biLSTM/bidirectional_rnn/bw/bw/while/add*
T0*
_output_shapes
: 
Т
4biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_1NextIteration*biLSTM/bidirectional_rnn/bw/bw/while/add_1*
T0*
_output_shapes
: 
∞
4biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationHbiLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
¶
4biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_3NextIteration-biLSTM/bidirectional_rnn/bw/bw/while/Select_1*
T0*'
_output_shapes
:€€€€€€€€€@
¶
4biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_4NextIteration-biLSTM/bidirectional_rnn/bw/bw/while/Select_2*
T0*'
_output_shapes
:€€€€€€€€€@
¶
4biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_5NextIteration-biLSTM/bidirectional_rnn/bw/bw/while/Select_3*
T0*'
_output_shapes
:€€€€€€€€€@
¶
4biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_6NextIteration-biLSTM/bidirectional_rnn/bw/bw/while/Select_4*'
_output_shapes
:€€€€€€€€€@*
T0

)biLSTM/bidirectional_rnn/bw/bw/while/ExitExit+biLSTM/bidirectional_rnn/bw/bw/while/Switch*
T0*
_output_shapes
: 
Г
+biLSTM/bidirectional_rnn/bw/bw/while/Exit_1Exit-biLSTM/bidirectional_rnn/bw/bw/while/Switch_1*
T0*
_output_shapes
: 
Г
+biLSTM/bidirectional_rnn/bw/bw/while/Exit_2Exit-biLSTM/bidirectional_rnn/bw/bw/while/Switch_2*
T0*
_output_shapes
: 
Ф
+biLSTM/bidirectional_rnn/bw/bw/while/Exit_3Exit-biLSTM/bidirectional_rnn/bw/bw/while/Switch_3*
T0*'
_output_shapes
:€€€€€€€€€@
Ф
+biLSTM/bidirectional_rnn/bw/bw/while/Exit_4Exit-biLSTM/bidirectional_rnn/bw/bw/while/Switch_4*'
_output_shapes
:€€€€€€€€€@*
T0
Ф
+biLSTM/bidirectional_rnn/bw/bw/while/Exit_5Exit-biLSTM/bidirectional_rnn/bw/bw/while/Switch_5*
T0*'
_output_shapes
:€€€€€€€€€@
Ф
+biLSTM/bidirectional_rnn/bw/bw/while/Exit_6Exit-biLSTM/bidirectional_rnn/bw/bw/while/Switch_6*
T0*'
_output_shapes
:€€€€€€€€€@
Ж
AbiLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3*biLSTM/bidirectional_rnn/bw/bw/TensorArray+biLSTM/bidirectional_rnn/bw/bw/while/Exit_2*=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
Љ
;biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
value	B : *=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
Љ
;biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
л
5biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/rangeRange;biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/range/startAbiLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3;biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0*=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray
Т
CbiLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3*biLSTM/bidirectional_rnn/bw/bw/TensorArray5biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/range+biLSTM/bidirectional_rnn/bw/bw/while/Exit_2*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*$
element_shape:€€€€€€€€€@*=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray*
dtype0
p
&biLSTM/bidirectional_rnn/bw/bw/Const_4Const*
valueB:@*
dtype0*
_output_shapes
:
g
%biLSTM/bidirectional_rnn/bw/bw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
n
,biLSTM/bidirectional_rnn/bw/bw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
n
,biLSTM/bidirectional_rnn/bw/bw/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0
Џ
&biLSTM/bidirectional_rnn/bw/bw/range_1Range,biLSTM/bidirectional_rnn/bw/bw/range_1/start%biLSTM/bidirectional_rnn/bw/bw/Rank_1,biLSTM/bidirectional_rnn/bw/bw/range_1/delta*

Tidx0*
_output_shapes
:
Б
0biLSTM/bidirectional_rnn/bw/bw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
n
,biLSTM/bidirectional_rnn/bw/bw/concat_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
х
'biLSTM/bidirectional_rnn/bw/bw/concat_2ConcatV20biLSTM/bidirectional_rnn/bw/bw/concat_2/values_0&biLSTM/bidirectional_rnn/bw/bw/range_1,biLSTM/bidirectional_rnn/bw/bw/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0
с
*biLSTM/bidirectional_rnn/bw/bw/transpose_1	TransposeCbiLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3'biLSTM/bidirectional_rnn/bw/bw/concat_2*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0*
T0
ћ
biLSTM/ReverseSequenceReverseSequence*biLSTM/bidirectional_rnn/bw/bw/transpose_1
inputs/Sum*
	batch_dim *
T0*
seq_dim*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*

Tlen0
T
biLSTM/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
∆
biLSTM/concatConcatV2*biLSTM/bidirectional_rnn/fw/fw/transpose_1biLSTM/ReverseSequencebiLSTM/concat/axis*
T0*
N*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А*

Tidx0
e
biLSTM/Reshape/shapeConst*
valueB"€€€€А   *
dtype0*
_output_shapes
:

biLSTM/ReshapeReshapebiLSTM/concatbiLSTM/Reshape/shape*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
Р
MatMulMatMulbiLSTM/Reshapeinputs/Variable_1/read*
T0*'
_output_shapes
:€€€€€€€€€*
transpose_a( *
transpose_b( 
\
addAddMatMulinputs/Variable_2/read*'
_output_shapes
:€€€€€€€€€*
T0
b
Reshape/shapeConst*!
valueB"€€€€@      *
dtype0*
_output_shapes
:
j
ReshapeReshapeaddReshape/shape*
T0*
Tshape0*+
_output_shapes
:€€€€€€€€€@
Э
,transitions/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@transitions*
dtype0*
_output_shapes
:
П
*transitions/Initializer/random_uniform/minConst*
valueB
 *шKFњ*
_class
loc:@transitions*
dtype0*
_output_shapes
: 
П
*transitions/Initializer/random_uniform/maxConst*
valueB
 *шKF?*
_class
loc:@transitions*
dtype0*
_output_shapes
: 
в
4transitions/Initializer/random_uniform/RandomUniformRandomUniform,transitions/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*

seed *
T0*
_class
loc:@transitions*
seed2 
 
*transitions/Initializer/random_uniform/subSub*transitions/Initializer/random_uniform/max*transitions/Initializer/random_uniform/min*
_output_shapes
: *
T0*
_class
loc:@transitions
№
*transitions/Initializer/random_uniform/mulMul4transitions/Initializer/random_uniform/RandomUniform*transitions/Initializer/random_uniform/sub*
_output_shapes

:*
T0*
_class
loc:@transitions
ќ
&transitions/Initializer/random_uniformAdd*transitions/Initializer/random_uniform/mul*transitions/Initializer/random_uniform/min*
T0*
_class
loc:@transitions*
_output_shapes

:
Я
transitions
VariableV2*
shared_name *
_class
loc:@transitions*
	container *
shape
:*
dtype0*
_output_shapes

:
√
transitions/AssignAssigntransitions&transitions/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:
r
transitions/readIdentitytransitions*
T0*
_class
loc:@transitions*
_output_shapes

:
I
Equal/xConst*
value	B :@*
dtype0*
_output_shapes
: 
I
Equal/yConst*
value	B :*
dtype0*
_output_shapes
: 
A
EqualEqualEqual/xEqual/y*
_output_shapes
: *
T0
L
ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
щ
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
N
Shape_1ShapeReshape*
T0*
out_type0*
_output_shapes
:
_
strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Г
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
N
Shape_2ShapeReshape*
_output_shapes
:*
T0*
out_type0
_
strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
a
strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Г
strided_slice_2StridedSliceShape_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
b
Reshape_1/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
j
	Reshape_1ReshapeReshapeReshape_1/shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
h
rangeRangerange/startstrided_slicerange/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
P
mulMulrangestrided_slice_1*
T0*#
_output_shapes
:€€€€€€€€€
P
mul_1Mulmulstrided_slice_2*
T0*#
_output_shapes
:€€€€€€€€€
P
ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
m

ExpandDims
ExpandDimsmul_1ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
O
range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
O
range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
p
range_1Rangerange_1/startstrided_slice_1range_1/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
T
mul_2Mulrange_1strided_slice_2*
T0*#
_output_shapes
:€€€€€€€€€
R
ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
q
ExpandDims_1
ExpandDimsmul_2ExpandDims_1/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
a
add_1Add
ExpandDimsExpandDims_1*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
U
add_2Addadd_1label*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
b
Reshape_2/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
h
	Reshape_2Reshapeadd_2Reshape_2/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
В
GatherGather	Reshape_1	Reshape_2*
Tparams0*
validate_indices(*#
_output_shapes
:€€€€€€€€€*
Tindices0
q
Reshape_3/shapePackstrided_slicestrided_slice_1*
T0*

axis *
N*
_output_shapes
:
v
	Reshape_3ReshapeGatherReshape_3/shape*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
L
Shape_3Shapelabel*
out_type0*
_output_shapes
:*
T0
_
strided_slice_3/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Г
strided_slice_3StridedSliceShape_3strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
T
SequenceMask/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
V
SequenceMask/Const_1Const*
_output_shapes
: *
value	B :*
dtype0
З
SequenceMask/RangeRangeSequenceMask/Conststrided_slice_3SequenceMask/Const_1*#
_output_shapes
:€€€€€€€€€*

Tidx0
f
SequenceMask/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
М
SequenceMask/ExpandDims
ExpandDims
inputs/SumSequenceMask/ExpandDims/dim*'
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
s
SequenceMask/CastCastSequenceMask/ExpandDims*

SrcT0*'
_output_shapes
:€€€€€€€€€*

DstT0
{
SequenceMask/LessLessSequenceMask/RangeSequenceMask/Cast*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
x
SequenceMask/Cast_1CastSequenceMask/Less*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

DstT0*

SrcT0

g
mul_3Mul	Reshape_3SequenceMask/Cast_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
W
Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
s
SumSummul_3Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:€€€€€€€€€
L
Shape_4Shapelabel*
out_type0*
_output_shapes
:*
T0
_
strided_slice_4/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_4/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_4/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Г
strided_slice_4StridedSliceShape_4strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
G
sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
C
subSubstrided_slice_4sub/y*
T0*
_output_shapes
: 
\
Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
W
Slice/size/0Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
_

Slice/sizePackSlice/size/0sub*
_output_shapes
:*
T0*

axis *
N
v
SliceSlicelabelSlice/begin
Slice/size*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
^
Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB"       
Y
Slice_1/size/0Const*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
c
Slice_1/sizePackSlice_1/size/0sub*
T0*

axis *
N*
_output_shapes
:
|
Slice_1SlicelabelSlice_1/beginSlice_1/size*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
I
mul_4/yConst*
value	B :*
dtype0*
_output_shapes
: 
W
mul_4MulSlicemul_4/y*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
W
add_3Addmul_4Slice_1*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
b
Reshape_4/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
j
	Reshape_4Reshapetransitions/readReshape_4/shape*
_output_shapes
:*
T0*
Tshape0
Н
Gather_1Gather	Reshape_4add_3*
Tindices0*
Tparams0*
validate_indices(*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
L
Shape_5Shapelabel*
_output_shapes
:*
T0*
out_type0
_
strided_slice_5/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_5/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_5/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Г
strided_slice_5StridedSliceShape_5strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
V
SequenceMask_1/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
X
SequenceMask_1/Const_1Const*
value	B :*
dtype0*
_output_shapes
: 
Н
SequenceMask_1/RangeRangeSequenceMask_1/Conststrided_slice_5SequenceMask_1/Const_1*

Tidx0*#
_output_shapes
:€€€€€€€€€
h
SequenceMask_1/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Р
SequenceMask_1/ExpandDims
ExpandDims
inputs/SumSequenceMask_1/ExpandDims/dim*
T0*'
_output_shapes
:€€€€€€€€€*

Tdim0
w
SequenceMask_1/CastCastSequenceMask_1/ExpandDims*'
_output_shapes
:€€€€€€€€€*

DstT0*

SrcT0
Б
SequenceMask_1/LessLessSequenceMask_1/RangeSequenceMask_1/Cast*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
|
SequenceMask_1/Cast_1CastSequenceMask_1/Less*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

DstT0*

SrcT0

^
Slice_2/beginConst*
_output_shapes
:*
valueB"       *
dtype0
]
Slice_2/sizeConst*
valueB"€€€€€€€€*
dtype0*
_output_shapes
:
М
Slice_2SliceSequenceMask_1/Cast_1Slice_2/beginSlice_2/size*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Z
mul_5MulGather_1Slice_2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
Y
Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
w
Sum_1Summul_5Sum_1/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
F
add_4AddSumSum_1*#
_output_shapes
:€€€€€€€€€*
T0
b
Slice_3/beginConst*!
valueB"            *
dtype0*
_output_shapes
:
a
Slice_3/sizeConst*!
valueB"€€€€   €€€€*
dtype0*
_output_shapes
:
y
Slice_3SliceReshapeSlice_3/beginSlice_3/size*+
_output_shapes
:€€€€€€€€€*
Index0*
T0
d
SqueezeSqueezeSlice_3*
squeeze_dims
*
T0*'
_output_shapes
:€€€€€€€€€
N
Shape_6ShapeReshape*
_output_shapes
:*
T0*
out_type0
_
strided_slice_6/stackConst*
_output_shapes
:*
valueB:*
dtype0
a
strided_slice_6/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_6/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Г
strided_slice_6StridedSliceShape_6strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
K
	Equal_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
M
Equal_1Equalstrided_slice_6	Equal_1/y*
_output_shapes
: *
T0
J
cond/SwitchSwitchEqual_1Equal_1*
T0
*
_output_shapes
: : 
I
cond/switch_tIdentitycond/Switch:1*
T0
*
_output_shapes
: 
G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
B
cond/pred_idIdentityEqual_1*
_output_shapes
: *
T0

Д
*cond/ReduceLogSumExp/Max/reduction_indicesConst^cond/switch_t*
valueB:*
dtype0*
_output_shapes
:
љ
cond/ReduceLogSumExp/MaxMax!cond/ReduceLogSumExp/Max/Switch:1*cond/ReduceLogSumExp/Max/reduction_indices*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(*
T0
°
cond/ReduceLogSumExp/Max/SwitchSwitchSqueezecond/pred_id*
T0*
_class
loc:@Squeeze*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
u
cond/ReduceLogSumExp/IsFiniteIsFinitecond/ReduceLogSumExp/Max*'
_output_shapes
:€€€€€€€€€*
T0
x
cond/ReduceLogSumExp/zeros_like	ZerosLikecond/ReduceLogSumExp/Max*
T0*'
_output_shapes
:€€€€€€€€€
±
cond/ReduceLogSumExp/SelectSelectcond/ReduceLogSumExp/IsFinitecond/ReduceLogSumExp/Maxcond/ReduceLogSumExp/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
А
!cond/ReduceLogSumExp/StopGradientStopGradientcond/ReduceLogSumExp/Select*'
_output_shapes
:€€€€€€€€€*
T0
Ч
cond/ReduceLogSumExp/subSub!cond/ReduceLogSumExp/Max/Switch:1!cond/ReduceLogSumExp/StopGradient*
T0*'
_output_shapes
:€€€€€€€€€
k
cond/ReduceLogSumExp/ExpExpcond/ReduceLogSumExp/sub*'
_output_shapes
:€€€€€€€€€*
T0
Д
*cond/ReduceLogSumExp/Sum/reduction_indicesConst^cond/switch_t*
valueB:*
dtype0*
_output_shapes
:
∞
cond/ReduceLogSumExp/SumSumcond/ReduceLogSumExp/Exp*cond/ReduceLogSumExp/Sum/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( 
g
cond/ReduceLogSumExp/LogLogcond/ReduceLogSumExp/Sum*#
_output_shapes
:€€€€€€€€€*
T0
r
cond/ReduceLogSumExp/ShapeShapecond/ReduceLogSumExp/Log*
T0*
out_type0*
_output_shapes
:
Ґ
cond/ReduceLogSumExp/ReshapeReshape!cond/ReduceLogSumExp/StopGradientcond/ReduceLogSumExp/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Е
cond/ReduceLogSumExp/addAddcond/ReduceLogSumExp/Logcond/ReduceLogSumExp/Reshape*#
_output_shapes
:€€€€€€€€€*
T0
u
cond/Slice/beginConst^cond/switch_f*!
valueB"           *
dtype0*
_output_shapes
:
t
cond/Slice/sizeConst^cond/switch_f*!
valueB"€€€€€€€€€€€€*
dtype0*
_output_shapes
:
М

cond/SliceSlicecond/Slice/Switchcond/Slice/begincond/Slice/size*
Index0*
T0*+
_output_shapes
:€€€€€€€€€?
Ы
cond/Slice/SwitchSwitchReshapecond/pred_id*
T0*
_class
loc:@Reshape*B
_output_shapes0
.:€€€€€€€€€@:€€€€€€€€€@
e
cond/ExpandDims/dimConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
Г
cond/ExpandDims
ExpandDimscond/ExpandDims/Switchcond/ExpandDims/dim*
T0*"
_output_shapes
:*

Tdim0
У
cond/ExpandDims/SwitchSwitchtransitions/readcond/pred_id*
T0*
_class
loc:@transitions*(
_output_shapes
::
\

cond/sub/yConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
Z
cond/subSubcond/sub/Switch
cond/sub/y*#
_output_shapes
:€€€€€€€€€*
T0
П
cond/sub/SwitchSwitch
inputs/Sumcond/pred_id*
T0*
_class
loc:@inputs/Sum*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
_
cond/rnn/RankConst^cond/switch_f*
dtype0*
_output_shapes
: *
value	B :
f
cond/rnn/range/startConst^cond/switch_f*
dtype0*
_output_shapes
: *
value	B :
f
cond/rnn/range/deltaConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
z
cond/rnn/rangeRangecond/rnn/range/startcond/rnn/Rankcond/rnn/range/delta*
_output_shapes
:*

Tidx0
y
cond/rnn/concat/values_0Const^cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
f
cond/rnn/concat/axisConst^cond/switch_f*
dtype0*
_output_shapes
: *
value	B : 
Х
cond/rnn/concatConcatV2cond/rnn/concat/values_0cond/rnn/rangecond/rnn/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:

cond/rnn/transpose	Transpose
cond/Slicecond/rnn/concat*
Tperm0*
T0*+
_output_shapes
:?€€€€€€€€€
\
cond/rnn/sequence_lengthIdentitycond/sub*
T0*#
_output_shapes
:€€€€€€€€€
`
cond/rnn/ShapeShapecond/rnn/transpose*
T0*
out_type0*
_output_shapes
:
v
cond/rnn/strided_slice/stackConst^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
x
cond/rnn/strided_slice/stack_1Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
x
cond/rnn/strided_slice/stack_2Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
¶
cond/rnn/strided_sliceStridedSlicecond/rnn/Shapecond/rnn/strided_slice/stackcond/rnn/strided_slice/stack_1cond/rnn/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
h
cond/rnn/Shape_1Shapecond/rnn/sequence_length*
T0*
out_type0*
_output_shapes
:
h
cond/rnn/stackPackcond/rnn/strided_slice*
T0*

axis *
N*
_output_shapes
:
^
cond/rnn/EqualEqualcond/rnn/Shape_1cond/rnn/stack*
T0*
_output_shapes
:
h
cond/rnn/ConstConst^cond/switch_f*
valueB: *
dtype0*
_output_shapes
:
h
cond/rnn/AllAllcond/rnn/Equalcond/rnn/Const*

Tidx0*
	keep_dims( *
_output_shapes
: 
Ю
cond/rnn/Assert/ConstConst^cond/switch_f*I
value@B> B8Expected shape for Tensor cond/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
x
cond/rnn/Assert/Const_1Const^cond/switch_f*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
¶
cond/rnn/Assert/Assert/data_0Const^cond/switch_f*I
value@B> B8Expected shape for Tensor cond/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
~
cond/rnn/Assert/Assert/data_2Const^cond/switch_f*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
Ѓ
cond/rnn/Assert/AssertAssertcond/rnn/Allcond/rnn/Assert/Assert/data_0cond/rnn/stackcond/rnn/Assert/Assert/data_2cond/rnn/Shape_1*
T
2*
	summarize
Б
cond/rnn/CheckSeqLenIdentitycond/rnn/sequence_length^cond/rnn/Assert/Assert*
T0*#
_output_shapes
:€€€€€€€€€
b
cond/rnn/Shape_2Shapecond/rnn/transpose*
out_type0*
_output_shapes
:*
T0
x
cond/rnn/strided_slice_1/stackConst^cond/switch_f*
valueB: *
dtype0*
_output_shapes
:
z
 cond/rnn/strided_slice_1/stack_1Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
z
 cond/rnn/strided_slice_1/stack_2Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
∞
cond/rnn/strided_slice_1StridedSlicecond/rnn/Shape_2cond/rnn/strided_slice_1/stack cond/rnn/strided_slice_1/stack_1 cond/rnn/strided_slice_1/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
b
cond/rnn/Shape_3Shapecond/rnn/transpose*
T0*
out_type0*
_output_shapes
:
x
cond/rnn/strided_slice_2/stackConst^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
z
 cond/rnn/strided_slice_2/stack_1Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
z
 cond/rnn/strided_slice_2/stack_2Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
∞
cond/rnn/strided_slice_2StridedSlicecond/rnn/Shape_3cond/rnn/strided_slice_2/stack cond/rnn/strided_slice_2/stack_1 cond/rnn/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
i
cond/rnn/ExpandDims/dimConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
Е
cond/rnn/ExpandDims
ExpandDimscond/rnn/strided_slice_2cond/rnn/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
j
cond/rnn/Const_1Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
h
cond/rnn/concat_1/axisConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
Ц
cond/rnn/concat_1ConcatV2cond/rnn/ExpandDimscond/rnn/Const_1cond/rnn/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
i
cond/rnn/zeros/ConstConst^cond/switch_f*
valueB
 *    *
dtype0*
_output_shapes
: 
Г
cond/rnn/zerosFillcond/rnn/concat_1cond/rnn/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
j
cond/rnn/Const_2Const^cond/switch_f*
valueB: *
dtype0*
_output_shapes
:
y
cond/rnn/MinMincond/rnn/CheckSeqLencond/rnn/Const_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
j
cond/rnn/Const_3Const^cond/switch_f*
valueB: *
dtype0*
_output_shapes
:
y
cond/rnn/MaxMaxcond/rnn/CheckSeqLencond/rnn/Const_3*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
_
cond/rnn/timeConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
Т
cond/rnn/TensorArrayTensorArrayV3cond/rnn/strided_slice_1*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*4
tensor_array_namecond/rnn/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *$
element_shape:€€€€€€€€€
У
cond/rnn/TensorArray_1TensorArrayV3cond/rnn/strided_slice_1*3
tensor_array_namecond/rnn/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *$
element_shape:€€€€€€€€€*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
s
!cond/rnn/TensorArrayUnstack/ShapeShapecond/rnn/transpose*
T0*
out_type0*
_output_shapes
:
Й
/cond/rnn/TensorArrayUnstack/strided_slice/stackConst^cond/switch_f*
valueB: *
dtype0*
_output_shapes
:
Л
1cond/rnn/TensorArrayUnstack/strided_slice/stack_1Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
Л
1cond/rnn/TensorArrayUnstack/strided_slice/stack_2Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
Е
)cond/rnn/TensorArrayUnstack/strided_sliceStridedSlice!cond/rnn/TensorArrayUnstack/Shape/cond/rnn/TensorArrayUnstack/strided_slice/stack1cond/rnn/TensorArrayUnstack/strided_slice/stack_11cond/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
y
'cond/rnn/TensorArrayUnstack/range/startConst^cond/switch_f*
dtype0*
_output_shapes
: *
value	B : 
y
'cond/rnn/TensorArrayUnstack/range/deltaConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
Ў
!cond/rnn/TensorArrayUnstack/rangeRange'cond/rnn/TensorArrayUnstack/range/start)cond/rnn/TensorArrayUnstack/strided_slice'cond/rnn/TensorArrayUnstack/range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
М
Ccond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3cond/rnn/TensorArray_1!cond/rnn/TensorArrayUnstack/rangecond/rnn/transposecond/rnn/TensorArray_1:1*
_output_shapes
: *
T0*%
_class
loc:@cond/rnn/transpose
d
cond/rnn/Maximum/xConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
^
cond/rnn/MaximumMaximumcond/rnn/Maximum/xcond/rnn/Max*
_output_shapes
: *
T0
h
cond/rnn/MinimumMinimumcond/rnn/strided_slice_1cond/rnn/Maximum*
T0*
_output_shapes
: 
r
 cond/rnn/while/iteration_counterConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
Ч
cond/rnn/while/SwitchSwitchSqueezecond/pred_id*
T0*
_class
loc:@Squeeze*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
Љ
cond/rnn/while/EnterEnter cond/rnn/while/iteration_counter*
parallel_iterations *
_output_shapes
: *,

frame_namecond/rnn/while/while_context*
T0*
is_constant( 
Ђ
cond/rnn/while/Enter_1Entercond/rnn/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *,

frame_namecond/rnn/while/while_context
і
cond/rnn/while/Enter_2Entercond/rnn/TensorArray:1*
is_constant( *
parallel_iterations *
_output_shapes
: *,

frame_namecond/rnn/while/while_context*
T0
ƒ
cond/rnn/while/Enter_3Entercond/rnn/while/Switch*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*,

frame_namecond/rnn/while/while_context
}
cond/rnn/while/MergeMergecond/rnn/while/Entercond/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
Г
cond/rnn/while/Merge_1Mergecond/rnn/while/Enter_1cond/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Г
cond/rnn/while/Merge_2Mergecond/rnn/while/Enter_2cond/rnn/while/NextIteration_2*
N*
_output_shapes
: : *
T0
Ф
cond/rnn/while/Merge_3Mergecond/rnn/while/Enter_3cond/rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
m
cond/rnn/while/LessLesscond/rnn/while/Mergecond/rnn/while/Less/Enter*
T0*
_output_shapes
: 
є
cond/rnn/while/Less/EnterEntercond/rnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *,

frame_namecond/rnn/while/while_context
s
cond/rnn/while/Less_1Lesscond/rnn/while/Merge_1cond/rnn/while/Less_1/Enter*
T0*
_output_shapes
: 
≥
cond/rnn/while/Less_1/EnterEntercond/rnn/Minimum*
parallel_iterations *
_output_shapes
: *,

frame_namecond/rnn/while/while_context*
T0*
is_constant(
k
cond/rnn/while/LogicalAnd
LogicalAndcond/rnn/while/Lesscond/rnn/while/Less_1*
_output_shapes
: 
V
cond/rnn/while/LoopCondLoopCondcond/rnn/while/LogicalAnd*
_output_shapes
: 
Ь
cond/rnn/while/Switch_1Switchcond/rnn/while/Mergecond/rnn/while/LoopCond*
T0*'
_class
loc:@cond/rnn/while/Merge*
_output_shapes
: : 
†
cond/rnn/while/Switch_2Switchcond/rnn/while/Merge_1cond/rnn/while/LoopCond*
T0*)
_class
loc:@cond/rnn/while/Merge_1*
_output_shapes
: : 
†
cond/rnn/while/Switch_3Switchcond/rnn/while/Merge_2cond/rnn/while/LoopCond*
_output_shapes
: : *
T0*)
_class
loc:@cond/rnn/while/Merge_2
¬
cond/rnn/while/Switch_4Switchcond/rnn/while/Merge_3cond/rnn/while/LoopCond*
T0*)
_class
loc:@cond/rnn/while/Merge_3*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
_
cond/rnn/while/IdentityIdentitycond/rnn/while/Switch_1:1*
_output_shapes
: *
T0
a
cond/rnn/while/Identity_1Identitycond/rnn/while/Switch_2:1*
_output_shapes
: *
T0
a
cond/rnn/while/Identity_2Identitycond/rnn/while/Switch_3:1*
T0*
_output_shapes
: 
r
cond/rnn/while/Identity_3Identitycond/rnn/while/Switch_4:1*
T0*'
_output_shapes
:€€€€€€€€€
p
cond/rnn/while/add/yConst^cond/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
i
cond/rnn/while/addAddcond/rnn/while/Identitycond/rnn/while/add/y*
_output_shapes
: *
T0
Ў
 cond/rnn/while/TensorArrayReadV3TensorArrayReadV3&cond/rnn/while/TensorArrayReadV3/Entercond/rnn/while/Identity_1(cond/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:€€€€€€€€€
»
&cond/rnn/while/TensorArrayReadV3/EnterEntercond/rnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
у
(cond/rnn/while/TensorArrayReadV3/Enter_1EnterCcond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *,

frame_namecond/rnn/while/while_context
Ч
cond/rnn/while/GreaterEqualGreaterEqualcond/rnn/while/Identity_1!cond/rnn/while/GreaterEqual/Enter*
T0*#
_output_shapes
:€€€€€€€€€
 
!cond/rnn/while/GreaterEqual/EnterEntercond/rnn/CheckSeqLen*
parallel_iterations *#
_output_shapes
:€€€€€€€€€*,

frame_namecond/rnn/while/while_context*
T0*
is_constant(
y
cond/rnn/while/ExpandDims/dimConst^cond/rnn/while/Identity*
dtype0*
_output_shapes
: *
value	B :
£
cond/rnn/while/ExpandDims
ExpandDimscond/rnn/while/Identity_3cond/rnn/while/ExpandDims/dim*+
_output_shapes
:€€€€€€€€€*

Tdim0*
T0
И
cond/rnn/while/add_1Addcond/rnn/while/ExpandDimscond/rnn/while/add_1/Enter*+
_output_shapes
:€€€€€€€€€*
T0
љ
cond/rnn/while/add_1/EnterEntercond/ExpandDims*
T0*
is_constant(*
parallel_iterations *"
_output_shapes
:*,

frame_namecond/rnn/while/while_context
Ш
4cond/rnn/while/ReduceLogSumExp/Max/reduction_indicesConst^cond/rnn/while/Identity*
valueB:*
dtype0*
_output_shapes
:
»
"cond/rnn/while/ReduceLogSumExp/MaxMaxcond/rnn/while/add_14cond/rnn/while/ReduceLogSumExp/Max/reduction_indices*

Tidx0*
	keep_dims(*
T0*+
_output_shapes
:€€€€€€€€€
Н
'cond/rnn/while/ReduceLogSumExp/IsFiniteIsFinite"cond/rnn/while/ReduceLogSumExp/Max*
T0*+
_output_shapes
:€€€€€€€€€
Р
)cond/rnn/while/ReduceLogSumExp/zeros_like	ZerosLike"cond/rnn/while/ReduceLogSumExp/Max*
T0*+
_output_shapes
:€€€€€€€€€
Ё
%cond/rnn/while/ReduceLogSumExp/SelectSelect'cond/rnn/while/ReduceLogSumExp/IsFinite"cond/rnn/while/ReduceLogSumExp/Max)cond/rnn/while/ReduceLogSumExp/zeros_like*+
_output_shapes
:€€€€€€€€€*
T0
Ш
+cond/rnn/while/ReduceLogSumExp/StopGradientStopGradient%cond/rnn/while/ReduceLogSumExp/Select*
T0*+
_output_shapes
:€€€€€€€€€
Ґ
"cond/rnn/while/ReduceLogSumExp/subSubcond/rnn/while/add_1+cond/rnn/while/ReduceLogSumExp/StopGradient*+
_output_shapes
:€€€€€€€€€*
T0
Г
"cond/rnn/while/ReduceLogSumExp/ExpExp"cond/rnn/while/ReduceLogSumExp/sub*
T0*+
_output_shapes
:€€€€€€€€€
Ш
4cond/rnn/while/ReduceLogSumExp/Sum/reduction_indicesConst^cond/rnn/while/Identity*
_output_shapes
:*
valueB:*
dtype0
“
"cond/rnn/while/ReduceLogSumExp/SumSum"cond/rnn/while/ReduceLogSumExp/Exp4cond/rnn/while/ReduceLogSumExp/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0

"cond/rnn/while/ReduceLogSumExp/LogLog"cond/rnn/while/ReduceLogSumExp/Sum*
T0*'
_output_shapes
:€€€€€€€€€
Ж
$cond/rnn/while/ReduceLogSumExp/ShapeShape"cond/rnn/while/ReduceLogSumExp/Log*
_output_shapes
:*
T0*
out_type0
ƒ
&cond/rnn/while/ReduceLogSumExp/ReshapeReshape+cond/rnn/while/ReduceLogSumExp/StopGradient$cond/rnn/while/ReduceLogSumExp/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
І
"cond/rnn/while/ReduceLogSumExp/addAdd"cond/rnn/while/ReduceLogSumExp/Log&cond/rnn/while/ReduceLogSumExp/Reshape*
T0*'
_output_shapes
:€€€€€€€€€
У
cond/rnn/while/add_2Add cond/rnn/while/TensorArrayReadV3"cond/rnn/while/ReduceLogSumExp/add*
T0*'
_output_shapes
:€€€€€€€€€
 
cond/rnn/while/SelectSelectcond/rnn/while/GreaterEqualcond/rnn/while/Select/Entercond/rnn/while/add_2*
T0*'
_class
loc:@cond/rnn/while/add_2*'
_output_shapes
:€€€€€€€€€
л
cond/rnn/while/Select/EnterEntercond/rnn/zeros*
is_constant(*'
_output_shapes
:€€€€€€€€€*,

frame_namecond/rnn/while/while_context*
T0*'
_class
loc:@cond/rnn/while/add_2*
parallel_iterations 
 
cond/rnn/while/Select_1Selectcond/rnn/while/GreaterEqualcond/rnn/while/Identity_3cond/rnn/while/add_2*
T0*'
_class
loc:@cond/rnn/while/add_2*'
_output_shapes
:€€€€€€€€€
Щ
2cond/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV38cond/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Entercond/rnn/while/Identity_1cond/rnn/while/Selectcond/rnn/while/Identity_2*
T0*'
_class
loc:@cond/rnn/while/add_2*
_output_shapes
: 
Б
8cond/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntercond/rnn/TensorArray*
_output_shapes
:*,

frame_namecond/rnn/while/while_context*
T0*'
_class
loc:@cond/rnn/while/add_2*
parallel_iterations *
is_constant(
r
cond/rnn/while/add_3/yConst^cond/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
o
cond/rnn/while/add_3Addcond/rnn/while/Identity_1cond/rnn/while/add_3/y*
_output_shapes
: *
T0
b
cond/rnn/while/NextIterationNextIterationcond/rnn/while/add*
T0*
_output_shapes
: 
f
cond/rnn/while/NextIteration_1NextIterationcond/rnn/while/add_3*
T0*
_output_shapes
: 
Д
cond/rnn/while/NextIteration_2NextIteration2cond/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
z
cond/rnn/while/NextIteration_3NextIterationcond/rnn/while/Select_1*
T0*'
_output_shapes
:€€€€€€€€€
U
cond/rnn/while/ExitExitcond/rnn/while/Switch_1*
_output_shapes
: *
T0
W
cond/rnn/while/Exit_1Exitcond/rnn/while/Switch_2*
_output_shapes
: *
T0
W
cond/rnn/while/Exit_2Exitcond/rnn/while/Switch_3*
T0*
_output_shapes
: 
h
cond/rnn/while/Exit_3Exitcond/rnn/while/Switch_4*
T0*'
_output_shapes
:€€€€€€€€€
Ѓ
+cond/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3cond/rnn/TensorArraycond/rnn/while/Exit_2*'
_class
loc:@cond/rnn/TensorArray*
_output_shapes
: 
†
%cond/rnn/TensorArrayStack/range/startConst^cond/switch_f*
value	B : *'
_class
loc:@cond/rnn/TensorArray*
dtype0*
_output_shapes
: 
†
%cond/rnn/TensorArrayStack/range/deltaConst^cond/switch_f*
value	B :*'
_class
loc:@cond/rnn/TensorArray*
dtype0*
_output_shapes
: 
э
cond/rnn/TensorArrayStack/rangeRange%cond/rnn/TensorArrayStack/range/start+cond/rnn/TensorArrayStack/TensorArraySizeV3%cond/rnn/TensorArrayStack/range/delta*'
_class
loc:@cond/rnn/TensorArray*#
_output_shapes
:€€€€€€€€€*

Tidx0
Ы
-cond/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3cond/rnn/TensorArraycond/rnn/TensorArrayStack/rangecond/rnn/while/Exit_2*'
_class
loc:@cond/rnn/TensorArray*
dtype0*+
_output_shapes
:?€€€€€€€€€*$
element_shape:€€€€€€€€€
j
cond/rnn/Const_4Const^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
a
cond/rnn/Rank_1Const^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
h
cond/rnn/range_1/startConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
h
cond/rnn/range_1/deltaConst^cond/switch_f*
value	B :*
dtype0*
_output_shapes
: 
В
cond/rnn/range_1Rangecond/rnn/range_1/startcond/rnn/Rank_1cond/rnn/range_1/delta*

Tidx0*
_output_shapes
:
{
cond/rnn/concat_2/values_0Const^cond/switch_f*
valueB"       *
dtype0*
_output_shapes
:
h
cond/rnn/concat_2/axisConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
Э
cond/rnn/concat_2ConcatV2cond/rnn/concat_2/values_0cond/rnn/range_1cond/rnn/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0
¶
cond/rnn/transpose_1	Transpose-cond/rnn/TensorArrayStack/TensorArrayGatherV3cond/rnn/concat_2*
T0*+
_output_shapes
:€€€€€€€€€?*
Tperm0
Ж
,cond/ReduceLogSumExp_1/Max/reduction_indicesConst^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
µ
cond/ReduceLogSumExp_1/MaxMaxcond/rnn/while/Exit_3,cond/ReduceLogSumExp_1/Max/reduction_indices*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(*
T0
y
cond/ReduceLogSumExp_1/IsFiniteIsFinitecond/ReduceLogSumExp_1/Max*
T0*'
_output_shapes
:€€€€€€€€€
|
!cond/ReduceLogSumExp_1/zeros_like	ZerosLikecond/ReduceLogSumExp_1/Max*'
_output_shapes
:€€€€€€€€€*
T0
є
cond/ReduceLogSumExp_1/SelectSelectcond/ReduceLogSumExp_1/IsFinitecond/ReduceLogSumExp_1/Max!cond/ReduceLogSumExp_1/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
Д
#cond/ReduceLogSumExp_1/StopGradientStopGradientcond/ReduceLogSumExp_1/Select*'
_output_shapes
:€€€€€€€€€*
T0
П
cond/ReduceLogSumExp_1/subSubcond/rnn/while/Exit_3#cond/ReduceLogSumExp_1/StopGradient*'
_output_shapes
:€€€€€€€€€*
T0
o
cond/ReduceLogSumExp_1/ExpExpcond/ReduceLogSumExp_1/sub*
T0*'
_output_shapes
:€€€€€€€€€
Ж
,cond/ReduceLogSumExp_1/Sum/reduction_indicesConst^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
ґ
cond/ReduceLogSumExp_1/SumSumcond/ReduceLogSumExp_1/Exp,cond/ReduceLogSumExp_1/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
k
cond/ReduceLogSumExp_1/LogLogcond/ReduceLogSumExp_1/Sum*#
_output_shapes
:€€€€€€€€€*
T0
v
cond/ReduceLogSumExp_1/ShapeShapecond/ReduceLogSumExp_1/Log*
_output_shapes
:*
T0*
out_type0
®
cond/ReduceLogSumExp_1/ReshapeReshape#cond/ReduceLogSumExp_1/StopGradientcond/ReduceLogSumExp_1/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Л
cond/ReduceLogSumExp_1/addAddcond/ReduceLogSumExp_1/Logcond/ReduceLogSumExp_1/Reshape*
T0*#
_output_shapes
:€€€€€€€€€
В

cond/MergeMergecond/ReduceLogSumExp_1/addcond/ReduceLogSumExp/add*%
_output_shapes
:€€€€€€€€€: *
T0*
N
M
sub_1Subadd_4
cond/Merge*#
_output_shapes
:€€€€€€€€€*
T0
?
NegNegsub_1*#
_output_shapes
:€€€€€€€€€*
T0
O
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
V
MeanMeanNegConst*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
G
lossScalarSummary	loss/tagsMean*
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
 *  А?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
c
gradients/f_countConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
ђ
gradients/f_count_1Entergradients/f_count*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *,

frame_namecond/rnn/while/while_context
r
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
_output_shapes
: : *
T0*
N
g
gradients/SwitchSwitchgradients/Mergecond/rnn/while/LoopCond*
_output_shapes
: : *
T0
k
gradients/Add/yConst^cond/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Z
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*
_output_shapes
: 
‘	
gradients/NextIterationNextIterationgradients/Add>^gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPushV2:^gradients/cond/rnn/while/Select_1_grad/Select/StackPushV2F^gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPushV2H^gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1`^gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2T^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPushV2V^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPushV2_1J^gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPushV2I^gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPushV2L^gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPushV2B^gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPushV2T^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPushV2V^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPushV2_1F^gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPushV2=^gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPushV2*
_output_shapes
: *
T0
N
gradients/f_count_2Exitgradients/Switch*
T0*
_output_shapes
: 
c
gradients/b_countConst^cond/switch_f*
_output_shapes
: *
value	B :*
dtype0
Є
gradients/b_count_1Entergradients/f_count_2*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *6

frame_name(&gradients/cond/rnn/while/while_context
v
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
T0*
N*
_output_shapes
: : 
x
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
њ
gradients/GreaterEqual/EnterEntergradients/b_count*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *6

frame_name(&gradients/cond/rnn/while/while_context
O
gradients/b_count_2LoopCondgradients/GreaterEqual*
_output_shapes
: 
g
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*
_output_shapes
: : 
i
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*
_output_shapes
: 
Х
gradients/NextIteration_1NextIterationgradients/Sub9^gradients/cond/rnn/while/Select_1_grad/zeros_like/b_sync*
T0*
_output_shapes
: 
P
gradients/b_count_3Exitgradients/Switch_1*
_output_shapes
: *
T0
U
gradients/f_count_3Const*
value	B : *
dtype0*
_output_shapes
: 
ƒ
gradients/f_count_4Entergradients/f_count_3*
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
v
gradients/Merge_2Mergegradients/f_count_4gradients/NextIteration_2*
T0*
N*
_output_shapes
: : 
Б
gradients/Switch_2Switchgradients/Merge_2-biLSTM/bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0
Г
gradients/Add_1/yConst.^biLSTM/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
gradients/Add_1Addgradients/Switch_2:1gradients/Add_1/y*
_output_shapes
: *
T0
Р%
gradients/NextIteration_2NextIterationgradients/Add_1v^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2T^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2P^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2T^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPushV2T^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPushV2T^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1Г^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1q^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2Г^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2y^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2w^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1Г^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1q^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2Г^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2y^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2w^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2*
T0*
_output_shapes
: 
P
gradients/f_count_5Exitgradients/Switch_2*
T0*
_output_shapes
: 
U
gradients/b_count_4Const*
value	B :*
dtype0*
_output_shapes
: 
ќ
gradients/b_count_5Entergradients/f_count_5*
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( *
parallel_iterations 
v
gradients/Merge_3Mergegradients/b_count_5gradients/NextIteration_3*
T0*
N*
_output_shapes
: : 
|
gradients/GreaterEqual_1GreaterEqualgradients/Merge_3gradients/GreaterEqual_1/Enter*
T0*
_output_shapes
: 
ў
gradients/GreaterEqual_1/EnterEntergradients/b_count_4*
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Q
gradients/b_count_6LoopCondgradients/GreaterEqual_1*
_output_shapes
: 
g
gradients/Switch_3Switchgradients/Merge_3gradients/b_count_6*
_output_shapes
: : *
T0
m
gradients/Sub_1Subgradients/Switch_3:1gradients/GreaterEqual_1/Enter*
T0*
_output_shapes
: 
ѕ
gradients/NextIteration_3NextIterationgradients/Sub_1q^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
_output_shapes
: *
T0
P
gradients/b_count_7Exitgradients/Switch_3*
T0*
_output_shapes
: 
U
gradients/f_count_6Const*
value	B : *
dtype0*
_output_shapes
: 
ƒ
gradients/f_count_7Entergradients/f_count_6*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
v
gradients/Merge_4Mergegradients/f_count_7gradients/NextIteration_4*
T0*
N*
_output_shapes
: : 
Б
gradients/Switch_4Switchgradients/Merge_4-biLSTM/bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0
Г
gradients/Add_2/yConst.^biLSTM/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
`
gradients/Add_2Addgradients/Switch_4:1gradients/Add_2/y*
_output_shapes
: *
T0
Р%
gradients/NextIteration_4NextIterationgradients/Add_2v^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2T^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2P^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2T^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPushV2T^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPushV2T^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1Г^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1q^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2Г^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2y^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2w^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1Г^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1q^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2Е^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2З^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1s^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2Г^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2y^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2w^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2*
T0*
_output_shapes
: 
P
gradients/f_count_8Exitgradients/Switch_4*
_output_shapes
: *
T0
U
gradients/b_count_8Const*
_output_shapes
: *
value	B :*
dtype0
ќ
gradients/b_count_9Entergradients/f_count_8*
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
v
gradients/Merge_5Mergegradients/b_count_9gradients/NextIteration_5*
T0*
N*
_output_shapes
: : 
|
gradients/GreaterEqual_2GreaterEqualgradients/Merge_5gradients/GreaterEqual_2/Enter*
T0*
_output_shapes
: 
ў
gradients/GreaterEqual_2/EnterEntergradients/b_count_8*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
R
gradients/b_count_10LoopCondgradients/GreaterEqual_2*
_output_shapes
: 
h
gradients/Switch_5Switchgradients/Merge_5gradients/b_count_10*
_output_shapes
: : *
T0
m
gradients/Sub_2Subgradients/Switch_5:1gradients/GreaterEqual_2/Enter*
_output_shapes
: *
T0
ѕ
gradients/NextIteration_5NextIterationgradients/Sub_2q^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*
_output_shapes
: 
Q
gradients/b_count_11Exitgradients/Switch_5*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
М
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
\
gradients/Mean_grad/ShapeShapeNeg*
out_type0*
_output_shapes
:*
T0
Ш
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
^
gradients/Mean_grad/Shape_1ShapeNeg*
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
gradients/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0
Ц
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Ъ
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
В
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
А
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0
И
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
h
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv*
T0*#
_output_shapes
:€€€€€€€€€
_
gradients/sub_1_grad/ShapeShapeadd_4*
T0*
out_type0*
_output_shapes
:
f
gradients/sub_1_grad/Shape_1Shape
cond/Merge*
T0*
out_type0*
_output_shapes
:
Ї
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
£
gradients/sub_1_grad/SumSumgradients/Neg_grad/Neg*gradients/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Щ
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
І
gradients/sub_1_grad/Sum_1Sumgradients/Neg_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
^
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
_output_shapes
:*
T0
Э
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
ё
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*#
_output_shapes
:€€€€€€€€€
д
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
]
gradients/add_4_grad/ShapeShapeSum*
_output_shapes
:*
T0*
out_type0
a
gradients/add_4_grad/Shape_1ShapeSum_1*
T0*
out_type0*
_output_shapes
:
Ї
*gradients/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_4_grad/Shapegradients/add_4_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ї
gradients/add_4_grad/SumSum-gradients/sub_1_grad/tuple/control_dependency*gradients/add_4_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Щ
gradients/add_4_grad/ReshapeReshapegradients/add_4_grad/Sumgradients/add_4_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Њ
gradients/add_4_grad/Sum_1Sum-gradients/sub_1_grad/tuple/control_dependency,gradients/add_4_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Я
gradients/add_4_grad/Reshape_1Reshapegradients/add_4_grad/Sum_1gradients/add_4_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
m
%gradients/add_4_grad/tuple/group_depsNoOp^gradients/add_4_grad/Reshape^gradients/add_4_grad/Reshape_1
ё
-gradients/add_4_grad/tuple/control_dependencyIdentitygradients/add_4_grad/Reshape&^gradients/add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_4_grad/Reshape*#
_output_shapes
:€€€€€€€€€
д
/gradients/add_4_grad/tuple/control_dependency_1Identitygradients/add_4_grad/Reshape_1&^gradients/add_4_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*1
_class'
%#loc:@gradients/add_4_grad/Reshape_1
№
#gradients/cond/Merge_grad/cond_gradSwitch/gradients/sub_1_grad/tuple/control_dependency_1cond/pred_id*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
X
*gradients/cond/Merge_grad/tuple/group_depsNoOp$^gradients/cond/Merge_grad/cond_grad
с
2gradients/cond/Merge_grad/tuple/control_dependencyIdentity#gradients/cond/Merge_grad/cond_grad+^gradients/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
х
4gradients/cond/Merge_grad/tuple/control_dependency_1Identity%gradients/cond/Merge_grad/cond_grad:1+^gradients/cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
]
gradients/Sum_grad/ShapeShapemul_3*
T0*
out_type0*
_output_shapes
:
Ж
gradients/Sum_grad/SizeConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ы
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
°
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
К
gradients/Sum_grad/Shape_1Const*
_output_shapes
: *
valueB *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0
Н
gradients/Sum_grad/range/startConst*
value	B : *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Н
gradients/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape
ѕ
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:
М
gradients/Sum_grad/Fill/valueConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ї
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
: 
ъ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N*#
_output_shapes
:€€€€€€€€€
Л
gradients/Sum_grad/Maximum/yConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
ј
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*+
_class!
loc:@gradients/Sum_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0
ѓ
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:
І
gradients/Sum_grad/ReshapeReshape-gradients/add_4_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
•
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0
_
gradients/Sum_1_grad/ShapeShapemul_5*
_output_shapes
:*
T0*
out_type0
К
gradients/Sum_1_grad/SizeConst*
value	B :*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
£
gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
©
gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
О
gradients/Sum_1_grad/Shape_1Const*
valueB *-
_class#
!loc:@gradients/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
С
 gradients/Sum_1_grad/range/startConst*
_output_shapes
: *
value	B : *-
_class#
!loc:@gradients/Sum_1_grad/Shape*
dtype0
С
 gradients/Sum_1_grad/range/deltaConst*
value	B :*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
ў
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*
_output_shapes
:*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
Р
gradients/Sum_1_grad/Fill/valueConst*
dtype0*
_output_shapes
: *
value	B :*-
_class#
!loc:@gradients/Sum_1_grad/Shape
¬
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
: 
Ж
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
N*#
_output_shapes
:€€€€€€€€€*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
П
gradients/Sum_1_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*-
_class#
!loc:@gradients/Sum_1_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0
Ј
gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
_output_shapes
:
≠
gradients/Sum_1_grad/ReshapeReshape/gradients/add_4_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
Ђ
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*

Tmultiples0*
T0
Й
/gradients/cond/ReduceLogSumExp_1/add_grad/ShapeShapecond/ReduceLogSumExp_1/Log*
out_type0*
_output_shapes
:*
T0
П
1gradients/cond/ReduceLogSumExp_1/add_grad/Shape_1Shapecond/ReduceLogSumExp_1/Reshape*
_output_shapes
:*
T0*
out_type0
щ
?gradients/cond/ReduceLogSumExp_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/cond/ReduceLogSumExp_1/add_grad/Shape1gradients/cond/ReduceLogSumExp_1/add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
й
-gradients/cond/ReduceLogSumExp_1/add_grad/SumSum2gradients/cond/Merge_grad/tuple/control_dependency?gradients/cond/ReduceLogSumExp_1/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ў
1gradients/cond/ReduceLogSumExp_1/add_grad/ReshapeReshape-gradients/cond/ReduceLogSumExp_1/add_grad/Sum/gradients/cond/ReduceLogSumExp_1/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
н
/gradients/cond/ReduceLogSumExp_1/add_grad/Sum_1Sum2gradients/cond/Merge_grad/tuple/control_dependencyAgradients/cond/ReduceLogSumExp_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ё
3gradients/cond/ReduceLogSumExp_1/add_grad/Reshape_1Reshape/gradients/cond/ReduceLogSumExp_1/add_grad/Sum_11gradients/cond/ReduceLogSumExp_1/add_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
ђ
:gradients/cond/ReduceLogSumExp_1/add_grad/tuple/group_depsNoOp2^gradients/cond/ReduceLogSumExp_1/add_grad/Reshape4^gradients/cond/ReduceLogSumExp_1/add_grad/Reshape_1
≤
Bgradients/cond/ReduceLogSumExp_1/add_grad/tuple/control_dependencyIdentity1gradients/cond/ReduceLogSumExp_1/add_grad/Reshape;^gradients/cond/ReduceLogSumExp_1/add_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cond/ReduceLogSumExp_1/add_grad/Reshape*#
_output_shapes
:€€€€€€€€€
Є
Dgradients/cond/ReduceLogSumExp_1/add_grad/tuple/control_dependency_1Identity3gradients/cond/ReduceLogSumExp_1/add_grad/Reshape_1;^gradients/cond/ReduceLogSumExp_1/add_grad/tuple/group_deps*F
_class<
:8loc:@gradients/cond/ReduceLogSumExp_1/add_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€*
T0
Е
-gradients/cond/ReduceLogSumExp/add_grad/ShapeShapecond/ReduceLogSumExp/Log*
T0*
out_type0*
_output_shapes
:
Л
/gradients/cond/ReduceLogSumExp/add_grad/Shape_1Shapecond/ReduceLogSumExp/Reshape*
_output_shapes
:*
T0*
out_type0
у
=gradients/cond/ReduceLogSumExp/add_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/cond/ReduceLogSumExp/add_grad/Shape/gradients/cond/ReduceLogSumExp/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
з
+gradients/cond/ReduceLogSumExp/add_grad/SumSum4gradients/cond/Merge_grad/tuple/control_dependency_1=gradients/cond/ReduceLogSumExp/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
“
/gradients/cond/ReduceLogSumExp/add_grad/ReshapeReshape+gradients/cond/ReduceLogSumExp/add_grad/Sum-gradients/cond/ReduceLogSumExp/add_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
л
-gradients/cond/ReduceLogSumExp/add_grad/Sum_1Sum4gradients/cond/Merge_grad/tuple/control_dependency_1?gradients/cond/ReduceLogSumExp/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ў
1gradients/cond/ReduceLogSumExp/add_grad/Reshape_1Reshape-gradients/cond/ReduceLogSumExp/add_grad/Sum_1/gradients/cond/ReduceLogSumExp/add_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
¶
8gradients/cond/ReduceLogSumExp/add_grad/tuple/group_depsNoOp0^gradients/cond/ReduceLogSumExp/add_grad/Reshape2^gradients/cond/ReduceLogSumExp/add_grad/Reshape_1
™
@gradients/cond/ReduceLogSumExp/add_grad/tuple/control_dependencyIdentity/gradients/cond/ReduceLogSumExp/add_grad/Reshape9^gradients/cond/ReduceLogSumExp/add_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/cond/ReduceLogSumExp/add_grad/Reshape*#
_output_shapes
:€€€€€€€€€
∞
Bgradients/cond/ReduceLogSumExp/add_grad/tuple/control_dependency_1Identity1gradients/cond/ReduceLogSumExp/add_grad/Reshape_19^gradients/cond/ReduceLogSumExp/add_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*D
_class:
86loc:@gradients/cond/ReduceLogSumExp/add_grad/Reshape_1
c
gradients/mul_3_grad/ShapeShape	Reshape_3*
_output_shapes
:*
T0*
out_type0
o
gradients/mul_3_grad/Shape_1ShapeSequenceMask/Cast_1*
T0*
out_type0*
_output_shapes
:
Ї
*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
И
gradients/mul_3_grad/MulMulgradients/Sum_grad/TileSequenceMask/Cast_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
•
gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul*gradients/mul_3_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¶
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
А
gradients/mul_3_grad/Mul_1Mul	Reshape_3gradients/Sum_grad/Tile*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
Ђ
gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/Mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
л
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
с
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1
b
gradients/mul_5_grad/ShapeShapeGather_1*
_output_shapes
:*
T0*
out_type0
c
gradients/mul_5_grad/Shape_1ShapeSlice_2*
_output_shapes
:*
T0*
out_type0
Ї
*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
~
gradients/mul_5_grad/MulMulgradients/Sum_1_grad/TileSlice_2*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
•
gradients/mul_5_grad/SumSumgradients/mul_5_grad/Mul*gradients/mul_5_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¶
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Б
gradients/mul_5_grad/Mul_1MulGather_1gradients/Sum_1_grad/Tile*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ђ
gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/Mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
л
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_5_grad/Reshape*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
с
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ц
3gradients/cond/ReduceLogSumExp_1/Reshape_grad/ShapeShape#cond/ReduceLogSumExp_1/StopGradient*
T0*
out_type0*
_output_shapes
:
ы
5gradients/cond/ReduceLogSumExp_1/Reshape_grad/ReshapeReshapeDgradients/cond/ReduceLogSumExp_1/add_grad/tuple/control_dependency_13gradients/cond/ReduceLogSumExp_1/Reshape_grad/Shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Т
1gradients/cond/ReduceLogSumExp/Reshape_grad/ShapeShape!cond/ReduceLogSumExp/StopGradient*
_output_shapes
:*
T0*
out_type0
х
3gradients/cond/ReduceLogSumExp/Reshape_grad/ReshapeReshapeBgradients/cond/ReduceLogSumExp/add_grad/tuple/control_dependency_11gradients/cond/ReduceLogSumExp/Reshape_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
d
gradients/Reshape_3_grad/ShapeShapeGather*
T0*
out_type0*
_output_shapes
:
ґ
 gradients/Reshape_3_grad/ReshapeReshape-gradients/mul_3_grad/tuple/control_dependencygradients/Reshape_3_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Е
gradients/Gather_1_grad/ShapeConst*
valueB	R*
_class
loc:@Reshape_4*
dtype0	*
_output_shapes
:
Ш
gradients/Gather_1_grad/ToInt32Castgradients/Gather_1_grad/Shape*
_output_shapes
:*

DstT0*

SrcT0	*
_class
loc:@Reshape_4
\
gradients/Gather_1_grad/SizeSizeadd_3*
_output_shapes
: *
T0*
out_type0
h
&gradients/Gather_1_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
І
"gradients/Gather_1_grad/ExpandDims
ExpandDimsgradients/Gather_1_grad/Size&gradients/Gather_1_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
u
+gradients/Gather_1_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-gradients/Gather_1_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
w
-gradients/Gather_1_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
х
%gradients/Gather_1_grad/strided_sliceStridedSlicegradients/Gather_1_grad/ToInt32+gradients/Gather_1_grad/strided_slice/stack-gradients/Gather_1_grad/strided_slice/stack_1-gradients/Gather_1_grad/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0
e
#gradients/Gather_1_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
‘
gradients/Gather_1_grad/concatConcatV2"gradients/Gather_1_grad/ExpandDims%gradients/Gather_1_grad/strided_slice#gradients/Gather_1_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
µ
gradients/Gather_1_grad/ReshapeReshape-gradients/mul_5_grad/tuple/control_dependencygradients/Gather_1_grad/concat*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
У
!gradients/Gather_1_grad/Reshape_1Reshapeadd_3"gradients/Gather_1_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
В
gradients/Gather_grad/ShapeShape	Reshape_1*
T0*
out_type0	*
_class
loc:@Reshape_1*
_output_shapes
:
Ф
gradients/Gather_grad/ToInt32Castgradients/Gather_grad/Shape*
_class
loc:@Reshape_1*
_output_shapes
:*

DstT0*

SrcT0	
^
gradients/Gather_grad/SizeSize	Reshape_2*
_output_shapes
: *
T0*
out_type0
f
$gradients/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
°
 gradients/Gather_grad/ExpandDims
ExpandDimsgradients/Gather_grad/Size$gradients/Gather_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
s
)gradients/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
u
+gradients/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
u
+gradients/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
л
#gradients/Gather_grad/strided_sliceStridedSlicegradients/Gather_grad/ToInt32)gradients/Gather_grad/strided_slice/stack+gradients/Gather_grad/strided_slice/stack_1+gradients/Gather_grad/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask 
c
!gradients/Gather_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ћ
gradients/Gather_grad/concatConcatV2 gradients/Gather_grad/ExpandDims#gradients/Gather_grad/strided_slice!gradients/Gather_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
§
gradients/Gather_grad/ReshapeReshape gradients/Reshape_3_grad/Reshapegradients/Gather_grad/concat*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
У
gradients/Gather_grad/Reshape_1Reshape	Reshape_2 gradients/Gather_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
o
gradients/Reshape_4_grad/ShapeConst*
valueB"      *
dtype0*
_output_shapes
:
~
4gradients/Reshape_4_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6gradients/Reshape_4_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6gradients/Reshape_4_grad/Reshape/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Ч
.gradients/Reshape_4_grad/Reshape/strided_sliceStridedSlicegradients/Gather_1_grad/ToInt324gradients/Reshape_4_grad/Reshape/strided_slice/stack6gradients/Reshape_4_grad/Reshape/strided_slice/stack_16gradients/Reshape_4_grad/Reshape/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
Г
'gradients/Reshape_4_grad/Reshape/tensorUnsortedSegmentSumgradients/Gather_1_grad/Reshape!gradients/Gather_1_grad/Reshape_1.gradients/Reshape_4_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0*
T0*#
_output_shapes
:€€€€€€€€€
Ђ
 gradients/Reshape_4_grad/ReshapeReshape'gradients/Reshape_4_grad/Reshape/tensorgradients/Reshape_4_grad/Shape*
T0*
Tshape0*
_output_shapes

:
—
4gradients/cond/ReduceLogSumExp_1/Log_grad/Reciprocal
Reciprocalcond/ReduceLogSumExp_1/SumC^gradients/cond/ReduceLogSumExp_1/add_grad/tuple/control_dependency*#
_output_shapes
:€€€€€€€€€*
T0
№
-gradients/cond/ReduceLogSumExp_1/Log_grad/mulMulBgradients/cond/ReduceLogSumExp_1/add_grad/tuple/control_dependency4gradients/cond/ReduceLogSumExp_1/Log_grad/Reciprocal*#
_output_shapes
:€€€€€€€€€*
T0
Ћ
2gradients/cond/ReduceLogSumExp/Log_grad/Reciprocal
Reciprocalcond/ReduceLogSumExp/SumA^gradients/cond/ReduceLogSumExp/add_grad/tuple/control_dependency*
T0*#
_output_shapes
:€€€€€€€€€
÷
+gradients/cond/ReduceLogSumExp/Log_grad/mulMul@gradients/cond/ReduceLogSumExp/add_grad/tuple/control_dependency2gradients/cond/ReduceLogSumExp/Log_grad/Reciprocal*
T0*#
_output_shapes
:€€€€€€€€€
e
gradients/Reshape_1_grad/ShapeShapeReshape*
T0*
out_type0*
_output_shapes
:
~
4gradients/Reshape_1_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6gradients/Reshape_1_grad/Reshape/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
А
6gradients/Reshape_1_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
.gradients/Reshape_1_grad/Reshape/strided_sliceStridedSlicegradients/Gather_grad/ToInt324gradients/Reshape_1_grad/Reshape/strided_slice/stack6gradients/Reshape_1_grad/Reshape/strided_slice/stack_16gradients/Reshape_1_grad/Reshape/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
€
'gradients/Reshape_1_grad/Reshape/tensorUnsortedSegmentSumgradients/Gather_grad/Reshapegradients/Gather_grad/Reshape_1.gradients/Reshape_1_grad/Reshape/strided_slice*
Tindices0*
T0*#
_output_shapes
:€€€€€€€€€*
Tnumsegments0
Є
 gradients/Reshape_1_grad/ReshapeReshape'gradients/Reshape_1_grad/Reshape/tensorgradients/Reshape_1_grad/Shape*
T0*
Tshape0*+
_output_shapes
:€€€€€€€€€@
Й
/gradients/cond/ReduceLogSumExp_1/Sum_grad/ShapeShapecond/ReduceLogSumExp_1/Exp*
T0*
out_type0*
_output_shapes
:
і
.gradients/cond/ReduceLogSumExp_1/Sum_grad/SizeConst*
value	B :*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
dtype0*
_output_shapes
: 
ы
-gradients/cond/ReduceLogSumExp_1/Sum_grad/addAdd,cond/ReduceLogSumExp_1/Sum/reduction_indices.gradients/cond/ReduceLogSumExp_1/Sum_grad/Size*
T0*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
_output_shapes
:
Б
-gradients/cond/ReduceLogSumExp_1/Sum_grad/modFloorMod-gradients/cond/ReduceLogSumExp_1/Sum_grad/add.gradients/cond/ReduceLogSumExp_1/Sum_grad/Size*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
_output_shapes
:*
T0
њ
1gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape_1Const*
valueB:*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
dtype0*
_output_shapes
:
ї
5gradients/cond/ReduceLogSumExp_1/Sum_grad/range/startConst*
_output_shapes
: *
value	B : *B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
dtype0
ї
5gradients/cond/ReduceLogSumExp_1/Sum_grad/range/deltaConst*
value	B :*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
dtype0*
_output_shapes
: 
¬
/gradients/cond/ReduceLogSumExp_1/Sum_grad/rangeRange5gradients/cond/ReduceLogSumExp_1/Sum_grad/range/start.gradients/cond/ReduceLogSumExp_1/Sum_grad/Size5gradients/cond/ReduceLogSumExp_1/Sum_grad/range/delta*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
_output_shapes
:*

Tidx0
Ї
4gradients/cond/ReduceLogSumExp_1/Sum_grad/Fill/valueConst*
value	B :*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ъ
.gradients/cond/ReduceLogSumExp_1/Sum_grad/FillFill1gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape_14gradients/cond/ReduceLogSumExp_1/Sum_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape
Д
7gradients/cond/ReduceLogSumExp_1/Sum_grad/DynamicStitchDynamicStitch/gradients/cond/ReduceLogSumExp_1/Sum_grad/range-gradients/cond/ReduceLogSumExp_1/Sum_grad/mod/gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape.gradients/cond/ReduceLogSumExp_1/Sum_grad/Fill*
T0*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
N*#
_output_shapes
:€€€€€€€€€
є
3gradients/cond/ReduceLogSumExp_1/Sum_grad/Maximum/yConst*
dtype0*
_output_shapes
: *
value	B :*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape
Ь
1gradients/cond/ReduceLogSumExp_1/Sum_grad/MaximumMaximum7gradients/cond/ReduceLogSumExp_1/Sum_grad/DynamicStitch3gradients/cond/ReduceLogSumExp_1/Sum_grad/Maximum/y*
T0*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*#
_output_shapes
:€€€€€€€€€
Л
2gradients/cond/ReduceLogSumExp_1/Sum_grad/floordivFloorDiv/gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape1gradients/cond/ReduceLogSumExp_1/Sum_grad/Maximum*
T0*B
_class8
64loc:@gradients/cond/ReduceLogSumExp_1/Sum_grad/Shape*
_output_shapes
:
’
1gradients/cond/ReduceLogSumExp_1/Sum_grad/ReshapeReshape-gradients/cond/ReduceLogSumExp_1/Log_grad/mul7gradients/cond/ReduceLogSumExp_1/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
б
.gradients/cond/ReduceLogSumExp_1/Sum_grad/TileTile1gradients/cond/ReduceLogSumExp_1/Sum_grad/Reshape2gradients/cond/ReduceLogSumExp_1/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€
Е
-gradients/cond/ReduceLogSumExp/Sum_grad/ShapeShapecond/ReduceLogSumExp/Exp*
T0*
out_type0*
_output_shapes
:
∞
,gradients/cond/ReduceLogSumExp/Sum_grad/SizeConst*
value	B :*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
: 
у
+gradients/cond/ReduceLogSumExp/Sum_grad/addAdd*cond/ReduceLogSumExp/Sum/reduction_indices,gradients/cond/ReduceLogSumExp/Sum_grad/Size*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:*
T0
щ
+gradients/cond/ReduceLogSumExp/Sum_grad/modFloorMod+gradients/cond/ReduceLogSumExp/Sum_grad/add,gradients/cond/ReduceLogSumExp/Sum_grad/Size*
T0*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:
ї
/gradients/cond/ReduceLogSumExp/Sum_grad/Shape_1Const*
_output_shapes
:*
valueB:*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
dtype0
Ј
3gradients/cond/ReduceLogSumExp/Sum_grad/range/startConst*
_output_shapes
: *
value	B : *@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
dtype0
Ј
3gradients/cond/ReduceLogSumExp/Sum_grad/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape
Є
-gradients/cond/ReduceLogSumExp/Sum_grad/rangeRange3gradients/cond/ReduceLogSumExp/Sum_grad/range/start,gradients/cond/ReduceLogSumExp/Sum_grad/Size3gradients/cond/ReduceLogSumExp/Sum_grad/range/delta*

Tidx0*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:
ґ
2gradients/cond/ReduceLogSumExp/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
dtype0
Т
,gradients/cond/ReduceLogSumExp/Sum_grad/FillFill/gradients/cond/ReduceLogSumExp/Sum_grad/Shape_12gradients/cond/ReduceLogSumExp/Sum_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape
ш
5gradients/cond/ReduceLogSumExp/Sum_grad/DynamicStitchDynamicStitch-gradients/cond/ReduceLogSumExp/Sum_grad/range+gradients/cond/ReduceLogSumExp/Sum_grad/mod-gradients/cond/ReduceLogSumExp/Sum_grad/Shape,gradients/cond/ReduceLogSumExp/Sum_grad/Fill*#
_output_shapes
:€€€€€€€€€*
T0*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
N
µ
1gradients/cond/ReduceLogSumExp/Sum_grad/Maximum/yConst*
value	B :*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ф
/gradients/cond/ReduceLogSumExp/Sum_grad/MaximumMaximum5gradients/cond/ReduceLogSumExp/Sum_grad/DynamicStitch1gradients/cond/ReduceLogSumExp/Sum_grad/Maximum/y*
T0*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*#
_output_shapes
:€€€€€€€€€
Г
0gradients/cond/ReduceLogSumExp/Sum_grad/floordivFloorDiv-gradients/cond/ReduceLogSumExp/Sum_grad/Shape/gradients/cond/ReduceLogSumExp/Sum_grad/Maximum*
T0*@
_class6
42loc:@gradients/cond/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:
ѕ
/gradients/cond/ReduceLogSumExp/Sum_grad/ReshapeReshape+gradients/cond/ReduceLogSumExp/Log_grad/mul5gradients/cond/ReduceLogSumExp/Sum_grad/DynamicStitch*
_output_shapes
:*
T0*
Tshape0
џ
,gradients/cond/ReduceLogSumExp/Sum_grad/TileTile/gradients/cond/ReduceLogSumExp/Sum_grad/Reshape0gradients/cond/ReduceLogSumExp/Sum_grad/floordiv*'
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
≤
-gradients/cond/ReduceLogSumExp_1/Exp_grad/mulMul.gradients/cond/ReduceLogSumExp_1/Sum_grad/Tilecond/ReduceLogSumExp_1/Exp*
T0*'
_output_shapes
:€€€€€€€€€
ђ
+gradients/cond/ReduceLogSumExp/Exp_grad/mulMul,gradients/cond/ReduceLogSumExp/Sum_grad/Tilecond/ReduceLogSumExp/Exp*
T0*'
_output_shapes
:€€€€€€€€€
Д
/gradients/cond/ReduceLogSumExp_1/sub_grad/ShapeShapecond/rnn/while/Exit_3*
_output_shapes
:*
T0*
out_type0
Ф
1gradients/cond/ReduceLogSumExp_1/sub_grad/Shape_1Shape#cond/ReduceLogSumExp_1/StopGradient*
_output_shapes
:*
T0*
out_type0
щ
?gradients/cond/ReduceLogSumExp_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/cond/ReduceLogSumExp_1/sub_grad/Shape1gradients/cond/ReduceLogSumExp_1/sub_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
д
-gradients/cond/ReduceLogSumExp_1/sub_grad/SumSum-gradients/cond/ReduceLogSumExp_1/Exp_grad/mul?gradients/cond/ReduceLogSumExp_1/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
№
1gradients/cond/ReduceLogSumExp_1/sub_grad/ReshapeReshape-gradients/cond/ReduceLogSumExp_1/sub_grad/Sum/gradients/cond/ReduceLogSumExp_1/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
и
/gradients/cond/ReduceLogSumExp_1/sub_grad/Sum_1Sum-gradients/cond/ReduceLogSumExp_1/Exp_grad/mulAgradients/cond/ReduceLogSumExp_1/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
И
-gradients/cond/ReduceLogSumExp_1/sub_grad/NegNeg/gradients/cond/ReduceLogSumExp_1/sub_grad/Sum_1*
_output_shapes
:*
T0
а
3gradients/cond/ReduceLogSumExp_1/sub_grad/Reshape_1Reshape-gradients/cond/ReduceLogSumExp_1/sub_grad/Neg1gradients/cond/ReduceLogSumExp_1/sub_grad/Shape_1*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
ђ
:gradients/cond/ReduceLogSumExp_1/sub_grad/tuple/group_depsNoOp2^gradients/cond/ReduceLogSumExp_1/sub_grad/Reshape4^gradients/cond/ReduceLogSumExp_1/sub_grad/Reshape_1
ґ
Bgradients/cond/ReduceLogSumExp_1/sub_grad/tuple/control_dependencyIdentity1gradients/cond/ReduceLogSumExp_1/sub_grad/Reshape;^gradients/cond/ReduceLogSumExp_1/sub_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cond/ReduceLogSumExp_1/sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€
Љ
Dgradients/cond/ReduceLogSumExp_1/sub_grad/tuple/control_dependency_1Identity3gradients/cond/ReduceLogSumExp_1/sub_grad/Reshape_1;^gradients/cond/ReduceLogSumExp_1/sub_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*F
_class<
:8loc:@gradients/cond/ReduceLogSumExp_1/sub_grad/Reshape_1
О
-gradients/cond/ReduceLogSumExp/sub_grad/ShapeShape!cond/ReduceLogSumExp/Max/Switch:1*
T0*
out_type0*
_output_shapes
:
Р
/gradients/cond/ReduceLogSumExp/sub_grad/Shape_1Shape!cond/ReduceLogSumExp/StopGradient*
T0*
out_type0*
_output_shapes
:
у
=gradients/cond/ReduceLogSumExp/sub_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/cond/ReduceLogSumExp/sub_grad/Shape/gradients/cond/ReduceLogSumExp/sub_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
ё
+gradients/cond/ReduceLogSumExp/sub_grad/SumSum+gradients/cond/ReduceLogSumExp/Exp_grad/mul=gradients/cond/ReduceLogSumExp/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
÷
/gradients/cond/ReduceLogSumExp/sub_grad/ReshapeReshape+gradients/cond/ReduceLogSumExp/sub_grad/Sum-gradients/cond/ReduceLogSumExp/sub_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
в
-gradients/cond/ReduceLogSumExp/sub_grad/Sum_1Sum+gradients/cond/ReduceLogSumExp/Exp_grad/mul?gradients/cond/ReduceLogSumExp/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Д
+gradients/cond/ReduceLogSumExp/sub_grad/NegNeg-gradients/cond/ReduceLogSumExp/sub_grad/Sum_1*
T0*
_output_shapes
:
Џ
1gradients/cond/ReduceLogSumExp/sub_grad/Reshape_1Reshape+gradients/cond/ReduceLogSumExp/sub_grad/Neg/gradients/cond/ReduceLogSumExp/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€
¶
8gradients/cond/ReduceLogSumExp/sub_grad/tuple/group_depsNoOp0^gradients/cond/ReduceLogSumExp/sub_grad/Reshape2^gradients/cond/ReduceLogSumExp/sub_grad/Reshape_1
Ѓ
@gradients/cond/ReduceLogSumExp/sub_grad/tuple/control_dependencyIdentity/gradients/cond/ReduceLogSumExp/sub_grad/Reshape9^gradients/cond/ReduceLogSumExp/sub_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/cond/ReduceLogSumExp/sub_grad/Reshape*'
_output_shapes
:€€€€€€€€€
і
Bgradients/cond/ReduceLogSumExp/sub_grad/tuple/control_dependency_1Identity1gradients/cond/ReduceLogSumExp/sub_grad/Reshape_19^gradients/cond/ReduceLogSumExp/sub_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/cond/ReduceLogSumExp/sub_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Ш
gradients/AddNAddN5gradients/cond/ReduceLogSumExp_1/Reshape_grad/ReshapeDgradients/cond/ReduceLogSumExp_1/sub_grad/tuple/control_dependency_1*
T0*H
_class>
<:loc:@gradients/cond/ReduceLogSumExp_1/Reshape_grad/Reshape*
N*'
_output_shapes
:€€€€€€€€€
Ф
gradients/AddN_1AddN3gradients/cond/ReduceLogSumExp/Reshape_grad/ReshapeBgradients/cond/ReduceLogSumExp/sub_grad/tuple/control_dependency_1*
T0*F
_class<
:8loc:@gradients/cond/ReduceLogSumExp/Reshape_grad/Reshape*
N*'
_output_shapes
:€€€€€€€€€
b
gradients/zeros/shape_as_tensorConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
В
gradients/zerosFillgradients/zeros/shape_as_tensorgradients/zeros/Const*
T0*

index_type0*
_output_shapes
: 
Р
+gradients/cond/rnn/while/Exit_3_grad/b_exitEnterBgradients/cond/ReduceLogSumExp_1/sub_grad/tuple/control_dependency*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€*6

frame_name(&gradients/cond/rnn/while/while_context
ћ
+gradients/cond/rnn/while/Exit_2_grad/b_exitEntergradients/zeros*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *6

frame_name(&gradients/cond/rnn/while/while_context
x
gradients/Switch_6SwitchSqueezecond/pred_id*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€*
T0
c
gradients/Shape_1Shapegradients/Switch_6*
T0*
out_type0*
_output_shapes
:
\
gradients/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Й
gradients/zeros_1Fillgradients/Shape_1gradients/zeros_1/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€
”
8gradients/cond/ReduceLogSumExp/Max/Switch_grad/cond_gradMergegradients/zeros_1@gradients/cond/ReduceLogSumExp/sub_grad/tuple/control_dependency*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
Џ
/gradients/cond/rnn/while/Switch_4_grad/b_switchMerge+gradients/cond/rnn/while/Exit_3_grad/b_exit6gradients/cond/rnn/while/Switch_4_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
Е
,gradients/cond/rnn/while/Merge_3_grad/SwitchSwitch/gradients/cond/rnn/while/Switch_4_grad/b_switchgradients/b_count_2*
T0*B
_class8
64loc:@gradients/cond/rnn/while/Switch_4_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
m
6gradients/cond/rnn/while/Merge_3_grad/tuple/group_depsNoOp-^gradients/cond/rnn/while/Merge_3_grad/Switch
І
>gradients/cond/rnn/while/Merge_3_grad/tuple/control_dependencyIdentity,gradients/cond/rnn/while/Merge_3_grad/Switch7^gradients/cond/rnn/while/Merge_3_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/cond/rnn/while/Switch_4_grad/b_switch*'
_output_shapes
:€€€€€€€€€
Ђ
@gradients/cond/rnn/while/Merge_3_grad/tuple/control_dependency_1Identity.gradients/cond/rnn/while/Merge_3_grad/Switch:17^gradients/cond/rnn/while/Merge_3_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/cond/rnn/while/Switch_4_grad/b_switch*'
_output_shapes
:€€€€€€€€€
§
*gradients/cond/rnn/while/Enter_3_grad/ExitExit>gradients/cond/rnn/while/Merge_3_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€*
T0
x
gradients/Switch_7SwitchSqueezecond/pred_id*
T0*:
_output_shapes(
&:€€€€€€€€€:€€€€€€€€€
e
gradients/Shape_2Shapegradients/Switch_7:1*
out_type0*
_output_shapes
:*
T0
\
gradients/zeros_2/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Й
gradients/zeros_2Fillgradients/Shape_2gradients/zeros_2/Const*'
_output_shapes
:€€€€€€€€€*
T0*

index_type0
≥
.gradients/cond/rnn/while/Switch_grad/cond_gradMerge*gradients/cond/rnn/while/Enter_3_grad/Exitgradients/zeros_2*
T0*
N*)
_output_shapes
:€€€€€€€€€: 
Ѓ
1gradients/cond/rnn/while/Select_1_grad/zeros_like	ZerosLike<gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0
∞
7gradients/cond/rnn/while/Select_1_grad/zeros_like/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*,
_class"
 loc:@cond/rnn/while/Identity_3
и
7gradients/cond/rnn/while/Select_1_grad/zeros_like/f_accStackV27gradients/cond/rnn/while/Select_1_grad/zeros_like/Const*,
_class"
 loc:@cond/rnn/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
в
8gradients/cond/rnn/while/Select_1_grad/zeros_like/SwitchSwitch7gradients/cond/rnn/while/Select_1_grad/zeros_like/f_acccond/pred_id*,
_class"
 loc:@cond/rnn/while/Identity_3* 
_output_shapes
::*
T0
ы
7gradients/cond/rnn/while/Select_1_grad/zeros_like/EnterEnter8gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context*
T0
х
=gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPushV2StackPushV27gradients/cond/rnn/while/Select_1_grad/zeros_like/Entercond/rnn/while/Identity_3^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
≥
:gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1Switch@gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*,
_class"
 loc:@cond/rnn/while/Identity_3* 
_output_shapes
::
Љ
@gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/EnterEnter8gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch*
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*,
_class"
 loc:@cond/rnn/while/Identity_3*
parallel_iterations 
О
Bgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1Entercond/pred_id*
is_constant(*
_output_shapes
: *6

frame_name(&gradients/cond/rnn/while/while_context*
T0
*,
_class"
 loc:@cond/rnn/while/Identity_3*
parallel_iterations 
ј
<gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2:gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1*
	elem_type0*'
_output_shapes
:€€€€€€€€€
Ј	
8gradients/cond/rnn/while/Select_1_grad/zeros_like/b_syncControlTrigger=^gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPopV29^gradients/cond/rnn/while/Select_1_grad/Select/StackPopV2E^gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2G^gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1_^gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2S^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2U^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2_1I^gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPopV2H^gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPopV2K^gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPopV2A^gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPopV2S^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2U^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2_1E^gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPopV2<^gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPopV2
Ш
-gradients/cond/rnn/while/Select_1_grad/SelectSelect8gradients/cond/rnn/while/Select_1_grad/Select/StackPopV2@gradients/cond/rnn/while/Merge_3_grad/tuple/control_dependency_11gradients/cond/rnn/while/Select_1_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€
Ѓ
3gradients/cond/rnn/while/Select_1_grad/Select/ConstConst*
valueB :
€€€€€€€€€*.
_class$
" loc:@cond/rnn/while/GreaterEqual*
dtype0*
_output_shapes
: 
в
3gradients/cond/rnn/while/Select_1_grad/Select/f_accStackV23gradients/cond/rnn/while/Select_1_grad/Select/Const*

stack_name *
_output_shapes
:*
	elem_type0
*.
_class$
" loc:@cond/rnn/while/GreaterEqual
№
4gradients/cond/rnn/while/Select_1_grad/Select/SwitchSwitch3gradients/cond/rnn/while/Select_1_grad/Select/f_acccond/pred_id*
T0*.
_class$
" loc:@cond/rnn/while/GreaterEqual* 
_output_shapes
::
у
3gradients/cond/rnn/while/Select_1_grad/Select/EnterEnter4gradients/cond/rnn/while/Select_1_grad/Select/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
л
9gradients/cond/rnn/while/Select_1_grad/Select/StackPushV2StackPushV23gradients/cond/rnn/while/Select_1_grad/Select/Entercond/rnn/while/GreaterEqual^gradients/Add*
T0
*#
_output_shapes
:€€€€€€€€€*
swap_memory( 
≠
6gradients/cond/rnn/while/Select_1_grad/Select/Switch_1Switch<gradients/cond/rnn/while/Select_1_grad/Select/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*.
_class$
" loc:@cond/rnn/while/GreaterEqual* 
_output_shapes
::
ґ
<gradients/cond/rnn/while/Select_1_grad/Select/Switch_1/EnterEnter4gradients/cond/rnn/while/Select_1_grad/Select/Switch*
parallel_iterations *
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*.
_class$
" loc:@cond/rnn/while/GreaterEqual
і
8gradients/cond/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV26gradients/cond/rnn/while/Select_1_grad/Select/Switch_1*#
_output_shapes
:€€€€€€€€€*
	elem_type0

Ъ
/gradients/cond/rnn/while/Select_1_grad/Select_1Select8gradients/cond/rnn/while/Select_1_grad/Select/StackPopV21gradients/cond/rnn/while/Select_1_grad/zeros_like@gradients/cond/rnn/while/Merge_3_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€*
T0
°
7gradients/cond/rnn/while/Select_1_grad/tuple/group_depsNoOp.^gradients/cond/rnn/while/Select_1_grad/Select0^gradients/cond/rnn/while/Select_1_grad/Select_1
®
?gradients/cond/rnn/while/Select_1_grad/tuple/control_dependencyIdentity-gradients/cond/rnn/while/Select_1_grad/Select8^gradients/cond/rnn/while/Select_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*@
_class6
42loc:@gradients/cond/rnn/while/Select_1_grad/Select
Ѓ
Agradients/cond/rnn/while/Select_1_grad/tuple/control_dependency_1Identity/gradients/cond/rnn/while/Select_1_grad/Select_18^gradients/cond/rnn/while/Select_1_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/cond/rnn/while/Select_1_grad/Select_1*'
_output_shapes
:€€€€€€€€€
К
gradients/AddN_2AddN8gradients/cond/ReduceLogSumExp/Max/Switch_grad/cond_grad.gradients/cond/rnn/while/Switch_grad/cond_grad*
T0*K
_classA
?=loc:@gradients/cond/ReduceLogSumExp/Max/Switch_grad/cond_grad*
N*'
_output_shapes
:€€€€€€€€€
c
gradients/Squeeze_grad/ShapeShapeSlice_3*
_output_shapes
:*
T0*
out_type0
Э
gradients/Squeeze_grad/ReshapeReshapegradients/AddN_2gradients/Squeeze_grad/Shape*+
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
Й
)gradients/cond/rnn/while/add_2_grad/ShapeShape cond/rnn/while/TensorArrayReadV3*
_output_shapes
:*
T0*
out_type0
Н
+gradients/cond/rnn/while/add_2_grad/Shape_1Shape"cond/rnn/while/ReduceLogSumExp/add*
out_type0*
_output_shapes
:*
T0
Э
9gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2Fgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
»
?gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*<
_class2
0.loc:@gradients/cond/rnn/while/add_2_grad/Shape*
dtype0*
_output_shapes
: 
И
?gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_accStackV2?gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Const*<
_class2
0.loc:@gradients/cond/rnn/while/add_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
В
@gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/SwitchSwitch?gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acccond/pred_id* 
_output_shapes
::*
T0*<
_class2
0.loc:@gradients/cond/rnn/while/add_2_grad/Shape
Л
?gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/EnterEnter@gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
И
Egradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2?gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Enter)gradients/cond/rnn/while/add_2_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
”
Bgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1SwitchHgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*<
_class2
0.loc:@gradients/cond/rnn/while/add_2_grad/Shape* 
_output_shapes
::
№
Hgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1/EnterEnter@gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*<
_class2
0.loc:@gradients/cond/rnn/while/add_2_grad/Shape*
parallel_iterations *
is_constant(
√
Dgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Bgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1*
_output_shapes
:*
	elem_type0
ћ
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*>
_class4
20loc:@gradients/cond/rnn/while/add_2_grad/Shape_1*
dtype0*
_output_shapes
: 
О
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1StackV2Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Const_1*>
_class4
20loc:@gradients/cond/rnn/while/add_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
И
Bgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_2SwitchAgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1cond/pred_id* 
_output_shapes
::*
T0*>
_class4
20loc:@gradients/cond/rnn/while/add_2_grad/Shape_1
П
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Enter_1EnterBgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_2*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
О
Ggradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Enter_1+gradients/cond/rnn/while/add_2_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
’
Bgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3SwitchHgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*>
_class4
20loc:@gradients/cond/rnn/while/add_2_grad/Shape_1* 
_output_shapes
::
а
Hgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3/EnterEnterBgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_2*
T0*>
_class4
20loc:@gradients/cond/rnn/while/add_2_grad/Shape_1*
parallel_iterations *
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context
≈
Fgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Bgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3*
	elem_type0*
_output_shapes
:
м
'gradients/cond/rnn/while/add_2_grad/SumSumAgradients/cond/rnn/while/Select_1_grad/tuple/control_dependency_19gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
о
+gradients/cond/rnn/while/add_2_grad/ReshapeReshape'gradients/cond/rnn/while/add_2_grad/SumDgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
р
)gradients/cond/rnn/while/add_2_grad/Sum_1SumAgradients/cond/rnn/while/Select_1_grad/tuple/control_dependency_1;gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ф
-gradients/cond/rnn/while/add_2_grad/Reshape_1Reshape)gradients/cond/rnn/while/add_2_grad/Sum_1Fgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ъ
4gradients/cond/rnn/while/add_2_grad/tuple/group_depsNoOp,^gradients/cond/rnn/while/add_2_grad/Reshape.^gradients/cond/rnn/while/add_2_grad/Reshape_1
Ю
<gradients/cond/rnn/while/add_2_grad/tuple/control_dependencyIdentity+gradients/cond/rnn/while/add_2_grad/Reshape5^gradients/cond/rnn/while/add_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€*
T0*>
_class4
20loc:@gradients/cond/rnn/while/add_2_grad/Reshape
§
>gradients/cond/rnn/while/add_2_grad/tuple/control_dependency_1Identity-gradients/cond/rnn/while/add_2_grad/Reshape_15^gradients/cond/rnn/while/add_2_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/cond/rnn/while/add_2_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
]
gradients/Slice_3_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
c
gradients/Slice_3_grad/ShapeShapeSlice_3*
T0*
out_type0*
_output_shapes
:
`
gradients/Slice_3_grad/stack/1Const*
dtype0*
_output_shapes
: *
value	B :
Ы
gradients/Slice_3_grad/stackPackgradients/Slice_3_grad/Rankgradients/Slice_3_grad/stack/1*
T0*

axis *
N*
_output_shapes
:
Н
gradients/Slice_3_grad/ReshapeReshapeSlice_3/begingradients/Slice_3_grad/stack*
_output_shapes

:*
T0*
Tshape0
e
gradients/Slice_3_grad/Shape_1ShapeReshape*
_output_shapes
:*
T0*
out_type0
Д
gradients/Slice_3_grad/subSubgradients/Slice_3_grad/Shape_1gradients/Slice_3_grad/Shape*
T0*
_output_shapes
:
s
gradients/Slice_3_grad/sub_1Subgradients/Slice_3_grad/subSlice_3/begin*
T0*
_output_shapes
:
Ю
 gradients/Slice_3_grad/Reshape_1Reshapegradients/Slice_3_grad/sub_1gradients/Slice_3_grad/stack*
T0*
Tshape0*
_output_shapes

:
d
"gradients/Slice_3_grad/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ќ
gradients/Slice_3_grad/concatConcatV2gradients/Slice_3_grad/Reshape gradients/Slice_3_grad/Reshape_1"gradients/Slice_3_grad/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
І
gradients/Slice_3_grad/PadPadgradients/Squeeze_grad/Reshapegradients/Slice_3_grad/concat*
	Tpaddings0*+
_output_shapes
:€€€€€€€€€@*
T0
Ъ
Qgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Wgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterYgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*
source	gradients*9
_class/
-+loc:@cond/rnn/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
Њ
Wgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntercond/rnn/TensorArray_1*
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*9
_class/
-+loc:@cond/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations 
й
Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterCcond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*9
_class/
-+loc:@cond/rnn/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *6

frame_name(&gradients/cond/rnn/while/while_context
д
Mgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityYgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1R^gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*9
_class/
-+loc:@cond/rnn/while/TensorArrayReadV3/Enter*
_output_shapes
: 
 
Sgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Qgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3^gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2<gradients/cond/rnn/while/add_2_grad/tuple/control_dependencyMgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
“
Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*,
_class"
 loc:@cond/rnn/while/Identity_1
ђ
Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_accStackV2Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Const*,
_class"
 loc:@cond/rnn/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
¶
Zgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/SwitchSwitchYgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acccond/pred_id*
T0*,
_class"
 loc:@cond/rnn/while/Identity_1* 
_output_shapes
::
њ
Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/EnterEnterZgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
®
_gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2StackPushV2Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Entercond/rnn/while/Identity_1^gradients/Add*
T0*
_output_shapes
: *
swap_memory( 
ч
\gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1Switchbgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*,
_class"
 loc:@cond/rnn/while/Identity_1* 
_output_shapes
::
А
bgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1/EnterEnterZgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch*
T0*,
_class"
 loc:@cond/rnn/while/Identity_1*
parallel_iterations *
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context
у
^gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2
StackPopV2\gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1*
_output_shapes
: *
	elem_type0
Щ
7gradients/cond/rnn/while/ReduceLogSumExp/add_grad/ShapeShape"cond/rnn/while/ReduceLogSumExp/Log*
T0*
out_type0*
_output_shapes
:
Я
9gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1Shape&cond/rnn/while/ReduceLogSumExp/Reshape*
_output_shapes
:*
T0*
out_type0
«
Ggradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2Tgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
д
Mgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape*
dtype0*
_output_shapes
: 
≤
Mgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_accStackV2Mgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape
ђ
Ngradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/SwitchSwitchMgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acccond/pred_id* 
_output_shapes
::*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape
І
Mgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/EnterEnterNgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
≤
Sgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Enter7gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
э
Pgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1SwitchVgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape* 
_output_shapes
::
Ж
Vgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1/EnterEnterNgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape*
parallel_iterations *
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context
я
Rgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Pgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1*
_output_shapes
:*
	elem_type0
и
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1*
dtype0*
_output_shapes
: 
Є
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1StackV2Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1
≤
Pgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_2SwitchOgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1cond/pred_id*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1* 
_output_shapes
::
Ђ
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Enter_1EnterPgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_2*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context*
T0
Є
Ugradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Enter_19gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
€
Pgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3SwitchVgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1* 
_output_shapes
::
К
Vgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3/EnterEnterPgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_2*
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1*
parallel_iterations 
б
Tgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Pgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3*
_output_shapes
:*
	elem_type0
Е
5gradients/cond/rnn/while/ReduceLogSumExp/add_grad/SumSum>gradients/cond/rnn/while/add_2_grad/tuple/control_dependency_1Ggradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ш
9gradients/cond/rnn/while/ReduceLogSumExp/add_grad/ReshapeReshape5gradients/cond/rnn/while/ReduceLogSumExp/add_grad/SumRgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
Й
7gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Sum_1Sum>gradients/cond/rnn/while/add_2_grad/tuple/control_dependency_1Igradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ю
;gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape_1Reshape7gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Sum_1Tgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
ƒ
Bgradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/group_depsNoOp:^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape<^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape_1
÷
Jgradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/control_dependencyIdentity9gradients/cond/rnn/while/ReduceLogSumExp/add_grad/ReshapeC^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape*'
_output_shapes
:€€€€€€€€€
№
Lgradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/control_dependency_1Identity;gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape_1C^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€
Т
=gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst^cond/switch_f*
dtype0*
_output_shapes
: *
valueB
 *    
О
?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter=gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *6

frame_name(&gradients/cond/rnn/while/while_context
ь
?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Egradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
Ѕ
>gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
_output_shapes
: : *
T0
ъ
;gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAdd@gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Sgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
і
Egradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration;gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
_output_shapes
: *
T0
®
?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit>gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
¶
;gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/ShapeShape+cond/rnn/while/ReduceLogSumExp/StopGradient*
T0*
out_type0*
_output_shapes
:
§
=gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/ReshapeReshapeLgradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/control_dependency_1Hgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPopV2*
Tshape0*+
_output_shapes
:€€€€€€€€€*
T0
ё
Cgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/ConstConst*
valueB :
€€€€€€€€€*N
_classD
B@loc:@gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape*
dtype0*
_output_shapes
: 
Ґ
Cgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_accStackV2Cgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Const*N
_classD
B@loc:@gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ь
Dgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/SwitchSwitchCgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_acccond/pred_id* 
_output_shapes
::*
T0*N
_classD
B@loc:@gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape
У
Cgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/EnterEnterDgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
Ґ
Igradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPushV2StackPushV2Cgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Enter;gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
н
Fgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1SwitchLgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*N
_classD
B@loc:@gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape* 
_output_shapes
::
ц
Lgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1/EnterEnterDgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch*
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*N
_classD
B@loc:@gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape*
parallel_iterations 
Ћ
Hgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPopV2
StackPopV2Fgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1*
_output_shapes
:*
	elem_type0
¬
tgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3cond/rnn/TensorArray_1?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*)
_class
loc:@cond/rnn/TensorArray_1*
_output_shapes

:: 
А
pgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3u^gradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*)
_class
loc:@cond/rnn/TensorArray_1*
_output_shapes
: 
∆
fgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3tgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3!cond/rnn/TensorArrayUnstack/rangepgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*
_output_shapes
:
Ц
cgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOp@^gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3g^gradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
ц
kgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentityfgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3d^gradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*y
_classo
mkloc:@gradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*+
_output_shapes
:?€€€€€€€€€
Х
mgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1Identity?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3d^gradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Т
<gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal
ReciprocalGgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPopV2K^gradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€*
T0
ƒ
Bgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/ConstConst*
valueB :
€€€€€€€€€*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Sum*
dtype0*
_output_shapes
: 
З
Bgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_accStackV2Bgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Const*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Sum*

stack_name *
_output_shapes
:*
	elem_type0
Б
Cgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/SwitchSwitchBgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_acccond/pred_id*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Sum* 
_output_shapes
::*
T0
С
Bgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/EnterEnterCgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
Ф
Hgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPushV2StackPushV2Bgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Enter"cond/rnn/while/ReduceLogSumExp/Sum^gradients/Add*
T0*'
_output_shapes
:€€€€€€€€€*
swap_memory( 
“
Egradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1SwitchKgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Sum* 
_output_shapes
::
џ
Kgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1/EnterEnterCgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch*
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Sum*
parallel_iterations 
÷
Ggradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPopV2
StackPopV2Egradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1*'
_output_shapes
:€€€€€€€€€*
	elem_type0
ш
5gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/mulMulJgradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/control_dependency<gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal*
T0*'
_output_shapes
:€€€€€€€€€
Щ
7gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/ShapeShape"cond/rnn/while/ReduceLogSumExp/Exp*
_output_shapes
:*
T0*
out_type0
‘
6gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/SizeConst^gradients/Sub*
value	B :*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ґ
5gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/addAdd;gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/add/Const6gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Size*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:
б
;gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/add/ConstConst^gradients/Sub*
valueB:*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
:
°
5gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/modFloorMod5gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/add6gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Size*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:
я
9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape_1Const^gradients/Sub*
valueB:*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
:
џ
=gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range/startConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B : *J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape
џ
=gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range/deltaConst^gradients/Sub*
dtype0*
_output_shapes
: *
value	B :*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape
к
7gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/rangeRange=gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range/start6gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Size=gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range/delta*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:*

Tidx0
Џ
<gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Fill/valueConst^gradients/Sub*
value	B :*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ї
6gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/FillFill9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape_1<gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Fill/value*

index_type0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:*
T0
«
?gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitchDynamicStitch7gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range5gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/modJgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPopV26gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Fill*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
N*#
_output_shapes
:€€€€€€€€€
№
Egradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/ConstConst*
valueB :
€€€€€€€€€*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ґ
Egradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_accStackV2Egradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Const*
_output_shapes
:*
	elem_type0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*

stack_name 
Ь
Fgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/SwitchSwitchEgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_acccond/pred_id*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape* 
_output_shapes
::
г
Egradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/EnterEnterFgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch*
_output_shapes
:*,

frame_namecond/rnn/while/while_context*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
parallel_iterations *
is_constant(
о
Kgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPushV2StackPushV2Egradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Enter7gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape^gradients/Add*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
_output_shapes
:*
swap_memory( 
н
Hgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1SwitchNgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub* 
_output_shapes
::*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape
ц
Ngradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1/EnterEnterFgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch*
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
parallel_iterations 
Ы
Jgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPopV2
StackPopV2Hgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1*
_output_shapes
:*
	elem_type0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape
ў
;gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Maximum/yConst^gradients/Sub*
value	B :*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Љ
9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/MaximumMaximum?gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch;gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Maximum/y*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape*#
_output_shapes
:€€€€€€€€€
Њ
:gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/floordivFloorDivJgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPopV29gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Maximum*
_output_shapes
:*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape
н
9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/ReshapeReshape5gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/mul?gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
э
6gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/TileTile9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Reshape:gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/floordiv*+
_output_shapes
:€€€€€€€€€*

Tmultiples0*
T0
м
5gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mulMul6gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Tile@gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPopV2*+
_output_shapes
:€€€€€€€€€*
T0
љ
;gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/ConstConst*
valueB :
€€€€€€€€€*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Exp*
dtype0*
_output_shapes
: 
щ
;gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_accStackV2;gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Const*

stack_name *
_output_shapes
:*
	elem_type0*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Exp
у
<gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/SwitchSwitch;gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_acccond/pred_id*
T0*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Exp* 
_output_shapes
::
Г
;gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/EnterEnter<gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
К
Agradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPushV2StackPushV2;gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Enter"cond/rnn/while/ReduceLogSumExp/Exp^gradients/Add*+
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0
ƒ
>gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1SwitchDgradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Exp* 
_output_shapes
::
Ќ
Dgradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1/EnterEnter<gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*5
_class+
)'loc:@cond/rnn/while/ReduceLogSumExp/Exp*
parallel_iterations *
is_constant(
ћ
@gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPopV2
StackPopV2>gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1*+
_output_shapes
:€€€€€€€€€*
	elem_type0
~
3gradients/cond/rnn/transpose_grad/InvertPermutationInvertPermutationcond/rnn/concat*
T0*
_output_shapes
:
Э
+gradients/cond/rnn/transpose_grad/transpose	Transposekgradients/cond/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency3gradients/cond/rnn/transpose_grad/InvertPermutation*
Tperm0*
T0*+
_output_shapes
:€€€€€€€€€?
Л
7gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/ShapeShapecond/rnn/while/add_1*
out_type0*
_output_shapes
:*
T0
§
9gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1Shape+cond/rnn/while/ReduceLogSumExp/StopGradient*
_output_shapes
:*
T0*
out_type0
«
Ggradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgsBroadcastGradientArgsRgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2Tgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
д
Mgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape*
dtype0*
_output_shapes
: 
≤
Mgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_accStackV2Mgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Const*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
ђ
Ngradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/SwitchSwitchMgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acccond/pred_id*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape* 
_output_shapes
::
І
Mgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/EnterEnterNgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
≤
Sgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPushV2StackPushV2Mgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Enter7gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
э
Pgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1SwitchVgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub* 
_output_shapes
::*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape
Ж
Vgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1/EnterEnterNgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch*
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*J
_class@
><loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape*
parallel_iterations 
я
Rgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Pgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1*
_output_shapes
:*
	elem_type0
и
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1*
dtype0*
_output_shapes
: 
Є
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1StackV2Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Const_1*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
≤
Pgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_2SwitchOgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1cond/pred_id*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1* 
_output_shapes
::
Ђ
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Enter_1EnterPgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_2*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
Є
Ugradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Enter_19gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
€
Pgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3SwitchVgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1* 
_output_shapes
::
К
Vgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3/EnterEnterPgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_2*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1*
parallel_iterations *
is_constant(
б
Tgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Pgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3*
_output_shapes
:*
	elem_type0
ь
5gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/SumSum5gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mulGgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
•
9gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/ReshapeReshape5gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/SumRgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
А
7gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Sum_1Sum5gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mulIgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Ш
5gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/NegNeg7gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Sum_1*
T0*
_output_shapes
:
©
;gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape_1Reshape5gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/NegTgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2_1*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
ƒ
Bgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/group_depsNoOp:^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape<^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape_1
Џ
Jgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/control_dependencyIdentity9gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/ReshapeC^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/group_deps*+
_output_shapes
:€€€€€€€€€*
T0*L
_classB
@>loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape
а
Lgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/control_dependency_1Identity;gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape_1C^gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape_1*+
_output_shapes
:€€€€€€€€€
`
gradients/cond/Slice_grad/RankConst*
dtype0*
_output_shapes
: *
value	B :
i
gradients/cond/Slice_grad/ShapeShape
cond/Slice*
out_type0*
_output_shapes
:*
T0
c
!gradients/cond/Slice_grad/stack/1Const*
value	B :*
dtype0*
_output_shapes
: 
§
gradients/cond/Slice_grad/stackPackgradients/cond/Slice_grad/Rank!gradients/cond/Slice_grad/stack/1*
T0*

axis *
N*
_output_shapes
:
Ц
!gradients/cond/Slice_grad/ReshapeReshapecond/Slice/begingradients/cond/Slice_grad/stack*
Tshape0*
_output_shapes

:*
T0
r
!gradients/cond/Slice_grad/Shape_1Shapecond/Slice/Switch*
T0*
out_type0*
_output_shapes
:
Н
gradients/cond/Slice_grad/subSub!gradients/cond/Slice_grad/Shape_1gradients/cond/Slice_grad/Shape*
T0*
_output_shapes
:
|
gradients/cond/Slice_grad/sub_1Subgradients/cond/Slice_grad/subcond/Slice/begin*
_output_shapes
:*
T0
І
#gradients/cond/Slice_grad/Reshape_1Reshapegradients/cond/Slice_grad/sub_1gradients/cond/Slice_grad/stack*
Tshape0*
_output_shapes

:*
T0
g
%gradients/cond/Slice_grad/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
ў
 gradients/cond/Slice_grad/concatConcatV2!gradients/cond/Slice_grad/Reshape#gradients/cond/Slice_grad/Reshape_1%gradients/cond/Slice_grad/concat/axis*

Tidx0*
T0*
N*
_output_shapes

:
Ї
gradients/cond/Slice_grad/PadPad+gradients/cond/rnn/transpose_grad/transpose gradients/cond/Slice_grad/concat*
T0*
	Tpaddings0*+
_output_shapes
:€€€€€€€€€@
ґ
gradients/AddN_3AddN=gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/ReshapeLgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/control_dependency_1*
T0*P
_classF
DBloc:@gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape*
N*+
_output_shapes
:€€€€€€€€€
А
gradients/Switch_8SwitchReshapecond/pred_id*
T0*B
_output_shapes0
.:€€€€€€€€€@:€€€€€€€€€@
e
gradients/Shape_3Shapegradients/Switch_8:1*
out_type0*
_output_shapes
:*
T0
\
gradients/zeros_3/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Н
gradients/zeros_3Fillgradients/Shape_3gradients/zeros_3/Const*
T0*

index_type0*+
_output_shapes
:€€€€€€€€€@
¶
*gradients/cond/Slice/Switch_grad/cond_gradMergegradients/cond/Slice_grad/Padgradients/zeros_3*
T0*
N*-
_output_shapes
:€€€€€€€€€@: 
В
)gradients/cond/rnn/while/add_1_grad/ShapeShapecond/rnn/while/ExpandDims*
T0*
out_type0*
_output_shapes
:
Р
+gradients/cond/rnn/while/add_1_grad/Shape_1Const^gradients/Sub*
_output_shapes
:*!
valueB"         *
dtype0
В
9gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsDgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPopV2+gradients/cond/rnn/while/add_1_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
»
?gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*<
_class2
0.loc:@gradients/cond/rnn/while/add_1_grad/Shape*
dtype0*
_output_shapes
: 
И
?gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_accStackV2?gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Const*

stack_name *
_output_shapes
:*
	elem_type0*<
_class2
0.loc:@gradients/cond/rnn/while/add_1_grad/Shape
В
@gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/SwitchSwitch?gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_acccond/pred_id* 
_output_shapes
::*
T0*<
_class2
0.loc:@gradients/cond/rnn/while/add_1_grad/Shape
Л
?gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/EnterEnter@gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
И
Egradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2?gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Enter)gradients/cond/rnn/while/add_1_grad/Shape^gradients/Add*
T0*
_output_shapes
:*
swap_memory( 
”
Bgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1SwitchHgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*<
_class2
0.loc:@gradients/cond/rnn/while/add_1_grad/Shape* 
_output_shapes
::
№
Hgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1/EnterEnter@gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*<
_class2
0.loc:@gradients/cond/rnn/while/add_1_grad/Shape*
parallel_iterations *
is_constant(
√
Dgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Bgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1*
_output_shapes
:*
	elem_type0
х
'gradients/cond/rnn/while/add_1_grad/SumSumJgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/control_dependency9gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ы
+gradients/cond/rnn/while/add_1_grad/ReshapeReshape'gradients/cond/rnn/while/add_1_grad/SumDgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
щ
)gradients/cond/rnn/while/add_1_grad/Sum_1SumJgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/control_dependency;gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ћ
-gradients/cond/rnn/while/add_1_grad/Reshape_1Reshape)gradients/cond/rnn/while/add_1_grad/Sum_1+gradients/cond/rnn/while/add_1_grad/Shape_1*
Tshape0*"
_output_shapes
:*
T0
Ъ
4gradients/cond/rnn/while/add_1_grad/tuple/group_depsNoOp,^gradients/cond/rnn/while/add_1_grad/Reshape.^gradients/cond/rnn/while/add_1_grad/Reshape_1
Ґ
<gradients/cond/rnn/while/add_1_grad/tuple/control_dependencyIdentity+gradients/cond/rnn/while/add_1_grad/Reshape5^gradients/cond/rnn/while/add_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/cond/rnn/while/add_1_grad/Reshape*+
_output_shapes
:€€€€€€€€€
Я
>gradients/cond/rnn/while/add_1_grad/tuple/control_dependency_1Identity-gradients/cond/rnn/while/add_1_grad/Reshape_15^gradients/cond/rnn/while/add_1_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/cond/rnn/while/add_1_grad/Reshape_1*"
_output_shapes
:
З
.gradients/cond/rnn/while/ExpandDims_grad/ShapeShapecond/rnn/while/Identity_3*
_output_shapes
:*
T0*
out_type0
ц
0gradients/cond/rnn/while/ExpandDims_grad/ReshapeReshape<gradients/cond/rnn/while/add_1_grad/tuple/control_dependency;gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPopV2*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
ƒ
6gradients/cond/rnn/while/ExpandDims_grad/Reshape/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*A
_class7
53loc:@gradients/cond/rnn/while/ExpandDims_grad/Shape
ы
6gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_accStackV26gradients/cond/rnn/while/ExpandDims_grad/Reshape/Const*
_output_shapes
:*
	elem_type0*A
_class7
53loc:@gradients/cond/rnn/while/ExpandDims_grad/Shape*

stack_name 
х
7gradients/cond/rnn/while/ExpandDims_grad/Reshape/SwitchSwitch6gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_acccond/pred_id*A
_class7
53loc:@gradients/cond/rnn/while/ExpandDims_grad/Shape* 
_output_shapes
::*
T0
щ
6gradients/cond/rnn/while/ExpandDims_grad/Reshape/EnterEnter7gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*,

frame_namecond/rnn/while/while_context
ы
<gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPushV2StackPushV26gradients/cond/rnn/while/ExpandDims_grad/Reshape/Enter.gradients/cond/rnn/while/ExpandDims_grad/Shape^gradients/Add*
_output_shapes
:*
swap_memory( *
T0
∆
9gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1Switch?gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1/EnterBgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1^gradients/Sub*
T0*A
_class7
53loc:@gradients/cond/rnn/while/ExpandDims_grad/Shape* 
_output_shapes
::
ѕ
?gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1/EnterEnter7gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch*
T0*A
_class7
53loc:@gradients/cond/rnn/while/ExpandDims_grad/Shape*
parallel_iterations *
is_constant(*
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context
±
;gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPopV2
StackPopV29gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1*
	elem_type0*
_output_shapes
:
Ь
/gradients/cond/rnn/while/add_1/Enter_grad/b_accConst^cond/switch_f*!
valueB*    *
dtype0*"
_output_shapes
:
ю
1gradients/cond/rnn/while/add_1/Enter_grad/b_acc_1Enter/gradients/cond/rnn/while/add_1/Enter_grad/b_acc*"
_output_shapes
:*6

frame_name(&gradients/cond/rnn/while/while_context*
T0*
is_constant( *
parallel_iterations 
ё
1gradients/cond/rnn/while/add_1/Enter_grad/b_acc_2Merge1gradients/cond/rnn/while/add_1/Enter_grad/b_acc_17gradients/cond/rnn/while/add_1/Enter_grad/NextIteration*
T0*
N*$
_output_shapes
:: 
љ
0gradients/cond/rnn/while/add_1/Enter_grad/SwitchSwitch1gradients/cond/rnn/while/add_1/Enter_grad/b_acc_2gradients/b_count_2*0
_output_shapes
::*
T0
’
-gradients/cond/rnn/while/add_1/Enter_grad/AddAdd2gradients/cond/rnn/while/add_1/Enter_grad/Switch:1>gradients/cond/rnn/while/add_1_grad/tuple/control_dependency_1*
T0*"
_output_shapes
:
§
7gradients/cond/rnn/while/add_1/Enter_grad/NextIterationNextIteration-gradients/cond/rnn/while/add_1/Enter_grad/Add*
T0*"
_output_shapes
:
Ш
1gradients/cond/rnn/while/add_1/Enter_grad/b_acc_3Exit0gradients/cond/rnn/while/add_1/Enter_grad/Switch*
T0*"
_output_shapes
:
И
gradients/AddN_4AddN?gradients/cond/rnn/while/Select_1_grad/tuple/control_dependency0gradients/cond/rnn/while/ExpandDims_grad/Reshape*
T0*@
_class6
42loc:@gradients/cond/rnn/while/Select_1_grad/Select*
N*'
_output_shapes
:€€€€€€€€€
u
$gradients/cond/ExpandDims_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB"      
Ѕ
&gradients/cond/ExpandDims_grad/ReshapeReshape1gradients/cond/rnn/while/add_1/Enter_grad/b_acc_3$gradients/cond/ExpandDims_grad/Shape*
T0*
Tshape0*
_output_shapes

:
Л
6gradients/cond/rnn/while/Switch_4_grad_1/NextIterationNextIterationgradients/AddN_4*'
_output_shapes
:€€€€€€€€€*
T0
o
gradients/Switch_9Switchtransitions/readcond/pred_id*
T0*(
_output_shapes
::
e
gradients/Shape_4Shapegradients/Switch_9:1*
_output_shapes
:*
T0*
out_type0
\
gradients/zeros_4/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
А
gradients/zeros_4Fillgradients/Shape_4gradients/zeros_4/Const*
_output_shapes

:*
T0*

index_type0
І
/gradients/cond/ExpandDims/Switch_grad/cond_gradMerge&gradients/cond/ExpandDims_grad/Reshapegradients/zeros_4* 
_output_shapes
:: *
T0*
N
“
gradients/AddN_5AddN gradients/Reshape_4_grad/Reshape/gradients/cond/ExpandDims/Switch_grad/cond_grad*
T0*3
_class)
'%loc:@gradients/Reshape_4_grad/Reshape*
N*
_output_shapes

:
ц
gradients/AddN_6AddN gradients/Reshape_1_grad/Reshapegradients/Slice_3_grad/Pad*gradients/cond/Slice/Switch_grad/cond_grad*3
_class)
'%loc:@gradients/Reshape_1_grad/Reshape*
N*+
_output_shapes
:€€€€€€€€€@*
T0
_
gradients/Reshape_grad/ShapeShapeadd*
T0*
out_type0*
_output_shapes
:
Щ
gradients/Reshape_grad/ReshapeReshapegradients/AddN_6gradients/Reshape_grad/Shape*'
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
^
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
і
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
І
gradients/add_grad/SumSumgradients/Reshape_grad/Reshape(gradients/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ч
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
Ђ
gradients/add_grad/Sum_1Sumgradients/Reshape_grad/Reshape*gradients/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Р
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Џ
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*'
_output_shapes
:€€€€€€€€€
”
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:
ƒ
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyinputs/Variable_1/read*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(
µ
gradients/MatMul_grad/MatMul_1MatMulbiLSTM/Reshape+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:	А*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
е
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
в
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes
:	А*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
p
#gradients/biLSTM/Reshape_grad/ShapeShapebiLSTM/concat*
T0*
out_type0*
_output_shapes
:
”
%gradients/biLSTM/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependency#gradients/biLSTM/Reshape_grad/Shape*
T0*
Tshape0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А
c
!gradients/biLSTM/concat_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Д
 gradients/biLSTM/concat_grad/modFloorModbiLSTM/concat/axis!gradients/biLSTM/concat_grad/Rank*
T0*
_output_shapes
: 
М
"gradients/biLSTM/concat_grad/ShapeShape*biLSTM/bidirectional_rnn/fw/fw/transpose_1*
_output_shapes
:*
T0*
out_type0
µ
#gradients/biLSTM/concat_grad/ShapeNShapeN*biLSTM/bidirectional_rnn/fw/fw/transpose_1biLSTM/ReverseSequence*
T0*
out_type0*
N* 
_output_shapes
::
“
)gradients/biLSTM/concat_grad/ConcatOffsetConcatOffset gradients/biLSTM/concat_grad/mod#gradients/biLSTM/concat_grad/ShapeN%gradients/biLSTM/concat_grad/ShapeN:1*
N* 
_output_shapes
::
ч
"gradients/biLSTM/concat_grad/SliceSlice%gradients/biLSTM/Reshape_grad/Reshape)gradients/biLSTM/concat_grad/ConcatOffset#gradients/biLSTM/concat_grad/ShapeN*
Index0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
э
$gradients/biLSTM/concat_grad/Slice_1Slice%gradients/biLSTM/Reshape_grad/Reshape+gradients/biLSTM/concat_grad/ConcatOffset:1%gradients/biLSTM/concat_grad/ShapeN:1*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€*
Index0*
T0
Б
-gradients/biLSTM/concat_grad/tuple/group_depsNoOp#^gradients/biLSTM/concat_grad/Slice%^gradients/biLSTM/concat_grad/Slice_1
Л
5gradients/biLSTM/concat_grad/tuple/control_dependencyIdentity"gradients/biLSTM/concat_grad/Slice.^gradients/biLSTM/concat_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/biLSTM/concat_grad/Slice*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@
С
7gradients/biLSTM/concat_grad/tuple/control_dependency_1Identity$gradients/biLSTM/concat_grad/Slice_1.^gradients/biLSTM/concat_grad/tuple/group_deps*7
_class-
+)loc:@gradients/biLSTM/concat_grad/Slice_1*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
T0
Ѓ
Kgradients/biLSTM/bidirectional_rnn/fw/fw/transpose_1_grad/InvertPermutationInvertPermutation'biLSTM/bidirectional_rnn/fw/fw/concat_2*
T0*
_output_shapes
:
†
Cgradients/biLSTM/bidirectional_rnn/fw/fw/transpose_1_grad/transpose	Transpose5gradients/biLSTM/concat_grad/tuple/control_dependencyKgradients/biLSTM/bidirectional_rnn/fw/fw/transpose_1_grad/InvertPermutation*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0*
T0
ш
5gradients/biLSTM/ReverseSequence_grad/ReverseSequenceReverseSequence7gradients/biLSTM/concat_grad/tuple/control_dependency_1
inputs/Sum*
	batch_dim *
T0*
seq_dim*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*

Tlen0
÷
tgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3*biLSTM/bidirectional_rnn/fw/fw/TensorArray+biLSTM/bidirectional_rnn/fw/fw/while/Exit_2*
source	gradients*=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray*
_output_shapes

:: 
А
pgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity+biLSTM/bidirectional_rnn/fw/fw/while/Exit_2u^gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*=
_class3
1/loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray*
_output_shapes
: 
Ч
zgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3tgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV35biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/rangeCgradients/biLSTM/bidirectional_rnn/fw/fw/transpose_1_grad/transposepgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Ѓ
Kgradients/biLSTM/bidirectional_rnn/bw/bw/transpose_1_grad/InvertPermutationInvertPermutation'biLSTM/bidirectional_rnn/bw/bw/concat_2*
_output_shapes
:*
T0
†
Cgradients/biLSTM/bidirectional_rnn/bw/bw/transpose_1_grad/transpose	Transpose5gradients/biLSTM/ReverseSequence_grad/ReverseSequenceKgradients/biLSTM/bidirectional_rnn/bw/bw/transpose_1_grad/InvertPermutation*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0
÷
tgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3*biLSTM/bidirectional_rnn/bw/bw/TensorArray+biLSTM/bidirectional_rnn/bw/bw/while/Exit_2*
source	gradients*=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes

:: 
А
pgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentity+biLSTM/bidirectional_rnn/bw/bw/while/Exit_2u^gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*=
_class3
1/loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
Ч
zgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3tgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV35biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/rangeCgradients/biLSTM/bidirectional_rnn/bw/bw/transpose_1_grad/transposepgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
А
gradients/zeros_like	ZerosLike+biLSTM/bidirectional_rnn/fw/fw/while/Exit_3*
T0*'
_output_shapes
:€€€€€€€€€@
В
gradients/zeros_like_1	ZerosLike+biLSTM/bidirectional_rnn/fw/fw/while/Exit_4*
T0*'
_output_shapes
:€€€€€€€€€@
В
gradients/zeros_like_2	ZerosLike+biLSTM/bidirectional_rnn/fw/fw/while/Exit_5*
T0*'
_output_shapes
:€€€€€€€€€@
В
gradients/zeros_like_3	ZerosLike+biLSTM/bidirectional_rnn/fw/fw/while/Exit_6*'
_output_shapes
:€€€€€€€€€@*
T0
г
Agradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exitEnterzgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations *
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
О
Agradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_3_grad/b_exitEntergradients/zeros_like*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Р
Agradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_4_grad/b_exitEntergradients/zeros_like_1*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
Р
Agradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_5_grad/b_exitEntergradients/zeros_like_2*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
Р
Agradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_6_grad/b_exitEntergradients/zeros_like_3*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
В
gradients/zeros_like_4	ZerosLike+biLSTM/bidirectional_rnn/bw/bw/while/Exit_3*'
_output_shapes
:€€€€€€€€€@*
T0
В
gradients/zeros_like_5	ZerosLike+biLSTM/bidirectional_rnn/bw/bw/while/Exit_4*
T0*'
_output_shapes
:€€€€€€€€€@
В
gradients/zeros_like_6	ZerosLike+biLSTM/bidirectional_rnn/bw/bw/while/Exit_5*
T0*'
_output_shapes
:€€€€€€€€€@
В
gradients/zeros_like_7	ZerosLike+biLSTM/bidirectional_rnn/bw/bw/while/Exit_6*
T0*'
_output_shapes
:€€€€€€€€€@
Л
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_2_grad/b_exitLgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIteration*
_output_shapes
: : *
T0*
N
Ь
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_3_grad/b_exitLgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
Ь
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_4_grad/b_exitLgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
Ь
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_5_grad/b_exitLgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5_grad_1/NextIteration*)
_output_shapes
:€€€€€€€€€@: *
T0*
N
Ь
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/fw/fw/while/Exit_6_grad/b_exitLgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
г
Agradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exitEnterzgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
is_constant( *
parallel_iterations *
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
Р
Agradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_3_grad/b_exitEntergradients/zeros_like_4*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Р
Agradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_4_grad/b_exitEntergradients/zeros_like_5*'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
Р
Agradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_5_grad/b_exitEntergradients/zeros_like_6*
T0*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Р
Agradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_6_grad/b_exitEntergradients/zeros_like_7*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
•
Bgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switchgradients/b_count_6*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*
_output_shapes
: : 
Щ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch
о
Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch
т
Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*
_output_shapes
: 
«
Bgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switchgradients/b_count_6*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Щ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
Г
Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/group_deps*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3_grad/b_switch*'
_output_shapes
:€€€€€€€€€@*
T0
«
Bgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switchgradients/b_count_6*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switch
Щ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switch
Г
Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
«
Bgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5_grad/b_switchgradients/b_count_6*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5_grad/b_switch
Щ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5_grad/b_switch
Г
Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/group_deps*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5_grad/b_switch*'
_output_shapes
:€€€€€€€€€@*
T0
«
Bgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6_grad/b_switchgradients/b_count_6*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Щ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
Г
Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
Л
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_2_grad/b_exitLgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIteration*
_output_shapes
: : *
T0*
N
Ь
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_3_grad/b_exitLgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
Ь
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_4_grad/b_exitLgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
Ь
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_5_grad/b_exitLgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
Ь
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6_grad/b_switchMergeAgradients/biLSTM/bidirectional_rnn/bw/bw/while/Exit_6_grad/b_exitLgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6_grad_1/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
њ
@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_2_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency*
T0*
_output_shapes
: 
–
@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_3_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
–
@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_4_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
–
@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_5_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
–
@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_6_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
¶
Bgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switchgradients/b_count_10*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*
_output_shapes
: : 
Щ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch
о
Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*
_output_shapes
: *
T0
т
Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/group_deps*
_output_shapes
: *
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch
»
Bgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switchgradients/b_count_10*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Щ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
Г
Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
»
Bgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switchgradients/b_count_10*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switch
Щ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
Г
Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/group_deps*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4_grad/b_switch*'
_output_shapes
:€€€€€€€€€@*
T0
»
Bgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5_grad/b_switchgradients/b_count_10*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5_grad/b_switch
Щ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5_grad/b_switch
Г
Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5_grad/b_switch
»
Bgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/SwitchSwitchEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6_grad/b_switchgradients/b_count_10*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6_grad/b_switch*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Щ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/group_depsNoOpC^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/Switch
€
Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/control_dependencyIdentityBgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/SwitchM^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6_grad/b_switch
Г
Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/control_dependency_1IdentityDgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/Switch:1M^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6_grad/b_switch*'
_output_shapes
:€€€€€€€€€@
Д
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterVgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1*
source	gradients*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes

:: 
љ
gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter*biLSTM/bidirectional_rnn/fw/fw/TensorArray*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
ё
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityVgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1z^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2
Ь
igradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3ygradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3tgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ugradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*'
_output_shapes
:€€€€€€€€€@
ю
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_1*
dtype0*
_output_shapes
: 
о
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2ogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*
	elem_type0*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_1*

stack_name *
_output_shapes
:
А
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
м
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2ogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter/biLSTM/bidirectional_rnn/fw/fw/while/Identity_1^gradients/Add_1*
T0*
_output_shapes
: *
swap_memory( 
є
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2zgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
: *
	elem_type0
Х
zgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Р%
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggeru^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2S^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2O^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2S^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2S^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPopV2S^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1В^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1p^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2В^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2x^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2v^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1В^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1p^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2В^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2x^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2v^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
µ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpW^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1j^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
В
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3i^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*'
_output_shapes
:€€€€€€€€€@
Љ
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityVgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_2_grad/tuple/control_dependency_1i^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad/b_switch*
_output_shapes
: 
Ј
fgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
”
dgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/SumSum@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_3_grad/Exitfgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Џ
Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
№
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/ConstConst*
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_3*
dtype0*
_output_shapes
: 
™
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Const*
_output_shapes
:*
	elem_type0*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_3*

stack_name 
Љ
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
є
Sgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/fw/fw/while/Identity_3^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
Ж
Rgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
—
Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
р
Cgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like*'
_output_shapes
:€€€€€€€€€@*
T0
Џ
Igradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/ConstConst*
valueB :
€€€€€€€€€*D
_class:
86loc:@biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual*
dtype0*
_output_shapes
: 
§
Igradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_accStackV2Igradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Const*

stack_name *
_output_shapes
:*
	elem_type0
*D
_class:
86loc:@biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual
і
Igradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/EnterEnterIgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
ѓ
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2StackPushV2Igradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter1biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual^gradients/Add_1*#
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0

ъ
Ngradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2
StackPopV2Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/Enter^gradients/Sub_1*
	elem_type0
*#
_output_shapes
:€€€€€€€€€
…
Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2/EnterEnterIgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
т
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_3_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
г
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectF^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/SelectN^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select
Ж
Wgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/group_deps*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1*'
_output_shapes
:€€€€€€€€€@*
T0
є
hgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
„
fgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/SumSum@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_4_grad/Exithgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Џ
Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
№
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/ConstConst*
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_4*
dtype0*
_output_shapes
: 
™
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/Const*

stack_name *
_output_shapes
:*
	elem_type0*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_4
Љ
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
є
Sgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/fw/fw/while/Identity_4^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
Ж
Rgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
—
Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
р
Cgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€@
т
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_4_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
г
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/SelectF^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/SelectN^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/group_deps*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/Select*'
_output_shapes
:€€€€€€€€€@*
T0
Ж
Wgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1*'
_output_shapes
:€€€€€€€€€@
є
hgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
„
fgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/SumSum@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_5_grad/Exithgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Џ
Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
№
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_5*
dtype0
™
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/Const*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_5*

stack_name *
_output_shapes
:*
	elem_type0
Љ
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
є
Sgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/fw/fw/while/Identity_5^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
Ж
Rgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
—
Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
р
Cgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like*'
_output_shapes
:€€€€€€€€€@*
T0
т
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_5_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
г
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/SelectF^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/SelectN^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/tuple/group_deps*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/Select*'
_output_shapes
:€€€€€€€€€@*
T0
Ж
Wgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/Select_1*'
_output_shapes
:€€€€€€€€€@
ї
jgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
џ
hgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/SumSum@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Enter_6_grad/Exitjgradients/biLSTM/bidirectional_rnn/fw/fw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Џ
Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
№
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/ConstConst*
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_6*
dtype0*
_output_shapes
: 
™
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/Const*B
_class8
64loc:@biLSTM/bidirectional_rnn/fw/fw/while/Identity_6*

stack_name *
_output_shapes
:*
	elem_type0
Љ
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
є
Sgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/fw/fw/while/Identity_6^gradients/Add_1*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
Ж
Rgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPopV2/Enter^gradients/Sub_1*
	elem_type0*'
_output_shapes
:€€€€€€€€€@
—
Xgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/f_acc*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
р
Cgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like*'
_output_shapes
:€€€€€€€€€@*
T0
т
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/fw/fw/while/Merge_6_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
г
Mgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/SelectF^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/SelectN^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/Select*'
_output_shapes
:€€€€€€€€€@
Ж
Wgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/tuple/group_deps*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/Select_1*'
_output_shapes
:€€€€€€€€€@*
T0
њ
@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_2_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency*
_output_shapes
: *
T0
–
@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_3_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
–
@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_4_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
–
@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_5_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
–
@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_6_grad/ExitExitTgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
г
Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like	ZerosLikeKgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/Enter^gradients/Sub_1*
T0*'
_output_shapes
:€€€€€€€€€@
®
Kgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like/EnterEnter$biLSTM/bidirectional_rnn/fw/fw/zeros*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ж
Agradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2pgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyEgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€@
И
Cgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPopV2Egradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/zeros_likepgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
Ё
Kgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_depsNoOpB^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/SelectD^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/Select_1
ш
Sgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependencyIdentityAgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/SelectL^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/Select*'
_output_shapes
:€€€€€€€€€@
ю
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1IdentityCgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/Select_1L^gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/Select_1*'
_output_shapes
:€€€€€€€€€@
Д
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterVgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1*
_output_shapes

:: *
source	gradients*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2
љ
gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter*biLSTM/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
parallel_iterations *
is_constant(
ё
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentityVgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1z^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2*
_output_shapes
: 
Ь
igradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3ygradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3tgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2ugradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*'
_output_shapes
:€€€€€€€€€@
ю
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_1*
dtype0
о
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2ogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_1*

stack_name *
_output_shapes
:*
	elem_type0
А
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
м
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2ogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter/biLSTM/bidirectional_rnn/bw/bw/while/Identity_1^gradients/Add_2*
_output_shapes
: *
swap_memory( *
T0
є
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2zgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
: *
	elem_type0
Х
zgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Р%
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggeru^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2S^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2O^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2S^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2S^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPopV2S^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1В^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1p^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2В^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2x^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2v^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1В^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1p^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2Д^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Ж^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2В^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2x^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2v^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
µ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_depsNoOpW^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1j^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3
В
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3i^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*'
_output_shapes
:€€€€€€€€€@
Љ
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1IdentityVgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_2_grad/tuple/control_dependency_1i^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad/b_switch*
_output_shapes
: 
Ј
fgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
”
dgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/SumSum@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_3_grad/Exitfgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Џ
Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
№
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/ConstConst*
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_3*
dtype0*
_output_shapes
: 
™
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Const*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_3*

stack_name *
_output_shapes
:*
	elem_type0
Љ
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
є
Sgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/bw/bw/while/Identity_3^gradients/Add_2*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
Ж
Rgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
—
Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
р
Cgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€@
Џ
Igradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/ConstConst*
valueB :
€€€€€€€€€*D
_class:
86loc:@biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual*
dtype0*
_output_shapes
: 
§
Igradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_accStackV2Igradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Const*D
_class:
86loc:@biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual*

stack_name *
_output_shapes
:*
	elem_type0

і
Igradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/EnterEnterIgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
ѓ
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2StackPushV2Igradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter1biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual^gradients/Add_2*#
_output_shapes
:€€€€€€€€€*
swap_memory( *
T0

ъ
Ngradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2
StackPopV2Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/Enter^gradients/Sub_2*#
_output_shapes
:€€€€€€€€€*
	elem_type0

…
Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2/EnterEnterIgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
т
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_3_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
г
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectF^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/SelectN^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select*'
_output_shapes
:€€€€€€€€€@
Ж
Wgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1*'
_output_shapes
:€€€€€€€€€@
є
hgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
„
fgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/SumSum@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_4_grad/Exithgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState/zeros_1_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Џ
Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
№
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_4*
dtype0
™
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/Const*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_4*

stack_name *
_output_shapes
:*
	elem_type0
Љ
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
є
Sgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/bw/bw/while/Identity_4^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
Ж
Rgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*'
_output_shapes
:€€€€€€€€€@
—
Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
р
Cgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€@
т
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_4_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
г
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/SelectF^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/SelectN^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/Select*'
_output_shapes
:€€€€€€€€€@
Ж
Wgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1
є
hgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
„
fgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/SumSum@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_5_grad/Exithgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Џ
Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
№
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_5
™
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/Const*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_5*

stack_name *
_output_shapes
:*
	elem_type0
Љ
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
є
Sgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/bw/bw/while/Identity_5^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
Ж
Rgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
—
Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
р
Cgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€@
т
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_5_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
г
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/SelectF^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/SelectN^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/Select*'
_output_shapes
:€€€€€€€€€@
Ж
Wgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/Select_1
ї
jgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
џ
hgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/SumSum@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Enter_6_grad/Exitjgradients/biLSTM/bidirectional_rnn/bw/bw/MultiRNNCellZeroState/BasicLSTMCellZeroState_1/zeros_1_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Џ
Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like	ZerosLikeRgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
№
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_6*
dtype0
™
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/f_accStackV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/Const*
	elem_type0*B
_class8
64loc:@biLSTM/bidirectional_rnn/bw/bw/while/Identity_6*

stack_name *
_output_shapes
:
Љ
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
є
Sgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPushV2StackPushV2Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/Enter/biLSTM/bidirectional_rnn/bw/bw/while/Identity_6^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
Ж
Rgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPopV2
StackPopV2Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
—
Xgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPopV2/EnterEnterMgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
р
Cgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Vgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/control_dependency_1Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€@
т
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_likeVgradients/biLSTM/bidirectional_rnn/bw/bw/while/Merge_6_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
г
Mgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/tuple/group_depsNoOpD^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/SelectF^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/Select_1
А
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/tuple/control_dependencyIdentityCgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/SelectN^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/Select*'
_output_shapes
:€€€€€€€€€@
Ж
Wgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/tuple/control_dependency_1IdentityEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/Select_1N^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/Select_1*'
_output_shapes
:€€€€€€€€€@
™
Fgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/ShapeShape$biLSTM/bidirectional_rnn/fw/fw/zeros*
T0*
out_type0*
_output_shapes
:
С
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
®
Fgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zerosFillFgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/ShapeLgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros/Const*

index_type0*'
_output_shapes
:€€€€€€€€€@*
T0
≈
Fgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_accEnterFgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/zeros*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
¶
Hgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_1MergeFgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_accNgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
х
Ggradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/SwitchSwitchHgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_1gradients/b_count_6*
T0*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@
Э
Dgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/AddAddIgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Switch:1Sgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
„
Ngradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/NextIterationNextIterationDgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Add*'
_output_shapes
:€€€€€€€€€@*
T0
Ћ
Hgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_2ExitGgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/Switch*
T0*'
_output_shapes
:€€€€€€€€€@
Ё
gradients/AddN_7AddNWgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/tuple/control_dependency_1Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_grad/tuple/control_dependency_1*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/Select_1*
N*'
_output_shapes
:€€€€€€€€€@*
T0
ь
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/ShapeShapeTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*
T0*
out_type0*
_output_shapes
:
Б
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1ShapeWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
_output_shapes
:*
T0*
out_type0
№
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
Ћ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1Const*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1
Ќ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
ѕ
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
б
Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
§
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/MulMulgradients/AddN_7qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
£
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
dtype0*
_output_shapes
: 
Р
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Const*
_output_shapes
:*
	elem_type0*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*

stack_name 
ъ
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
Я
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/EnterWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ƒ
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
П
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
П
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/SumSumfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mulxgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/SumГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
®
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2gradients/AddN_7*
T0*'
_output_shapes
:€€€€€€€€€@
Ґ
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*
dtype0*
_output_shapes
: 
С
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Const*
_output_shapes
:*
	elem_type0*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*

stack_name 
ю
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
†
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/EnterTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
»
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
У
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Х
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
≤
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
„
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
†
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1
т
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2_grad_1/NextIterationNextIterationrgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
г
Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like	ZerosLikeKgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/Enter^gradients/Sub_2*
T0*'
_output_shapes
:€€€€€€€€€@
®
Kgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like/EnterEnter$biLSTM/bidirectional_rnn/bw/bw/zeros*
T0*
is_constant(*
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ж
Agradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/SelectSelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2pgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependencyEgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/zeros_like*
T0*'
_output_shapes
:€€€€€€€€€@
И
Cgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/Select_1SelectNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPopV2Egradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/zeros_likepgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
Ё
Kgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_depsNoOpB^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/SelectD^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/Select_1
ш
Sgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependencyIdentityAgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/SelectL^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps*T
_classJ
HFloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/Select*'
_output_shapes
:€€€€€€€€€@*
T0
ю
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1IdentityCgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/Select_1L^gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/Select_1*'
_output_shapes
:€€€€€€€€€@
К
9gradients/biLSTM/bidirectional_rnn/fw/fw/zeros_grad/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
Б
7gradients/biLSTM/bidirectional_rnn/fw/fw/zeros_grad/SumSumHgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter_grad/b_acc_29gradients/biLSTM/bidirectional_rnn/fw/fw/zeros_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Ь
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
•
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
™
Fgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/ShapeShape$biLSTM/bidirectional_rnn/bw/bw/zeros*
T0*
out_type0*
_output_shapes
:
С
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
®
Fgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zerosFillFgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/ShapeLgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€@
≈
Fgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_accEnterFgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/zeros*
is_constant( *
parallel_iterations *'
_output_shapes
:€€€€€€€€€@*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
¶
Hgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_1MergeFgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_accNgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/NextIteration*
T0*
N*)
_output_shapes
:€€€€€€€€€@: 
ц
Ggradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/SwitchSwitchHgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_1gradients/b_count_10*:
_output_shapes(
&:€€€€€€€€€@:€€€€€€€€€@*
T0
Э
Dgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/AddAddIgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Switch:1Sgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
„
Ngradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/NextIterationNextIterationDgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Add*
T0*'
_output_shapes
:€€€€€€€€€@
Ћ
Hgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_2ExitGgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/Switch*
T0*'
_output_shapes
:€€€€€€€€€@
Ё
gradients/AddN_8AddNWgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/tuple/control_dependency_1Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_grad/tuple/control_dependency_1*
N*'
_output_shapes
:€€€€€€€€€@*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/Select_1
ь
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/ShapeShapeTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*
T0*
out_type0*
_output_shapes
:
Б
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1ShapeWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
out_type0*
_output_shapes
:*
T0
№
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1*

stack_name *
_output_shapes
:*
	elem_type0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1
§
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
ѕ
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
б
Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
§
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/MulMulgradients/AddN_8qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
£
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*
dtype0*
_output_shapes
: 
Р
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Const*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:*
	elem_type0
ъ
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
Я
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/EnterWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2^gradients/Add_2*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ƒ
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
П
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
П
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/SumSumfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mulxgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/SumГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
®
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2gradients/AddN_8*
T0*'
_output_shapes
:€€€€€€€€€@
Ґ
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*
dtype0*
_output_shapes
: 
С
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Const*
	elem_type0*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1*

stack_name *
_output_shapes
:
ю
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
†
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/EnterTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
»
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
У
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Х
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
≤
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
„
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_deps*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape*'
_output_shapes
:€€€€€€€€€@*
T0
†
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
т
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2_grad_1/NextIterationNextIterationrgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
ф
gradients/AddN_9AddNWgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/tuple/control_dependency_1lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1_grad/TanhGrad*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/Select_1*
N*'
_output_shapes
:€€€€€€€€€@*
T0
щ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/ShapeShapeQbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul*
_output_shapes
:*
T0*
out_type0
э
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1ShapeSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1*
_output_shapes
:*
T0*
out_type0
№
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape*

stack_name 
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
ѕ
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
б
Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
є
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/SumSumgradients/AddN_9xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/SumГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
љ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Sum_1Sumgradients/AddN_9zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
≤
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
„
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape
†
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1
К
9gradients/biLSTM/bidirectional_rnn/bw/bw/zeros_grad/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
Б
7gradients/biLSTM/bidirectional_rnn/bw/bw/zeros_grad/SumSumHgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter_grad/b_acc_29gradients/biLSTM/bidirectional_rnn/bw/bw/zeros_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Ь
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
•
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
’
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/ShapeShape/biLSTM/bidirectional_rnn/fw/fw/while/Identity_5*
_output_shapes
:*
T0*
out_type0
э
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1ShapeUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
T0*
out_type0*
_output_shapes
:
÷
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¬
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape*
dtype0*
_output_shapes
: 
њ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ъ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
¬
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
ў
Бgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
∞
Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1StackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1Enter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
Л
dgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/MulMul{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependencyogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
Я
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
dtype0*
_output_shapes
: 
К
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_accStackV2jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Const*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
ц
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/EnterEnterjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Щ
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/EnterUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ј
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
Л
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnterjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Й
dgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/SumSumdgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mulvgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¶
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/SumБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
р
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1MulRgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
П
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Sum_1Sumfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Sum_1Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
—
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
Ш
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
€
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/ShapeShapeWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*
T0*
out_type0*
_output_shapes
:
ь
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1ShapeRbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
T0*
out_type0*
_output_shapes
:
№
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape*

stack_name 
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
	elem_type0*
_output_shapes
:
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1*

stack_name *
_output_shapes
:
§
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
ѕ
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
б
Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
С
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/MulMul}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
Ю
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*e
_class[
YWloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
dtype0*
_output_shapes
: 
Л
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Const*e
_class[
YWloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
ъ
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ъ
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/EnterRbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ƒ
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
П
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
П
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/SumSumfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mulxgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/SumГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Х
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
•
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*
dtype0*
_output_shapes
: 
Ф
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Const*
	elem_type0*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:
ю
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
£
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/EnterWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1^gradients/Add_1*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
»
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
У
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Х
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
≤
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
„
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_deps*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€@*
T0
†
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1
х
gradients/AddN_10AddNWgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/tuple/control_dependency_1lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/Select_1*
N*'
_output_shapes
:€€€€€€€€€@
щ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/ShapeShapeQbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul*
out_type0*
_output_shapes
:*
T0
э
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1ShapeSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1*
T0*
out_type0*
_output_shapes
:
№
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape*
dtype0
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1*

stack_name 
§
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
ѕ
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1^gradients/Add_2*
_output_shapes
:*
swap_memory( *
T0
б
Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ї
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/SumSumgradients/AddN_10xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/SumГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
Њ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Sum_1Sumgradients/AddN_10zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
≤
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
„
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
†
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
ю
gradients/AddN_11AddNUgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/tuple/control_dependencyygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@
Я
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
•
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
Ъ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_grad/TanhGradTanhGradqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
’
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/ShapeShape/biLSTM/bidirectional_rnn/bw/bw/while/Identity_5*
T0*
out_type0*
_output_shapes
:
э
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1ShapeUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
out_type0*
_output_shapes
:*
T0
÷
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
¬
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape*
dtype0*
_output_shapes
: 
њ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ъ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
¬
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape^gradients/Add_2*
_output_shapes
:*
swap_memory( *
T0
ў
Бgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*
_output_shapes
:
∞
Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1StackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1*

stack_name *
_output_shapes
:
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1Enter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1^gradients/Add_2*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Л
dgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/MulMul{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependencyogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
Я
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*
dtype0*
_output_shapes
: 
К
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_accStackV2jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Const*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
ц
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/EnterEnterjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Щ
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/EnterUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
ј
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
Л
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnterjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Й
dgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/SumSumdgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mulvgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¶
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/SumБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
р
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1MulRgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
П
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Sum_1Sumfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul_1xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Sum_1Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
—
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
Ш
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
€
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/ShapeShapeWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*
T0*
out_type0*
_output_shapes
:
ь
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1ShapeRbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
T0*
out_type0*
_output_shapes
:
№
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Ћ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1*
_output_shapes
:*
	elem_type0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1*

stack_name 
§
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
ѕ
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
б
Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*
_output_shapes
:
є
Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
С
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/MulMul}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
Ю
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*e
_class[
YWloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*
dtype0*
_output_shapes
: 
Л
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Const*
_output_shapes
:*
	elem_type0*e
_class[
YWloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh*

stack_name 
ъ
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Ъ
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/EnterRbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh^gradients/Add_2*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ƒ
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
П
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
П
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/SumSumfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mulxgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/SumГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Х
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
•
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*
dtype0*
_output_shapes
: 
Ф
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Const*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:*
	elem_type0
ю
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
£
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/EnterWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
»
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
У
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Х
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
≤
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
„
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
†
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
Ґ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5_grad_1/NextIterationNextIterationgradients/AddN_11*
T0*'
_output_shapes
:€€€€€€€€€@
ы
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/ShapeShapeUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
љ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1Const^gradients/Sub_1*
valueB *
dtype0*
_output_shapes
: 
Ї
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¬
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape*
dtype0*
_output_shapes
: 
њ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Const*
_output_shapes
:*
	elem_type0*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape*

stack_name 
Ъ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
¬
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
ў
Бgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
∞
Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Х
dgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/SumSumpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradvgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¶
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/SumБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Щ
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Sum_1Sumpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradxgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ц
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Sum_1hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
—
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
З
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_deps*
_output_shapes
: *
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1
ю
gradients/AddN_12AddNUgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/tuple/control_dependencyygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@
Я
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
•
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
Ъ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_grad/TanhGradTanhGradqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
э
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatConcatV2rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_grad/TanhGradygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat/Const*
T0*
N*(
_output_shapes
:€€€€€€€€€А*

Tidx0
√
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub_1*
_output_shapes
: *
value	B :*
dtype0
Ґ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5_grad_1/NextIterationNextIterationgradients/AddN_12*
T0*'
_output_shapes
:€€€€€€€€€@
ы
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/ShapeShapeUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
љ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1Const^gradients/Sub_2*
valueB *
dtype0*
_output_shapes
: 
Ї
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¬
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape*
dtype0*
_output_shapes
: 
њ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Const*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ъ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
¬
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
ў
Бgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*
_output_shapes
:
∞
Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
Х
dgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/SumSumpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradvgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¶
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/SumБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Щ
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Sum_1Sumpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_grad/SigmoidGradxgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Sum_1hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
—
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape
З
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/group_deps*
_output_shapes
: *
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Reshape_1
І
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:А
№
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatq^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
Э
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatv^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat*(
_output_shapes
:€€€€€€€€€А
°
gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identitypgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradv^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*Г
_classy
wuloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
э
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatConcatV2rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_grad/TanhGradygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat/Const*
N*(
_output_shapes
:€€€€€€€€€А*

Tidx0*
T0
√
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub_2*
value	B :*
dtype0*
_output_shapes
: 
Њ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulMatMul}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(
п
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
њ
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1MatMulwgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( *
T0
¶
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat*
dtype0*
_output_shapes
: 
Щ
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat
Ж
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnterrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
©
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/EnterTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat^gradients/Add_1*
T0*(
_output_shapes
:€€€€€€€€€А*
swap_memory( 
—
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_1*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
Ы
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ў
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulm^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
Э
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulu^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А*
T0
Ы
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
АА*
T0
њ
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
П
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes	
:А*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ъ
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergergradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*
N*
_output_shapes
	:А: 
±
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_6*
T0*"
_output_shapes
:А:А
С
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/AddAddsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:А*
T0
Я
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:А*
T0
У
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
І
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:А
№
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatq^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
Э
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concatv^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split_grad/concat*(
_output_shapes
:€€€€€€€€€А
°
gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identitypgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGradv^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*Г
_classy
wuloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
љ
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConstConst^gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
Љ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/RankConst^gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
й
ggradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/modFloorModigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Consthgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
ь
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeShapeSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
_output_shapes
:*
T0*
out_type0
Г
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeNShapeNugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Rgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPopV2* 
_output_shapes
::*
T0*
out_type0*
N
£
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
€€€€€€€€€*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
dtype0*
_output_shapes
: 
Ф
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Const*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*

stack_name *
_output_shapes
:*
	elem_type0
В
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/EnterEnterpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
£
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/EnterSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2^gradients/Add_1*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
ћ
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
Ч
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
о
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetggradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/modjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeNlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
Ц
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/SliceSlice|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffsetjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ь
kgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1Slice|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffset:1lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
÷
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slicel^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1
Ъ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Sliceu^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice
†
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1Identitykgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1*'
_output_shapes
:€€€€€€€€€@
»
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_accConst* 
_output_shapes
:
АА*
valueB
АА*    *
dtype0
Т
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enterogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ь
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Mergeqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_1wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
є
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_6*,
_output_shapes
:
АА:
АА*
T0
У
mgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/AddAddrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Switch:1~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
Ґ
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationmgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
АА
Ц
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exitpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Switch* 
_output_shapes
:
АА*
T0
Њ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulMatMul}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul/Enter*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(
п
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read* 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
њ
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1MatMulwgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
T0* 
_output_shapes
:
АА*
transpose_a(*
transpose_b( 
¶
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat*
dtype0*
_output_shapes
: 
Щ
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat
Ж
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnterrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
©
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/EnterTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat^gradients/Add_2*
T0*(
_output_shapes
:€€€€€€€€€А*
swap_memory( 
—
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_2*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
Ы
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ў
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulm^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
Э
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMulu^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
Ы
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/group_deps* 
_output_shapes
:
АА*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1
њ
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
П
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
_output_shapes	
:А*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
Ъ
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergergradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
_output_shapes
	:А: *
T0
≤
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_10*
T0*"
_output_shapes
:А:А
С
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/AddAddsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
_output_shapes	
:А*
T0
Я
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:А*
T0
У
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
Е
gradients/AddN_13AddNWgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependency_1|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/Select_1*
N*'
_output_shapes
:€€€€€€€€€@
ь
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/ShapeShapeTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
T0*
out_type0*
_output_shapes
:
Б
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1ShapeWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
_output_shapes
:*
T0*
out_type0
№
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1*
dtype0
Ќ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
ѕ
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
б
Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
	elem_type0*
_output_shapes
:
є
Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
•
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/MulMulgradients/AddN_13qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
£
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
dtype0*
_output_shapes
: 
Р
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Const*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:*
	elem_type0
ъ
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
Я
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ƒ
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
П
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
П
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/SumSumfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mulxgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/SumГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
©
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2gradients/AddN_13*
T0*'
_output_shapes
:€€€€€€€€€@
Ґ
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
dtype0*
_output_shapes
: 
С
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Const*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*

stack_name *
_output_shapes
:*
	elem_type0
ю
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
†
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1^gradients/Add_1*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
»
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub_1*
	elem_type0*'
_output_shapes
:€€€€€€€€€@
У
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Х
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
≤
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
„
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape
†
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1
Г
gradients/AddN_14AddNUgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/tuple/control_dependency~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@
љ
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConstConst^gradients/Sub_2*
value	B :*
dtype0*
_output_shapes
: 
Љ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/RankConst^gradients/Sub_2*
value	B :*
dtype0*
_output_shapes
: 
й
ggradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/modFloorModigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Consthgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
ь
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeShapeSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
T0*
out_type0*
_output_shapes
:
Г
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeNShapeNugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Rgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPopV2*
T0*
out_type0*
N* 
_output_shapes
::
£
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
€€€€€€€€€*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*
dtype0*
_output_shapes
: 
Ф
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Const*f
_class\
ZXloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2*

stack_name *
_output_shapes
:*
	elem_type0
В
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/EnterEnterpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
£
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/EnterSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2^gradients/Add_2*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ћ
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
Ч
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
о
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetggradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/modjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeNlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
Ц
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/SliceSlice|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffsetjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Index0*
T0
Ь
kgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1Slice|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ConcatOffset:1lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
÷
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slicel^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1
Ъ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Sliceu^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice*'
_output_shapes
:€€€€€€€€€@*
T0
†
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1Identitykgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Slice_1*'
_output_shapes
:€€€€€€€€€@
»
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
Т
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enterogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc*
parallel_iterations * 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
Ь
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Mergeqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_1wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
Ї
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_10*
T0*,
_output_shapes
:
АА:
АА
У
mgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/AddAddrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Switch:1~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
Ґ
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationmgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Add*
T0* 
_output_shapes
:
АА
Ц
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exitpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
Ь
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
•
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
Ґ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6_grad_1/NextIterationNextIterationgradients/AddN_14*
T0*'
_output_shapes
:€€€€€€€€€@
Е
gradients/AddN_15AddNWgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependency_1|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/Select_1*
N*'
_output_shapes
:€€€€€€€€€@
ь
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/ShapeShapeTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
_output_shapes
:*
T0*
out_type0
Б
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1ShapeWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
out_type0*
_output_shapes
:*
T0
№
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape^gradients/Add_2*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
ѕ
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1^gradients/Add_2*
_output_shapes
:*
swap_memory( *
T0
б
Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*
_output_shapes
:
є
Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
•
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/MulMulgradients/AddN_15qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
£
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*
dtype0*
_output_shapes
: 
Р
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Const*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2*

stack_name *
_output_shapes
:*
	elem_type0
ъ
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
Я
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/EnterWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2^gradients/Add_2*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ƒ
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*'
_output_shapes
:€€€€€€€€€@
П
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
П
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/SumSumfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mulxgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/SumГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
©
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2gradients/AddN_15*'
_output_shapes
:€€€€€€€€€@*
T0
Ґ
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*
dtype0*
_output_shapes
: 
С
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Const*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1*

stack_name *
_output_shapes
:*
	elem_type0
ю
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
†
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/EnterTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
»
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
У
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Х
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
≤
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
„
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
†
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Reshape_1
Г
gradients/AddN_16AddNUgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/tuple/control_dependency~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@
х
gradients/AddN_17AddNWgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependency_1lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select_1*
N*'
_output_shapes
:€€€€€€€€€@
щ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/ShapeShapeQbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul*
T0*
out_type0*
_output_shapes
:
э
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1ShapeSbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
_output_shapes
:*
T0*
out_type0
№
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1Const*
_output_shapes
: *
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1*
dtype0
Ќ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
ѕ
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
б
Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ї
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/SumSumgradients/AddN_17xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/SumГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Њ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Sum_1Sumgradients/AddN_17zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
≤
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
„
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_deps*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€@*
T0
†
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
Ь
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGradTanhGradsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency*'
_output_shapes
:€€€€€€€€€@*
T0
•
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
Ґ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6_grad_1/NextIterationNextIterationgradients/AddN_16*
T0*'
_output_shapes
:€€€€€€€€€@
’
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/ShapeShape/biLSTM/bidirectional_rnn/fw/fw/while/Identity_3*
_output_shapes
:*
T0*
out_type0
э
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1ShapeUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
T0*
out_type0*
_output_shapes
:
÷
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¬
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape*
dtype0
њ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ъ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
¬
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
ў
Бgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
∞
Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1StackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1Enter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Л
dgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/MulMul{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependencyogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
Я
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
dtype0*
_output_shapes
: 
К
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_accStackV2jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Const*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
ц
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterEnterjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
Щ
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid^gradients/Add_1*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ј
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^gradients/Sub_1*
	elem_type0*'
_output_shapes
:€€€€€€€€€@
Л
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnterjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
Й
dgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/SumSumdgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mulvgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¶
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/SumБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
р
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1MulRgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
П
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Sum_1Sumfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Sum_1Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
—
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
Ш
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1
€
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/ShapeShapeWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
T0*
out_type0*
_output_shapes
:
ь
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1ShapeRbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
_output_shapes
:*
T0*
out_type0
№
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape
≈
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape^gradients/Add_1*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
Ћ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
ѕ
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
б
Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
С
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/MulMul}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*'
_output_shapes
:€€€€€€€€€@*
T0
Ю
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*e
_class[
YWloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
dtype0*
_output_shapes
: 
Л
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Const*e
_class[
YWloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
ъ
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ъ
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterRbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh^gradients/Add_1*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
ƒ
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
П
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
П
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/SumSumfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mulxgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/SumГgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Х
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
•
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
dtype0*
_output_shapes
: 
Ф
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Const*j
_class`
^\loc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:*
	elem_type0
ю
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
£
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterWbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1^gradients/Add_1*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
»
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
У
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Х
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
≤
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
„
sgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape
†
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
х
gradients/AddN_18AddNWgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependency_1lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1_grad/TanhGrad*
T0*X
_classN
LJloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select_1*
N*'
_output_shapes
:€€€€€€€€€@
щ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/ShapeShapeQbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul*
out_type0*
_output_shapes
:*
T0
э
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1ShapeSbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1*
_output_shapes
:*
T0*
out_type0
№
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const*
	elem_type0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape*

stack_name *
_output_shapes
:
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape^gradients/Add_2*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
ѕ
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
б
Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ї
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/SumSumgradients/AddN_18xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/SumГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Њ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Sum_1Sumgradients/AddN_18zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
≤
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
„
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
†
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
ю
gradients/AddN_19AddNUgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/tuple/control_dependencyygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@*
T0
Я
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
•
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
Ъ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradTanhGradqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
’
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/ShapeShape/biLSTM/bidirectional_rnn/bw/bw/while/Identity_3*
T0*
out_type0*
_output_shapes
:
э
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1ShapeUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
T0*
out_type0*
_output_shapes
:
÷
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¬
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape*
dtype0*
_output_shapes
: 
њ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ъ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
¬
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
ў
Бgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
∞
Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1StackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Const_1*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1Enter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Л
dgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/MulMul{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependencyogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
Я
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*
dtype0*
_output_shapes
: 
К
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_accStackV2jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Const*h
_class^
\Zloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid*

stack_name *
_output_shapes
:*
	elem_type0
ц
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterEnterjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
Щ
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2StackPushV2jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/EnterUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
ј
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2
StackPopV2ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
Л
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2/EnterEnterjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Й
dgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/SumSumdgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mulvgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¶
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/SumБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
р
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1MulRgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
П
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Sum_1Sumfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul_1xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Sum_1Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPopV2_1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
—
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
Ш
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
€
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/ShapeShapeWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
T0*
out_type0*
_output_shapes
:
ь
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1ShapeRbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
_output_shapes
:*
T0*
out_type0
№
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
∆
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape*
dtype0*
_output_shapes
: 
≈
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_accStackV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape*

stack_name *
_output_shapes
:
Ю
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
»
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enterhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape^gradients/Add_2*
_output_shapes
:*
swap_memory( *
T0
Ё
Гgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
і
Йgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ћ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1Const*
valueB :
€€€€€€€€€*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1*
dtype0*
_output_shapes
: 
Ќ
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Const_1*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1*

stack_name *
_output_shapes
:*
	elem_type0
§
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1EnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
ѕ
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
б
Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
є
Лgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnterАgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
С
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/MulMul}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2*
T0*'
_output_shapes
:€€€€€€€€€@
Ю
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/ConstConst*
valueB :
€€€€€€€€€*e
_class[
YWloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*
dtype0*
_output_shapes
: 
Л
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_accStackV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Const*e
_class[
YWloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh*

stack_name *
_output_shapes
:*
	elem_type0
ъ
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ъ
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2StackPushV2lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/EnterRbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh^gradients/Add_2*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
ƒ
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2
StackPopV2wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
П
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2/EnterEnterlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
П
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/SumSumfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mulxgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ђ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/ReshapeReshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/SumГgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Х
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1Mulsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/tuple/control_dependency_1*'
_output_shapes
:€€€€€€€€€@*
T0
•
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/ConstConst*
valueB :
€€€€€€€€€*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*
dtype0*
_output_shapes
: 
Ф
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_accStackV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Const*
	elem_type0*j
_class`
^\loc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1*

stack_name *
_output_shapes
:
ю
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
£
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2StackPushV2ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/EnterWbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1^gradients/Add_2*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
»
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2
StackPopV2ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*'
_output_shapes
:€€€€€€€€€@
У
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2/EnterEnterngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Х
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Sum_1Sumhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
≤
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1Reshapehgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Sum_1Еgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
„
sgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshapem^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1
Ъ
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshapet^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape
†
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1t^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Reshape_1*'
_output_shapes
:€€€€€€€€€@
Ґ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3_grad_1/NextIterationNextIterationgradients/AddN_19*
T0*'
_output_shapes
:€€€€€€€€€@
ы
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ShapeShapeUbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
љ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1Const^gradients/Sub_1*
valueB *
dtype0*
_output_shapes
: 
Ї
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
¬
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*
dtype0
њ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Const*
	elem_type0*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*

stack_name *
_output_shapes
:
Ъ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
¬
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape^gradients/Add_1*
T0*
_output_shapes
:*
swap_memory( 
ў
Бgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*
_output_shapes
:*
	elem_type0
∞
Зgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Х
dgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumSumpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradvgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¶
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumБgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2*
T0*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Щ
fgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1Sumpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradxgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
—
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
З
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_deps*
_output_shapes
: *
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1
ю
gradients/AddN_20AddNUgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/tuple/control_dependencyygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@
Я
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
•
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€@
Ъ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradTanhGradqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€@
э
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatConcatV2rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradygradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/Const*(
_output_shapes
:€€€€€€€€€А*

Tidx0*
T0*
N
√
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
Ґ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3_grad_1/NextIterationNextIterationgradients/AddN_20*
T0*'
_output_shapes
:€€€€€€€€€@
ы
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ShapeShapeUbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:2*
T0*
out_type0*
_output_shapes
:
љ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1Const^gradients/Sub_2*
valueB *
dtype0*
_output_shapes
: 
Ї
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgsBroadcastGradientArgsБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
¬
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/ConstConst*
valueB :
€€€€€€€€€*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*
dtype0*
_output_shapes
: 
њ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_accStackV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Const*y
_classo
mkloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape*

stack_name *
_output_shapes
:*
	elem_type0
Ъ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0
¬
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2StackPushV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enterfgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape^gradients/Add_2*
T0*
_output_shapes
:*
swap_memory( 
ў
Бgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
_output_shapes
:*
	elem_type0
∞
Зgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Х
dgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumSumpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradvgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¶
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/ReshapeReshapedgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/SumБgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPopV2*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0*
Tshape0
Щ
fgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1Sumpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_grad/SigmoidGradxgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ц
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1Reshapefgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Sum_1hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
—
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_depsNoOpi^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshapek^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1
Т
ygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependencyIdentityhgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshaper^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*{
_classq
omloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape*'
_output_shapes
:€€€€€€€€€@
З
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependency_1Identityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1r^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Reshape_1*
_output_shapes
: 
І
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:А
№
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatq^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
Э
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatv^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat
°
gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identitypgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradv^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*Г
_classy
wuloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
э
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatConcatV2rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1_grad/SigmoidGradjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_grad/TanhGradygradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2_grad/SigmoidGradogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/Const*
T0*
N*(
_output_shapes
:€€€€€€€€€А*

Tidx0
√
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat/ConstConst^gradients/Sub_2*
value	B :*
dtype0*
_output_shapes
: 
Њ
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulMatMul}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul/Enter*
transpose_b(*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
п
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
њ
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1MatMulwgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
АА*
transpose_a(
¶
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
_output_shapes
: *
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat*
dtype0
Щ
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Const*

stack_name *
_output_shapes
:*
	elem_type0*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat
Ж
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnterrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
©
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterTbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat^gradients/Add_1*
T0*(
_output_shapes
:€€€€€€€€€А*
swap_memory( 
—
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_1*(
_output_shapes
:€€€€€€€€€А*
	elem_type0
Ы
}gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ў
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulm^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1
Э
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulu^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul
Ы
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_deps* 
_output_shapes
:
АА*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1
њ
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
П
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
is_constant( *
parallel_iterations *
_output_shapes	
:А*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
Ъ
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergergradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
_output_shapes
	:А: *
T0
±
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_6*
T0*"
_output_shapes
:А:А
С
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/AddAddsgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
Я
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:А*
T0
У
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
T0*
_output_shapes	
:А
І
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat*
T0*
data_formatNHWC*
_output_shapes	
:А
№
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatq^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad
Э
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concatv^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*(
_output_shapes
:€€€€€€€€€А*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split_grad/concat
°
gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1Identitypgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGradv^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/group_deps*
T0*Г
_classy
wuloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
љ
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConstConst^gradients/Sub_1*
dtype0*
_output_shapes
: *
value	B :
Љ
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/RankConst^gradients/Sub_1*
value	B :*
dtype0*
_output_shapes
: 
й
ggradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modFloorModigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Consthgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Rank*
T0*
_output_shapes
: 
я
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeShape6biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
Г
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeNShapeNugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Rgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPopV2*
T0*
out_type0*
N* 
_output_shapes
::
Ж
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
€€€€€€€€€*I
_class?
=;loc:@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3*
dtype0*
_output_shapes
: 
ч
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Const*

stack_name *
_output_shapes
:*
	elem_type0*I
_class?
=;loc:@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3
В
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/EnterEnterpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ж
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter6biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3^gradients/Add_1*'
_output_shapes
:€€€€€€€€€@*
swap_memory( *
T0
ћ
ugradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub_1*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
Ч
{gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
о
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetggradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeNlgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
Ц
igradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/SliceSlice|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetjgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ь
kgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1Slice|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset:1lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN:1*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
Index0*
T0
÷
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slicel^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1
Ъ
|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Sliceu^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_deps*'
_output_shapes
:€€€€€€€€€@*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice
†
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependency_1Identitykgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1u^gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1*'
_output_shapes
:€€€€€€€€€@
»
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
dtype0* 
_output_shapes
:
АА*
valueB
АА*    
Т
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enterogradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc*
T0*
is_constant( *
parallel_iterations * 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Ь
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Mergeqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
T0*
N*"
_output_shapes
:
АА: 
є
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_6*
T0*,
_output_shapes
:
АА:
АА
У
mgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/AddAddrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch:1~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1*
T0* 
_output_shapes
:
АА
Ґ
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationmgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Add* 
_output_shapes
:
АА*
T0
Ц
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exitpgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch*
T0* 
_output_shapes
:
АА
Њ
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulMatMul}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul/Enter*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(*
T0
п
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul/EnterEnterMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
њ
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1MatMulwgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
АА*
transpose_a(
¶
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/ConstConst*
valueB :
€€€€€€€€€*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat*
dtype0*
_output_shapes
: 
Щ
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_accStackV2rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Const*g
_class]
[Yloc:@biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat*

stack_name *
_output_shapes
:*
	elem_type0
Ж
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterEnterrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context
©
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/EnterTbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat^gradients/Add_2*(
_output_shapes
:€€€€€€€€€А*
swap_memory( *
T0
—
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*(
_output_shapes
:€€€€€€€€€А
Ы
}gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ў
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_depsNoOpk^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulm^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1
Э
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencyIdentityjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMulu^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*}
_classs
qoloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
Ы
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1Identitylgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/group_deps*
T0*
_classu
sqloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1* 
_output_shapes
:
АА
њ
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_accConst*
valueBА*    *
dtype0*
_output_shapes	
:А
П
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1Enterpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc*
_output_shapes	
:А*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 
Ъ
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2Mergergradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_1xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIteration*
N*
_output_shapes
	:А: *
T0
≤
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/SwitchSwitchrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_10*"
_output_shapes
:А:А*
T0
С
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/AddAddsgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch:1gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
Я
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Add*
_output_shapes	
:А*
T0
У
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3Exitqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/Switch*
_output_shapes	
:А*
T0
ф
ggradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3mgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enterogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub_1*
source	gradients*O
_classE
CAloc:@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
Ц
mgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,biLSTM/bidirectional_rnn/fw/fw/TensorArray_1*O
_classE
CAloc:@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context*
T0
Ѕ
ogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterYbiLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*O
_classE
CAloc:@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Љ
cgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityogradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1h^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
_output_shapes
: *
T0*O
_classE
CAloc:@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter
в
igradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3ggradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3tgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2|gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependencycgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Г
gradients/AddN_21AddNUgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/tuple/control_dependency~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependency_1*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@*
T0
љ
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConstConst^gradients/Sub_2*
value	B :*
dtype0*
_output_shapes
: 
Љ
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/RankConst^gradients/Sub_2*
value	B :*
dtype0*
_output_shapes
: 
й
ggradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modFloorModigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Consthgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Rank*
_output_shapes
: *
T0
я
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeShape6biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
_output_shapes
:*
T0*
out_type0
Г
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeNShapeNugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2Rgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPopV2*
out_type0*
N* 
_output_shapes
::*
T0
Ж
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/ConstConst*
valueB :
€€€€€€€€€*I
_class?
=;loc:@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3*
dtype0*
_output_shapes
: 
ч
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_accStackV2pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Const*

stack_name *
_output_shapes
:*
	elem_type0*I
_class?
=;loc:@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3
В
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/EnterEnterpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *
_output_shapes
:*B

frame_name42biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Ж
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter6biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3^gradients/Add_2*
T0*'
_output_shapes
:€€€€€€€€€@*
swap_memory( 
ћ
ugradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub_2*'
_output_shapes
:€€€€€€€€€@*
	elem_type0
Ч
{gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
о
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetConcatOffsetggradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/modjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeNlgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN:1*
N* 
_output_shapes
::
Ц
igradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/SliceSlice|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencypgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffsetjgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
Ь
kgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1Slice|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependencyrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ConcatOffset:1lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
÷
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_depsNoOpj^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slicel^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1
Ъ
|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependencyIdentityigradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Sliceu^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*|
_classr
pnloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice*'
_output_shapes
:€€€€€€€€€@
†
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependency_1Identitykgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1u^gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/group_deps*
T0*~
_classt
rploc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Slice_1*'
_output_shapes
:€€€€€€€€€@
»
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_accConst*
valueB
АА*    *
dtype0* 
_output_shapes
:
АА
Т
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1Enterogradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc*
parallel_iterations * 
_output_shapes
:
АА*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
Ь
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2Mergeqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_1wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIteration*
N*"
_output_shapes
:
АА: *
T0
Ї
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/SwitchSwitchqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_10*
T0*,
_output_shapes
:
АА:
АА
У
mgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/AddAddrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch:1~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/tuple/control_dependency_1* 
_output_shapes
:
АА*
T0
Ґ
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/NextIterationNextIterationmgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Add* 
_output_shapes
:
АА*
T0
Ц
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3Exitpgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/Switch* 
_output_shapes
:
АА*
T0
Ш
Sgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
–
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterSgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/fw/fw/while/while_context
Њ
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeUgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1[gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
_output_shapes
: : *
T0*
N
н
Tgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchUgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_6*
T0*
_output_shapes
: : 
Љ
Qgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/AddAddVgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch:1igradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
а
[gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationQgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*
_output_shapes
: 
‘
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitTgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*
_output_shapes
: 
Ґ
Lgradients/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4_grad_1/NextIterationNextIterationgradients/AddN_21*
T0*'
_output_shapes
:€€€€€€€€€@
ф
ggradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3mgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enterogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub_2*
source	gradients*O
_classE
CAloc:@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes

:: 
Ц
mgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnter,biLSTM/bidirectional_rnn/bw/bw/TensorArray_1*
T0*O
_classE
CAloc:@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
:*L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Ѕ
ogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1EnterYbiLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*O
_classE
CAloc:@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
parallel_iterations *
is_constant(*
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context
Љ
cgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityogradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1h^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*O
_classE
CAloc:@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter*
_output_shapes
: 
в
igradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3ggradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3tgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2|gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependencycgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*
_output_shapes
: 
Г
gradients/AddN_22AddNUgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/tuple/control_dependency~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/Select*
N*'
_output_shapes
:€€€€€€€€€@
Ы
Кgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,biLSTM/bidirectional_rnn/fw/fw/TensorArray_1Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray_1*
_output_shapes

:: 
Џ
Жgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityUgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Л^gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/fw/fw/TensorArray_1*
_output_shapes
: 
†
|gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3Кgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV37biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeЖgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
dtype0*
_output_shapes
:*
element_shape:
Ў
ygradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpV^gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3}^gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
№
Бgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentity|gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3z^gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*Т
_classЗ
ДБloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
T0
о
Гgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityUgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3z^gradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
T0*h
_class^
\Zloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
_output_shapes
: 
Ш
Sgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_accConst*
valueB
 *    *
dtype0*
_output_shapes
: 
–
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1EnterSgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc*
parallel_iterations *
_output_shapes
: *L

frame_name><gradients/biLSTM/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
Њ
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2MergeUgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_1[gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*
N*
_output_shapes
: : 
о
Tgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitchUgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_10*
_output_shapes
: : *
T0
Љ
Qgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/AddAddVgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch:1igradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
а
[gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIterationQgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Add*
_output_shapes
: *
T0
‘
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3ExitTgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/Switch*
_output_shapes
: *
T0
Ґ
Lgradients/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4_grad_1/NextIterationNextIterationgradients/AddN_22*
T0*'
_output_shapes
:€€€€€€€€€@
Ы
Кgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3,biLSTM/bidirectional_rnn/bw/bw/TensorArray_1Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*
source	gradients*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray_1*
_output_shapes

:: 
Џ
Жgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentityUgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Л^gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*?
_class5
31loc:@biLSTM/bidirectional_rnn/bw/bw/TensorArray_1*
_output_shapes
: 
†
|gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3Кgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV37biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeЖgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*
dtype0*
_output_shapes
:
Ў
ygradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_depsNoOpV^gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3}^gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
№
Бgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIdentity|gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3z^gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
T0*Т
_classЗ
ДБloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3
о
Гgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependency_1IdentityUgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3z^gradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/group_deps*
_output_shapes
: *
T0*h
_class^
\Zloc:@gradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1_grad/b_acc_3
™
Igradients/biLSTM/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutationInvertPermutation%biLSTM/bidirectional_rnn/fw/fw/concat*
T0*
_output_shapes
:
й
Agradients/biLSTM/bidirectional_rnn/fw/fw/transpose_grad/transpose	TransposeБgradients/biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIgradients/biLSTM/bidirectional_rnn/fw/fw/transpose_grad/InvertPermutation*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0
™
Igradients/biLSTM/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutationInvertPermutation%biLSTM/bidirectional_rnn/bw/bw/concat*
T0*
_output_shapes
:
й
Agradients/biLSTM/bidirectional_rnn/bw/bw/transpose_grad/transpose	TransposeБgradients/biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/tuple/control_dependencyIgradients/biLSTM/bidirectional_rnn/bw/bw/transpose_grad/InvertPermutation*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
Tperm0
Ч
Jgradients/biLSTM/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequenceReverseSequenceAgradients/biLSTM/bidirectional_rnn/bw/bw/transpose_grad/transpose
inputs/Sum*
	batch_dim *
T0*
seq_dim*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*

Tlen0
∆
gradients/AddN_23AddNAgradients/biLSTM/bidirectional_rnn/fw/fw/transpose_grad/transposeJgradients/biLSTM/bidirectional_rnn/bw/ReverseSequence_grad/ReverseSequence*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€@*
T0*T
_classJ
HFloc:@gradients/biLSTM/bidirectional_rnn/fw/fw/transpose_grad/transpose*
N
©
,gradients/inputs/embedding_lookup_grad/ShapeConst*%
valueB	"N      @       *"
_class
loc:@inputs/Variable*
dtype0	*
_output_shapes
:
Љ
.gradients/inputs/embedding_lookup_grad/ToInt32Cast,gradients/inputs/embedding_lookup_grad/Shape*

SrcT0	*"
_class
loc:@inputs/Variable*
_output_shapes
:*

DstT0
s
+gradients/inputs/embedding_lookup_grad/SizeSizePlaceholder_1*
out_type0*
_output_shapes
: *
T0
w
5gradients/inputs/embedding_lookup_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
‘
1gradients/inputs/embedding_lookup_grad/ExpandDims
ExpandDims+gradients/inputs/embedding_lookup_grad/Size5gradients/inputs/embedding_lookup_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
Д
:gradients/inputs/embedding_lookup_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ж
<gradients/inputs/embedding_lookup_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
Ж
<gradients/inputs/embedding_lookup_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¬
4gradients/inputs/embedding_lookup_grad/strided_sliceStridedSlice.gradients/inputs/embedding_lookup_grad/ToInt32:gradients/inputs/embedding_lookup_grad/strided_slice/stack<gradients/inputs/embedding_lookup_grad/strided_slice/stack_1<gradients/inputs/embedding_lookup_grad/strided_slice/stack_2*
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask 
t
2gradients/inputs/embedding_lookup_grad/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Р
-gradients/inputs/embedding_lookup_grad/concatConcatV21gradients/inputs/embedding_lookup_grad/ExpandDims4gradients/inputs/embedding_lookup_grad/strided_slice2gradients/inputs/embedding_lookup_grad/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
ї
.gradients/inputs/embedding_lookup_grad/ReshapeReshapegradients/AddN_23-gradients/inputs/embedding_lookup_grad/concat*'
_output_shapes
:€€€€€€€€€@*
T0*
Tshape0
є
0gradients/inputs/embedding_lookup_grad/Reshape_1ReshapePlaceholder_11gradients/inputs/embedding_lookup_grad/ExpandDims*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
є
beta1_power/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0
 
beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape: 
й
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(
•
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
є
beta2_power/initial_valueConst*
valueB
 *wЊ?*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
 
beta2_power
VariableV2*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
й
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
•
beta2_power/readIdentitybeta2_power*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes
: 
Ђ
6inputs/Variable/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"N  @   *"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
:
Х
,inputs/Variable/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
: 
ф
&inputs/Variable/Adam/Initializer/zerosFill6inputs/Variable/Adam/Initializer/zeros/shape_as_tensor,inputs/Variable/Adam/Initializer/zeros/Const*
_output_shapes
:	ќ$@*
T0*

index_type0*"
_class
loc:@inputs/Variable
Ѓ
inputs/Variable/Adam
VariableV2*
dtype0*
_output_shapes
:	ќ$@*
shared_name *"
_class
loc:@inputs/Variable*
	container *
shape:	ќ$@
Џ
inputs/Variable/Adam/AssignAssigninputs/Variable/Adam&inputs/Variable/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@
Й
inputs/Variable/Adam/readIdentityinputs/Variable/Adam*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
≠
8inputs/Variable/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"N  @   *"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
:
Ч
.inputs/Variable/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
: 
ъ
(inputs/Variable/Adam_1/Initializer/zerosFill8inputs/Variable/Adam_1/Initializer/zeros/shape_as_tensor.inputs/Variable/Adam_1/Initializer/zeros/Const*
_output_shapes
:	ќ$@*
T0*

index_type0*"
_class
loc:@inputs/Variable
∞
inputs/Variable/Adam_1
VariableV2*
	container *
shape:	ќ$@*
dtype0*
_output_shapes
:	ќ$@*
shared_name *"
_class
loc:@inputs/Variable
а
inputs/Variable/Adam_1/AssignAssigninputs/Variable/Adam_1(inputs/Variable/Adam_1/Initializer/zeros*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@*
use_locking(
Н
inputs/Variable/Adam_1/readIdentityinputs/Variable/Adam_1*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
ѓ
8inputs/Variable_1/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"А      *$
_class
loc:@inputs/Variable_1*
dtype0
Щ
.inputs/Variable_1/Adam/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@inputs/Variable_1*
dtype0*
_output_shapes
: 
ь
(inputs/Variable_1/Adam/Initializer/zerosFill8inputs/Variable_1/Adam/Initializer/zeros/shape_as_tensor.inputs/Variable_1/Adam/Initializer/zeros/Const*

index_type0*$
_class
loc:@inputs/Variable_1*
_output_shapes
:	А*
T0
≤
inputs/Variable_1/Adam
VariableV2*
shared_name *$
_class
loc:@inputs/Variable_1*
	container *
shape:	А*
dtype0*
_output_shapes
:	А
в
inputs/Variable_1/Adam/AssignAssigninputs/Variable_1/Adam(inputs/Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А
П
inputs/Variable_1/Adam/readIdentityinputs/Variable_1/Adam*
T0*$
_class
loc:@inputs/Variable_1*
_output_shapes
:	А
±
:inputs/Variable_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"А      *$
_class
loc:@inputs/Variable_1*
dtype0*
_output_shapes
:
Ы
0inputs/Variable_1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@inputs/Variable_1*
dtype0*
_output_shapes
: 
В
*inputs/Variable_1/Adam_1/Initializer/zerosFill:inputs/Variable_1/Adam_1/Initializer/zeros/shape_as_tensor0inputs/Variable_1/Adam_1/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@inputs/Variable_1*
_output_shapes
:	А
і
inputs/Variable_1/Adam_1
VariableV2*
shared_name *$
_class
loc:@inputs/Variable_1*
	container *
shape:	А*
dtype0*
_output_shapes
:	А
и
inputs/Variable_1/Adam_1/AssignAssigninputs/Variable_1/Adam_1*inputs/Variable_1/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0*$
_class
loc:@inputs/Variable_1
У
inputs/Variable_1/Adam_1/readIdentityinputs/Variable_1/Adam_1*
T0*$
_class
loc:@inputs/Variable_1*
_output_shapes
:	А
®
8inputs/Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*$
_class
loc:@inputs/Variable_2*
dtype0*
_output_shapes
:
Щ
.inputs/Variable_2/Adam/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@inputs/Variable_2*
dtype0*
_output_shapes
: 
ч
(inputs/Variable_2/Adam/Initializer/zerosFill8inputs/Variable_2/Adam/Initializer/zeros/shape_as_tensor.inputs/Variable_2/Adam/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@inputs/Variable_2*
_output_shapes
:
®
inputs/Variable_2/Adam
VariableV2*
shared_name *$
_class
loc:@inputs/Variable_2*
	container *
shape:*
dtype0*
_output_shapes
:
Ё
inputs/Variable_2/Adam/AssignAssigninputs/Variable_2/Adam(inputs/Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:
К
inputs/Variable_2/Adam/readIdentityinputs/Variable_2/Adam*$
_class
loc:@inputs/Variable_2*
_output_shapes
:*
T0
™
:inputs/Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*$
_class
loc:@inputs/Variable_2*
dtype0*
_output_shapes
:
Ы
0inputs/Variable_2/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@inputs/Variable_2*
dtype0*
_output_shapes
: 
э
*inputs/Variable_2/Adam_1/Initializer/zerosFill:inputs/Variable_2/Adam_1/Initializer/zeros/shape_as_tensor0inputs/Variable_2/Adam_1/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@inputs/Variable_2*
_output_shapes
:
™
inputs/Variable_2/Adam_1
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *$
_class
loc:@inputs/Variable_2
г
inputs/Variable_2/Adam_1/AssignAssigninputs/Variable_2/Adam_1*inputs/Variable_2/Adam_1/Initializer/zeros*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(
О
inputs/Variable_2/Adam_1/readIdentityinputs/Variable_2/Adam_1*
_output_shapes
:*
T0*$
_class
loc:@inputs/Variable_2
Э
obiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
З
ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
ў
_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zerosFillobiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Ґ
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam
VariableV2*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name 
њ
TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignAssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
µ
RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/readIdentityMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Я
qbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
Й
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
я
abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillqbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const* 
_output_shapes
:
АА*
T0*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
§
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1
VariableV2*
dtype0* 
_output_shapes
:
АА*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
АА
≈
VbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignAssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
є
TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/readIdentityObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
У
mbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0
Г
cbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
ћ
]biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zerosFillmbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorcbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Ф
KbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container 
≤
RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignAssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam]biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
™
PbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/readIdentityKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А*
T0
Х
obiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
Е
ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
“
_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zerosFillobiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Ц
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1
VariableV2*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Є
TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignAssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(
Ѓ
RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/readIdentityMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Э
obiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0
З
ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
ў
_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zerosFillobiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Ґ
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam
VariableV2*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name 
њ
TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/AssignAssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
µ
RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/readIdentityMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam* 
_output_shapes
:
АА*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
Я
qbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
Й
gbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
я
abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillqbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorgbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
§
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
≈
VbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/AssignAssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
є
TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/readIdentityObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
У
mbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
Г
cbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
ћ
]biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zerosFillmbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorcbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
Ф
KbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
	container *
shape:А
≤
RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/AssignAssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam]biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
™
PbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/readIdentityKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam*
_output_shapes	
:А*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
Х
obiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
Е
ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
“
_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zerosFillobiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
Ц
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1
VariableV2*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Є
TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/AssignAssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
Ѓ
RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/readIdentityMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1*
_output_shapes	
:А*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
Э
obiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
З
ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
ў
_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zerosFillobiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА*
T0
Ґ
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam
VariableV2*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
њ
TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignAssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
µ
RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/readIdentityMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Я
qbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
Й
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
я
abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillqbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
§
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1
VariableV2*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name 
≈
VbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignAssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
є
TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/readIdentityObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel* 
_output_shapes
:
АА
У
mbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
Г
cbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
ћ
]biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zerosFillmbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorcbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Ф
KbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
≤
RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignAssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam]biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
™
PbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/readIdentityKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam*
_output_shapes	
:А*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
Х
obiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
dtype0
Е
ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
“
_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zerosFillobiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Ц
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1
VariableV2*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
Є
TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignAssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
Ѓ
RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/readIdentityMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes	
:А
Э
obiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
З
ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
ў
_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zerosFillobiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Ґ
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam
VariableV2*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
њ
TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/AssignAssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(
µ
RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/readIdentityMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
Я
qbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"А      *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
:
Й
gbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
dtype0*
_output_shapes
: 
я
abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zerosFillqbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/shape_as_tensorgbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА
§
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1
VariableV2*
shared_name *[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
	container *
shape:
АА*
dtype0* 
_output_shapes
:
АА
≈
VbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/AssignAssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0
є
TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/readIdentityObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel* 
_output_shapes
:
АА*
T0
У
mbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
Г
cbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
ћ
]biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zerosFillmbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/shape_as_tensorcbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
Ф
KbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
≤
RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/AssignAssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam]biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
™
PbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/readIdentityKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А*
T0
Х
obiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:А*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
:
Е
ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
dtype0*
_output_shapes
: 
“
_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zerosFillobiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/shape_as_tensorebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
Ц
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1
VariableV2*
shared_name *Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Є
TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/AssignAssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(
Ѓ
RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/readIdentityMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
_output_shapes	
:А
£
2transitions/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@transitions*
dtype0*
_output_shapes
:
Н
(transitions/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@transitions*
dtype0*
_output_shapes
: 
г
"transitions/Adam/Initializer/zerosFill2transitions/Adam/Initializer/zeros/shape_as_tensor(transitions/Adam/Initializer/zeros/Const*

index_type0*
_class
loc:@transitions*
_output_shapes

:*
T0
§
transitions/Adam
VariableV2*
shared_name *
_class
loc:@transitions*
	container *
shape
:*
dtype0*
_output_shapes

:
…
transitions/Adam/AssignAssigntransitions/Adam"transitions/Adam/Initializer/zeros*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:*
use_locking(
|
transitions/Adam/readIdentitytransitions/Adam*
T0*
_class
loc:@transitions*
_output_shapes

:
•
4transitions/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@transitions*
dtype0*
_output_shapes
:
П
*transitions/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@transitions*
dtype0*
_output_shapes
: 
й
$transitions/Adam_1/Initializer/zerosFill4transitions/Adam_1/Initializer/zeros/shape_as_tensor*transitions/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@transitions*
_output_shapes

:
¶
transitions/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name *
_class
loc:@transitions*
	container *
shape
:
ѕ
transitions/Adam_1/AssignAssigntransitions/Adam_1$transitions/Adam_1/Initializer/zeros*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(
А
transitions/Adam_1/readIdentitytransitions/Adam_1*
T0*
_class
loc:@transitions*
_output_shapes

:
W
Adam/learning_rateConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
_output_shapes
: *
valueB
 *fff?*
dtype0
O

Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
ќ
"Adam/update_inputs/Variable/UniqueUnique0gradients/inputs/embedding_lookup_grad/Reshape_1*
out_idx0*
T0*"
_class
loc:@inputs/Variable*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
І
!Adam/update_inputs/Variable/ShapeShape"Adam/update_inputs/Variable/Unique*
T0*
out_type0*"
_class
loc:@inputs/Variable*
_output_shapes
:
Э
/Adam/update_inputs/Variable/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: *"
_class
loc:@inputs/Variable
Я
1Adam/update_inputs/Variable/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*"
_class
loc:@inputs/Variable*
dtype0
Я
1Adam/update_inputs/Variable/strided_slice/stack_2Const*
valueB:*"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
:
©
)Adam/update_inputs/Variable/strided_sliceStridedSlice!Adam/update_inputs/Variable/Shape/Adam/update_inputs/Variable/strided_slice/stack1Adam/update_inputs/Variable/strided_slice/stack_11Adam/update_inputs/Variable/strided_slice/stack_2*
T0*
Index0*"
_class
loc:@inputs/Variable*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
њ
.Adam/update_inputs/Variable/UnsortedSegmentSumUnsortedSegmentSum.gradients/inputs/embedding_lookup_grad/Reshape$Adam/update_inputs/Variable/Unique:1)Adam/update_inputs/Variable/strided_slice*'
_output_shapes
:€€€€€€€€€@*
Tnumsegments0*
Tindices0*
T0*"
_class
loc:@inputs/Variable
К
!Adam/update_inputs/Variable/sub/xConst*
valueB
 *  А?*"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
: 
†
Adam/update_inputs/Variable/subSub!Adam/update_inputs/Variable/sub/xbeta2_power/read*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
: 
О
 Adam/update_inputs/Variable/SqrtSqrtAdam/update_inputs/Variable/sub*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
: 
°
Adam/update_inputs/Variable/mulMulAdam/learning_rate Adam/update_inputs/Variable/Sqrt*
_output_shapes
: *
T0*"
_class
loc:@inputs/Variable
М
#Adam/update_inputs/Variable/sub_1/xConst*
valueB
 *  А?*"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
: 
§
!Adam/update_inputs/Variable/sub_1Sub#Adam/update_inputs/Variable/sub_1/xbeta1_power/read*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
: 
Ј
#Adam/update_inputs/Variable/truedivRealDivAdam/update_inputs/Variable/mul!Adam/update_inputs/Variable/sub_1*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
: 
М
#Adam/update_inputs/Variable/sub_2/xConst*
valueB
 *  А?*"
_class
loc:@inputs/Variable*
dtype0*
_output_shapes
: 
Ю
!Adam/update_inputs/Variable/sub_2Sub#Adam/update_inputs/Variable/sub_2/x
Adam/beta1*"
_class
loc:@inputs/Variable*
_output_shapes
: *
T0
—
!Adam/update_inputs/Variable/mul_1Mul.Adam/update_inputs/Variable/UnsortedSegmentSum!Adam/update_inputs/Variable/sub_2*'
_output_shapes
:€€€€€€€€€@*
T0*"
_class
loc:@inputs/Variable
Э
!Adam/update_inputs/Variable/mul_2Mulinputs/Variable/Adam/read
Adam/beta1*
_output_shapes
:	ќ$@*
T0*"
_class
loc:@inputs/Variable
№
"Adam/update_inputs/Variable/AssignAssigninputs/Variable/Adam!Adam/update_inputs/Variable/mul_2*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@*
use_locking( 
І
&Adam/update_inputs/Variable/ScatterAdd
ScatterAddinputs/Variable/Adam"Adam/update_inputs/Variable/Unique!Adam/update_inputs/Variable/mul_1#^Adam/update_inputs/Variable/Assign*
use_locking( *
Tindices0*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
ё
!Adam/update_inputs/Variable/mul_3Mul.Adam/update_inputs/Variable/UnsortedSegmentSum.Adam/update_inputs/Variable/UnsortedSegmentSum*
T0*"
_class
loc:@inputs/Variable*'
_output_shapes
:€€€€€€€€€@
М
#Adam/update_inputs/Variable/sub_3/xConst*
_output_shapes
: *
valueB
 *  А?*"
_class
loc:@inputs/Variable*
dtype0
Ю
!Adam/update_inputs/Variable/sub_3Sub#Adam/update_inputs/Variable/sub_3/x
Adam/beta2*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
: 
ƒ
!Adam/update_inputs/Variable/mul_4Mul!Adam/update_inputs/Variable/mul_3!Adam/update_inputs/Variable/sub_3*"
_class
loc:@inputs/Variable*'
_output_shapes
:€€€€€€€€€@*
T0
Я
!Adam/update_inputs/Variable/mul_5Mulinputs/Variable/Adam_1/read
Adam/beta2*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
а
$Adam/update_inputs/Variable/Assign_1Assigninputs/Variable/Adam_1!Adam/update_inputs/Variable/mul_5*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@*
use_locking( *
T0
≠
(Adam/update_inputs/Variable/ScatterAdd_1
ScatterAddinputs/Variable/Adam_1"Adam/update_inputs/Variable/Unique!Adam/update_inputs/Variable/mul_4%^Adam/update_inputs/Variable/Assign_1*
use_locking( *
Tindices0*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
Ґ
"Adam/update_inputs/Variable/Sqrt_1Sqrt(Adam/update_inputs/Variable/ScatterAdd_1*
_output_shapes
:	ќ$@*
T0*"
_class
loc:@inputs/Variable
√
!Adam/update_inputs/Variable/mul_6Mul#Adam/update_inputs/Variable/truediv&Adam/update_inputs/Variable/ScatterAdd*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
¶
Adam/update_inputs/Variable/addAdd"Adam/update_inputs/Variable/Sqrt_1Adam/epsilon*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@*
T0
¬
%Adam/update_inputs/Variable/truediv_1RealDiv!Adam/update_inputs/Variable/mul_6Adam/update_inputs/Variable/add*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@
Ћ
%Adam/update_inputs/Variable/AssignSub	AssignSubinputs/Variable%Adam/update_inputs/Variable/truediv_1*
T0*"
_class
loc:@inputs/Variable*
_output_shapes
:	ќ$@*
use_locking( 
ќ
&Adam/update_inputs/Variable/group_depsNoOp&^Adam/update_inputs/Variable/AssignSub'^Adam/update_inputs/Variable/ScatterAdd)^Adam/update_inputs/Variable/ScatterAdd_1*"
_class
loc:@inputs/Variable
А
'Adam/update_inputs/Variable_1/ApplyAdam	ApplyAdaminputs/Variable_1inputs/Variable_1/Adaminputs/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*$
_class
loc:@inputs/Variable_1*
use_nesterov( *
_output_shapes
:	А
ш
'Adam/update_inputs/Variable_2/ApplyAdam	ApplyAdaminputs/Variable_2inputs/Variable_2/Adaminputs/Variable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
_output_shapes
:*
use_locking( *
T0*$
_class
loc:@inputs/Variable_2*
use_nesterov( 
’
^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam	ApplyAdamHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
АА*
use_locking( *
T0
«
\Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam	ApplyAdamFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
use_nesterov( *
_output_shapes	
:А
’
^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam	ApplyAdamHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonqgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
АА*
use_locking( 
«
\Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam	ApplyAdamFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonrgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
_output_shapes	
:А*
use_locking( *
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
use_nesterov( 
’
^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam	ApplyAdamHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
АА*
use_locking( 
«
\Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam	ApplyAdamFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
use_nesterov( *
_output_shapes	
:А
’
^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam	ApplyAdamHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonqgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter_grad/b_acc_3*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
use_nesterov( * 
_output_shapes
:
АА*
use_locking( *
T0
«
\Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam	ApplyAdamFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonrgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter_grad/b_acc_3*
use_locking( *
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
use_nesterov( *
_output_shapes	
:А
Ѕ
!Adam/update_transitions/ApplyAdam	ApplyAdamtransitionstransitions/Adamtransitions/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_5*
use_locking( *
T0*
_class
loc:@transitions*
use_nesterov( *
_output_shapes

:
 
Adam/mulMulbeta1_power/read
Adam/beta1'^Adam/update_inputs/Variable/group_deps(^Adam/update_inputs/Variable_1/ApplyAdam(^Adam/update_inputs/Variable_2/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam"^Adam/update_transitions/ApplyAdam*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes
: 
—
Adam/AssignAssignbeta1_powerAdam/mul*
_output_shapes
: *
use_locking( *
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(
ћ

Adam/mul_1Mulbeta2_power/read
Adam/beta2'^Adam/update_inputs/Variable/group_deps(^Adam/update_inputs/Variable_1/ApplyAdam(^Adam/update_inputs/Variable_2/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam"^Adam/update_transitions/ApplyAdam*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
_output_shapes
: 
’
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
“
Adam/updateNoOp'^Adam/update_inputs/Variable/group_deps(^Adam/update_inputs/Variable_1/ApplyAdam(^Adam/update_inputs/Variable_2/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/ApplyAdam_^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/ApplyAdam]^Adam/update_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/ApplyAdam"^Adam/update_transitions/ApplyAdam^Adam/Assign^Adam/Assign_1
z

Adam/valueConst^Adam/update*
value	B :*
_class
loc:@global_step*
dtype0*
_output_shapes
: 
~
Adam	AssignAddglobal_step
Adam/value*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@global_step
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
љ
save/SaveV2/tensor_namesConst*
_output_shapes
:'*р
valueжBг'Bbeta1_powerBbeta2_powerBFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Bglobal_stepBinputs/VariableBinputs/Variable/AdamBinputs/Variable/Adam_1Binputs/Variable_1Binputs/Variable_1/AdamBinputs/Variable_1/Adam_1Binputs/Variable_2Binputs/Variable_2/AdamBinputs/Variable_2/Adam_1BtransitionsBtransitions/AdamBtransitions/Adam_1*
dtype0
±
save/SaveV2/shape_and_slicesConst*
_output_shapes
:'*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
л
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1global_stepinputs/Variableinputs/Variable/Adaminputs/Variable/Adam_1inputs/Variable_1inputs/Variable_1/Adaminputs/Variable_1/Adam_1inputs/Variable_2inputs/Variable_2/Adaminputs/Variable_2/Adam_1transitionstransitions/Adamtransitions/Adam_1*5
dtypes+
)2'
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
ѕ
save/RestoreV2/tensor_namesConst"/device:CPU:0*р
valueжBг'Bbeta1_powerBbeta2_powerBFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Bglobal_stepBinputs/VariableBinputs/Variable/AdamBinputs/Variable/Adam_1Binputs/Variable_1Binputs/Variable_1/AdamBinputs/Variable_1/Adam_1Binputs/Variable_2Binputs/Variable_2/AdamBinputs/Variable_2/Adam_1BtransitionsBtransitions/AdamBtransitions/Adam_1*
dtype0*
_output_shapes
:'
√
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
а
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*≤
_output_shapesЯ
Ь:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'
„
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
џ
save/Assign_1Assignbeta2_powersave/RestoreV2:1*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ы
save/Assign_2AssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biassave/RestoreV2:2*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
†
save/Assign_3AssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave/RestoreV2:3*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
Ґ
save/Assign_4AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save/RestoreV2:4*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
§
save/Assign_5AssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave/RestoreV2:5*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
©
save/Assign_6AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave/RestoreV2:6*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
Ђ
save/Assign_7AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save/RestoreV2:7* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(
Ы
save/Assign_8AssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biassave/RestoreV2:8*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
†
save/Assign_9AssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave/RestoreV2:9*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
§
save/Assign_10AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
¶
save/Assign_11AssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave/RestoreV2:11* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(
Ђ
save/Assign_12AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave/RestoreV2:12*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
≠
save/Assign_13AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save/RestoreV2:13*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
Э
save/Assign_14AssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biassave/RestoreV2:14*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
Ґ
save/Assign_15AssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave/RestoreV2:15*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
§
save/Assign_16AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save/RestoreV2:16*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
¶
save/Assign_17AssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave/RestoreV2:17*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
Ђ
save/Assign_18AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave/RestoreV2:18*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
≠
save/Assign_19AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save/RestoreV2:19*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel
Э
save/Assign_20AssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biassave/RestoreV2:20*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ґ
save/Assign_21AssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave/RestoreV2:21*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
§
save/Assign_22AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save/RestoreV2:22*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
¶
save/Assign_23AssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave/RestoreV2:23*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
Ђ
save/Assign_24AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave/RestoreV2:24*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0
≠
save/Assign_25AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save/RestoreV2:25*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
Ґ
save/Assign_26Assignglobal_stepsave/RestoreV2:26*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
≥
save/Assign_27Assigninputs/Variablesave/RestoreV2:27*
use_locking(*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@
Є
save/Assign_28Assigninputs/Variable/Adamsave/RestoreV2:28*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@*
use_locking(*
T0
Ї
save/Assign_29Assigninputs/Variable/Adam_1save/RestoreV2:29*
use_locking(*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@
Ј
save/Assign_30Assigninputs/Variable_1save/RestoreV2:30*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А*
use_locking(
Љ
save/Assign_31Assigninputs/Variable_1/Adamsave/RestoreV2:31*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0
Њ
save/Assign_32Assigninputs/Variable_1/Adam_1save/RestoreV2:32*
use_locking(*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А
≤
save/Assign_33Assigninputs/Variable_2save/RestoreV2:33*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ј
save/Assign_34Assigninputs/Variable_2/Adamsave/RestoreV2:34*
use_locking(*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:
є
save/Assign_35Assigninputs/Variable_2/Adam_1save/RestoreV2:35*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(
™
save/Assign_36Assigntransitionssave/RestoreV2:36*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(
ѓ
save/Assign_37Assigntransitions/Adamsave/RestoreV2:37*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:*
use_locking(
±
save/Assign_38Assigntransitions/Adam_1save/RestoreV2:38*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:*
use_locking(
£
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38
Я
initNoOp^global_step/Assign^inputs/Variable/Assign^inputs/Variable_1/Assign^inputs/Variable_2/AssignP^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignN^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignP^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignN^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignP^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignN^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignP^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignN^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Assign^transitions/Assign^beta1_power/Assign^beta2_power/Assign^inputs/Variable/Adam/Assign^inputs/Variable/Adam_1/Assign^inputs/Variable_1/Adam/Assign ^inputs/Variable_1/Adam_1/Assign^inputs/Variable_2/Adam/Assign ^inputs/Variable_2/Adam_1/AssignU^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignW^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignS^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignU^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignU^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/AssignW^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/AssignS^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/AssignU^biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/AssignU^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignW^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignS^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignU^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignU^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/AssignW^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/AssignS^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/AssignU^biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Assign^transitions/Adam/Assign^transitions/Adam_1/Assign
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
њ
save_1/SaveV2/tensor_namesConst*р
valueжBг'Bbeta1_powerBbeta2_powerBFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Bglobal_stepBinputs/VariableBinputs/Variable/AdamBinputs/Variable/Adam_1Binputs/Variable_1Binputs/Variable_1/AdamBinputs/Variable_1/Adam_1Binputs/Variable_2Binputs/Variable_2/AdamBinputs/Variable_2/Adam_1BtransitionsBtransitions/AdamBtransitions/Adam_1*
dtype0*
_output_shapes
:'
≥
save_1/SaveV2/shape_and_slicesConst*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
у
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1global_stepinputs/Variableinputs/Variable/Adaminputs/Variable/Adam_1inputs/Variable_1inputs/Variable_1/Adaminputs/Variable_1/Adam_1inputs/Variable_2inputs/Variable_2/Adaminputs/Variable_2/Adam_1transitionstransitions/Adamtransitions/Adam_1*5
dtypes+
)2'
Е
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
—
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*р
valueжBг'Bbeta1_powerBbeta2_powerBFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Bglobal_stepBinputs/VariableBinputs/Variable/AdamBinputs/Variable/Adam_1Binputs/Variable_1Binputs/Variable_1/AdamBinputs/Variable_1/Adam_1Binputs/Variable_2Binputs/Variable_2/AdamBinputs/Variable_2/Adam_1BtransitionsBtransitions/AdamBtransitions/Adam_1*
dtype0*
_output_shapes
:'
≈
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
и
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*5
dtypes+
)2'*≤
_output_shapesЯ
Ь:::::::::::::::::::::::::::::::::::::::
џ
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
я
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: 
Я
save_1/Assign_2AssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biassave_1/RestoreV2:2*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
§
save_1/Assign_3AssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave_1/RestoreV2:3*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
¶
save_1/Assign_4AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save_1/RestoreV2:4*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias
®
save_1/Assign_5AssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave_1/RestoreV2:5*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
≠
save_1/Assign_6AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave_1/RestoreV2:6*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
ѓ
save_1/Assign_7AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:7*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
Я
save_1/Assign_8AssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biassave_1/RestoreV2:8*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
§
save_1/Assign_9AssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave_1/RestoreV2:9*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
®
save_1/Assign_10AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save_1/RestoreV2:10*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(
™
save_1/Assign_11AssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave_1/RestoreV2:11*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel
ѓ
save_1/Assign_12AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave_1/RestoreV2:12* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(
±
save_1/Assign_13AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:13* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(
°
save_1/Assign_14AssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biassave_1/RestoreV2:14*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
¶
save_1/Assign_15AssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave_1/RestoreV2:15*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
®
save_1/Assign_16AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save_1/RestoreV2:16*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
™
save_1/Assign_17AssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave_1/RestoreV2:17*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
ѓ
save_1/Assign_18AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave_1/RestoreV2:18*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(*
T0
±
save_1/Assign_19AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:19*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
°
save_1/Assign_20AssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biassave_1/RestoreV2:20*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
¶
save_1/Assign_21AssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave_1/RestoreV2:21*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
®
save_1/Assign_22AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save_1/RestoreV2:22*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
™
save_1/Assign_23AssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave_1/RestoreV2:23*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
ѓ
save_1/Assign_24AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave_1/RestoreV2:24*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
±
save_1/Assign_25AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save_1/RestoreV2:25*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
¶
save_1/Assign_26Assignglobal_stepsave_1/RestoreV2:26*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ј
save_1/Assign_27Assigninputs/Variablesave_1/RestoreV2:27*
use_locking(*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@
Љ
save_1/Assign_28Assigninputs/Variable/Adamsave_1/RestoreV2:28*
use_locking(*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@
Њ
save_1/Assign_29Assigninputs/Variable/Adam_1save_1/RestoreV2:29*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@*
use_locking(
ї
save_1/Assign_30Assigninputs/Variable_1save_1/RestoreV2:30*
use_locking(*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А
ј
save_1/Assign_31Assigninputs/Variable_1/Adamsave_1/RestoreV2:31*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0
¬
save_1/Assign_32Assigninputs/Variable_1/Adam_1save_1/RestoreV2:32*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А*
use_locking(
ґ
save_1/Assign_33Assigninputs/Variable_2save_1/RestoreV2:33*
use_locking(*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:
ї
save_1/Assign_34Assigninputs/Variable_2/Adamsave_1/RestoreV2:34*
use_locking(*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:
љ
save_1/Assign_35Assigninputs/Variable_2/Adam_1save_1/RestoreV2:35*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*$
_class
loc:@inputs/Variable_2
Ѓ
save_1/Assign_36Assigntransitionssave_1/RestoreV2:36*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:
≥
save_1/Assign_37Assigntransitions/Adamsave_1/RestoreV2:37*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(
µ
save_1/Assign_38Assigntransitions/Adam_1save_1/RestoreV2:38*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*
_class
loc:@transitions
у
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ж
save_2/StringJoin/inputs_1Const*<
value3B1 B+_temp_5217c2b3f3ff4f0cb3eff014fe0af39d/part*
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
m
save_2/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ф
save_2/ShardedFilenameShardedFilenamesave_2/StringJoinsave_2/ShardedFilename/shardsave_2/num_shards"/device:CPU:0*
_output_shapes
: 
ќ
save_2/SaveV2/tensor_namesConst"/device:CPU:0*р
valueжBг'Bbeta1_powerBbeta2_powerBFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Bglobal_stepBinputs/VariableBinputs/Variable/AdamBinputs/Variable/Adam_1Binputs/Variable_1Binputs/Variable_1/AdamBinputs/Variable_1/Adam_1Binputs/Variable_2Binputs/Variable_2/AdamBinputs/Variable_2/Adam_1BtransitionsBtransitions/AdamBtransitions/Adam_1*
dtype0*
_output_shapes
:'
¬
save_2/SaveV2/shape_and_slicesConst"/device:CPU:0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:'
М
save_2/SaveV2SaveV2save_2/ShardedFilenamesave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesbeta1_powerbeta2_powerFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1FbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1global_stepinputs/Variableinputs/Variable/Adaminputs/Variable/Adam_1inputs/Variable_1inputs/Variable_1/Adaminputs/Variable_1/Adam_1inputs/Variable_2inputs/Variable_2/Adaminputs/Variable_2/Adam_1transitionstransitions/Adamtransitions/Adam_1"/device:CPU:0*5
dtypes+
)2'
®
save_2/control_dependencyIdentitysave_2/ShardedFilename^save_2/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_2/ShardedFilename*
_output_shapes
: 
≤
-save_2/MergeV2Checkpoints/checkpoint_prefixesPacksave_2/ShardedFilename^save_2/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
Т
save_2/MergeV2CheckpointsMergeV2Checkpoints-save_2/MergeV2Checkpoints/checkpoint_prefixessave_2/Const"/device:CPU:0*
delete_old_dirs(
С
save_2/IdentityIdentitysave_2/Const^save_2/control_dependency^save_2/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
—
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*р
valueжBг'Bbeta1_powerBbeta2_powerBFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1BFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biasBKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AdamBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1BHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelBMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AdamBObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1Bglobal_stepBinputs/VariableBinputs/Variable/AdamBinputs/Variable/Adam_1Binputs/Variable_1Binputs/Variable_1/AdamBinputs/Variable_1/Adam_1Binputs/Variable_2Binputs/Variable_2/AdamBinputs/Variable_2/Adam_1BtransitionsBtransitions/AdamBtransitions/Adam_1*
dtype0*
_output_shapes
:'
≈
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:'*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
и
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*≤
_output_shapesЯ
Ь:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'
џ
save_2/AssignAssignbeta1_powersave_2/RestoreV2*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
я
save_2/Assign_1Assignbeta2_powersave_2/RestoreV2:1*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes
: *
use_locking(
Я
save_2/Assign_2AssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/biassave_2/RestoreV2:2*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
§
save_2/Assign_3AssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave_2/RestoreV2:3*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
¶
save_2/Assign_4AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save_2/RestoreV2:4*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(
®
save_2/Assign_5AssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave_2/RestoreV2:5*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
≠
save_2/Assign_6AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave_2/RestoreV2:6*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
ѓ
save_2/Assign_7AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save_2/RestoreV2:7*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
Я
save_2/Assign_8AssignFbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/biassave_2/RestoreV2:8*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
§
save_2/Assign_9AssignKbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave_2/RestoreV2:9*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
®
save_2/Assign_10AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save_2/RestoreV2:10*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
™
save_2/Assign_11AssignHbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave_2/RestoreV2:11*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
ѓ
save_2/Assign_12AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave_2/RestoreV2:12*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
±
save_2/Assign_13AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save_2/RestoreV2:13*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
°
save_2/Assign_14AssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/biassave_2/RestoreV2:14*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
¶
save_2/Assign_15AssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adamsave_2/RestoreV2:15*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0
®
save_2/Assign_16AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1save_2/RestoreV2:16*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias*
validate_shape(*
_output_shapes	
:А
™
save_2/Assign_17AssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernelsave_2/RestoreV2:17* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(
ѓ
save_2/Assign_18AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adamsave_2/RestoreV2:18*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
±
save_2/Assign_19AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1save_2/RestoreV2:19*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
°
save_2/Assign_20AssignFbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/biassave_2/RestoreV2:20*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(
¶
save_2/Assign_21AssignKbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adamsave_2/RestoreV2:21*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias*
validate_shape(
®
save_2/Assign_22AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1save_2/RestoreV2:22*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*Y
_classO
MKloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias
™
save_2/Assign_23AssignHbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernelsave_2/RestoreV2:23* 
_output_shapes
:
АА*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(
ѓ
save_2/Assign_24AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adamsave_2/RestoreV2:24*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА*
use_locking(
±
save_2/Assign_25AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1save_2/RestoreV2:25*
use_locking(*
T0*[
_classQ
OMloc:@biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
АА
¶
save_2/Assign_26Assignglobal_stepsave_2/RestoreV2:26*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@global_step
Ј
save_2/Assign_27Assigninputs/Variablesave_2/RestoreV2:27*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@*
use_locking(
Љ
save_2/Assign_28Assigninputs/Variable/Adamsave_2/RestoreV2:28*
_output_shapes
:	ќ$@*
use_locking(*
T0*"
_class
loc:@inputs/Variable*
validate_shape(
Њ
save_2/Assign_29Assigninputs/Variable/Adam_1save_2/RestoreV2:29*
use_locking(*
T0*"
_class
loc:@inputs/Variable*
validate_shape(*
_output_shapes
:	ќ$@
ї
save_2/Assign_30Assigninputs/Variable_1save_2/RestoreV2:30*
use_locking(*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А
ј
save_2/Assign_31Assigninputs/Variable_1/Adamsave_2/RestoreV2:31*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А*
use_locking(*
T0
¬
save_2/Assign_32Assigninputs/Variable_1/Adam_1save_2/RestoreV2:32*
use_locking(*
T0*$
_class
loc:@inputs/Variable_1*
validate_shape(*
_output_shapes
:	А
ґ
save_2/Assign_33Assigninputs/Variable_2save_2/RestoreV2:33*
use_locking(*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:
ї
save_2/Assign_34Assigninputs/Variable_2/Adamsave_2/RestoreV2:34*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(*
_output_shapes
:*
use_locking(
љ
save_2/Assign_35Assigninputs/Variable_2/Adam_1save_2/RestoreV2:35*
_output_shapes
:*
use_locking(*
T0*$
_class
loc:@inputs/Variable_2*
validate_shape(
Ѓ
save_2/Assign_36Assigntransitionssave_2/RestoreV2:36*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:
≥
save_2/Assign_37Assigntransitions/Adamsave_2/RestoreV2:37*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:
µ
save_2/Assign_38Assigntransitions/Adam_1save_2/RestoreV2:38*
use_locking(*
T0*
_class
loc:@transitions*
validate_shape(*
_output_shapes

:
х
save_2/restore_shardNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_2^save_2/Assign_3^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_30^save_2/Assign_31^save_2/Assign_32^save_2/Assign_33^save_2/Assign_34^save_2/Assign_35^save_2/Assign_36^save_2/Assign_37^save_2/Assign_38
1
save_2/restore_allNoOp^save_2/restore_shard"B
save_2/Const:0save_2/Identity:0save_2/restore_all (5 @F8"°
trainable_variablesЙЖ
[
inputs/Variable:0inputs/Variable/Assigninputs/Variable/read:02inputs/random_normal:0
c
inputs/Variable_1:0inputs/Variable_1/Assigninputs/Variable_1/read:02inputs/random_normal_1:0
c
inputs/Variable_2:0inputs/Variable_2/Assigninputs/Variable_2/read:02inputs/random_normal_2:0
’
JbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
’
JbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros:0
’
JbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
’
JbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros:0
a
transitions:0transitions/Assigntransitions/read:02(transitions/Initializer/random_uniform:0"
	summaries


loss:0"ёN
	variables–NЌN
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
[
inputs/Variable:0inputs/Variable/Assigninputs/Variable/read:02inputs/random_normal:0
c
inputs/Variable_1:0inputs/Variable_1/Assigninputs/Variable_1/read:02inputs/random_normal_1:0
c
inputs/Variable_2:0inputs/Variable_2/Assigninputs/Variable_2/read:02inputs/random_normal_2:0
’
JbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
’
JbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros:0
’
JbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Initializer/zeros:0
’
JbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel:0ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/AssignObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:02ebiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Initializer/random_uniform:0
ƒ
HbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias:0MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/AssignMbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:02ZbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Initializer/zeros:0
a
transitions:0transitions/Assigntransitions/read:02(transitions/Initializer/random_uniform:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
|
inputs/Variable/Adam:0inputs/Variable/Adam/Assigninputs/Variable/Adam/read:02(inputs/Variable/Adam/Initializer/zeros:0
Д
inputs/Variable/Adam_1:0inputs/Variable/Adam_1/Assigninputs/Variable/Adam_1/read:02*inputs/Variable/Adam_1/Initializer/zeros:0
Д
inputs/Variable_1/Adam:0inputs/Variable_1/Adam/Assigninputs/Variable_1/Adam/read:02*inputs/Variable_1/Adam/Initializer/zeros:0
М
inputs/Variable_1/Adam_1:0inputs/Variable_1/Adam_1/Assigninputs/Variable_1/Adam_1/read:02,inputs/Variable_1/Adam_1/Initializer/zeros:0
Д
inputs/Variable_2/Adam:0inputs/Variable_2/Adam/Assigninputs/Variable_2/Adam/read:02*inputs/Variable_2/Adam/Initializer/zeros:0
М
inputs/Variable_2/Adam_1:0inputs/Variable_2/Adam_1/Assigninputs/Variable_2/Adam_1/read:02,inputs/Variable_2/Adam_1/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam:0TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignTbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/read:02abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros:0
и
QbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1:0VbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignVbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/read:02cbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
Ў
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam:0RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignRbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/read:02_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1:0TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignTbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/read:02abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam:0TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/AssignTbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/read:02abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros:0
и
QbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1:0VbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/AssignVbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/read:02cbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
Ў
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam:0RbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/AssignRbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/read:02_biLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1:0TbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/AssignTbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/read:02abiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam:0TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/AssignTbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/read:02abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam/Initializer/zeros:0
и
QbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1:0VbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/AssignVbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/read:02cbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
Ў
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam:0RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/AssignRbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/read:02_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1:0TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/AssignTbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/read:02abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/Adam_1/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam:0TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/AssignTbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/read:02abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam/Initializer/zeros:0
и
QbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1:0VbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/AssignVbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/read:02cbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/Adam_1/Initializer/zeros:0
Ў
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam:0RbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/AssignRbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/read:02_biLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam/Initializer/zeros:0
а
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1:0TbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/AssignTbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/read:02abiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/Adam_1/Initializer/zeros:0
l
transitions/Adam:0transitions/Adam/Assigntransitions/Adam/read:02$transitions/Adam/Initializer/zeros:0
t
transitions/Adam_1:0transitions/Adam_1/Assigntransitions/Adam_1/read:02&transitions/Adam_1/Initializer/zeros:0"©Ј
while_contextЦЈТЈ
≈Ы
2biLSTM/bidirectional_rnn/fw/fw/while/while_context */biLSTM/bidirectional_rnn/fw/fw/while/LoopCond:02,biLSTM/bidirectional_rnn/fw/fw/while/Merge:0:/biLSTM/bidirectional_rnn/fw/fw/while/Identity:0B+biLSTM/bidirectional_rnn/fw/fw/while/Exit:0B-biLSTM/bidirectional_rnn/fw/fw/while/Exit_1:0B-biLSTM/bidirectional_rnn/fw/fw/while/Exit_2:0B-biLSTM/bidirectional_rnn/fw/fw/while/Exit_3:0B-biLSTM/bidirectional_rnn/fw/fw/while/Exit_4:0B-biLSTM/bidirectional_rnn/fw/fw/while/Exit_5:0B-biLSTM/bidirectional_rnn/fw/fw/while/Exit_6:0Bgradients/f_count_5:0JДФ
,biLSTM/bidirectional_rnn/fw/fw/CheckSeqLen:0
(biLSTM/bidirectional_rnn/fw/fw/Minimum:0
,biLSTM/bidirectional_rnn/fw/fw/TensorArray:0
[biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
.biLSTM/bidirectional_rnn/fw/fw/TensorArray_1:0
0biLSTM/bidirectional_rnn/fw/fw/strided_slice_1:0
,biLSTM/bidirectional_rnn/fw/fw/while/Enter:0
.biLSTM/bidirectional_rnn/fw/fw/while/Enter_1:0
.biLSTM/bidirectional_rnn/fw/fw/while/Enter_2:0
.biLSTM/bidirectional_rnn/fw/fw/while/Enter_3:0
.biLSTM/bidirectional_rnn/fw/fw/while/Enter_4:0
.biLSTM/bidirectional_rnn/fw/fw/while/Enter_5:0
.biLSTM/bidirectional_rnn/fw/fw/while/Enter_6:0
+biLSTM/bidirectional_rnn/fw/fw/while/Exit:0
-biLSTM/bidirectional_rnn/fw/fw/while/Exit_1:0
-biLSTM/bidirectional_rnn/fw/fw/while/Exit_2:0
-biLSTM/bidirectional_rnn/fw/fw/while/Exit_3:0
-biLSTM/bidirectional_rnn/fw/fw/while/Exit_4:0
-biLSTM/bidirectional_rnn/fw/fw/while/Exit_5:0
-biLSTM/bidirectional_rnn/fw/fw/while/Exit_6:0
9biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0
3biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual:0
/biLSTM/bidirectional_rnn/fw/fw/while/Identity:0
1biLSTM/bidirectional_rnn/fw/fw/while/Identity_1:0
1biLSTM/bidirectional_rnn/fw/fw/while/Identity_2:0
1biLSTM/bidirectional_rnn/fw/fw/while/Identity_3:0
1biLSTM/bidirectional_rnn/fw/fw/while/Identity_4:0
1biLSTM/bidirectional_rnn/fw/fw/while/Identity_5:0
1biLSTM/bidirectional_rnn/fw/fw/while/Identity_6:0
1biLSTM/bidirectional_rnn/fw/fw/while/Less/Enter:0
+biLSTM/bidirectional_rnn/fw/fw/while/Less:0
3biLSTM/bidirectional_rnn/fw/fw/while/Less_1/Enter:0
-biLSTM/bidirectional_rnn/fw/fw/while/Less_1:0
1biLSTM/bidirectional_rnn/fw/fw/while/LogicalAnd:0
/biLSTM/bidirectional_rnn/fw/fw/while/LoopCond:0
,biLSTM/bidirectional_rnn/fw/fw/while/Merge:0
,biLSTM/bidirectional_rnn/fw/fw/while/Merge:1
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_1:0
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_1:1
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_2:0
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_2:1
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_3:0
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_3:1
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_4:0
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_4:1
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_5:0
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_5:1
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_6:0
.biLSTM/bidirectional_rnn/fw/fw/while/Merge_6:1
4biLSTM/bidirectional_rnn/fw/fw/while/NextIteration:0
6biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_1:0
6biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_2:0
6biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_3:0
6biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_4:0
6biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_5:0
6biLSTM/bidirectional_rnn/fw/fw/while/NextIteration_6:0
3biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter:0
-biLSTM/bidirectional_rnn/fw/fw/while/Select:0
/biLSTM/bidirectional_rnn/fw/fw/while/Select_1:0
/biLSTM/bidirectional_rnn/fw/fw/while/Select_2:0
/biLSTM/bidirectional_rnn/fw/fw/while/Select_3:0
/biLSTM/bidirectional_rnn/fw/fw/while/Select_4:0
-biLSTM/bidirectional_rnn/fw/fw/while/Switch:0
-biLSTM/bidirectional_rnn/fw/fw/while/Switch:1
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_1:0
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_1:1
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2:0
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_2:1
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3:0
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_3:1
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4:0
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_4:1
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5:0
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_5:1
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6:0
/biLSTM/bidirectional_rnn/fw/fw/while/Switch_6:1
>biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
8biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
PbiLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
JbiLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
,biLSTM/bidirectional_rnn/fw/fw/while/add/y:0
*biLSTM/bidirectional_rnn/fw/fw/while/add:0
.biLSTM/bidirectional_rnn/fw/fw/while/add_1/y:0
,biLSTM/bidirectional_rnn/fw/fw/while/add_1:0
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:0
]biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Const:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2:0
\biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0
VbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul:0
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid:0
YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1:0
YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2:0
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh:0
VbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1:0
[biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis:0
VbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:1
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:2
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/split:3
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1:0
]biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Const:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_1:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2:0
\biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter:0
VbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul:0
SbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2:0
WbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid:0
YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1:0
YbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2:0
TbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh:0
VbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1:0
[biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axis:0
VbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:0
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:1
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:2
UbiLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/split:3
&biLSTM/bidirectional_rnn/fw/fw/zeros:0
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:0
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:0
gradients/Add_1/y:0
gradients/Add_1:0
gradients/Merge_2:0
gradients/Merge_2:1
gradients/NextIteration_2:0
gradients/Switch_2:0
gradients/Switch_2:1
Kgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter:0
Qgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/StackPushV2:0
Kgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/f_acc:0
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
wgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1:0
kgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape:0
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter:0
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
zgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0
Дgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2:0
Жgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1:0
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Enter:0
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2:0
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc:0
hgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape:0
jgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1:0
kgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Shape:0
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter:0
xgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc:0
gradients/f_count_3:0
gradients/f_count_4:0
gradients/f_count_5:0А
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0Ъ
Kgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/f_acc:0Kgradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/Select/Enter:0№
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc:0lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Enter:0Ґ
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_3_grad/zeros_like/Enter:0д
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0А
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0а
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Enter:0ѓ
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:0\biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter:0Ґ
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_4_grad/zeros_like/Enter:0д
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0а
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0i
,biLSTM/bidirectional_rnn/fw/fw/CheckSeqLen:09biLSTM/bidirectional_rnn/fw/fw/while/GreaterEqual/Enter:0p
.biLSTM/bidirectional_rnn/fw/fw/TensorArray_1:0>biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0Ґ
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_1_grad/zeros_like/Enter:0и
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc:0rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter:0Ѓ
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0]biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0д
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0_
(biLSTM/bidirectional_rnn/fw/fw/Minimum:03biLSTM/bidirectional_rnn/fw/fw/while/Less_1/Enter:0Я
[biLSTM/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0@biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0№
lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0lgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0e
0biLSTM/bidirectional_rnn/fw/fw/strided_slice_1:01biLSTM/bidirectional_rnn/fw/fw/while/Less/Enter:0Ѓ
MbiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:0]biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter:0А
,biLSTM/bidirectional_rnn/fw/fw/TensorArray:0PbiLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0а
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0м
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0Ґ
Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/fw/fw/while/Select_2_grad/zeros_like/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0д
pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0и
rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc:0rgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter:0А
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0а
ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:0ѓ
ObiLSTM/bidirectional_rnn/fw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0\biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0]
&biLSTM/bidirectional_rnn/fw/fw/zeros:03biLSTM/bidirectional_rnn/fw/fw/while/Select/Enter:0м
tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0tgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0ж
qgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0qgradients/biLSTM/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0А
~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/fw/fw/while/fw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0R,biLSTM/bidirectional_rnn/fw/fw/while/Enter:0R.biLSTM/bidirectional_rnn/fw/fw/while/Enter_1:0R.biLSTM/bidirectional_rnn/fw/fw/while/Enter_2:0R.biLSTM/bidirectional_rnn/fw/fw/while/Enter_3:0R.biLSTM/bidirectional_rnn/fw/fw/while/Enter_4:0R.biLSTM/bidirectional_rnn/fw/fw/while/Enter_5:0R.biLSTM/bidirectional_rnn/fw/fw/while/Enter_6:0Rgradients/f_count_4:0Z0biLSTM/bidirectional_rnn/fw/fw/strided_slice_1:0
≈Ы
2biLSTM/bidirectional_rnn/bw/bw/while/while_context */biLSTM/bidirectional_rnn/bw/bw/while/LoopCond:02,biLSTM/bidirectional_rnn/bw/bw/while/Merge:0:/biLSTM/bidirectional_rnn/bw/bw/while/Identity:0B+biLSTM/bidirectional_rnn/bw/bw/while/Exit:0B-biLSTM/bidirectional_rnn/bw/bw/while/Exit_1:0B-biLSTM/bidirectional_rnn/bw/bw/while/Exit_2:0B-biLSTM/bidirectional_rnn/bw/bw/while/Exit_3:0B-biLSTM/bidirectional_rnn/bw/bw/while/Exit_4:0B-biLSTM/bidirectional_rnn/bw/bw/while/Exit_5:0B-biLSTM/bidirectional_rnn/bw/bw/while/Exit_6:0Bgradients/f_count_8:0JДФ
,biLSTM/bidirectional_rnn/bw/bw/CheckSeqLen:0
(biLSTM/bidirectional_rnn/bw/bw/Minimum:0
,biLSTM/bidirectional_rnn/bw/bw/TensorArray:0
[biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
.biLSTM/bidirectional_rnn/bw/bw/TensorArray_1:0
0biLSTM/bidirectional_rnn/bw/bw/strided_slice_1:0
,biLSTM/bidirectional_rnn/bw/bw/while/Enter:0
.biLSTM/bidirectional_rnn/bw/bw/while/Enter_1:0
.biLSTM/bidirectional_rnn/bw/bw/while/Enter_2:0
.biLSTM/bidirectional_rnn/bw/bw/while/Enter_3:0
.biLSTM/bidirectional_rnn/bw/bw/while/Enter_4:0
.biLSTM/bidirectional_rnn/bw/bw/while/Enter_5:0
.biLSTM/bidirectional_rnn/bw/bw/while/Enter_6:0
+biLSTM/bidirectional_rnn/bw/bw/while/Exit:0
-biLSTM/bidirectional_rnn/bw/bw/while/Exit_1:0
-biLSTM/bidirectional_rnn/bw/bw/while/Exit_2:0
-biLSTM/bidirectional_rnn/bw/bw/while/Exit_3:0
-biLSTM/bidirectional_rnn/bw/bw/while/Exit_4:0
-biLSTM/bidirectional_rnn/bw/bw/while/Exit_5:0
-biLSTM/bidirectional_rnn/bw/bw/while/Exit_6:0
9biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0
3biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual:0
/biLSTM/bidirectional_rnn/bw/bw/while/Identity:0
1biLSTM/bidirectional_rnn/bw/bw/while/Identity_1:0
1biLSTM/bidirectional_rnn/bw/bw/while/Identity_2:0
1biLSTM/bidirectional_rnn/bw/bw/while/Identity_3:0
1biLSTM/bidirectional_rnn/bw/bw/while/Identity_4:0
1biLSTM/bidirectional_rnn/bw/bw/while/Identity_5:0
1biLSTM/bidirectional_rnn/bw/bw/while/Identity_6:0
1biLSTM/bidirectional_rnn/bw/bw/while/Less/Enter:0
+biLSTM/bidirectional_rnn/bw/bw/while/Less:0
3biLSTM/bidirectional_rnn/bw/bw/while/Less_1/Enter:0
-biLSTM/bidirectional_rnn/bw/bw/while/Less_1:0
1biLSTM/bidirectional_rnn/bw/bw/while/LogicalAnd:0
/biLSTM/bidirectional_rnn/bw/bw/while/LoopCond:0
,biLSTM/bidirectional_rnn/bw/bw/while/Merge:0
,biLSTM/bidirectional_rnn/bw/bw/while/Merge:1
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_1:0
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_1:1
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_2:0
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_2:1
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_3:0
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_3:1
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_4:0
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_4:1
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_5:0
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_5:1
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_6:0
.biLSTM/bidirectional_rnn/bw/bw/while/Merge_6:1
4biLSTM/bidirectional_rnn/bw/bw/while/NextIteration:0
6biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_1:0
6biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_2:0
6biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_3:0
6biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_4:0
6biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_5:0
6biLSTM/bidirectional_rnn/bw/bw/while/NextIteration_6:0
3biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter:0
-biLSTM/bidirectional_rnn/bw/bw/while/Select:0
/biLSTM/bidirectional_rnn/bw/bw/while/Select_1:0
/biLSTM/bidirectional_rnn/bw/bw/while/Select_2:0
/biLSTM/bidirectional_rnn/bw/bw/while/Select_3:0
/biLSTM/bidirectional_rnn/bw/bw/while/Select_4:0
-biLSTM/bidirectional_rnn/bw/bw/while/Switch:0
-biLSTM/bidirectional_rnn/bw/bw/while/Switch:1
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_1:0
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_1:1
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2:0
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_2:1
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3:0
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_3:1
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4:0
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_4:1
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5:0
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_5:1
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6:0
/biLSTM/bidirectional_rnn/bw/bw/while/Switch_6:1
>biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
8biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
PbiLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
JbiLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
,biLSTM/bidirectional_rnn/bw/bw/while/add/y:0
*biLSTM/bidirectional_rnn/bw/bw/while/add:0
.biLSTM/bidirectional_rnn/bw/bw/while/add_1/y:0
,biLSTM/bidirectional_rnn/bw/bw/while/add_1:0
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1:0
]biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Const:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_1:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Const_2:0
\biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0
VbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul:0
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid:0
YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_1:0
YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Sigmoid_2:0
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh:0
VbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Tanh_1:0
[biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat/axis:0
VbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:1
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:2
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/split:3
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1:0
]biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Const:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_1:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Const_2:0
\biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter:0
VbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul:0
SbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2:0
WbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid:0
YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_1:0
YbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Sigmoid_2:0
TbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh:0
VbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Tanh_1:0
[biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat/axis:0
VbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:0
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:1
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:2
UbiLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/split:3
&biLSTM/bidirectional_rnn/bw/bw/zeros:0
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:0
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:0
gradients/Add_2/y:0
gradients/Add_2:0
gradients/Merge_4:0
gradients/Merge_4:1
gradients/NextIteration_4:0
gradients/Switch_4:0
gradients/Switch_4:1
Kgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter:0
Qgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/StackPushV2:0
Kgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/f_acc:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/Enter:0
Ugradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/StackPushV2:0
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/f_acc:0
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0
wgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2:0
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/Shape:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Shape_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/StackPushV2:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Shape_1:0
kgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/Shape:0
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter:0
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/StackPushV2:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/Shape:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0
zgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/StackPushV2:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Shape_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2:0
Иgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Enter:0
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/StackPushV2:0
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0
vgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/StackPushV2:0
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Shape_1:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0
Дgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2:0
Жgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/StackPushV2_1:0
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Enter:0
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/StackPushV2:0
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc:0
hgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape:0
jgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Shape_1:0
kgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/Shape:0
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter:0
xgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/StackPushV2:0
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc:0
gradients/f_count_6:0
gradients/f_count_7:0
gradients/f_count_8:0К
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0д
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0Ъ
Kgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/f_acc:0Kgradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/Select/Enter:0Ґ
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_3_grad/zeros_like/Enter:0Я
[biLSTM/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0@biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0К
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0i
,biLSTM/bidirectional_rnn/bw/bw/CheckSeqLen:09biLSTM/bidirectional_rnn/bw/bw/while/GreaterEqual/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0]
&biLSTM/bidirectional_rnn/bw/bw/zeros:03biLSTM/bidirectional_rnn/bw/bw/while/Select/Enter:0а
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul/Enter:0ѓ
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/kernel/read:0\biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul/Enter:0А
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0Ґ
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_4_grad/zeros_like/Enter:0д
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter_1:0_
(biLSTM/bidirectional_rnn/bw/bw/Minimum:03biLSTM/bidirectional_rnn/bw/bw/while/Less_1/Enter:0№
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/f_acc:0lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/Mul/Enter:0а
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_2_grad/Mul/Enter:0e
0biLSTM/bidirectional_rnn/bw/bw/strided_slice_1:01biLSTM/bidirectional_rnn/bw/bw/while/Less/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/BroadcastGradientArgs/Enter:0ж
qgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc:0qgradients/biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0А
,biLSTM/bidirectional_rnn/bw/bw/TensorArray:0PbiLSTM/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0А
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter:0м
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0А
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0и
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/f_acc:0rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/concat_grad/ShapeN/Enter:0ѓ
ObiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/kernel/read:0\biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0Ґ
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_1_grad/zeros_like/Enter:0д
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul_1/Enter:0Ѓ
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_0/basic_lstm_cell/bias/read:0]biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/BiasAdd/Enter:0м
tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/f_acc:0tgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/MatMul_grad/MatMul_1/Enter:0А
~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/f_acc:0~gradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Add_grad/BroadcastGradientArgs/Enter:0К
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/BroadcastGradientArgs/Enter_1:0а
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter:0p
.biLSTM/bidirectional_rnn/bw/bw/TensorArray_1:0>biLSTM/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0Ѓ
MbiLSTM/bidirectional_rnn/bw/multi_rnn_cell/cell_1/basic_lstm_cell/bias/read:0]biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/BiasAdd/Enter:0Ж
Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/f_acc_1:0Аgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_grad/BroadcastGradientArgs/Enter_1:0К
Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/f_acc_1:0Вgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Add_1_grad/BroadcastGradientArgs/Enter_1:0№
lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/f_acc:0lgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_grad/Mul/Enter:0и
rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/f_acc:0rgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/concat_grad/ShapeN/Enter:0Ґ
Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/f_acc:0Ogradients/biLSTM/bidirectional_rnn/bw/bw/while/Select_2_grad/zeros_like/Enter:0д
pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/f_acc:0pgradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_1/basic_lstm_cell/Mul_2_grad/Mul_1/Enter:0а
ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/f_acc:0ngradients/biLSTM/bidirectional_rnn/bw/bw/while/bw/multi_rnn_cell/cell_0/basic_lstm_cell/Mul_1_grad/Mul/Enter:0R,biLSTM/bidirectional_rnn/bw/bw/while/Enter:0R.biLSTM/bidirectional_rnn/bw/bw/while/Enter_1:0R.biLSTM/bidirectional_rnn/bw/bw/while/Enter_2:0R.biLSTM/bidirectional_rnn/bw/bw/while/Enter_3:0R.biLSTM/bidirectional_rnn/bw/bw/while/Enter_4:0R.biLSTM/bidirectional_rnn/bw/bw/while/Enter_5:0R.biLSTM/bidirectional_rnn/bw/bw/while/Enter_6:0Rgradients/f_count_7:0Z0biLSTM/bidirectional_rnn/bw/bw/strided_slice_1:0"
train_op

Adam"Й°
cond_contextч†у†
≈
cond/cond_textcond/pred_id:0cond/switch_t:0 *П
	Squeeze:0
cond/ReduceLogSumExp/Exp:0
cond/ReduceLogSumExp/IsFinite:0
cond/ReduceLogSumExp/Log:0
!cond/ReduceLogSumExp/Max/Switch:1
,cond/ReduceLogSumExp/Max/reduction_indices:0
cond/ReduceLogSumExp/Max:0
cond/ReduceLogSumExp/Reshape:0
cond/ReduceLogSumExp/Select:0
cond/ReduceLogSumExp/Shape:0
#cond/ReduceLogSumExp/StopGradient:0
,cond/ReduceLogSumExp/Sum/reduction_indices:0
cond/ReduceLogSumExp/Sum:0
cond/ReduceLogSumExp/add:0
cond/ReduceLogSumExp/sub:0
!cond/ReduceLogSumExp/zeros_like:0
cond/pred_id:0
cond/switch_t:0.
	Squeeze:0!cond/ReduceLogSumExp/Max/Switch:1"
cond/switch_t:0cond/switch_t:0 
cond/pred_id:0cond/pred_id:0
ІЫ
cond/cond_text_1cond/pred_id:0cond/switch_f:0*г>
	Reshape:0
	Squeeze:0
cond/ExpandDims/Switch:0
cond/ExpandDims/dim:0
cond/ExpandDims:0
cond/ReduceLogSumExp_1/Exp:0
!cond/ReduceLogSumExp_1/IsFinite:0
cond/ReduceLogSumExp_1/Log:0
.cond/ReduceLogSumExp_1/Max/reduction_indices:0
cond/ReduceLogSumExp_1/Max:0
 cond/ReduceLogSumExp_1/Reshape:0
cond/ReduceLogSumExp_1/Select:0
cond/ReduceLogSumExp_1/Shape:0
%cond/ReduceLogSumExp_1/StopGradient:0
.cond/ReduceLogSumExp_1/Sum/reduction_indices:0
cond/ReduceLogSumExp_1/Sum:0
cond/ReduceLogSumExp_1/add:0
cond/ReduceLogSumExp_1/sub:0
#cond/ReduceLogSumExp_1/zeros_like:0
cond/Slice/Switch:0
cond/Slice/begin:0
cond/Slice/size:0
cond/Slice:0
cond/pred_id:0
cond/rnn/All:0
cond/rnn/Assert/Assert/data_0:0
cond/rnn/Assert/Assert/data_2:0
cond/rnn/Assert/Const:0
cond/rnn/Assert/Const_1:0
cond/rnn/CheckSeqLen:0
cond/rnn/Const:0
cond/rnn/Const_1:0
cond/rnn/Const_2:0
cond/rnn/Const_3:0
cond/rnn/Const_4:0
cond/rnn/Equal:0
cond/rnn/ExpandDims/dim:0
cond/rnn/ExpandDims:0
cond/rnn/Max:0
cond/rnn/Maximum/x:0
cond/rnn/Maximum:0
cond/rnn/Min:0
cond/rnn/Minimum:0
cond/rnn/Rank:0
cond/rnn/Rank_1:0
cond/rnn/Shape:0
cond/rnn/Shape_1:0
cond/rnn/Shape_2:0
cond/rnn/Shape_3:0
cond/rnn/TensorArray:0
cond/rnn/TensorArray:1
/cond/rnn/TensorArrayStack/TensorArrayGatherV3:0
-cond/rnn/TensorArrayStack/TensorArraySizeV3:0
'cond/rnn/TensorArrayStack/range/delta:0
'cond/rnn/TensorArrayStack/range/start:0
!cond/rnn/TensorArrayStack/range:0
#cond/rnn/TensorArrayUnstack/Shape:0
Econd/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
)cond/rnn/TensorArrayUnstack/range/delta:0
)cond/rnn/TensorArrayUnstack/range/start:0
#cond/rnn/TensorArrayUnstack/range:0
1cond/rnn/TensorArrayUnstack/strided_slice/stack:0
3cond/rnn/TensorArrayUnstack/strided_slice/stack_1:0
3cond/rnn/TensorArrayUnstack/strided_slice/stack_2:0
+cond/rnn/TensorArrayUnstack/strided_slice:0
cond/rnn/TensorArray_1:0
cond/rnn/TensorArray_1:1
cond/rnn/concat/axis:0
cond/rnn/concat/values_0:0
cond/rnn/concat:0
cond/rnn/concat_1/axis:0
cond/rnn/concat_1:0
cond/rnn/concat_2/axis:0
cond/rnn/concat_2/values_0:0
cond/rnn/concat_2:0
cond/rnn/range/delta:0
cond/rnn/range/start:0
cond/rnn/range:0
cond/rnn/range_1/delta:0
cond/rnn/range_1/start:0
cond/rnn/range_1:0
cond/rnn/sequence_length:0
cond/rnn/stack:0
cond/rnn/strided_slice/stack:0
 cond/rnn/strided_slice/stack_1:0
 cond/rnn/strided_slice/stack_2:0
cond/rnn/strided_slice:0
 cond/rnn/strided_slice_1/stack:0
"cond/rnn/strided_slice_1/stack_1:0
"cond/rnn/strided_slice_1/stack_2:0
cond/rnn/strided_slice_1:0
 cond/rnn/strided_slice_2/stack:0
"cond/rnn/strided_slice_2/stack_1:0
"cond/rnn/strided_slice_2/stack_2:0
cond/rnn/strided_slice_2:0
cond/rnn/time:0
cond/rnn/transpose:0
cond/rnn/transpose_1:0
cond/rnn/while/Exit:0
cond/rnn/while/Exit_1:0
cond/rnn/while/Exit_2:0
cond/rnn/while/Exit_3:0
cond/rnn/while/Switch:0
"cond/rnn/while/iteration_counter:0
cond/rnn/zeros/Const:0
cond/rnn/zeros:0
cond/sub/Switch:0
cond/sub/y:0

cond/sub:0
cond/switch_f:0
gradients/b_count:0
gradients/b_count_3:0
,gradients/cond/rnn/while/Enter_3_grad/Exit:0
9gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch:0
8gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_acc:0
>gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch:0
=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_acc:0
Egradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch:0
Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_acc:0
Fgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch:0
Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_acc:0
Hgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch:0
Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_acc:0
Pgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch:0
Rgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_2:0
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc:0
Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1:0
Pgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch:0
Rgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_2:0
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc:0
Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1:0
6gradients/cond/rnn/while/Select_1_grad/Select/Switch:0
5gradients/cond/rnn/while/Select_1_grad/Select/f_acc:0
:gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch:0
9gradients/cond/rnn/while/Select_1_grad/zeros_like/f_acc:0
?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc:0
Agradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3:0
\gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch:0
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0
1gradients/cond/rnn/while/add_1/Enter_grad/b_acc:0
3gradients/cond/rnn/while/add_1/Enter_grad/b_acc_3:0
Bgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch:0
Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_acc:0
Bgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch:0
Dgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_2:0
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc:0
Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0
gradients/f_count:0
gradients/f_count_2:0
inputs/Sum:0
transitions/read:0o
5gradients/cond/rnn/while/Select_1_grad/Select/f_acc:06gradients/cond/rnn/while/Select_1_grad/Select/Switch:0Н
Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_acc:0Egradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch:0.
transitions/read:0cond/ExpandDims/Switch:0 
cond/pred_id:0cond/pred_id:0$
	Squeeze:0cond/rnn/while/Switch:0!
inputs/Sum:0cond/sub/Switch:0
=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_acc:0>gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch:0Л
Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0Dgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_2:0ї
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0\gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch:0І
Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1:0Rgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_2:0П
Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_acc:0Fgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch:0w
9gradients/cond/rnn/while/Select_1_grad/zeros_like/f_acc:0:gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch:0 
	Reshape:0cond/Slice/Switch:0£
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc:0Pgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch:0£
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc:0Pgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch:0І
Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1:0Rgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_2:0У
Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_acc:0Hgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch:0З
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc:0Bgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch:0u
8gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_acc:09gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch:0З
Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_acc:0Bgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch:0"
cond/switch_f:0cond/switch_f:02ќKЋK
cond/rnn/while/while_context *cond/rnn/while/LoopCond:02cond/rnn/while/Merge:0:cond/rnn/while/Identity:0Bcond/rnn/while/Exit:0Bcond/rnn/while/Exit_1:0Bcond/rnn/while/Exit_2:0Bcond/rnn/while/Exit_3:0Bgradients/f_count_2:0J∆H
cond/ExpandDims:0
cond/rnn/CheckSeqLen:0
cond/rnn/Minimum:0
cond/rnn/TensorArray:0
Econd/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
cond/rnn/TensorArray_1:0
cond/rnn/strided_slice_1:0
cond/rnn/while/Enter:0
cond/rnn/while/Enter_1:0
cond/rnn/while/Enter_2:0
cond/rnn/while/Enter_3:0
cond/rnn/while/Exit:0
cond/rnn/while/Exit_1:0
cond/rnn/while/Exit_2:0
cond/rnn/while/Exit_3:0
cond/rnn/while/ExpandDims/dim:0
cond/rnn/while/ExpandDims:0
#cond/rnn/while/GreaterEqual/Enter:0
cond/rnn/while/GreaterEqual:0
cond/rnn/while/Identity:0
cond/rnn/while/Identity_1:0
cond/rnn/while/Identity_2:0
cond/rnn/while/Identity_3:0
cond/rnn/while/Less/Enter:0
cond/rnn/while/Less:0
cond/rnn/while/Less_1/Enter:0
cond/rnn/while/Less_1:0
cond/rnn/while/LogicalAnd:0
cond/rnn/while/LoopCond:0
cond/rnn/while/Merge:0
cond/rnn/while/Merge:1
cond/rnn/while/Merge_1:0
cond/rnn/while/Merge_1:1
cond/rnn/while/Merge_2:0
cond/rnn/while/Merge_2:1
cond/rnn/while/Merge_3:0
cond/rnn/while/Merge_3:1
cond/rnn/while/NextIteration:0
 cond/rnn/while/NextIteration_1:0
 cond/rnn/while/NextIteration_2:0
 cond/rnn/while/NextIteration_3:0
$cond/rnn/while/ReduceLogSumExp/Exp:0
)cond/rnn/while/ReduceLogSumExp/IsFinite:0
$cond/rnn/while/ReduceLogSumExp/Log:0
6cond/rnn/while/ReduceLogSumExp/Max/reduction_indices:0
$cond/rnn/while/ReduceLogSumExp/Max:0
(cond/rnn/while/ReduceLogSumExp/Reshape:0
'cond/rnn/while/ReduceLogSumExp/Select:0
&cond/rnn/while/ReduceLogSumExp/Shape:0
-cond/rnn/while/ReduceLogSumExp/StopGradient:0
6cond/rnn/while/ReduceLogSumExp/Sum/reduction_indices:0
$cond/rnn/while/ReduceLogSumExp/Sum:0
$cond/rnn/while/ReduceLogSumExp/add:0
$cond/rnn/while/ReduceLogSumExp/sub:0
+cond/rnn/while/ReduceLogSumExp/zeros_like:0
cond/rnn/while/Select/Enter:0
cond/rnn/while/Select:0
cond/rnn/while/Select_1:0
cond/rnn/while/Switch_1:0
cond/rnn/while/Switch_1:1
cond/rnn/while/Switch_2:0
cond/rnn/while/Switch_2:1
cond/rnn/while/Switch_3:0
cond/rnn/while/Switch_3:1
cond/rnn/while/Switch_4:0
cond/rnn/while/Switch_4:1
(cond/rnn/while/TensorArrayReadV3/Enter:0
*cond/rnn/while/TensorArrayReadV3/Enter_1:0
"cond/rnn/while/TensorArrayReadV3:0
:cond/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
4cond/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
cond/rnn/while/add/y:0
cond/rnn/while/add:0
cond/rnn/while/add_1/Enter:0
cond/rnn/while/add_1:0
cond/rnn/while/add_2:0
cond/rnn/while/add_3/y:0
cond/rnn/while/add_3:0
cond/rnn/zeros:0
gradients/Add/y:0
gradients/Add:0
gradients/Merge:0
gradients/Merge:1
gradients/NextIteration:0
gradients/Switch:0
gradients/Switch:1
8gradients/cond/rnn/while/ExpandDims_grad/Reshape/Enter:0
>gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPushV2:0
8gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_acc:0
0gradients/cond/rnn/while/ExpandDims_grad/Shape:0
=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Enter:0
Cgradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPushV2:0
=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_acc:0
Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Enter:0
Jgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPushV2:0
Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_acc:0
Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Enter:0
Kgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPushV2:0
Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_acc:0
=gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape:0
Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Enter:0
Mgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPushV2:0
Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_acc:0
9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape:0
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Enter:0
Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Enter_1:0
Ugradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPushV2:0
Wgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPushV2_1:0
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc:0
Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1:0
9gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape:0
;gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1:0
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Enter:0
Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Enter_1:0
Ugradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPushV2:0
Wgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPushV2_1:0
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc:0
Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1:0
9gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape:0
;gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1:0
5gradients/cond/rnn/while/Select_1_grad/Select/Enter:0
;gradients/cond/rnn/while/Select_1_grad/Select/StackPushV2:0
5gradients/cond/rnn/while/Select_1_grad/Select/f_acc:0
9gradients/cond/rnn/while/Select_1_grad/zeros_like/Enter:0
?gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPushV2:0
9gradients/cond/rnn/while/Select_1_grad/zeros_like/f_acc:0
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0
agradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPushV2:0
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0
Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Enter:0
Ggradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPushV2:0
Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_acc:0
+gradients/cond/rnn/while/add_1_grad/Shape:0
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Enter:0
Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Enter_1:0
Ggradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPushV2:0
Igradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPushV2_1:0
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc:0
Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0
+gradients/cond/rnn/while/add_2_grad/Shape:0
-gradients/cond/rnn/while/add_2_grad/Shape_1:0
gradients/f_count:0
gradients/f_count_1:0
gradients/f_count_2:0Т
Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_acc:0Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Enter:0Ж
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc:0Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Enter:0t
8gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_acc:08gradients/cond/rnn/while/ExpandDims_grad/Reshape/Enter:01
cond/ExpandDims:0cond/rnn/while/add_1/Enter:0Ж
Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_acc:0Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Enter:09
cond/rnn/strided_slice_1:0cond/rnn/while/Less/Enter:0s
Econd/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0*cond/rnn/while/TensorArrayReadV3/Enter_1:0n
5gradients/cond/rnn/while/Select_1_grad/Select/f_acc:05gradients/cond/rnn/while/Select_1_grad/Select/Enter:0М
Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_acc:0Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Enter:01
cond/rnn/zeros:0cond/rnn/while/Select/Enter:0=
cond/rnn/CheckSeqLen:0#cond/rnn/while/GreaterEqual/Enter:0~
=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_acc:0=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Enter:0D
cond/rnn/TensorArray_1:0(cond/rnn/while/TensorArrayReadV3/Enter:0К
Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Enter_1:0Ї
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Enter:0¶
Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1:0Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Enter_1:0О
Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_acc:0Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Enter:0T
cond/rnn/TensorArray:0:cond/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0v
9gradients/cond/rnn/while/Select_1_grad/zeros_like/f_acc:09gradients/cond/rnn/while/Select_1_grad/zeros_like/Enter:03
cond/rnn/Minimum:0cond/rnn/while/Less_1/Enter:0Ґ
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc:0Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Enter:0Ґ
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc:0Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Enter:0¶
Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1:0Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Enter_1:0Rcond/rnn/while/Enter:0Rcond/rnn/while/Enter_1:0Rcond/rnn/while/Enter_2:0Rcond/rnn/while/Enter_3:0Rgradients/f_count_1:0Zcond/rnn/strided_slice_1:02єРµР
&gradients/cond/rnn/while/while_context *gradients/b_count_2:02gradients/Merge_1:0:gradients/Sub:0Bgradients/b_count_3:0B,gradients/cond/rnn/while/Enter_3_grad/Exit:0BAgradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3:0B3gradients/cond/rnn/while/add_1/Enter_grad/b_acc_3:0JВМ
cond/pred_id:0
Econd/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
cond/rnn/TensorArray_1:0
cond/rnn/while/GreaterEqual:0
cond/rnn/while/Identity_1:0
cond/rnn/while/Identity_3:0
$cond/rnn/while/ReduceLogSumExp/Exp:0
6cond/rnn/while/ReduceLogSumExp/Sum/reduction_indices:0
$cond/rnn/while/ReduceLogSumExp/Sum:0
(cond/rnn/while/TensorArrayReadV3/Enter:0
*cond/rnn/while/TensorArrayReadV3/Enter_1:0
gradients/AddN_3:0
gradients/AddN_4:0
gradients/GreaterEqual/Enter:0
gradients/GreaterEqual:0
gradients/Merge_1:0
gradients/Merge_1:1
gradients/NextIteration_1:0
gradients/Sub:0
gradients/Switch_1:0
gradients/Switch_1:1
gradients/b_count:0
gradients/b_count_1:0
gradients/b_count_2:0
gradients/b_count_3:0
Dgradients/cond/ReduceLogSumExp_1/sub_grad/tuple/control_dependency:0
,gradients/cond/rnn/while/Enter_3_grad/Exit:0
-gradients/cond/rnn/while/Exit_2_grad/b_exit:0
-gradients/cond/rnn/while/Exit_3_grad/b_exit:0
=gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPopV2:0
Agradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1/Enter:0
;gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1:0
;gradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1:1
8gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_acc:0
2gradients/cond/rnn/while/ExpandDims_grad/Reshape:0
0gradients/cond/rnn/while/ExpandDims_grad/Shape:0
.gradients/cond/rnn/while/Merge_3_grad/Switch:0
.gradients/cond/rnn/while/Merge_3_grad/Switch:1
@gradients/cond/rnn/while/Merge_3_grad/tuple/control_dependency:0
Bgradients/cond/rnn/while/Merge_3_grad/tuple/control_dependency_1:0
Bgradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPopV2:0
Fgradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1/Enter:0
@gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1:0
@gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1:1
=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_acc:0
7gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul:0
Igradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPopV2:0
Mgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1/Enter:0
Ggradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1:0
Ggradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1:1
Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_acc:0
>gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal:0
7gradients/cond/rnn/while/ReduceLogSumExp/Log_grad/mul:0
Jgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPopV2:0
Ngradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1/Enter:0
Hgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1:0
Hgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1:1
Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_acc:0
?gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape:0
=gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape:0
Lgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPopV2:0
Pgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1/Enter:0
Jgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1:0
Jgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1:1
Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_acc:0
Agradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch:0
>gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Fill/value:0
8gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Fill:0
=gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Maximum/y:0
;gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Maximum:0
;gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Reshape:0
9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape:0
;gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape_1:0
8gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Size:0
8gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Tile:0
=gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/add/Const:0
7gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/add:0
<gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/floordiv:0
7gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/mod:0
?gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range/delta:0
?gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range/start:0
9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/range:0
Tgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2:0
Vgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2_1:0
Xgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1/Enter:0
Rgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1:0
Rgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1:1
Xgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3/Enter:0
Rgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3:0
Rgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3:1
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc:0
Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1:0
Igradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs:0
Igradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs:1
;gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape:0
=gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Reshape_1:0
9gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape:0
;gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1:0
7gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Sum:0
9gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Sum_1:0
Lgradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/control_dependency:0
Ngradients/cond/rnn/while/ReduceLogSumExp/add_grad/tuple/control_dependency_1:0
Tgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2:0
Vgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2_1:0
Xgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1/Enter:0
Rgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1:0
Rgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1:1
Xgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3/Enter:0
Rgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3:0
Rgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3:1
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc:0
Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1:0
Igradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs:0
Igradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs:1
7gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Neg:0
;gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape:0
=gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Reshape_1:0
9gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape:0
;gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1:0
7gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Sum:0
9gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Sum_1:0
Lgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/control_dependency:0
Ngradients/cond/rnn/while/ReduceLogSumExp/sub_grad/tuple/control_dependency_1:0
:gradients/cond/rnn/while/Select_1_grad/Select/StackPopV2:0
>gradients/cond/rnn/while/Select_1_grad/Select/Switch_1/Enter:0
8gradients/cond/rnn/while/Select_1_grad/Select/Switch_1:0
8gradients/cond/rnn/while/Select_1_grad/Select/Switch_1:1
5gradients/cond/rnn/while/Select_1_grad/Select/f_acc:0
/gradients/cond/rnn/while/Select_1_grad/Select:0
1gradients/cond/rnn/while/Select_1_grad/Select_1:0
Agradients/cond/rnn/while/Select_1_grad/tuple/control_dependency:0
Cgradients/cond/rnn/while/Select_1_grad/tuple/control_dependency_1:0
>gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPopV2:0
Bgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter:0
Dgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1:0
<gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1:0
<gradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1:1
9gradients/cond/rnn/while/Select_1_grad/zeros_like/f_acc:0
3gradients/cond/rnn/while/Select_1_grad/zeros_like:0
1gradients/cond/rnn/while/Switch_4_grad/b_switch:0
1gradients/cond/rnn/while/Switch_4_grad/b_switch:1
8gradients/cond/rnn/while/Switch_4_grad_1/NextIteration:0
=gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/Add:0
Ggradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration:0
@gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:0
@gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1
?gradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc:0
Agradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1:0
Agradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2:0
Agradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2:1
Agradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3:0
Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter:0
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1:0
Sgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3:0
Sgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3:1
Ogradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow:0
`gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2:0
dgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1/Enter:0
^gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1:0
^gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1:1
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0
Ugradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3:0
/gradients/cond/rnn/while/add_1/Enter_grad/Add:0
9gradients/cond/rnn/while/add_1/Enter_grad/NextIteration:0
2gradients/cond/rnn/while/add_1/Enter_grad/Switch:0
2gradients/cond/rnn/while/add_1/Enter_grad/Switch:1
1gradients/cond/rnn/while/add_1/Enter_grad/b_acc:0
3gradients/cond/rnn/while/add_1/Enter_grad/b_acc_1:0
3gradients/cond/rnn/while/add_1/Enter_grad/b_acc_2:0
3gradients/cond/rnn/while/add_1/Enter_grad/b_acc_2:1
3gradients/cond/rnn/while/add_1/Enter_grad/b_acc_3:0
Fgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPopV2:0
Jgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1/Enter:0
Dgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1:0
Dgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1:1
Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_acc:0
;gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs:0
;gradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs:1
-gradients/cond/rnn/while/add_1_grad/Reshape:0
/gradients/cond/rnn/while/add_1_grad/Reshape_1:0
+gradients/cond/rnn/while/add_1_grad/Shape:0
-gradients/cond/rnn/while/add_1_grad/Shape_1:0
)gradients/cond/rnn/while/add_1_grad/Sum:0
+gradients/cond/rnn/while/add_1_grad/Sum_1:0
>gradients/cond/rnn/while/add_1_grad/tuple/control_dependency:0
@gradients/cond/rnn/while/add_1_grad/tuple/control_dependency_1:0
Fgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2:0
Hgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1:0
Jgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1/Enter:0
Dgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1:0
Dgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1:1
Jgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3/Enter:0
Dgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3:0
Dgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3:1
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc:0
Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0
;gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs:0
;gradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs:1
-gradients/cond/rnn/while/add_2_grad/Reshape:0
/gradients/cond/rnn/while/add_2_grad/Reshape_1:0
+gradients/cond/rnn/while/add_2_grad/Shape:0
-gradients/cond/rnn/while/add_2_grad/Shape_1:0
)gradients/cond/rnn/while/add_2_grad/Sum:0
+gradients/cond/rnn/while/add_2_grad/Sum_1:0
>gradients/cond/rnn/while/add_2_grad/tuple/control_dependency:0
@gradients/cond/rnn/while/add_2_grad/tuple/control_dependency_1:0
gradients/f_count_2:0
gradients/zeros:0q
0gradients/cond/rnn/while/ExpandDims_grad/Shape:0=gradients/cond/rnn/while/ExpandDims_grad/Reshape/StackPopV2:0≠
Qgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc_1:0Xgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_3/Enter:0
9gradients/cond/rnn/while/Select_1_grad/zeros_like/f_acc:0Bgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter:0j
$cond/rnn/while/ReduceLogSumExp/Exp:0Bgradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/StackPopV2:0Е
(cond/rnn/while/TensorArrayReadV3/Enter:0Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter:0Ђ
Ogradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc:0Xgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_1/Enter:0Ђ
Ogradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/f_acc:0Xgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/Switch_1/Enter:0]
cond/rnn/while/Identity_3:0>gradients/cond/rnn/while/Select_1_grad/zeros_like/StackPopV2:05
gradients/b_count:0gradients/GreaterEqual/Enter:0Ы
Ggradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/f_acc:0Pgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/Switch_1/Enter:0П
Agradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc:0Jgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_1/Enter:0}
8gradients/cond/rnn/while/ExpandDims_grad/Reshape/f_acc:0Agradients/cond/rnn/while/ExpandDims_grad/Reshape/Switch_1/Enter:0П
Agradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/f_acc:0Jgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/Switch_1/Enter:0Х
;gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape_1:0Vgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2_1:0u
+gradients/cond/rnn/while/add_2_grad/Shape:0Fgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2:0Й
*cond/rnn/while/TensorArrayReadV3/Enter_1:0[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1:0§
Econd/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1:0w
5gradients/cond/rnn/while/Select_1_grad/Select/f_acc:0>gradients/cond/rnn/while/Select_1_grad/Select/Switch_1/Enter:0Х
Dgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/f_acc:0Mgradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/Switch_1/Enter:0w
6cond/rnn/while/ReduceLogSumExp/Sum/reduction_indices:0=gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/add/Const:0V
cond/pred_id:0Dgradients/cond/rnn/while/Select_1_grad/zeros_like/Switch_1/Enter_1:0
cond/rnn/while/Identity_1:0`gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/StackPopV2:0Л
=gradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Shape:0Jgradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/StackPopV2:0З
=gradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/f_acc:0Fgradients/cond/rnn/while/ReduceLogSumExp/Exp_grad/mul/Switch_1/Enter:0Ч
Egradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/f_acc:0Ngradients/cond/rnn/while/ReduceLogSumExp/Reshape_grad/Reshape/Switch_1/Enter:0y
-gradients/cond/rnn/while/add_2_grad/Shape_1:0Hgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/StackPopV2_1:0≠
Qgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/f_acc_1:0Xgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/Switch_3/Enter:0q
$cond/rnn/while/ReduceLogSumExp/Sum:0Igradients/cond/rnn/while/ReduceLogSumExp/Log_grad/Reciprocal/StackPopV2:0С
9gradients/cond/rnn/while/ReduceLogSumExp/sub_grad/Shape:0Tgradients/cond/rnn/while/ReduceLogSumExp/sub_grad/BroadcastGradientArgs/StackPopV2:0Й
9gradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/Shape:0Lgradients/cond/rnn/while/ReduceLogSumExp/Sum_grad/DynamicStitch/StackPopV2:0С
9gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape:0Tgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2:0u
+gradients/cond/rnn/while/add_1_grad/Shape:0Fgradients/cond/rnn/while/add_1_grad/BroadcastGradientArgs/StackPopV2:0[
cond/rnn/while/GreaterEqual:0:gradients/cond/rnn/while/Select_1_grad/Select/StackPopV2:0Х
;gradients/cond/rnn/while/ReduceLogSumExp/add_grad/Shape_1:0Vgradients/cond/rnn/while/ReduceLogSumExp/add_grad/BroadcastGradientArgs/StackPopV2_1:0u
cond/rnn/TensorArray_1:0Ygradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter:0С
Cgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/f_acc_1:0Jgradients/cond/rnn/while/add_2_grad/BroadcastGradientArgs/Switch_3/Enter:0√
[gradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/f_acc:0dgradients/cond/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3/Switch_1/Enter:0Rgradients/b_count_1:0R-gradients/cond/rnn/while/Exit_3_grad/b_exit:0R-gradients/cond/rnn/while/Exit_2_grad/b_exit:0RAgradients/cond/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1:0R3gradients/cond/rnn/while/add_1/Enter_grad/b_acc_1:0Zcond/rnn/strided_slice_1:0*ь
serving_defaultи
9
inputs/
Placeholder_1:0€€€€€€€€€€€€€€€€€€-

seq_length
inputs/Sum:0€€€€€€€€€0
transition_params
transitions:0e.
scores$
	Reshape:0€€€€€€€€€@tensorflow/serving/predict