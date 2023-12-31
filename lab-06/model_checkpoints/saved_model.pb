��7
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
�
ScaleAndTranslate
images"T
size	
scale
translation
resized_images"
Ttype:
2
	"!
kernel_typestring
lanczos3"
	antialiasbool(
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
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
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��1
j
ConstConst*&
_output_shapes
:*
dtype0*%
valueB*  �?
l
Const_1Const*&
_output_shapes
:*
dtype0*%
valueB*    
�
random_rotation_6/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*+
shared_namerandom_rotation_6/StateVar
�
.random_rotation_6/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation_6/StateVar*
_output_shapes
:*
dtype0	
�
random_translation_6/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*.
shared_namerandom_translation_6/StateVar
�
1random_translation_6/StateVar/Read/ReadVariableOpReadVariableOprandom_translation_6/StateVar*
_output_shapes
:*
dtype0	
�
random_flip_6/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_flip_6/StateVar
}
*random_flip_6/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_6/StateVar*
_output_shapes
:*
dtype0	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_21/bias
y
(Adam/v/dense_21/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_21/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_21/bias
y
(Adam/m/dense_21/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_21/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/v/dense_21/kernel
�
*Adam/v/dense_21/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_21/kernel*
_output_shapes

: *
dtype0
�
Adam/m/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/m/dense_21/kernel
�
*Adam/m/dense_21/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_21/kernel*
_output_shapes

: *
dtype0
�
Adam/v/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/dense_20/bias
y
(Adam/v/dense_20/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_20/bias*
_output_shapes
: *
dtype0
�
Adam/m/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/dense_20/bias
y
(Adam/m/dense_20/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_20/bias*
_output_shapes
: *
dtype0
�
Adam/v/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/v/dense_20/kernel
�
*Adam/v/dense_20/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_20/kernel*
_output_shapes

:@ *
dtype0
�
Adam/m/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *'
shared_nameAdam/m/dense_20/kernel
�
*Adam/m/dense_20/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_20/kernel*
_output_shapes

:@ *
dtype0
�
Adam/v/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/dense_19/bias
y
(Adam/v/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/bias*
_output_shapes
:@*
dtype0
�
Adam/m/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/dense_19/bias
y
(Adam/m/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/v/dense_19/kernel
�
*Adam/v/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/m/dense_19/kernel
�
*Adam/m/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/kernel*
_output_shapes
:	�@*
dtype0
�
"Adam/v/batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/batch_normalization_27/beta
�
6Adam/v/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_27/beta*
_output_shapes
:@*
dtype0
�
"Adam/m/batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/batch_normalization_27/beta
�
6Adam/m/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_27/beta*
_output_shapes
:@*
dtype0
�
#Adam/v/batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/v/batch_normalization_27/gamma
�
7Adam/v/batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_27/gamma*
_output_shapes
:@*
dtype0
�
#Adam/m/batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/m/batch_normalization_27/gamma
�
7Adam/m/batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_27/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_57/bias
{
)Adam/v/conv2d_57/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_57/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_57/bias
{
)Adam/m/conv2d_57/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_57/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_57/kernel
�
+Adam/v/conv2d_57/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_57/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_57/kernel
�
+Adam/m/conv2d_57/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_57/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/v/conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_56/bias
{
)Adam/v/conv2d_56/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_56/bias*
_output_shapes
:@*
dtype0
�
Adam/m/conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_56/bias
{
)Adam/m/conv2d_56/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_56/bias*
_output_shapes
:@*
dtype0
�
Adam/v/conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_56/kernel
�
+Adam/v/conv2d_56/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_56/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_56/kernel
�
+Adam/m/conv2d_56/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_56/kernel*&
_output_shapes
: @*
dtype0
�
"Adam/v/batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/v/batch_normalization_26/beta
�
6Adam/v/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_26/beta*
_output_shapes
: *
dtype0
�
"Adam/m/batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/m/batch_normalization_26/beta
�
6Adam/m/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_26/beta*
_output_shapes
: *
dtype0
�
#Adam/v/batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/v/batch_normalization_26/gamma
�
7Adam/v/batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_26/gamma*
_output_shapes
: *
dtype0
�
#Adam/m/batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/m/batch_normalization_26/gamma
�
7Adam/m/batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_26/gamma*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_55/bias
{
)Adam/v/conv2d_55/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_55/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_55/bias
{
)Adam/m/conv2d_55/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_55/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/v/conv2d_55/kernel
�
+Adam/v/conv2d_55/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_55/kernel*&
_output_shapes
:  *
dtype0
�
Adam/m/conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/m/conv2d_55/kernel
�
+Adam/m/conv2d_55/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_55/kernel*&
_output_shapes
:  *
dtype0
�
Adam/v/conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_54/bias
{
)Adam/v/conv2d_54/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_54/bias*
_output_shapes
: *
dtype0
�
Adam/m/conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_54/bias
{
)Adam/m/conv2d_54/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_54/bias*
_output_shapes
: *
dtype0
�
Adam/v/conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/v/conv2d_54/kernel
�
+Adam/v/conv2d_54/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_54/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/m/conv2d_54/kernel
�
+Adam/m/conv2d_54/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_54/kernel*&
_output_shapes
: *
dtype0
�
"Adam/v/batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_25/beta
�
6Adam/v/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_25/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_25/beta
�
6Adam/m/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_25/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_25/gamma
�
7Adam/v/batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_25/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_25/gamma
�
7Adam/m/batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_25/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_53/bias
{
)Adam/v/conv2d_53/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_53/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_53/bias
{
)Adam/m/conv2d_53/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_53/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_53/kernel
�
+Adam/v/conv2d_53/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_53/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_53/kernel
�
+Adam/m/conv2d_53/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_53/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_52/bias
{
)Adam/v/conv2d_52/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_52/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_52/bias
{
)Adam/m/conv2d_52/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_52/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_52/kernel
�
+Adam/v/conv2d_52/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_52/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_52/kernel
�
+Adam/m/conv2d_52/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_52/kernel*&
_output_shapes
:*
dtype0
�
"Adam/v/batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/v/batch_normalization_24/beta
�
6Adam/v/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOp"Adam/v/batch_normalization_24/beta*
_output_shapes
:*
dtype0
�
"Adam/m/batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/m/batch_normalization_24/beta
�
6Adam/m/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOp"Adam/m/batch_normalization_24/beta*
_output_shapes
:*
dtype0
�
#Adam/v/batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/v/batch_normalization_24/gamma
�
7Adam/v/batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOp#Adam/v/batch_normalization_24/gamma*
_output_shapes
:*
dtype0
�
#Adam/m/batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/m/batch_normalization_24/gamma
�
7Adam/m/batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOp#Adam/m/batch_normalization_24/gamma*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_51/bias
{
)Adam/v/conv2d_51/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_51/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_51/bias
{
)Adam/m/conv2d_51/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_51/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_51/kernel
�
+Adam/v/conv2d_51/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_51/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_51/kernel
�
+Adam/m/conv2d_51/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_51/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_50/bias
{
)Adam/v/conv2d_50/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_50/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_50/bias
{
)Adam/m/conv2d_50/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_50/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_50/kernel
�
+Adam/v/conv2d_50/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_50/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_50/kernel
�
+Adam/m/conv2d_50/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_50/kernel*&
_output_shapes
:*
dtype0
�
Adam/v/conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/conv2d_49/bias
{
)Adam/v/conv2d_49/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_49/bias*
_output_shapes
:*
dtype0
�
Adam/m/conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/conv2d_49/bias
{
)Adam/m/conv2d_49/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_49/bias*
_output_shapes
:*
dtype0
�
Adam/v/conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/v/conv2d_49/kernel
�
+Adam/v/conv2d_49/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_49/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/m/conv2d_49/kernel
�
+Adam/m/conv2d_49/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_49/kernel*&
_output_shapes
:*
dtype0
~
current_learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_namecurrent_learning_rate
w
)current_learning_rate/Read/ReadVariableOpReadVariableOpcurrent_learning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
z
normalization/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *$
shared_namenormalization/count
s
'normalization/count/Read/ReadVariableOpReadVariableOpnormalization/count*
_output_shapes
: *
dtype0	
�
normalization/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_namenormalization/variance
}
*normalization/variance/Read/ReadVariableOpReadVariableOpnormalization/variance*
_output_shapes
:*
dtype0
|
normalization/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namenormalization/mean
u
&normalization/mean/Read/ReadVariableOpReadVariableOpnormalization/mean*
_output_shapes
:*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

: *
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
: *
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ * 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:@ *
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:@*
dtype0
{
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_19/kernel
t
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes
:	�@*
dtype0
�
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_27/moving_variance
�
:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes
:@*
dtype0
�
"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_27/moving_mean
�
6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes
:@*
dtype0
�
batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_27/beta
�
/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes
:@*
dtype0
�
batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_27/gamma
�
0batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_27/gamma*
_output_shapes
:@*
dtype0
t
conv2d_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_57/bias
m
"conv2d_57/bias/Read/ReadVariableOpReadVariableOpconv2d_57/bias*
_output_shapes
:@*
dtype0
�
conv2d_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_57/kernel
}
$conv2d_57/kernel/Read/ReadVariableOpReadVariableOpconv2d_57/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_56/bias
m
"conv2d_56/bias/Read/ReadVariableOpReadVariableOpconv2d_56/bias*
_output_shapes
:@*
dtype0
�
conv2d_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_56/kernel
}
$conv2d_56/kernel/Read/ReadVariableOpReadVariableOpconv2d_56/kernel*&
_output_shapes
: @*
dtype0
�
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_26/moving_variance
�
:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_26/moving_mean
�
6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_26/beta
�
/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes
: *
dtype0
�
batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_26/gamma
�
0batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_26/gamma*
_output_shapes
: *
dtype0
t
conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_55/bias
m
"conv2d_55/bias/Read/ReadVariableOpReadVariableOpconv2d_55/bias*
_output_shapes
: *
dtype0
�
conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_55/kernel
}
$conv2d_55/kernel/Read/ReadVariableOpReadVariableOpconv2d_55/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_54/bias
m
"conv2d_54/bias/Read/ReadVariableOpReadVariableOpconv2d_54/bias*
_output_shapes
: *
dtype0
�
conv2d_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_54/kernel
}
$conv2d_54/kernel/Read/ReadVariableOpReadVariableOpconv2d_54/kernel*&
_output_shapes
: *
dtype0
�
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_25/moving_variance
�
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_25/moving_mean
�
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_25/beta
�
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes
:*
dtype0
�
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_25/gamma
�
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes
:*
dtype0
t
conv2d_53/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_53/bias
m
"conv2d_53/bias/Read/ReadVariableOpReadVariableOpconv2d_53/bias*
_output_shapes
:*
dtype0
�
conv2d_53/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_53/kernel
}
$conv2d_53/kernel/Read/ReadVariableOpReadVariableOpconv2d_53/kernel*&
_output_shapes
:*
dtype0
t
conv2d_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_52/bias
m
"conv2d_52/bias/Read/ReadVariableOpReadVariableOpconv2d_52/bias*
_output_shapes
:*
dtype0
�
conv2d_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_52/kernel
}
$conv2d_52/kernel/Read/ReadVariableOpReadVariableOpconv2d_52/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_24/moving_variance
�
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_24/moving_mean
�
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_24/beta
�
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes
:*
dtype0
�
batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_24/gamma
�
0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes
:*
dtype0
t
conv2d_51/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_51/bias
m
"conv2d_51/bias/Read/ReadVariableOpReadVariableOpconv2d_51/bias*
_output_shapes
:*
dtype0
�
conv2d_51/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_51/kernel
}
$conv2d_51/kernel/Read/ReadVariableOpReadVariableOpconv2d_51/kernel*&
_output_shapes
:*
dtype0
t
conv2d_50/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_50/bias
m
"conv2d_50/bias/Read/ReadVariableOpReadVariableOpconv2d_50/bias*
_output_shapes
:*
dtype0
�
conv2d_50/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_50/kernel
}
$conv2d_50/kernel/Read/ReadVariableOpReadVariableOpconv2d_50/kernel*&
_output_shapes
:*
dtype0
t
conv2d_49/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_49/bias
m
"conv2d_49/bias/Read/ReadVariableOpReadVariableOpconv2d_49/bias*
_output_shapes
:*
dtype0
�
conv2d_49/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_49/kernel
}
$conv2d_49/kernel/Read/ReadVariableOpReadVariableOpconv2d_49/kernel*&
_output_shapes
:*
dtype0
�
serving_default_input_7Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_7conv2d_49/kernelconv2d_49/biasConst_1Constconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_variancedense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_1216075

NoOpNoOp
ߗ
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer-17
layer-18
layer_with_weights-11
layer-19
layer_with_weights-12
layer-20
layer_with_weights-13
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer_with_weights-14
layer-27
layer_with_weights-15
layer-28
layer_with_weights-16
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&	optimizer
'
signatures*
* 
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
�
7layer_with_weights-0
7layer-0
8layer-1
9layer-2
:layer-3
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses*
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
 I_jit_compiled_convolution_op*
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op*
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance*
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias
 r_jit_compiled_convolution_op*
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias
 {_jit_compiled_convolution_op*
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
.0
/1
�2
�3
�4
G5
H6
P7
Q8
Z9
[10
\11
]12
p13
q14
y15
z16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42*
�
.0
/1
G2
H3
P4
Q5
Z6
[7
p8
q9
y10
z11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
"
�	capture_2
�	capture_3* 
�
�
_variables
�_iterations
�_current_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 

.0
/1*

.0
/1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_49/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_49/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
�
�	keras_api
�
_keep_axis
�_reduce_axis
�_reduce_axis_mask
�_broadcast_shape
	�mean
�
adapt_mean
�variance
�adapt_variance

�count*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*

�0
�1
�2*
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

G0
H1*

G0
H1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_50/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_50/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

P0
Q1*

P0
Q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_51/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_51/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
Z0
[1
\2
]3*

Z0
[1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_24/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

p0
q1*

p0
q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_52/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_52/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

y0
z1*

y0
z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_53/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_53/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_25/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_54/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_54/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_55/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_55/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_26/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_26/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_26/moving_mean<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_26/moving_variance@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_56/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_56/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
a[
VARIABLE_VALUEconv2d_57/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_57/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
�0
�1
�2
�3*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
lf
VARIABLE_VALUEbatch_normalization_27/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEbatch_normalization_27/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE"batch_normalization_27/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE&batch_normalization_27/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_19/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_19/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_20/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_20/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_21/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_21/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEnormalization/mean&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEnormalization/variance&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEnormalization/count&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
[
�0
�1
�2
\3
]4
�5
�6
�7
�8
�9
�10*
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29*

�0
�1*
* 
* 
"
�	capture_2
�	capture_3* 
"
�	capture_2
�	capture_3* 
"
�	capture_2
�	capture_3* 
"
�	capture_2
�	capture_3* 
"
�	capture_2
�	capture_3* 
"
�	capture_2
�	capture_3* 
"
�	capture_2
�	capture_3* 
"
�	capture_2
�	capture_3* 
* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcurrent_learning_rate;optimizer/_current_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31*
* 
"
�	capture_2
�	capture_3* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*

�0
�1
�2*
 
70
81
92
:3*
* 
* 
* 
"
�	capture_0
�	capture_1* 
"
�	capture_0
�	capture_1* 
"
�	capture_0
�	capture_1* 
"
�	capture_0
�	capture_1* 
"
�	capture_0
�	capture_1* 
"
�	capture_0
�	capture_1* 
"
�	capture_0
�	capture_1* 
"
�	capture_0
�	capture_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

\0
]1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_49/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_49/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_49/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_49/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_50/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_50/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_50/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_50/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_51/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_51/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_51/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_51/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_24/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_24/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_24/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_24/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_52/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_52/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_52/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_52/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_53/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_53/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_53/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_53/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_25/gamma2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_25/gamma2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_25/beta2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_25/beta2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_54/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_54/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_54/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_54/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_55/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_55/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_55/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_55/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_26/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_26/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_26/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_26/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_56/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_56/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_56/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_56/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_57/kernel2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_57/kernel2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_57/bias2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_57/bias2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/m/batch_normalization_27/gamma2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/batch_normalization_27/gamma2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/batch_normalization_27/beta2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/batch_normalization_27/beta2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_19/kernel2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_19/kernel2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_19/bias2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_19/bias2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_20/kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_20/kernel2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_20/bias2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_20/bias2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_21/kernel2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_21/kernel2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_21/bias2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_21/bias2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
��
VARIABLE_VALUErandom_flip_6/StateVar_layer_with_weights-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUErandom_translation_6/StateVar_layer_with_weights-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUErandom_rotation_6/StateVar_layer_with_weights-1/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_49/kernelconv2d_49/biasconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_variancedense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/biasnormalization/meannormalization/variancenormalization/count	iterationcurrent_learning_rateAdam/m/conv2d_49/kernelAdam/v/conv2d_49/kernelAdam/m/conv2d_49/biasAdam/v/conv2d_49/biasAdam/m/conv2d_50/kernelAdam/v/conv2d_50/kernelAdam/m/conv2d_50/biasAdam/v/conv2d_50/biasAdam/m/conv2d_51/kernelAdam/v/conv2d_51/kernelAdam/m/conv2d_51/biasAdam/v/conv2d_51/bias#Adam/m/batch_normalization_24/gamma#Adam/v/batch_normalization_24/gamma"Adam/m/batch_normalization_24/beta"Adam/v/batch_normalization_24/betaAdam/m/conv2d_52/kernelAdam/v/conv2d_52/kernelAdam/m/conv2d_52/biasAdam/v/conv2d_52/biasAdam/m/conv2d_53/kernelAdam/v/conv2d_53/kernelAdam/m/conv2d_53/biasAdam/v/conv2d_53/bias#Adam/m/batch_normalization_25/gamma#Adam/v/batch_normalization_25/gamma"Adam/m/batch_normalization_25/beta"Adam/v/batch_normalization_25/betaAdam/m/conv2d_54/kernelAdam/v/conv2d_54/kernelAdam/m/conv2d_54/biasAdam/v/conv2d_54/biasAdam/m/conv2d_55/kernelAdam/v/conv2d_55/kernelAdam/m/conv2d_55/biasAdam/v/conv2d_55/bias#Adam/m/batch_normalization_26/gamma#Adam/v/batch_normalization_26/gamma"Adam/m/batch_normalization_26/beta"Adam/v/batch_normalization_26/betaAdam/m/conv2d_56/kernelAdam/v/conv2d_56/kernelAdam/m/conv2d_56/biasAdam/v/conv2d_56/biasAdam/m/conv2d_57/kernelAdam/v/conv2d_57/kernelAdam/m/conv2d_57/biasAdam/v/conv2d_57/bias#Adam/m/batch_normalization_27/gamma#Adam/v/batch_normalization_27/gamma"Adam/m/batch_normalization_27/beta"Adam/v/batch_normalization_27/betaAdam/m/dense_19/kernelAdam/v/dense_19/kernelAdam/m/dense_19/biasAdam/v/dense_19/biasAdam/m/dense_20/kernelAdam/v/dense_20/kernelAdam/m/dense_20/biasAdam/v/dense_20/biasAdam/m/dense_21/kernelAdam/v/dense_21/kernelAdam/m/dense_21/biasAdam/v/dense_21/biastotal_1count_1totalcountrandom_flip_6/StateVarrandom_translation_6/StateVarrandom_rotation_6/StateVarConst_2*�
Tinz
x2v*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__traced_save_1219088
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_49/kernelconv2d_49/biasconv2d_50/kernelconv2d_50/biasconv2d_51/kernelconv2d_51/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_52/kernelconv2d_52/biasconv2d_53/kernelconv2d_53/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_54/kernelconv2d_54/biasconv2d_55/kernelconv2d_55/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_56/kernelconv2d_56/biasconv2d_57/kernelconv2d_57/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_variancedense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/biasnormalization/meannormalization/variancenormalization/count	iterationcurrent_learning_rateAdam/m/conv2d_49/kernelAdam/v/conv2d_49/kernelAdam/m/conv2d_49/biasAdam/v/conv2d_49/biasAdam/m/conv2d_50/kernelAdam/v/conv2d_50/kernelAdam/m/conv2d_50/biasAdam/v/conv2d_50/biasAdam/m/conv2d_51/kernelAdam/v/conv2d_51/kernelAdam/m/conv2d_51/biasAdam/v/conv2d_51/bias#Adam/m/batch_normalization_24/gamma#Adam/v/batch_normalization_24/gamma"Adam/m/batch_normalization_24/beta"Adam/v/batch_normalization_24/betaAdam/m/conv2d_52/kernelAdam/v/conv2d_52/kernelAdam/m/conv2d_52/biasAdam/v/conv2d_52/biasAdam/m/conv2d_53/kernelAdam/v/conv2d_53/kernelAdam/m/conv2d_53/biasAdam/v/conv2d_53/bias#Adam/m/batch_normalization_25/gamma#Adam/v/batch_normalization_25/gamma"Adam/m/batch_normalization_25/beta"Adam/v/batch_normalization_25/betaAdam/m/conv2d_54/kernelAdam/v/conv2d_54/kernelAdam/m/conv2d_54/biasAdam/v/conv2d_54/biasAdam/m/conv2d_55/kernelAdam/v/conv2d_55/kernelAdam/m/conv2d_55/biasAdam/v/conv2d_55/bias#Adam/m/batch_normalization_26/gamma#Adam/v/batch_normalization_26/gamma"Adam/m/batch_normalization_26/beta"Adam/v/batch_normalization_26/betaAdam/m/conv2d_56/kernelAdam/v/conv2d_56/kernelAdam/m/conv2d_56/biasAdam/v/conv2d_56/biasAdam/m/conv2d_57/kernelAdam/v/conv2d_57/kernelAdam/m/conv2d_57/biasAdam/v/conv2d_57/bias#Adam/m/batch_normalization_27/gamma#Adam/v/batch_normalization_27/gamma"Adam/m/batch_normalization_27/beta"Adam/v/batch_normalization_27/betaAdam/m/dense_19/kernelAdam/v/dense_19/kernelAdam/m/dense_19/biasAdam/v/dense_19/biasAdam/m/dense_20/kernelAdam/v/dense_20/kernelAdam/m/dense_20/biasAdam/v/dense_20/biasAdam/m/dense_21/kernelAdam/v/dense_21/kernelAdam/m/dense_21/biasAdam/v/dense_21/biastotal_1count_1totalcountrandom_flip_6/StateVarrandom_translation_6/StateVarrandom_rotation_6/StateVar*�
Tiny
w2u*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__traced_restore_1219446��,
�

/__inference_random_flip_6_layer_call_fn_1217966

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214048w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1214665

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
E__inference_dense_19_layer_call_and_return_conditional_losses_1215045

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1214869

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
a
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1217597

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1214513

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
F
*__inference_re_lu_25_layer_call_fn_1217592

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1214906h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1214937

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1214741

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1214753

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1214971

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217465

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_model_6_layer_call_and_return_conditional_losses_1215086
input_7+
conv2d_49_1214774:
conv2d_49_1214776:
sequential_6_1214796
sequential_6_1214798"
sequential_6_1214800:	"
sequential_6_1214802:	"
sequential_6_1214804:	+
conv2d_50_1214819:
conv2d_50_1214821:+
conv2d_51_1214836:
conv2d_51_1214838:,
batch_normalization_24_1214841:,
batch_normalization_24_1214843:,
batch_normalization_24_1214845:,
batch_normalization_24_1214847:+
conv2d_52_1214870:
conv2d_52_1214872:+
conv2d_53_1214887:
conv2d_53_1214889:,
batch_normalization_25_1214892:,
batch_normalization_25_1214894:,
batch_normalization_25_1214896:,
batch_normalization_25_1214898:+
conv2d_54_1214921: 
conv2d_54_1214923: +
conv2d_55_1214938:  
conv2d_55_1214940: ,
batch_normalization_26_1214943: ,
batch_normalization_26_1214945: ,
batch_normalization_26_1214947: ,
batch_normalization_26_1214949: +
conv2d_56_1214972: @
conv2d_56_1214974:@+
conv2d_57_1214989:@@
conv2d_57_1214991:@,
batch_normalization_27_1214994:@,
batch_normalization_27_1214996:@,
batch_normalization_27_1214998:@,
batch_normalization_27_1215000:@#
dense_19_1215046:	�@
dense_19_1215048:@"
dense_20_1215063:@ 
dense_20_1215065: "
dense_21_1215080: 
dense_21_1215082:
identity��.batch_normalization_24/StatefulPartitionedCall�.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall�!conv2d_50/StatefulPartitionedCall�!conv2d_51/StatefulPartitionedCall�!conv2d_52/StatefulPartitionedCall�!conv2d_53/StatefulPartitionedCall�!conv2d_54/StatefulPartitionedCall�!conv2d_55/StatefulPartitionedCall�!conv2d_56/StatefulPartitionedCall�!conv2d_57/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�$sequential_6/StatefulPartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCallinput_7conv2d_49_1214774conv2d_49_1214776*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1214773�
resizing_6/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_1214794�
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall#resizing_6/PartitionedCall:output:0sequential_6_1214796sequential_6_1214798sequential_6_1214800sequential_6_1214802sequential_6_1214804*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214344�
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0conv2d_50_1214819conv2d_50_1214821*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1214818�
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1214836conv2d_51_1214838*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1214835�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0batch_normalization_24_1214841batch_normalization_24_1214843batch_normalization_24_1214845batch_normalization_24_1214847*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214462�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1214855�
 max_pooling2d_30/PartitionedCallPartitionedCall!re_lu_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1214513�
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_52_1214870conv2d_52_1214872*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1214869�
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1214887conv2d_53_1214889*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1214886�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_25_1214892batch_normalization_25_1214894batch_normalization_25_1214896batch_normalization_25_1214898*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214538�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1214906�
 max_pooling2d_31/PartitionedCallPartitionedCall!re_lu_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1214589�
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_54_1214921conv2d_54_1214923*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1214920�
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_1214938conv2d_55_1214940*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1214937�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0batch_normalization_26_1214943batch_normalization_26_1214945batch_normalization_26_1214947batch_normalization_26_1214949*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214614�
re_lu_26/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1214957�
 max_pooling2d_32/PartitionedCallPartitionedCall!re_lu_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1214665�
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_56_1214972conv2d_56_1214974*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1214971�
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_1214989conv2d_57_1214991*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1214988�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_27_1214994batch_normalization_27_1214996batch_normalization_27_1214998batch_normalization_27_1215000*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214690�
re_lu_27/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1215008�
 max_pooling2d_33/PartitionedCallPartitionedCall!re_lu_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1214741�
 max_pooling2d_34/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1214753�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_1215018�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215032�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_19_1215046dense_19_1215048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1215045�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_1215063dense_20_1215065*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1215062�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_1215080dense_21_1215082*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1215079x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7
�
d
+__inference_dropout_6_layer_call_fn_1217877

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215032p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1217475

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�	
�
.__inference_sequential_6_layer_call_fn_1214357
normalization_input
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallnormalization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214344w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������@@::: : : 22
StatefulPartitionedCallStatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::d `
/
_output_shapes
:���������@@
-
_user_specified_namenormalization_input
�
�
+__inference_conv2d_56_layer_call_fn_1217738

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1214971w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�'
"__inference__wrapped_model_1213926
input_7J
0model_6_conv2d_49_conv2d_readvariableop_resource:?
1model_6_conv2d_49_biasadd_readvariableop_resource:,
(model_6_sequential_6_normalization_sub_y-
)model_6_sequential_6_normalization_sqrt_xJ
0model_6_conv2d_50_conv2d_readvariableop_resource:?
1model_6_conv2d_50_biasadd_readvariableop_resource:J
0model_6_conv2d_51_conv2d_readvariableop_resource:?
1model_6_conv2d_51_biasadd_readvariableop_resource:D
6model_6_batch_normalization_24_readvariableop_resource:F
8model_6_batch_normalization_24_readvariableop_1_resource:U
Gmodel_6_batch_normalization_24_fusedbatchnormv3_readvariableop_resource:W
Imodel_6_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:J
0model_6_conv2d_52_conv2d_readvariableop_resource:?
1model_6_conv2d_52_biasadd_readvariableop_resource:J
0model_6_conv2d_53_conv2d_readvariableop_resource:?
1model_6_conv2d_53_biasadd_readvariableop_resource:D
6model_6_batch_normalization_25_readvariableop_resource:F
8model_6_batch_normalization_25_readvariableop_1_resource:U
Gmodel_6_batch_normalization_25_fusedbatchnormv3_readvariableop_resource:W
Imodel_6_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:J
0model_6_conv2d_54_conv2d_readvariableop_resource: ?
1model_6_conv2d_54_biasadd_readvariableop_resource: J
0model_6_conv2d_55_conv2d_readvariableop_resource:  ?
1model_6_conv2d_55_biasadd_readvariableop_resource: D
6model_6_batch_normalization_26_readvariableop_resource: F
8model_6_batch_normalization_26_readvariableop_1_resource: U
Gmodel_6_batch_normalization_26_fusedbatchnormv3_readvariableop_resource: W
Imodel_6_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource: J
0model_6_conv2d_56_conv2d_readvariableop_resource: @?
1model_6_conv2d_56_biasadd_readvariableop_resource:@J
0model_6_conv2d_57_conv2d_readvariableop_resource:@@?
1model_6_conv2d_57_biasadd_readvariableop_resource:@D
6model_6_batch_normalization_27_readvariableop_resource:@F
8model_6_batch_normalization_27_readvariableop_1_resource:@U
Gmodel_6_batch_normalization_27_fusedbatchnormv3_readvariableop_resource:@W
Imodel_6_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:@B
/model_6_dense_19_matmul_readvariableop_resource:	�@>
0model_6_dense_19_biasadd_readvariableop_resource:@A
/model_6_dense_20_matmul_readvariableop_resource:@ >
0model_6_dense_20_biasadd_readvariableop_resource: A
/model_6_dense_21_matmul_readvariableop_resource: >
0model_6_dense_21_biasadd_readvariableop_resource:
identity��>model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp�@model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�-model_6/batch_normalization_24/ReadVariableOp�/model_6/batch_normalization_24/ReadVariableOp_1�>model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp�@model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1�-model_6/batch_normalization_25/ReadVariableOp�/model_6/batch_normalization_25/ReadVariableOp_1�>model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp�@model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1�-model_6/batch_normalization_26/ReadVariableOp�/model_6/batch_normalization_26/ReadVariableOp_1�>model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp�@model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1�-model_6/batch_normalization_27/ReadVariableOp�/model_6/batch_normalization_27/ReadVariableOp_1�(model_6/conv2d_49/BiasAdd/ReadVariableOp�'model_6/conv2d_49/Conv2D/ReadVariableOp�(model_6/conv2d_50/BiasAdd/ReadVariableOp�'model_6/conv2d_50/Conv2D/ReadVariableOp�(model_6/conv2d_51/BiasAdd/ReadVariableOp�'model_6/conv2d_51/Conv2D/ReadVariableOp�(model_6/conv2d_52/BiasAdd/ReadVariableOp�'model_6/conv2d_52/Conv2D/ReadVariableOp�(model_6/conv2d_53/BiasAdd/ReadVariableOp�'model_6/conv2d_53/Conv2D/ReadVariableOp�(model_6/conv2d_54/BiasAdd/ReadVariableOp�'model_6/conv2d_54/Conv2D/ReadVariableOp�(model_6/conv2d_55/BiasAdd/ReadVariableOp�'model_6/conv2d_55/Conv2D/ReadVariableOp�(model_6/conv2d_56/BiasAdd/ReadVariableOp�'model_6/conv2d_56/Conv2D/ReadVariableOp�(model_6/conv2d_57/BiasAdd/ReadVariableOp�'model_6/conv2d_57/Conv2D/ReadVariableOp�'model_6/dense_19/BiasAdd/ReadVariableOp�&model_6/dense_19/MatMul/ReadVariableOp�'model_6/dense_20/BiasAdd/ReadVariableOp�&model_6/dense_20/MatMul/ReadVariableOp�'model_6/dense_21/BiasAdd/ReadVariableOp�&model_6/dense_21/MatMul/ReadVariableOp�
'model_6/conv2d_49/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_6/conv2d_49/Conv2DConv2Dinput_7/model_6/conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(model_6/conv2d_49/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_6/conv2d_49/BiasAddBiasAdd!model_6/conv2d_49/Conv2D:output:00model_6/conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������o
model_6/resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"@   @   �
model_6/resizing_6/resize/CastCast'model_6/resizing_6/resize/size:output:0*

DstT0*

SrcT0*
_output_shapes
:
model_6/resizing_6/resize/ShapeShape"model_6/conv2d_49/BiasAdd:output:0*
T0*
_output_shapes
::��w
-model_6/resizing_6/resize/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/model_6/resizing_6/resize/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/model_6/resizing_6/resize/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'model_6/resizing_6/resize/strided_sliceStridedSlice(model_6/resizing_6/resize/Shape:output:06model_6/resizing_6/resize/strided_slice/stack:output:08model_6/resizing_6/resize/strided_slice/stack_1:output:08model_6/resizing_6/resize/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
 model_6/resizing_6/resize/Cast_1Cast0model_6/resizing_6/resize/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
:�
!model_6/resizing_6/resize/truedivRealDiv"model_6/resizing_6/resize/Cast:y:0$model_6/resizing_6/resize/Cast_1:y:0*
T0*
_output_shapes
:l
model_6/resizing_6/resize/zerosConst*
_output_shapes
:*
dtype0*
valueB*    �
+model_6/resizing_6/resize/ScaleAndTranslateScaleAndTranslate"model_6/conv2d_49/BiasAdd:output:0'model_6/resizing_6/resize/size:output:0%model_6/resizing_6/resize/truediv:z:0(model_6/resizing_6/resize/zeros:output:0*
T0*/
_output_shapes
:���������@@*
	antialias( �
&model_6/sequential_6/normalization/subSub<model_6/resizing_6/resize/ScaleAndTranslate:resized_images:0(model_6_sequential_6_normalization_sub_y*
T0*/
_output_shapes
:���������@@�
'model_6/sequential_6/normalization/SqrtSqrt)model_6_sequential_6_normalization_sqrt_x*
T0*&
_output_shapes
:q
,model_6/sequential_6/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
*model_6/sequential_6/normalization/MaximumMaximum+model_6/sequential_6/normalization/Sqrt:y:05model_6/sequential_6/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
*model_6/sequential_6/normalization/truedivRealDiv*model_6/sequential_6/normalization/sub:z:0.model_6/sequential_6/normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@�
'model_6/conv2d_50/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_50_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_6/conv2d_50/Conv2DConv2D.model_6/sequential_6/normalization/truediv:z:0/model_6/conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
(model_6/conv2d_50/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_6/conv2d_50/BiasAddBiasAdd!model_6/conv2d_50/Conv2D:output:00model_6/conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@|
model_6/conv2d_50/ReluRelu"model_6/conv2d_50/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
'model_6/conv2d_51/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_6/conv2d_51/Conv2DConv2D$model_6/conv2d_50/Relu:activations:0/model_6/conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
(model_6/conv2d_51/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_6/conv2d_51/BiasAddBiasAdd!model_6/conv2d_51/Conv2D:output:00model_6/conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@|
model_6/conv2d_51/ReluRelu"model_6/conv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
-model_6/batch_normalization_24/ReadVariableOpReadVariableOp6model_6_batch_normalization_24_readvariableop_resource*
_output_shapes
:*
dtype0�
/model_6/batch_normalization_24/ReadVariableOp_1ReadVariableOp8model_6_batch_normalization_24_readvariableop_1_resource*
_output_shapes
:*
dtype0�
>model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_6_batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_6_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_6/batch_normalization_24/FusedBatchNormV3FusedBatchNormV3$model_6/conv2d_51/Relu:activations:05model_6/batch_normalization_24/ReadVariableOp:value:07model_6/batch_normalization_24/ReadVariableOp_1:value:0Fmodel_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@:::::*
epsilon%o�:*
is_training( �
model_6/re_lu_24/ReluRelu3model_6/batch_normalization_24/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@@�
 model_6/max_pooling2d_30/MaxPoolMaxPool#model_6/re_lu_24/Relu:activations:0*/
_output_shapes
:���������  *
ksize
*
paddingVALID*
strides
�
'model_6/conv2d_52/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_6/conv2d_52/Conv2DConv2D)model_6/max_pooling2d_30/MaxPool:output:0/model_6/conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
(model_6/conv2d_52/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_6/conv2d_52/BiasAddBiasAdd!model_6/conv2d_52/Conv2D:output:00model_6/conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  |
model_6/conv2d_52/ReluRelu"model_6/conv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
'model_6/conv2d_53/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_6/conv2d_53/Conv2DConv2D$model_6/conv2d_52/Relu:activations:0/model_6/conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
(model_6/conv2d_53/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_6/conv2d_53/BiasAddBiasAdd!model_6/conv2d_53/Conv2D:output:00model_6/conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  |
model_6/conv2d_53/ReluRelu"model_6/conv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
-model_6/batch_normalization_25/ReadVariableOpReadVariableOp6model_6_batch_normalization_25_readvariableop_resource*
_output_shapes
:*
dtype0�
/model_6/batch_normalization_25/ReadVariableOp_1ReadVariableOp8model_6_batch_normalization_25_readvariableop_1_resource*
_output_shapes
:*
dtype0�
>model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_6_batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
@model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_6_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
/model_6/batch_normalization_25/FusedBatchNormV3FusedBatchNormV3$model_6/conv2d_53/Relu:activations:05model_6/batch_normalization_25/ReadVariableOp:value:07model_6/batch_normalization_25/ReadVariableOp_1:value:0Fmodel_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
is_training( �
model_6/re_lu_25/ReluRelu3model_6/batch_normalization_25/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  �
 model_6/max_pooling2d_31/MaxPoolMaxPool#model_6/re_lu_25/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
'model_6/conv2d_54/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_6/conv2d_54/Conv2DConv2D)model_6/max_pooling2d_31/MaxPool:output:0/model_6/conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
(model_6/conv2d_54/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_6/conv2d_54/BiasAddBiasAdd!model_6/conv2d_54/Conv2D:output:00model_6/conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� |
model_6/conv2d_54/ReluRelu"model_6/conv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
'model_6/conv2d_55/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
model_6/conv2d_55/Conv2DConv2D$model_6/conv2d_54/Relu:activations:0/model_6/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
(model_6/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_6/conv2d_55/BiasAddBiasAdd!model_6/conv2d_55/Conv2D:output:00model_6/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� |
model_6/conv2d_55/ReluRelu"model_6/conv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
-model_6/batch_normalization_26/ReadVariableOpReadVariableOp6model_6_batch_normalization_26_readvariableop_resource*
_output_shapes
: *
dtype0�
/model_6/batch_normalization_26/ReadVariableOp_1ReadVariableOp8model_6_batch_normalization_26_readvariableop_1_resource*
_output_shapes
: *
dtype0�
>model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_6_batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
@model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_6_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
/model_6/batch_normalization_26/FusedBatchNormV3FusedBatchNormV3$model_6/conv2d_55/Relu:activations:05model_6/batch_normalization_26/ReadVariableOp:value:07model_6/batch_normalization_26/ReadVariableOp_1:value:0Fmodel_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
model_6/re_lu_26/ReluRelu3model_6/batch_normalization_26/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� �
 model_6/max_pooling2d_32/MaxPoolMaxPool#model_6/re_lu_26/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
'model_6/conv2d_56/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
model_6/conv2d_56/Conv2DConv2D)model_6/max_pooling2d_32/MaxPool:output:0/model_6/conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
(model_6/conv2d_56/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_6/conv2d_56/BiasAddBiasAdd!model_6/conv2d_56/Conv2D:output:00model_6/conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@|
model_6/conv2d_56/ReluRelu"model_6/conv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
'model_6/conv2d_57/Conv2D/ReadVariableOpReadVariableOp0model_6_conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
model_6/conv2d_57/Conv2DConv2D$model_6/conv2d_56/Relu:activations:0/model_6/conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
(model_6/conv2d_57/BiasAdd/ReadVariableOpReadVariableOp1model_6_conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_6/conv2d_57/BiasAddBiasAdd!model_6/conv2d_57/Conv2D:output:00model_6/conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@|
model_6/conv2d_57/ReluRelu"model_6/conv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
-model_6/batch_normalization_27/ReadVariableOpReadVariableOp6model_6_batch_normalization_27_readvariableop_resource*
_output_shapes
:@*
dtype0�
/model_6/batch_normalization_27/ReadVariableOp_1ReadVariableOp8model_6_batch_normalization_27_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
>model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_6_batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
@model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_6_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
/model_6/batch_normalization_27/FusedBatchNormV3FusedBatchNormV3$model_6/conv2d_57/Relu:activations:05model_6/batch_normalization_27/ReadVariableOp:value:07model_6/batch_normalization_27/ReadVariableOp_1:value:0Fmodel_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
model_6/re_lu_27/ReluRelu3model_6/batch_normalization_27/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@�
 model_6/max_pooling2d_33/MaxPoolMaxPool#model_6/re_lu_27/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
 model_6/max_pooling2d_34/MaxPoolMaxPool)model_6/max_pooling2d_33/MaxPool:output:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
h
model_6/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_6/flatten_6/ReshapeReshape)model_6/max_pooling2d_34/MaxPool:output:0 model_6/flatten_6/Const:output:0*
T0*(
_output_shapes
:����������}
model_6/dropout_6/IdentityIdentity"model_6/flatten_6/Reshape:output:0*
T0*(
_output_shapes
:�����������
&model_6/dense_19/MatMul/ReadVariableOpReadVariableOp/model_6_dense_19_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model_6/dense_19/MatMulMatMul#model_6/dropout_6/Identity:output:0.model_6/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
'model_6/dense_19/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_6/dense_19/BiasAddBiasAdd!model_6/dense_19/MatMul:product:0/model_6/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
model_6/dense_19/ReluRelu!model_6/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
&model_6/dense_20/MatMul/ReadVariableOpReadVariableOp/model_6_dense_20_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
model_6/dense_20/MatMulMatMul#model_6/dense_19/Relu:activations:0.model_6/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
'model_6/dense_20/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_6/dense_20/BiasAddBiasAdd!model_6/dense_20/MatMul:product:0/model_6/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
model_6/dense_20/ReluRelu!model_6/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
&model_6/dense_21/MatMul/ReadVariableOpReadVariableOp/model_6_dense_21_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_6/dense_21/MatMulMatMul#model_6/dense_20/Relu:activations:0.model_6/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_6/dense_21/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_6/dense_21/BiasAddBiasAdd!model_6/dense_21/MatMul:product:0/model_6/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_6/dense_21/SoftmaxSoftmax!model_6/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:���������q
IdentityIdentity"model_6/dense_21/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp?^model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOpA^model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1.^model_6/batch_normalization_24/ReadVariableOp0^model_6/batch_normalization_24/ReadVariableOp_1?^model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOpA^model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1.^model_6/batch_normalization_25/ReadVariableOp0^model_6/batch_normalization_25/ReadVariableOp_1?^model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOpA^model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1.^model_6/batch_normalization_26/ReadVariableOp0^model_6/batch_normalization_26/ReadVariableOp_1?^model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOpA^model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1.^model_6/batch_normalization_27/ReadVariableOp0^model_6/batch_normalization_27/ReadVariableOp_1)^model_6/conv2d_49/BiasAdd/ReadVariableOp(^model_6/conv2d_49/Conv2D/ReadVariableOp)^model_6/conv2d_50/BiasAdd/ReadVariableOp(^model_6/conv2d_50/Conv2D/ReadVariableOp)^model_6/conv2d_51/BiasAdd/ReadVariableOp(^model_6/conv2d_51/Conv2D/ReadVariableOp)^model_6/conv2d_52/BiasAdd/ReadVariableOp(^model_6/conv2d_52/Conv2D/ReadVariableOp)^model_6/conv2d_53/BiasAdd/ReadVariableOp(^model_6/conv2d_53/Conv2D/ReadVariableOp)^model_6/conv2d_54/BiasAdd/ReadVariableOp(^model_6/conv2d_54/Conv2D/ReadVariableOp)^model_6/conv2d_55/BiasAdd/ReadVariableOp(^model_6/conv2d_55/Conv2D/ReadVariableOp)^model_6/conv2d_56/BiasAdd/ReadVariableOp(^model_6/conv2d_56/Conv2D/ReadVariableOp)^model_6/conv2d_57/BiasAdd/ReadVariableOp(^model_6/conv2d_57/Conv2D/ReadVariableOp(^model_6/dense_19/BiasAdd/ReadVariableOp'^model_6/dense_19/MatMul/ReadVariableOp(^model_6/dense_20/BiasAdd/ReadVariableOp'^model_6/dense_20/MatMul/ReadVariableOp(^model_6/dense_21/BiasAdd/ReadVariableOp'^model_6/dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
@model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1@model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12�
>model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp>model_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp2b
/model_6/batch_normalization_24/ReadVariableOp_1/model_6/batch_normalization_24/ReadVariableOp_12^
-model_6/batch_normalization_24/ReadVariableOp-model_6/batch_normalization_24/ReadVariableOp2�
@model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1@model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12�
>model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp>model_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp2b
/model_6/batch_normalization_25/ReadVariableOp_1/model_6/batch_normalization_25/ReadVariableOp_12^
-model_6/batch_normalization_25/ReadVariableOp-model_6/batch_normalization_25/ReadVariableOp2�
@model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1@model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12�
>model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp>model_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp2b
/model_6/batch_normalization_26/ReadVariableOp_1/model_6/batch_normalization_26/ReadVariableOp_12^
-model_6/batch_normalization_26/ReadVariableOp-model_6/batch_normalization_26/ReadVariableOp2�
@model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1@model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12�
>model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp>model_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp2b
/model_6/batch_normalization_27/ReadVariableOp_1/model_6/batch_normalization_27/ReadVariableOp_12^
-model_6/batch_normalization_27/ReadVariableOp-model_6/batch_normalization_27/ReadVariableOp2T
(model_6/conv2d_49/BiasAdd/ReadVariableOp(model_6/conv2d_49/BiasAdd/ReadVariableOp2R
'model_6/conv2d_49/Conv2D/ReadVariableOp'model_6/conv2d_49/Conv2D/ReadVariableOp2T
(model_6/conv2d_50/BiasAdd/ReadVariableOp(model_6/conv2d_50/BiasAdd/ReadVariableOp2R
'model_6/conv2d_50/Conv2D/ReadVariableOp'model_6/conv2d_50/Conv2D/ReadVariableOp2T
(model_6/conv2d_51/BiasAdd/ReadVariableOp(model_6/conv2d_51/BiasAdd/ReadVariableOp2R
'model_6/conv2d_51/Conv2D/ReadVariableOp'model_6/conv2d_51/Conv2D/ReadVariableOp2T
(model_6/conv2d_52/BiasAdd/ReadVariableOp(model_6/conv2d_52/BiasAdd/ReadVariableOp2R
'model_6/conv2d_52/Conv2D/ReadVariableOp'model_6/conv2d_52/Conv2D/ReadVariableOp2T
(model_6/conv2d_53/BiasAdd/ReadVariableOp(model_6/conv2d_53/BiasAdd/ReadVariableOp2R
'model_6/conv2d_53/Conv2D/ReadVariableOp'model_6/conv2d_53/Conv2D/ReadVariableOp2T
(model_6/conv2d_54/BiasAdd/ReadVariableOp(model_6/conv2d_54/BiasAdd/ReadVariableOp2R
'model_6/conv2d_54/Conv2D/ReadVariableOp'model_6/conv2d_54/Conv2D/ReadVariableOp2T
(model_6/conv2d_55/BiasAdd/ReadVariableOp(model_6/conv2d_55/BiasAdd/ReadVariableOp2R
'model_6/conv2d_55/Conv2D/ReadVariableOp'model_6/conv2d_55/Conv2D/ReadVariableOp2T
(model_6/conv2d_56/BiasAdd/ReadVariableOp(model_6/conv2d_56/BiasAdd/ReadVariableOp2R
'model_6/conv2d_56/Conv2D/ReadVariableOp'model_6/conv2d_56/Conv2D/ReadVariableOp2T
(model_6/conv2d_57/BiasAdd/ReadVariableOp(model_6/conv2d_57/BiasAdd/ReadVariableOp2R
'model_6/conv2d_57/Conv2D/ReadVariableOp'model_6/conv2d_57/Conv2D/ReadVariableOp2R
'model_6/dense_19/BiasAdd/ReadVariableOp'model_6/dense_19/BiasAdd/ReadVariableOp2P
&model_6/dense_19/MatMul/ReadVariableOp&model_6/dense_19/MatMul/ReadVariableOp2R
'model_6/dense_20/BiasAdd/ReadVariableOp'model_6/dense_20/BiasAdd/ReadVariableOp2P
&model_6/dense_20/MatMul/ReadVariableOp&model_6/dense_20/MatMul/ReadVariableOp2R
'model_6/dense_21/BiasAdd/ReadVariableOp'model_6/dense_21/BiasAdd/ReadVariableOp2P
&model_6/dense_21/MatMul/ReadVariableOp&model_6/dense_21/MatMul/ReadVariableOp:,(
&
_output_shapes
::,(
&
_output_shapes
::Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7
�
�
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1217769

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
m
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214313

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1217647

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
E__inference_dense_21_layer_call_and_return_conditional_losses_1217959

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_32_layer_call_fn_1217724

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1214665�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
E__inference_dense_20_layer_call_and_return_conditional_losses_1215062

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218082

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:���������@@�
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:���������@@k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*/
_output_shapes
:���������@@�
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:���������@@|
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
*__inference_dense_19_layer_call_fn_1217908

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1215045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_model_6_layer_call_and_return_conditional_losses_1215208
input_7+
conv2d_49_1215089:
conv2d_49_1215091:
sequential_6_1215095
sequential_6_1215097+
conv2d_50_1215100:
conv2d_50_1215102:+
conv2d_51_1215105:
conv2d_51_1215107:,
batch_normalization_24_1215110:,
batch_normalization_24_1215112:,
batch_normalization_24_1215114:,
batch_normalization_24_1215116:+
conv2d_52_1215121:
conv2d_52_1215123:+
conv2d_53_1215126:
conv2d_53_1215128:,
batch_normalization_25_1215131:,
batch_normalization_25_1215133:,
batch_normalization_25_1215135:,
batch_normalization_25_1215137:+
conv2d_54_1215142: 
conv2d_54_1215144: +
conv2d_55_1215147:  
conv2d_55_1215149: ,
batch_normalization_26_1215152: ,
batch_normalization_26_1215154: ,
batch_normalization_26_1215156: ,
batch_normalization_26_1215158: +
conv2d_56_1215163: @
conv2d_56_1215165:@+
conv2d_57_1215168:@@
conv2d_57_1215170:@,
batch_normalization_27_1215173:@,
batch_normalization_27_1215175:@,
batch_normalization_27_1215177:@,
batch_normalization_27_1215179:@#
dense_19_1215192:	�@
dense_19_1215194:@"
dense_20_1215197:@ 
dense_20_1215199: "
dense_21_1215202: 
dense_21_1215204:
identity��.batch_normalization_24/StatefulPartitionedCall�.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall�!conv2d_50/StatefulPartitionedCall�!conv2d_51/StatefulPartitionedCall�!conv2d_52/StatefulPartitionedCall�!conv2d_53/StatefulPartitionedCall�!conv2d_54/StatefulPartitionedCall�!conv2d_55/StatefulPartitionedCall�!conv2d_56/StatefulPartitionedCall�!conv2d_57/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCallinput_7conv2d_49_1215089conv2d_49_1215091*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1214773�
resizing_6/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_1214794�
sequential_6/PartitionedCallPartitionedCall#resizing_6/PartitionedCall:output:0sequential_6_1215095sequential_6_1215097*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214373�
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_50_1215100conv2d_50_1215102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1214818�
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1215105conv2d_51_1215107*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1214835�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0batch_normalization_24_1215110batch_normalization_24_1215112batch_normalization_24_1215114batch_normalization_24_1215116*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214480�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1214855�
 max_pooling2d_30/PartitionedCallPartitionedCall!re_lu_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1214513�
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_52_1215121conv2d_52_1215123*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1214869�
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1215126conv2d_53_1215128*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1214886�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_25_1215131batch_normalization_25_1215133batch_normalization_25_1215135batch_normalization_25_1215137*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214556�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1214906�
 max_pooling2d_31/PartitionedCallPartitionedCall!re_lu_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1214589�
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_54_1215142conv2d_54_1215144*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1214920�
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_1215147conv2d_55_1215149*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1214937�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0batch_normalization_26_1215152batch_normalization_26_1215154batch_normalization_26_1215156batch_normalization_26_1215158*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214632�
re_lu_26/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1214957�
 max_pooling2d_32/PartitionedCallPartitionedCall!re_lu_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1214665�
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_56_1215163conv2d_56_1215165*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1214971�
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_1215168conv2d_57_1215170*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1214988�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_27_1215173batch_normalization_27_1215175batch_normalization_27_1215177batch_normalization_27_1215179*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214708�
re_lu_27/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1215008�
 max_pooling2d_33/PartitionedCallPartitionedCall!re_lu_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1214741�
 max_pooling2d_34/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1214753�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_1215018�
dropout_6/PartitionedCallPartitionedCall"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215190�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_19_1215192dense_19_1215194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1215045�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_1215197dense_20_1215199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1215062�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_1215202dense_21_1215204*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1215079x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7
�
i
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1214589

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217899

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1214855

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�	
)__inference_model_6_layer_call_fn_1216259

inputs!
unknown:
	unknown_0:
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19: 

unknown_20: $

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26: $

unknown_27: @

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:	�@

unknown_36:@

unknown_37:@ 

unknown_38: 

unknown_39: 

unknown_40:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1215546o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
G__inference_resizing_6_layer_call_and_return_conditional_losses_1214794

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ]
resize/CastCastresize/size:output:0*

DstT0*

SrcT0*
_output_shapes
:P
resize/ShapeShapeinputs*
T0*
_output_shapes
::��d
resize/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:f
resize/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
resize/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
resize/strided_sliceStridedSliceresize/Shape:output:0#resize/strided_slice/stack:output:0%resize/strided_slice/stack_1:output:0%resize/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:h
resize/Cast_1Castresize/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
:b
resize/truedivRealDivresize/Cast:y:0resize/Cast_1:y:0*
T0*
_output_shapes
:Y
resize/zerosConst*
_output_shapes
:*
dtype0*
valueB*    �
resize/ScaleAndTranslateScaleAndTranslateinputsresize/size:output:0resize/truediv:z:0resize/zeros:output:0*
T0*/
_output_shapes
:���������@@*
	antialias( y
IdentityIdentity)resize/ScaleAndTranslate:resized_images:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_26_layer_call_fn_1217660

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214614�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
F
*__inference_re_lu_27_layer_call_fn_1217836

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1215008h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_52_layer_call_fn_1217494

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1214869w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
6__inference_random_translation_6_layer_call_fn_1218093

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214168w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�

)__inference_model_6_layer_call_fn_1216170

inputs!
unknown:
	unknown_0:
	unknown_1
	unknown_2
	unknown_3:	
	unknown_4:	
	unknown_5:	#
	unknown_6:
	unknown_7:#
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14:

unknown_15:$

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:$

unknown_22: 

unknown_23: $

unknown_24:  

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29: $

unknown_30: @

unknown_31:@$

unknown_32:@@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:	�@

unknown_39:@

unknown_40:@ 

unknown_41: 

unknown_42: 

unknown_43:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 !"#$%()*+,-*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1215334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214556

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_1215018

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
Ɂ
�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217352

inputs
normalization_sub_y
normalization_sqrt_xM
?random_flip_6_stateful_uniform_full_int_rngreadandskip_resource:	K
=random_translation_6_stateful_uniform_rngreadandskip_resource:	H
:random_rotation_6_stateful_uniform_rngreadandskip_resource:	
identity��6random_flip_6/stateful_uniform_full_int/RngReadAndSkip�8random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip�1random_rotation_6/stateful_uniform/RngReadAndSkip�4random_translation_6/stateful_uniform/RngReadAndSkip�6random_translation_6/stateful_uniform_1/RngReadAndSkipo
normalization/subSubinputsnormalization_sub_y*
T0*/
_output_shapes
:���������@@a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@w
-random_flip_6/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip_6/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,random_flip_6/stateful_uniform_full_int/ProdProd6random_flip_6/stateful_uniform_full_int/shape:output:06random_flip_6/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: p
.random_flip_6/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
.random_flip_6/stateful_uniform_full_int/Cast_1Cast5random_flip_6/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6random_flip_6/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_6_stateful_uniform_full_int_rngreadandskip_resource7random_flip_6/stateful_uniform_full_int/Cast/x:output:02random_flip_6/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
;random_flip_6/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=random_flip_6/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_flip_6/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_flip_6/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_6/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_6/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_6/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_6/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
/random_flip_6/stateful_uniform_full_int/BitcastBitcast>random_flip_6/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
=random_flip_6/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?random_flip_6/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip_6/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7random_flip_6/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_6/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_6/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_6/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_6/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
1random_flip_6/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_6/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip_6/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
'random_flip_6/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_6/stateful_uniform_full_int/shape:output:0:random_flip_6/stateful_uniform_full_int/Bitcast_1:output:08random_flip_6/stateful_uniform_full_int/Bitcast:output:04random_flip_6/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip_6/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_6/stackPack0random_flip_6/stateful_uniform_full_int:output:0!random_flip_6/zeros_like:output:0*
N*
T0	*
_output_shapes

:r
!random_flip_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
random_flip_6/strided_sliceStridedSlicerandom_flip_6/stack:output:0*random_flip_6/strided_slice/stack:output:0,random_flip_6/strided_slice/stack_1:output:0,random_flip_6/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Arandom_flip_6/stateless_random_flip_left_right/control_dependencyIdentitynormalization/truediv:z:0*
T0*(
_class
loc:@normalization/truediv*/
_output_shapes
:���������@@�
4random_flip_6/stateless_random_flip_left_right/ShapeShapeJrandom_flip_6/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::���
Brandom_flip_6/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Drandom_flip_6/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Drandom_flip_6/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<random_flip_6/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_6/stateless_random_flip_left_right/Shape:output:0Krandom_flip_6/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_6/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_6/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Mrandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_6/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Krandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Krandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
drandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_6/strided_slice:output:0* 
_output_shapes
::�
drandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
`random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0mrandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Krandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Krandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Grandom_flip_6/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
>random_flip_6/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
>random_flip_6/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
>random_flip_6/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
<random_flip_6/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_6/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_6/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_6/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_6/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
6random_flip_6/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_6/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_6/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
4random_flip_6/stateless_random_flip_left_right/RoundRound?random_flip_6/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
=random_flip_6/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
8random_flip_6/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_6/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_6/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
2random_flip_6/stateless_random_flip_left_right/mulMul8random_flip_6/stateless_random_flip_left_right/Round:y:0Arandom_flip_6/stateless_random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@y
4random_flip_6/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2random_flip_6/stateless_random_flip_left_right/subSub=random_flip_6/stateless_random_flip_left_right/sub/x:output:08random_flip_6/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
4random_flip_6/stateless_random_flip_left_right/mul_1Mul6random_flip_6/stateless_random_flip_left_right/sub:z:0Jrandom_flip_6/stateless_random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
2random_flip_6/stateless_random_flip_left_right/addAddV26random_flip_6/stateless_random_flip_left_right/mul:z:08random_flip_6/stateless_random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:���������@@y
/random_flip_6/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:y
/random_flip_6/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.random_flip_6/stateful_uniform_full_int_1/ProdProd8random_flip_6/stateful_uniform_full_int_1/shape:output:08random_flip_6/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: r
0random_flip_6/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
0random_flip_6/stateful_uniform_full_int_1/Cast_1Cast7random_flip_6/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
8random_flip_6/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip?random_flip_6_stateful_uniform_full_int_rngreadandskip_resource9random_flip_6/stateful_uniform_full_int_1/Cast/x:output:04random_flip_6/stateful_uniform_full_int_1/Cast_1:y:07^random_flip_6/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
=random_flip_6/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?random_flip_6/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip_6/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7random_flip_6/stateful_uniform_full_int_1/strided_sliceStridedSlice@random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip_6/stateful_uniform_full_int_1/strided_slice/stack:output:0Hrandom_flip_6/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Hrandom_flip_6/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
1random_flip_6/stateful_uniform_full_int_1/BitcastBitcast@random_flip_6/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
?random_flip_6/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Arandom_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Arandom_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9random_flip_6/stateful_uniform_full_int_1/strided_slice_1StridedSlice@random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip:value:0Hrandom_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Jrandom_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Jrandom_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
3random_flip_6/stateful_uniform_full_int_1/Bitcast_1BitcastBrandom_flip_6/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-random_flip_6/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
)random_flip_6/stateful_uniform_full_int_1StatelessRandomUniformFullIntV28random_flip_6/stateful_uniform_full_int_1/shape:output:0<random_flip_6/stateful_uniform_full_int_1/Bitcast_1:output:0:random_flip_6/stateful_uniform_full_int_1/Bitcast:output:06random_flip_6/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	d
random_flip_6/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_6/stack_1Pack2random_flip_6/stateful_uniform_full_int_1:output:0#random_flip_6/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:t
#random_flip_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%random_flip_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%random_flip_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
random_flip_6/strided_slice_1StridedSlicerandom_flip_6/stack_1:output:0,random_flip_6/strided_slice_1/stack:output:0.random_flip_6/strided_slice_1/stack_1:output:0.random_flip_6/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
>random_flip_6/stateless_random_flip_up_down/control_dependencyIdentity6random_flip_6/stateless_random_flip_left_right/add:z:0*
T0*E
_class;
97loc:@random_flip_6/stateless_random_flip_left_right/add*/
_output_shapes
:���������@@�
1random_flip_6/stateless_random_flip_up_down/ShapeShapeGrandom_flip_6/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::���
?random_flip_6/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Arandom_flip_6/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Arandom_flip_6/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9random_flip_6/stateless_random_flip_up_down/strided_sliceStridedSlice:random_flip_6/stateless_random_flip_up_down/Shape:output:0Hrandom_flip_6/stateless_random_flip_up_down/strided_slice/stack:output:0Jrandom_flip_6/stateless_random_flip_up_down/strided_slice/stack_1:output:0Jrandom_flip_6/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Jrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/shapePackBrandom_flip_6/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Hrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Hrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
arandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter&random_flip_6/strided_slice_1:output:0* 
_output_shapes
::�
arandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
]random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Srandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0grandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0krandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0jrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Hrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/subSubQrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Qrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Hrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/mulMulfrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Lrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Drandom_flip_6/stateless_random_flip_up_down/stateless_random_uniformAddV2Lrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Qrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������}
;random_flip_6/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_6/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_6/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
9random_flip_6/stateless_random_flip_up_down/Reshape/shapePackBrandom_flip_6/stateless_random_flip_up_down/strided_slice:output:0Drandom_flip_6/stateless_random_flip_up_down/Reshape/shape/1:output:0Drandom_flip_6/stateless_random_flip_up_down/Reshape/shape/2:output:0Drandom_flip_6/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
3random_flip_6/stateless_random_flip_up_down/ReshapeReshapeHrandom_flip_6/stateless_random_flip_up_down/stateless_random_uniform:z:0Brandom_flip_6/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
1random_flip_6/stateless_random_flip_up_down/RoundRound<random_flip_6/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:����������
:random_flip_6/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
5random_flip_6/stateless_random_flip_up_down/ReverseV2	ReverseV2Grandom_flip_6/stateless_random_flip_up_down/control_dependency:output:0Crandom_flip_6/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
/random_flip_6/stateless_random_flip_up_down/mulMul5random_flip_6/stateless_random_flip_up_down/Round:y:0>random_flip_6/stateless_random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@v
1random_flip_6/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
/random_flip_6/stateless_random_flip_up_down/subSub:random_flip_6/stateless_random_flip_up_down/sub/x:output:05random_flip_6/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
1random_flip_6/stateless_random_flip_up_down/mul_1Mul3random_flip_6/stateless_random_flip_up_down/sub:z:0Grandom_flip_6/stateless_random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
/random_flip_6/stateless_random_flip_up_down/addAddV23random_flip_6/stateless_random_flip_up_down/mul:z:05random_flip_6/stateless_random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:���������@@�
random_translation_6/ShapeShape3random_flip_6/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��r
(random_translation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*random_translation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*random_translation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"random_translation_6/strided_sliceStridedSlice#random_translation_6/Shape:output:01random_translation_6/strided_slice/stack:output:03random_translation_6/strided_slice/stack_1:output:03random_translation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
*random_translation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������
,random_translation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������v
,random_translation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$random_translation_6/strided_slice_1StridedSlice#random_translation_6/Shape:output:03random_translation_6/strided_slice_1/stack:output:05random_translation_6/strided_slice_1/stack_1:output:05random_translation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
random_translation_6/CastCast-random_translation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: }
*random_translation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������
,random_translation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������v
,random_translation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
$random_translation_6/strided_slice_2StridedSlice#random_translation_6/Shape:output:03random_translation_6/strided_slice_2/stack:output:05random_translation_6/strided_slice_2/stack_1:output:05random_translation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
random_translation_6/Cast_1Cast-random_translation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: o
-random_translation_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
+random_translation_6/stateful_uniform/shapePack+random_translation_6/strided_slice:output:06random_translation_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:n
)random_translation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�n
)random_translation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=u
+random_translation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*random_translation_6/stateful_uniform/ProdProd4random_translation_6/stateful_uniform/shape:output:04random_translation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: n
,random_translation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,random_translation_6/stateful_uniform/Cast_1Cast3random_translation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4random_translation_6/stateful_uniform/RngReadAndSkipRngReadAndSkip=random_translation_6_stateful_uniform_rngreadandskip_resource5random_translation_6/stateful_uniform/Cast/x:output:00random_translation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
9random_translation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;random_translation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;random_translation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3random_translation_6/stateful_uniform/strided_sliceStridedSlice<random_translation_6/stateful_uniform/RngReadAndSkip:value:0Brandom_translation_6/stateful_uniform/strided_slice/stack:output:0Drandom_translation_6/stateful_uniform/strided_slice/stack_1:output:0Drandom_translation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-random_translation_6/stateful_uniform/BitcastBitcast<random_translation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;random_translation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=random_translation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_translation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_translation_6/stateful_uniform/strided_slice_1StridedSlice<random_translation_6/stateful_uniform/RngReadAndSkip:value:0Drandom_translation_6/stateful_uniform/strided_slice_1/stack:output:0Frandom_translation_6/stateful_uniform/strided_slice_1/stack_1:output:0Frandom_translation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/random_translation_6/stateful_uniform/Bitcast_1Bitcast>random_translation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Brandom_translation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
>random_translation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV24random_translation_6/stateful_uniform/shape:output:08random_translation_6/stateful_uniform/Bitcast_1:output:06random_translation_6/stateful_uniform/Bitcast:output:0Krandom_translation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
)random_translation_6/stateful_uniform/subSub2random_translation_6/stateful_uniform/max:output:02random_translation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
)random_translation_6/stateful_uniform/mulMulGrandom_translation_6/stateful_uniform/StatelessRandomUniformV2:output:0-random_translation_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
%random_translation_6/stateful_uniformAddV2-random_translation_6/stateful_uniform/mul:z:02random_translation_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:����������
random_translation_6/mulMul)random_translation_6/stateful_uniform:z:0random_translation_6/Cast:y:0*
T0*'
_output_shapes
:���������q
/random_translation_6/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
-random_translation_6/stateful_uniform_1/shapePack+random_translation_6/strided_slice:output:08random_translation_6/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:p
+random_translation_6/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�p
+random_translation_6/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=w
-random_translation_6/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,random_translation_6/stateful_uniform_1/ProdProd6random_translation_6/stateful_uniform_1/shape:output:06random_translation_6/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: p
.random_translation_6/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
.random_translation_6/stateful_uniform_1/Cast_1Cast5random_translation_6/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6random_translation_6/stateful_uniform_1/RngReadAndSkipRngReadAndSkip=random_translation_6_stateful_uniform_rngreadandskip_resource7random_translation_6/stateful_uniform_1/Cast/x:output:02random_translation_6/stateful_uniform_1/Cast_1:y:05^random_translation_6/stateful_uniform/RngReadAndSkip*
_output_shapes
:�
;random_translation_6/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=random_translation_6/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_translation_6/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_translation_6/stateful_uniform_1/strided_sliceStridedSlice>random_translation_6/stateful_uniform_1/RngReadAndSkip:value:0Drandom_translation_6/stateful_uniform_1/strided_slice/stack:output:0Frandom_translation_6/stateful_uniform_1/strided_slice/stack_1:output:0Frandom_translation_6/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
/random_translation_6/stateful_uniform_1/BitcastBitcast>random_translation_6/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
=random_translation_6/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?random_translation_6/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?random_translation_6/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7random_translation_6/stateful_uniform_1/strided_slice_1StridedSlice>random_translation_6/stateful_uniform_1/RngReadAndSkip:value:0Frandom_translation_6/stateful_uniform_1/strided_slice_1/stack:output:0Hrandom_translation_6/stateful_uniform_1/strided_slice_1/stack_1:output:0Hrandom_translation_6/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
1random_translation_6/stateful_uniform_1/Bitcast_1Bitcast@random_translation_6/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Drandom_translation_6/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
@random_translation_6/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV26random_translation_6/stateful_uniform_1/shape:output:0:random_translation_6/stateful_uniform_1/Bitcast_1:output:08random_translation_6/stateful_uniform_1/Bitcast:output:0Mrandom_translation_6/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
+random_translation_6/stateful_uniform_1/subSub4random_translation_6/stateful_uniform_1/max:output:04random_translation_6/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
+random_translation_6/stateful_uniform_1/mulMulIrandom_translation_6/stateful_uniform_1/StatelessRandomUniformV2:output:0/random_translation_6/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
'random_translation_6/stateful_uniform_1AddV2/random_translation_6/stateful_uniform_1/mul:z:04random_translation_6/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:����������
random_translation_6/mul_1Mul+random_translation_6/stateful_uniform_1:z:0random_translation_6/Cast_1:y:0*
T0*'
_output_shapes
:���������b
 random_translation_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
random_translation_6/concatConcatV2random_translation_6/mul_1:z:0random_translation_6/mul:z:0)random_translation_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
-random_translation_6/translation_matrix/ShapeShape$random_translation_6/concat:output:0*
T0*
_output_shapes
::���
;random_translation_6/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=random_translation_6/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_translation_6/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_translation_6/translation_matrix/strided_sliceStridedSlice6random_translation_6/translation_matrix/Shape:output:0Drandom_translation_6/translation_matrix/strided_slice/stack:output:0Frandom_translation_6/translation_matrix/strided_slice/stack_1:output:0Frandom_translation_6/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5random_translation_6/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
3random_translation_6/translation_matrix/ones/packedPack>random_translation_6/translation_matrix/strided_slice:output:0>random_translation_6/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:w
2random_translation_6/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,random_translation_6/translation_matrix/onesFill<random_translation_6/translation_matrix/ones/packed:output:0;random_translation_6/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:���������x
6random_translation_6/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
4random_translation_6/translation_matrix/zeros/packedPack>random_translation_6/translation_matrix/strided_slice:output:0?random_translation_6/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:x
3random_translation_6/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-random_translation_6/translation_matrix/zerosFill=random_translation_6/translation_matrix/zeros/packed:output:0<random_translation_6/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:����������
=random_translation_6/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
?random_translation_6/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
?random_translation_6/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
7random_translation_6/translation_matrix/strided_slice_1StridedSlice$random_translation_6/concat:output:0Frandom_translation_6/translation_matrix/strided_slice_1/stack:output:0Hrandom_translation_6/translation_matrix/strided_slice_1/stack_1:output:0Hrandom_translation_6/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
+random_translation_6/translation_matrix/NegNeg@random_translation_6/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������z
8random_translation_6/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
6random_translation_6/translation_matrix/zeros_1/packedPack>random_translation_6/translation_matrix/strided_slice:output:0Arandom_translation_6/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:z
5random_translation_6/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
/random_translation_6/translation_matrix/zeros_1Fill?random_translation_6/translation_matrix/zeros_1/packed:output:0>random_translation_6/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������y
7random_translation_6/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
5random_translation_6/translation_matrix/ones_1/packedPack>random_translation_6/translation_matrix/strided_slice:output:0@random_translation_6/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:y
4random_translation_6/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.random_translation_6/translation_matrix/ones_1Fill>random_translation_6/translation_matrix/ones_1/packed:output:0=random_translation_6/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:����������
=random_translation_6/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
?random_translation_6/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
?random_translation_6/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
7random_translation_6/translation_matrix/strided_slice_2StridedSlice$random_translation_6/concat:output:0Frandom_translation_6/translation_matrix/strided_slice_2/stack:output:0Hrandom_translation_6/translation_matrix/strided_slice_2/stack_1:output:0Hrandom_translation_6/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
-random_translation_6/translation_matrix/Neg_1Neg@random_translation_6/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������z
8random_translation_6/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
6random_translation_6/translation_matrix/zeros_2/packedPack>random_translation_6/translation_matrix/strided_slice:output:0Arandom_translation_6/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:z
5random_translation_6/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
/random_translation_6/translation_matrix/zeros_2Fill?random_translation_6/translation_matrix/zeros_2/packed:output:0>random_translation_6/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������u
3random_translation_6/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
.random_translation_6/translation_matrix/concatConcatV25random_translation_6/translation_matrix/ones:output:06random_translation_6/translation_matrix/zeros:output:0/random_translation_6/translation_matrix/Neg:y:08random_translation_6/translation_matrix/zeros_1:output:07random_translation_6/translation_matrix/ones_1:output:01random_translation_6/translation_matrix/Neg_1:y:08random_translation_6/translation_matrix/zeros_2:output:0<random_translation_6/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
$random_translation_6/transform/ShapeShape3random_flip_6/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��|
2random_translation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4random_translation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_translation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,random_translation_6/transform/strided_sliceStridedSlice-random_translation_6/transform/Shape:output:0;random_translation_6/transform/strided_slice/stack:output:0=random_translation_6/transform/strided_slice/stack_1:output:0=random_translation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:n
)random_translation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
9random_translation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_flip_6/stateless_random_flip_up_down/add:z:07random_translation_6/translation_matrix/concat:output:05random_translation_6/transform/strided_slice:output:02random_translation_6/transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
random_rotation_6/ShapeShapeNrandom_translation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::��o
%random_rotation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation_6/strided_sliceStridedSlice random_rotation_6/Shape:output:0.random_rotation_6/strided_slice/stack:output:00random_rotation_6/strided_slice/stack_1:output:00random_rotation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
)random_rotation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)random_rotation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!random_rotation_6/strided_slice_1StridedSlice random_rotation_6/Shape:output:00random_rotation_6/strided_slice_1/stack:output:02random_rotation_6/strided_slice_1/stack_1:output:02random_rotation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_6/CastCast*random_rotation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
)random_rotation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)random_rotation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!random_rotation_6/strided_slice_2StridedSlice random_rotation_6/Shape:output:00random_rotation_6/strided_slice_2/stack:output:02random_rotation_6/strided_slice_2/stack_1:output:02random_rotation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_6/Cast_1Cast*random_rotation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(random_rotation_6/stateful_uniform/shapePack(random_rotation_6/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�k
&random_rotation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F�?r
(random_rotation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
'random_rotation_6/stateful_uniform/ProdProd1random_rotation_6/stateful_uniform/shape:output:01random_rotation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
)random_rotation_6/stateful_uniform/Cast_1Cast0random_rotation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
1random_rotation_6/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_6_stateful_uniform_rngreadandskip_resource2random_rotation_6/stateful_uniform/Cast/x:output:0-random_rotation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
6random_rotation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8random_rotation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0random_rotation_6/stateful_uniform/strided_sliceStridedSlice9random_rotation_6/stateful_uniform/RngReadAndSkip:value:0?random_rotation_6/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_6/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
*random_rotation_6/stateful_uniform/BitcastBitcast9random_rotation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
8random_rotation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
:random_rotation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:random_rotation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2random_rotation_6/stateful_uniform/strided_slice_1StridedSlice9random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_6/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_6/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
,random_rotation_6/stateful_uniform/Bitcast_1Bitcast;random_rotation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
?random_rotation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
;random_rotation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_6/stateful_uniform/shape:output:05random_rotation_6/stateful_uniform/Bitcast_1:output:03random_rotation_6/stateful_uniform/Bitcast:output:0Hrandom_rotation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
&random_rotation_6/stateful_uniform/subSub/random_rotation_6/stateful_uniform/max:output:0/random_rotation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
&random_rotation_6/stateful_uniform/mulMulDrandom_rotation_6/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_6/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
"random_rotation_6/stateful_uniformAddV2*random_rotation_6/stateful_uniform/mul:z:0/random_rotation_6/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������l
'random_rotation_6/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation_6/rotation_matrix/subSubrandom_rotation_6/Cast_1:y:00random_rotation_6/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
%random_rotation_6/rotation_matrix/CosCos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_1Subrandom_rotation_6/Cast_1:y:02random_rotation_6/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
%random_rotation_6/rotation_matrix/mulMul)random_rotation_6/rotation_matrix/Cos:y:0+random_rotation_6/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
%random_rotation_6/rotation_matrix/SinSin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_2Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/mul_1Mul)random_rotation_6/rotation_matrix/Sin:y:0+random_rotation_6/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/sub_3Sub)random_rotation_6/rotation_matrix/mul:z:0+random_rotation_6/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/sub_4Sub)random_rotation_6/rotation_matrix/sub:z:0+random_rotation_6/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������p
+random_rotation_6/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
)random_rotation_6/rotation_matrix/truedivRealDiv+random_rotation_6/rotation_matrix/sub_4:z:04random_rotation_6/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_5Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/Sin_1Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_6Subrandom_rotation_6/Cast_1:y:02random_rotation_6/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/mul_2Mul+random_rotation_6/rotation_matrix/Sin_1:y:0+random_rotation_6/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/Cos_1Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_7Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/mul_3Mul+random_rotation_6/rotation_matrix/Cos_1:y:0+random_rotation_6/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
%random_rotation_6/rotation_matrix/addAddV2+random_rotation_6/rotation_matrix/mul_2:z:0+random_rotation_6/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/sub_8Sub+random_rotation_6/rotation_matrix/sub_5:z:0)random_rotation_6/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������r
-random_rotation_6/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
+random_rotation_6/rotation_matrix/truediv_1RealDiv+random_rotation_6/rotation_matrix/sub_8:z:06random_rotation_6/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/ShapeShape&random_rotation_6/stateful_uniform:z:0*
T0*
_output_shapes
::��
5random_rotation_6/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7random_rotation_6/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7random_rotation_6/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/random_rotation_6/rotation_matrix/strided_sliceStridedSlice0random_rotation_6/rotation_matrix/Shape:output:0>random_rotation_6/rotation_matrix/strided_slice/stack:output:0@random_rotation_6/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_6/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
'random_rotation_6/rotation_matrix/Cos_2Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_1StridedSlice+random_rotation_6/rotation_matrix/Cos_2:y:0@random_rotation_6/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_6/rotation_matrix/Sin_2Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_2StridedSlice+random_rotation_6/rotation_matrix/Sin_2:y:0@random_rotation_6/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation_6/rotation_matrix/NegNeg:random_rotation_6/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_3StridedSlice-random_rotation_6/rotation_matrix/truediv:z:0@random_rotation_6/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_6/rotation_matrix/Sin_3Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_4StridedSlice+random_rotation_6/rotation_matrix/Sin_3:y:0@random_rotation_6/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_6/rotation_matrix/Cos_3Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_5StridedSlice+random_rotation_6/rotation_matrix/Cos_3:y:0@random_rotation_6/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
7random_rotation_6/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_6StridedSlice/random_rotation_6/rotation_matrix/truediv_1:z:0@random_rotation_6/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_6/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
.random_rotation_6/rotation_matrix/zeros/packedPack8random_rotation_6/rotation_matrix/strided_slice:output:09random_rotation_6/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_6/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'random_rotation_6/rotation_matrix/zerosFill7random_rotation_6/rotation_matrix/zeros/packed:output:06random_rotation_6/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������o
-random_rotation_6/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
(random_rotation_6/rotation_matrix/concatConcatV2:random_rotation_6/rotation_matrix/strided_slice_1:output:0)random_rotation_6/rotation_matrix/Neg:y:0:random_rotation_6/rotation_matrix/strided_slice_3:output:0:random_rotation_6/rotation_matrix/strided_slice_4:output:0:random_rotation_6/rotation_matrix/strided_slice_5:output:0:random_rotation_6/rotation_matrix/strided_slice_6:output:00random_rotation_6/rotation_matrix/zeros:output:06random_rotation_6/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
!random_rotation_6/transform/ShapeShapeNrandom_translation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::��y
/random_rotation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)random_rotation_6/transform/strided_sliceStridedSlice*random_rotation_6/transform/Shape:output:08random_rotation_6/transform/strided_slice/stack:output:0:random_rotation_6/transform/strided_slice/stack_1:output:0:random_rotation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
6random_rotation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Nrandom_translation_6/transform/ImageProjectiveTransformV3:transformed_images:01random_rotation_6/rotation_matrix/concat:output:02random_rotation_6/transform/strided_slice:output:0/random_rotation_6/transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentityKrandom_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp7^random_flip_6/stateful_uniform_full_int/RngReadAndSkip9^random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip2^random_rotation_6/stateful_uniform/RngReadAndSkip5^random_translation_6/stateful_uniform/RngReadAndSkip7^random_translation_6/stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������@@::: : : 2p
6random_flip_6/stateful_uniform_full_int/RngReadAndSkip6random_flip_6/stateful_uniform_full_int/RngReadAndSkip2t
8random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip8random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip2f
1random_rotation_6/stateful_uniform/RngReadAndSkip1random_rotation_6/stateful_uniform/RngReadAndSkip2l
4random_translation_6/stateful_uniform/RngReadAndSkip4random_translation_6/stateful_uniform/RngReadAndSkip2p
6random_translation_6/stateful_uniform_1/RngReadAndSkip6random_translation_6/stateful_uniform_1/RngReadAndSkip:,(
&
_output_shapes
::,(
&
_output_shapes
::W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214480

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214321
normalization_input
normalization_sub_y
normalization_sqrt_x
identity|
normalization/subSubnormalization_inputnormalization_sub_y*
T0*/
_output_shapes
:���������@@a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@�
random_flip_6/PartitionedCallPartitionedCallnormalization/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214308�
$random_translation_6/PartitionedCallPartitionedCall&random_flip_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214313�
!random_rotation_6/PartitionedCallPartitionedCall-random_translation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214318z
IdentityIdentity*random_rotation_6/PartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@:::,(
&
_output_shapes
::,(
&
_output_shapes
::d `
/
_output_shapes
:���������@@
-
_user_specified_namenormalization_input
�
c
G__inference_resizing_6_layer_call_and_return_conditional_losses_1216984

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"@   @   ]
resize/CastCastresize/size:output:0*

DstT0*

SrcT0*
_output_shapes
:P
resize/ShapeShapeinputs*
T0*
_output_shapes
::��d
resize/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:f
resize/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
resize/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
resize/strided_sliceStridedSliceresize/Shape:output:0#resize/strided_slice/stack:output:0%resize/strided_slice/stack_1:output:0%resize/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:h
resize/Cast_1Castresize/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
:b
resize/truedivRealDivresize/Cast:y:0resize/Cast_1:y:0*
T0*
_output_shapes
:Y
resize/zerosConst*
_output_shapes
:*
dtype0*
valueB*    �
resize/ScaleAndTranslateScaleAndTranslateinputsresize/size:output:0resize/truediv:z:0resize/zeros:output:0*
T0*/
_output_shapes
:���������@@*
	antialias( y
IdentityIdentity)resize/ScaleAndTranslate:resized_images:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_model_6_layer_call_and_return_conditional_losses_1215334

inputs+
conv2d_49_1215214:
conv2d_49_1215216:
sequential_6_1215220
sequential_6_1215222"
sequential_6_1215224:	"
sequential_6_1215226:	"
sequential_6_1215228:	+
conv2d_50_1215231:
conv2d_50_1215233:+
conv2d_51_1215236:
conv2d_51_1215238:,
batch_normalization_24_1215241:,
batch_normalization_24_1215243:,
batch_normalization_24_1215245:,
batch_normalization_24_1215247:+
conv2d_52_1215252:
conv2d_52_1215254:+
conv2d_53_1215257:
conv2d_53_1215259:,
batch_normalization_25_1215262:,
batch_normalization_25_1215264:,
batch_normalization_25_1215266:,
batch_normalization_25_1215268:+
conv2d_54_1215273: 
conv2d_54_1215275: +
conv2d_55_1215278:  
conv2d_55_1215280: ,
batch_normalization_26_1215283: ,
batch_normalization_26_1215285: ,
batch_normalization_26_1215287: ,
batch_normalization_26_1215289: +
conv2d_56_1215294: @
conv2d_56_1215296:@+
conv2d_57_1215299:@@
conv2d_57_1215301:@,
batch_normalization_27_1215304:@,
batch_normalization_27_1215306:@,
batch_normalization_27_1215308:@,
batch_normalization_27_1215310:@#
dense_19_1215318:	�@
dense_19_1215320:@"
dense_20_1215323:@ 
dense_20_1215325: "
dense_21_1215328: 
dense_21_1215330:
identity��.batch_normalization_24/StatefulPartitionedCall�.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall�!conv2d_50/StatefulPartitionedCall�!conv2d_51/StatefulPartitionedCall�!conv2d_52/StatefulPartitionedCall�!conv2d_53/StatefulPartitionedCall�!conv2d_54/StatefulPartitionedCall�!conv2d_55/StatefulPartitionedCall�!conv2d_56/StatefulPartitionedCall�!conv2d_57/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�$sequential_6/StatefulPartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_49_1215214conv2d_49_1215216*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1214773�
resizing_6/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_1214794�
$sequential_6/StatefulPartitionedCallStatefulPartitionedCall#resizing_6/PartitionedCall:output:0sequential_6_1215220sequential_6_1215222sequential_6_1215224sequential_6_1215226sequential_6_1215228*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214344�
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall-sequential_6/StatefulPartitionedCall:output:0conv2d_50_1215231conv2d_50_1215233*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1214818�
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1215236conv2d_51_1215238*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1214835�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0batch_normalization_24_1215241batch_normalization_24_1215243batch_normalization_24_1215245batch_normalization_24_1215247*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214462�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1214855�
 max_pooling2d_30/PartitionedCallPartitionedCall!re_lu_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1214513�
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_52_1215252conv2d_52_1215254*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1214869�
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1215257conv2d_53_1215259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1214886�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_25_1215262batch_normalization_25_1215264batch_normalization_25_1215266batch_normalization_25_1215268*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214538�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1214906�
 max_pooling2d_31/PartitionedCallPartitionedCall!re_lu_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1214589�
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_54_1215273conv2d_54_1215275*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1214920�
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_1215278conv2d_55_1215280*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1214937�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0batch_normalization_26_1215283batch_normalization_26_1215285batch_normalization_26_1215287batch_normalization_26_1215289*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214614�
re_lu_26/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1214957�
 max_pooling2d_32/PartitionedCallPartitionedCall!re_lu_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1214665�
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_56_1215294conv2d_56_1215296*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1214971�
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_1215299conv2d_57_1215301*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1214988�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_27_1215304batch_normalization_27_1215306batch_normalization_27_1215308batch_normalization_27_1215310*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214690�
re_lu_27/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1215008�
 max_pooling2d_33/PartitionedCallPartitionedCall!re_lu_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1214741�
 max_pooling2d_34/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1214753�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_1215018�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215032�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_19_1215318dense_19_1215320*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1215045�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_1215323dense_20_1215325*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1215062�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_1215328dense_21_1215330*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1215079x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall%^sequential_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2L
$sequential_6/StatefulPartitionedCall$sequential_6/StatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1217403

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
f
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218086

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
R
6__inference_random_translation_6_layer_call_fn_1218098

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214313h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214373

inputs
normalization_sub_y
normalization_sqrt_x
identityo
normalization/subSubinputsnormalization_sub_y*
T0*/
_output_shapes
:���������@@a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@�
random_flip_6/PartitionedCallPartitionedCallnormalization/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214308�
$random_translation_6/PartitionedCallPartitionedCall&random_flip_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214313�
!random_rotation_6/PartitionedCallPartitionedCall-random_translation_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214318z
IdentityIdentity*random_rotation_6/PartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@:::,(
&
_output_shapes
::,(
&
_output_shapes
::W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�

�
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1216964

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_25_layer_call_fn_1217538

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214538�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217831

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214295
normalization_input
normalization_sub_y
normalization_sqrt_x#
random_flip_6_1214049:	*
random_translation_6_1214169:	'
random_rotation_6_1214291:	
identity��%random_flip_6/StatefulPartitionedCall�)random_rotation_6/StatefulPartitionedCall�,random_translation_6/StatefulPartitionedCall|
normalization/subSubnormalization_inputnormalization_sub_y*
T0*/
_output_shapes
:���������@@a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@�
%random_flip_6/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0random_flip_6_1214049*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214048�
,random_translation_6/StatefulPartitionedCallStatefulPartitionedCall.random_flip_6/StatefulPartitionedCall:output:0random_translation_6_1214169*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214168�
)random_rotation_6/StatefulPartitionedCallStatefulPartitionedCall5random_translation_6/StatefulPartitionedCall:output:0random_rotation_6_1214291*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214290�
IdentityIdentity2random_rotation_6/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp&^random_flip_6/StatefulPartitionedCall*^random_rotation_6/StatefulPartitionedCall-^random_translation_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������@@::: : : 2N
%random_flip_6/StatefulPartitionedCall%random_flip_6/StatefulPartitionedCall2V
)random_rotation_6/StatefulPartitionedCall)random_rotation_6/StatefulPartitionedCall2\
,random_translation_6/StatefulPartitionedCall,random_translation_6/StatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::d `
/
_output_shapes
:���������@@
-
_user_specified_namenormalization_input
�
�
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1214920

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

e
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215032

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214632

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217587

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217813

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1217851

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
3__inference_random_rotation_6_layer_call_fn_1218225

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214290w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215190

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217691

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�	
)__inference_model_6_layer_call_fn_1215633
input_7!
unknown:
	unknown_0:
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19: 

unknown_20: $

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26: $

unknown_27: @

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:	�@

unknown_36:@

unknown_37:@ 

unknown_38: 

unknown_39: 

unknown_40:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1215546o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7
�	
�
8__inference_batch_normalization_25_layer_call_fn_1217551

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214556�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214344

inputs
normalization_sub_y
normalization_sqrt_x#
random_flip_6_1214334:	*
random_translation_6_1214337:	'
random_rotation_6_1214340:	
identity��%random_flip_6/StatefulPartitionedCall�)random_rotation_6/StatefulPartitionedCall�,random_translation_6/StatefulPartitionedCallo
normalization/subSubinputsnormalization_sub_y*
T0*/
_output_shapes
:���������@@a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@�
%random_flip_6/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0random_flip_6_1214334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214048�
,random_translation_6/StatefulPartitionedCallStatefulPartitionedCall.random_flip_6/StatefulPartitionedCall:output:0random_translation_6_1214337*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214168�
)random_rotation_6/StatefulPartitionedCallStatefulPartitionedCall5random_translation_6/StatefulPartitionedCall:output:0random_rotation_6_1214340*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214290�
IdentityIdentity2random_rotation_6/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp&^random_flip_6/StatefulPartitionedCall*^random_rotation_6/StatefulPartitionedCall-^random_translation_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������@@::: : : 2N
%random_flip_6/StatefulPartitionedCall%random_flip_6/StatefulPartitionedCall2V
)random_rotation_6/StatefulPartitionedCall)random_rotation_6/StatefulPartitionedCall2\
,random_translation_6/StatefulPartitionedCall,random_translation_6/StatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_53_layer_call_fn_1217514

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1214886w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
�
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1217383

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
*__inference_dense_21_layer_call_fn_1217948

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1215079o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214048

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*/
_output_shapes
:���������@@�
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:���������@@k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*/
_output_shapes
:���������@@�
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:���������@@|
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
f
.__inference_sequential_6_layer_call_fn_1217008

inputs
unknown
	unknown_0
identity�
PartitionedCallPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214373h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@:::,(
&
_output_shapes
::,(
&
_output_shapes
::W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�	
�
.__inference_sequential_6_layer_call_fn_1216999

inputs
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214344w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:���������@@::: : : 22
StatefulPartitionedCallStatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1214818

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
��
�L
#__inference__traced_restore_1219446
file_prefix;
!assignvariableop_conv2d_49_kernel:/
!assignvariableop_1_conv2d_49_bias:=
#assignvariableop_2_conv2d_50_kernel:/
!assignvariableop_3_conv2d_50_bias:=
#assignvariableop_4_conv2d_51_kernel:/
!assignvariableop_5_conv2d_51_bias:=
/assignvariableop_6_batch_normalization_24_gamma:<
.assignvariableop_7_batch_normalization_24_beta:C
5assignvariableop_8_batch_normalization_24_moving_mean:G
9assignvariableop_9_batch_normalization_24_moving_variance:>
$assignvariableop_10_conv2d_52_kernel:0
"assignvariableop_11_conv2d_52_bias:>
$assignvariableop_12_conv2d_53_kernel:0
"assignvariableop_13_conv2d_53_bias:>
0assignvariableop_14_batch_normalization_25_gamma:=
/assignvariableop_15_batch_normalization_25_beta:D
6assignvariableop_16_batch_normalization_25_moving_mean:H
:assignvariableop_17_batch_normalization_25_moving_variance:>
$assignvariableop_18_conv2d_54_kernel: 0
"assignvariableop_19_conv2d_54_bias: >
$assignvariableop_20_conv2d_55_kernel:  0
"assignvariableop_21_conv2d_55_bias: >
0assignvariableop_22_batch_normalization_26_gamma: =
/assignvariableop_23_batch_normalization_26_beta: D
6assignvariableop_24_batch_normalization_26_moving_mean: H
:assignvariableop_25_batch_normalization_26_moving_variance: >
$assignvariableop_26_conv2d_56_kernel: @0
"assignvariableop_27_conv2d_56_bias:@>
$assignvariableop_28_conv2d_57_kernel:@@0
"assignvariableop_29_conv2d_57_bias:@>
0assignvariableop_30_batch_normalization_27_gamma:@=
/assignvariableop_31_batch_normalization_27_beta:@D
6assignvariableop_32_batch_normalization_27_moving_mean:@H
:assignvariableop_33_batch_normalization_27_moving_variance:@6
#assignvariableop_34_dense_19_kernel:	�@/
!assignvariableop_35_dense_19_bias:@5
#assignvariableop_36_dense_20_kernel:@ /
!assignvariableop_37_dense_20_bias: 5
#assignvariableop_38_dense_21_kernel: /
!assignvariableop_39_dense_21_bias:4
&assignvariableop_40_normalization_mean:8
*assignvariableop_41_normalization_variance:1
'assignvariableop_42_normalization_count:	 '
assignvariableop_43_iteration:	 3
)assignvariableop_44_current_learning_rate: E
+assignvariableop_45_adam_m_conv2d_49_kernel:E
+assignvariableop_46_adam_v_conv2d_49_kernel:7
)assignvariableop_47_adam_m_conv2d_49_bias:7
)assignvariableop_48_adam_v_conv2d_49_bias:E
+assignvariableop_49_adam_m_conv2d_50_kernel:E
+assignvariableop_50_adam_v_conv2d_50_kernel:7
)assignvariableop_51_adam_m_conv2d_50_bias:7
)assignvariableop_52_adam_v_conv2d_50_bias:E
+assignvariableop_53_adam_m_conv2d_51_kernel:E
+assignvariableop_54_adam_v_conv2d_51_kernel:7
)assignvariableop_55_adam_m_conv2d_51_bias:7
)assignvariableop_56_adam_v_conv2d_51_bias:E
7assignvariableop_57_adam_m_batch_normalization_24_gamma:E
7assignvariableop_58_adam_v_batch_normalization_24_gamma:D
6assignvariableop_59_adam_m_batch_normalization_24_beta:D
6assignvariableop_60_adam_v_batch_normalization_24_beta:E
+assignvariableop_61_adam_m_conv2d_52_kernel:E
+assignvariableop_62_adam_v_conv2d_52_kernel:7
)assignvariableop_63_adam_m_conv2d_52_bias:7
)assignvariableop_64_adam_v_conv2d_52_bias:E
+assignvariableop_65_adam_m_conv2d_53_kernel:E
+assignvariableop_66_adam_v_conv2d_53_kernel:7
)assignvariableop_67_adam_m_conv2d_53_bias:7
)assignvariableop_68_adam_v_conv2d_53_bias:E
7assignvariableop_69_adam_m_batch_normalization_25_gamma:E
7assignvariableop_70_adam_v_batch_normalization_25_gamma:D
6assignvariableop_71_adam_m_batch_normalization_25_beta:D
6assignvariableop_72_adam_v_batch_normalization_25_beta:E
+assignvariableop_73_adam_m_conv2d_54_kernel: E
+assignvariableop_74_adam_v_conv2d_54_kernel: 7
)assignvariableop_75_adam_m_conv2d_54_bias: 7
)assignvariableop_76_adam_v_conv2d_54_bias: E
+assignvariableop_77_adam_m_conv2d_55_kernel:  E
+assignvariableop_78_adam_v_conv2d_55_kernel:  7
)assignvariableop_79_adam_m_conv2d_55_bias: 7
)assignvariableop_80_adam_v_conv2d_55_bias: E
7assignvariableop_81_adam_m_batch_normalization_26_gamma: E
7assignvariableop_82_adam_v_batch_normalization_26_gamma: D
6assignvariableop_83_adam_m_batch_normalization_26_beta: D
6assignvariableop_84_adam_v_batch_normalization_26_beta: E
+assignvariableop_85_adam_m_conv2d_56_kernel: @E
+assignvariableop_86_adam_v_conv2d_56_kernel: @7
)assignvariableop_87_adam_m_conv2d_56_bias:@7
)assignvariableop_88_adam_v_conv2d_56_bias:@E
+assignvariableop_89_adam_m_conv2d_57_kernel:@@E
+assignvariableop_90_adam_v_conv2d_57_kernel:@@7
)assignvariableop_91_adam_m_conv2d_57_bias:@7
)assignvariableop_92_adam_v_conv2d_57_bias:@E
7assignvariableop_93_adam_m_batch_normalization_27_gamma:@E
7assignvariableop_94_adam_v_batch_normalization_27_gamma:@D
6assignvariableop_95_adam_m_batch_normalization_27_beta:@D
6assignvariableop_96_adam_v_batch_normalization_27_beta:@=
*assignvariableop_97_adam_m_dense_19_kernel:	�@=
*assignvariableop_98_adam_v_dense_19_kernel:	�@6
(assignvariableop_99_adam_m_dense_19_bias:@7
)assignvariableop_100_adam_v_dense_19_bias:@=
+assignvariableop_101_adam_m_dense_20_kernel:@ =
+assignvariableop_102_adam_v_dense_20_kernel:@ 7
)assignvariableop_103_adam_m_dense_20_bias: 7
)assignvariableop_104_adam_v_dense_20_bias: =
+assignvariableop_105_adam_m_dense_21_kernel: =
+assignvariableop_106_adam_v_dense_21_kernel: 7
)assignvariableop_107_adam_m_dense_21_bias:7
)assignvariableop_108_adam_v_dense_21_bias:&
assignvariableop_109_total_1: &
assignvariableop_110_count_1: $
assignvariableop_111_total: $
assignvariableop_112_count: 9
+assignvariableop_113_random_flip_6_statevar:	@
2assignvariableop_114_random_translation_6_statevar:	=
/assignvariableop_115_random_rotation_6_statevar:	
identity_117��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�2
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*�1
value�1B�1uB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_current_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-1/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*�
value�B�uB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypesy
w2u					[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_49_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_49_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_50_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_50_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_51_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_51_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp/assignvariableop_6_batch_normalization_24_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp.assignvariableop_7_batch_normalization_24_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp5assignvariableop_8_batch_normalization_24_moving_meanIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp9assignvariableop_9_batch_normalization_24_moving_varianceIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_52_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_52_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_53_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_53_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_25_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_25_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_25_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_25_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_54_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_54_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv2d_55_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp"assignvariableop_21_conv2d_55_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_batch_normalization_26_gammaIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp/assignvariableop_23_batch_normalization_26_betaIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp6assignvariableop_24_batch_normalization_26_moving_meanIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp:assignvariableop_25_batch_normalization_26_moving_varianceIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp$assignvariableop_26_conv2d_56_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp"assignvariableop_27_conv2d_56_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_57_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv2d_57_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp0assignvariableop_30_batch_normalization_27_gammaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp/assignvariableop_31_batch_normalization_27_betaIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp6assignvariableop_32_batch_normalization_27_moving_meanIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp:assignvariableop_33_batch_normalization_27_moving_varianceIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp#assignvariableop_34_dense_19_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp!assignvariableop_35_dense_19_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp#assignvariableop_36_dense_20_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp!assignvariableop_37_dense_20_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp#assignvariableop_38_dense_21_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp!assignvariableop_39_dense_21_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp&assignvariableop_40_normalization_meanIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_normalization_varianceIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp'assignvariableop_42_normalization_countIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpassignvariableop_43_iterationIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp)assignvariableop_44_current_learning_rateIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_m_conv2d_49_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_v_conv2d_49_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_m_conv2d_49_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_v_conv2d_49_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_m_conv2d_50_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_v_conv2d_50_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_m_conv2d_50_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_v_conv2d_50_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_m_conv2d_51_kernelIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_v_conv2d_51_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_m_conv2d_51_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_v_conv2d_51_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_m_batch_normalization_24_gammaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp7assignvariableop_58_adam_v_batch_normalization_24_gammaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_m_batch_normalization_24_betaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_v_batch_normalization_24_betaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_m_conv2d_52_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp+assignvariableop_62_adam_v_conv2d_52_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_m_conv2d_52_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_v_conv2d_52_biasIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_m_conv2d_53_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp+assignvariableop_66_adam_v_conv2d_53_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_m_conv2d_53_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_v_conv2d_53_biasIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_m_batch_normalization_25_gammaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp7assignvariableop_70_adam_v_batch_normalization_25_gammaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp6assignvariableop_71_adam_m_batch_normalization_25_betaIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_v_batch_normalization_25_betaIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_m_conv2d_54_kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp+assignvariableop_74_adam_v_conv2d_54_kernelIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_m_conv2d_54_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_v_conv2d_54_biasIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_m_conv2d_55_kernelIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp+assignvariableop_78_adam_v_conv2d_55_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp)assignvariableop_79_adam_m_conv2d_55_biasIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_v_conv2d_55_biasIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp7assignvariableop_81_adam_m_batch_normalization_26_gammaIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp7assignvariableop_82_adam_v_batch_normalization_26_gammaIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp6assignvariableop_83_adam_m_batch_normalization_26_betaIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp6assignvariableop_84_adam_v_batch_normalization_26_betaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_m_conv2d_56_kernelIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp+assignvariableop_86_adam_v_conv2d_56_kernelIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp)assignvariableop_87_adam_m_conv2d_56_biasIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp)assignvariableop_88_adam_v_conv2d_56_biasIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp+assignvariableop_89_adam_m_conv2d_57_kernelIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp+assignvariableop_90_adam_v_conv2d_57_kernelIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp)assignvariableop_91_adam_m_conv2d_57_biasIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp)assignvariableop_92_adam_v_conv2d_57_biasIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp7assignvariableop_93_adam_m_batch_normalization_27_gammaIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp7assignvariableop_94_adam_v_batch_normalization_27_gammaIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp6assignvariableop_95_adam_m_batch_normalization_27_betaIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp6assignvariableop_96_adam_v_batch_normalization_27_betaIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp*assignvariableop_97_adam_m_dense_19_kernelIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp*assignvariableop_98_adam_v_dense_19_kernelIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp(assignvariableop_99_adam_m_dense_19_biasIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp)assignvariableop_100_adam_v_dense_19_biasIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp+assignvariableop_101_adam_m_dense_20_kernelIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp+assignvariableop_102_adam_v_dense_20_kernelIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp)assignvariableop_103_adam_m_dense_20_biasIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp)assignvariableop_104_adam_v_dense_20_biasIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp+assignvariableop_105_adam_m_dense_21_kernelIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp+assignvariableop_106_adam_v_dense_21_kernelIdentity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp)assignvariableop_107_adam_m_dense_21_biasIdentity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp)assignvariableop_108_adam_v_dense_21_biasIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOpassignvariableop_109_total_1Identity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOpassignvariableop_110_count_1Identity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOpassignvariableop_111_totalIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOpassignvariableop_112_countIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp+assignvariableop_113_random_flip_6_statevarIdentity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp2assignvariableop_114_random_translation_6_statevarIdentity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp/assignvariableop_115_random_rotation_6_statevarIdentity_115:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_116Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_117IdentityIdentity_116:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_117Identity_117:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_992(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�n
 __inference__traced_save_1219088
file_prefixA
'read_disablecopyonread_conv2d_49_kernel:5
'read_1_disablecopyonread_conv2d_49_bias:C
)read_2_disablecopyonread_conv2d_50_kernel:5
'read_3_disablecopyonread_conv2d_50_bias:C
)read_4_disablecopyonread_conv2d_51_kernel:5
'read_5_disablecopyonread_conv2d_51_bias:C
5read_6_disablecopyonread_batch_normalization_24_gamma:B
4read_7_disablecopyonread_batch_normalization_24_beta:I
;read_8_disablecopyonread_batch_normalization_24_moving_mean:M
?read_9_disablecopyonread_batch_normalization_24_moving_variance:D
*read_10_disablecopyonread_conv2d_52_kernel:6
(read_11_disablecopyonread_conv2d_52_bias:D
*read_12_disablecopyonread_conv2d_53_kernel:6
(read_13_disablecopyonread_conv2d_53_bias:D
6read_14_disablecopyonread_batch_normalization_25_gamma:C
5read_15_disablecopyonread_batch_normalization_25_beta:J
<read_16_disablecopyonread_batch_normalization_25_moving_mean:N
@read_17_disablecopyonread_batch_normalization_25_moving_variance:D
*read_18_disablecopyonread_conv2d_54_kernel: 6
(read_19_disablecopyonread_conv2d_54_bias: D
*read_20_disablecopyonread_conv2d_55_kernel:  6
(read_21_disablecopyonread_conv2d_55_bias: D
6read_22_disablecopyonread_batch_normalization_26_gamma: C
5read_23_disablecopyonread_batch_normalization_26_beta: J
<read_24_disablecopyonread_batch_normalization_26_moving_mean: N
@read_25_disablecopyonread_batch_normalization_26_moving_variance: D
*read_26_disablecopyonread_conv2d_56_kernel: @6
(read_27_disablecopyonread_conv2d_56_bias:@D
*read_28_disablecopyonread_conv2d_57_kernel:@@6
(read_29_disablecopyonread_conv2d_57_bias:@D
6read_30_disablecopyonread_batch_normalization_27_gamma:@C
5read_31_disablecopyonread_batch_normalization_27_beta:@J
<read_32_disablecopyonread_batch_normalization_27_moving_mean:@N
@read_33_disablecopyonread_batch_normalization_27_moving_variance:@<
)read_34_disablecopyonread_dense_19_kernel:	�@5
'read_35_disablecopyonread_dense_19_bias:@;
)read_36_disablecopyonread_dense_20_kernel:@ 5
'read_37_disablecopyonread_dense_20_bias: ;
)read_38_disablecopyonread_dense_21_kernel: 5
'read_39_disablecopyonread_dense_21_bias::
,read_40_disablecopyonread_normalization_mean:>
0read_41_disablecopyonread_normalization_variance:7
-read_42_disablecopyonread_normalization_count:	 -
#read_43_disablecopyonread_iteration:	 9
/read_44_disablecopyonread_current_learning_rate: K
1read_45_disablecopyonread_adam_m_conv2d_49_kernel:K
1read_46_disablecopyonread_adam_v_conv2d_49_kernel:=
/read_47_disablecopyonread_adam_m_conv2d_49_bias:=
/read_48_disablecopyonread_adam_v_conv2d_49_bias:K
1read_49_disablecopyonread_adam_m_conv2d_50_kernel:K
1read_50_disablecopyonread_adam_v_conv2d_50_kernel:=
/read_51_disablecopyonread_adam_m_conv2d_50_bias:=
/read_52_disablecopyonread_adam_v_conv2d_50_bias:K
1read_53_disablecopyonread_adam_m_conv2d_51_kernel:K
1read_54_disablecopyonread_adam_v_conv2d_51_kernel:=
/read_55_disablecopyonread_adam_m_conv2d_51_bias:=
/read_56_disablecopyonread_adam_v_conv2d_51_bias:K
=read_57_disablecopyonread_adam_m_batch_normalization_24_gamma:K
=read_58_disablecopyonread_adam_v_batch_normalization_24_gamma:J
<read_59_disablecopyonread_adam_m_batch_normalization_24_beta:J
<read_60_disablecopyonread_adam_v_batch_normalization_24_beta:K
1read_61_disablecopyonread_adam_m_conv2d_52_kernel:K
1read_62_disablecopyonread_adam_v_conv2d_52_kernel:=
/read_63_disablecopyonread_adam_m_conv2d_52_bias:=
/read_64_disablecopyonread_adam_v_conv2d_52_bias:K
1read_65_disablecopyonread_adam_m_conv2d_53_kernel:K
1read_66_disablecopyonread_adam_v_conv2d_53_kernel:=
/read_67_disablecopyonread_adam_m_conv2d_53_bias:=
/read_68_disablecopyonread_adam_v_conv2d_53_bias:K
=read_69_disablecopyonread_adam_m_batch_normalization_25_gamma:K
=read_70_disablecopyonread_adam_v_batch_normalization_25_gamma:J
<read_71_disablecopyonread_adam_m_batch_normalization_25_beta:J
<read_72_disablecopyonread_adam_v_batch_normalization_25_beta:K
1read_73_disablecopyonread_adam_m_conv2d_54_kernel: K
1read_74_disablecopyonread_adam_v_conv2d_54_kernel: =
/read_75_disablecopyonread_adam_m_conv2d_54_bias: =
/read_76_disablecopyonread_adam_v_conv2d_54_bias: K
1read_77_disablecopyonread_adam_m_conv2d_55_kernel:  K
1read_78_disablecopyonread_adam_v_conv2d_55_kernel:  =
/read_79_disablecopyonread_adam_m_conv2d_55_bias: =
/read_80_disablecopyonread_adam_v_conv2d_55_bias: K
=read_81_disablecopyonread_adam_m_batch_normalization_26_gamma: K
=read_82_disablecopyonread_adam_v_batch_normalization_26_gamma: J
<read_83_disablecopyonread_adam_m_batch_normalization_26_beta: J
<read_84_disablecopyonread_adam_v_batch_normalization_26_beta: K
1read_85_disablecopyonread_adam_m_conv2d_56_kernel: @K
1read_86_disablecopyonread_adam_v_conv2d_56_kernel: @=
/read_87_disablecopyonread_adam_m_conv2d_56_bias:@=
/read_88_disablecopyonread_adam_v_conv2d_56_bias:@K
1read_89_disablecopyonread_adam_m_conv2d_57_kernel:@@K
1read_90_disablecopyonread_adam_v_conv2d_57_kernel:@@=
/read_91_disablecopyonread_adam_m_conv2d_57_bias:@=
/read_92_disablecopyonread_adam_v_conv2d_57_bias:@K
=read_93_disablecopyonread_adam_m_batch_normalization_27_gamma:@K
=read_94_disablecopyonread_adam_v_batch_normalization_27_gamma:@J
<read_95_disablecopyonread_adam_m_batch_normalization_27_beta:@J
<read_96_disablecopyonread_adam_v_batch_normalization_27_beta:@C
0read_97_disablecopyonread_adam_m_dense_19_kernel:	�@C
0read_98_disablecopyonread_adam_v_dense_19_kernel:	�@<
.read_99_disablecopyonread_adam_m_dense_19_bias:@=
/read_100_disablecopyonread_adam_v_dense_19_bias:@C
1read_101_disablecopyonread_adam_m_dense_20_kernel:@ C
1read_102_disablecopyonread_adam_v_dense_20_kernel:@ =
/read_103_disablecopyonread_adam_m_dense_20_bias: =
/read_104_disablecopyonread_adam_v_dense_20_bias: C
1read_105_disablecopyonread_adam_m_dense_21_kernel: C
1read_106_disablecopyonread_adam_v_dense_21_kernel: =
/read_107_disablecopyonread_adam_m_dense_21_bias:=
/read_108_disablecopyonread_adam_v_dense_21_bias:,
"read_109_disablecopyonread_total_1: ,
"read_110_disablecopyonread_count_1: *
 read_111_disablecopyonread_total: *
 read_112_disablecopyonread_count: ?
1read_113_disablecopyonread_random_flip_6_statevar:	F
8read_114_disablecopyonread_random_translation_6_statevar:	C
5read_115_disablecopyonread_random_rotation_6_statevar:	
savev2_const_2
identity_233��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_112/DisableCopyOnRead�Read_112/ReadVariableOp�Read_113/DisableCopyOnRead�Read_113/ReadVariableOp�Read_114/DisableCopyOnRead�Read_114/ReadVariableOp�Read_115/DisableCopyOnRead�Read_115/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_49_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_49_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_49_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_49_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_50_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_50_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_50_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_50_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_51_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_51_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_51_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_51_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_6/DisableCopyOnReadDisableCopyOnRead5read_6_disablecopyonread_batch_normalization_24_gamma"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp5read_6_disablecopyonread_batch_normalization_24_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_7/DisableCopyOnReadDisableCopyOnRead4read_7_disablecopyonread_batch_normalization_24_beta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp4read_7_disablecopyonread_batch_normalization_24_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_8/DisableCopyOnReadDisableCopyOnRead;read_8_disablecopyonread_batch_normalization_24_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp;read_8_disablecopyonread_batch_normalization_24_moving_mean^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_9/DisableCopyOnReadDisableCopyOnRead?read_9_disablecopyonread_batch_normalization_24_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp?read_9_disablecopyonread_batch_normalization_24_moving_variance^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_conv2d_52_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_conv2d_52_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_conv2d_52_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_conv2d_52_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv2d_53_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv2d_53_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
:}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv2d_53_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv2d_53_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_25_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_25_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_25_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_25_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_25_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_25_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv2d_54_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv2d_54_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: }
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv2d_54_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv2d_54_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_20/DisableCopyOnReadDisableCopyOnRead*read_20_disablecopyonread_conv2d_55_kernel"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp*read_20_disablecopyonread_conv2d_55_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*&
_output_shapes
:  }
Read_21/DisableCopyOnReadDisableCopyOnRead(read_21_disablecopyonread_conv2d_55_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp(read_21_disablecopyonread_conv2d_55_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_22/DisableCopyOnReadDisableCopyOnRead6read_22_disablecopyonread_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp6read_22_disablecopyonread_batch_normalization_26_gamma^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_23/DisableCopyOnReadDisableCopyOnRead5read_23_disablecopyonread_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp5read_23_disablecopyonread_batch_normalization_26_beta^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_24/DisableCopyOnReadDisableCopyOnRead<read_24_disablecopyonread_batch_normalization_26_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp<read_24_disablecopyonread_batch_normalization_26_moving_mean^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_25/DisableCopyOnReadDisableCopyOnRead@read_25_disablecopyonread_batch_normalization_26_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp@read_25_disablecopyonread_batch_normalization_26_moving_variance^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_26/DisableCopyOnReadDisableCopyOnRead*read_26_disablecopyonread_conv2d_56_kernel"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp*read_26_disablecopyonread_conv2d_56_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
: @}
Read_27/DisableCopyOnReadDisableCopyOnRead(read_27_disablecopyonread_conv2d_56_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp(read_27_disablecopyonread_conv2d_56_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_28/DisableCopyOnReadDisableCopyOnRead*read_28_disablecopyonread_conv2d_57_kernel"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp*read_28_disablecopyonread_conv2d_57_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_29/DisableCopyOnReadDisableCopyOnRead(read_29_disablecopyonread_conv2d_57_bias"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp(read_29_disablecopyonread_conv2d_57_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_30/DisableCopyOnReadDisableCopyOnRead6read_30_disablecopyonread_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp6read_30_disablecopyonread_batch_normalization_27_gamma^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_31/DisableCopyOnReadDisableCopyOnRead5read_31_disablecopyonread_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp5read_31_disablecopyonread_batch_normalization_27_beta^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_32/DisableCopyOnReadDisableCopyOnRead<read_32_disablecopyonread_batch_normalization_27_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp<read_32_disablecopyonread_batch_normalization_27_moving_mean^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_33/DisableCopyOnReadDisableCopyOnRead@read_33_disablecopyonread_batch_normalization_27_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp@read_33_disablecopyonread_batch_normalization_27_moving_variance^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_34/DisableCopyOnReadDisableCopyOnRead)read_34_disablecopyonread_dense_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp)read_34_disablecopyonread_dense_19_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@|
Read_35/DisableCopyOnReadDisableCopyOnRead'read_35_disablecopyonread_dense_19_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp'read_35_disablecopyonread_dense_19_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_36/DisableCopyOnReadDisableCopyOnRead)read_36_disablecopyonread_dense_20_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp)read_36_disablecopyonread_dense_20_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0o
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ e
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes

:@ |
Read_37/DisableCopyOnReadDisableCopyOnRead'read_37_disablecopyonread_dense_20_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp'read_37_disablecopyonread_dense_20_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_38/DisableCopyOnReadDisableCopyOnRead)read_38_disablecopyonread_dense_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp)read_38_disablecopyonread_dense_21_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

: |
Read_39/DisableCopyOnReadDisableCopyOnRead'read_39_disablecopyonread_dense_21_bias"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp'read_39_disablecopyonread_dense_21_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_40/DisableCopyOnReadDisableCopyOnRead,read_40_disablecopyonread_normalization_mean"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp,read_40_disablecopyonread_normalization_mean^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead0read_41_disablecopyonread_normalization_variance"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp0read_41_disablecopyonread_normalization_variance^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_42/DisableCopyOnReadDisableCopyOnRead-read_42_disablecopyonread_normalization_count"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp-read_42_disablecopyonread_normalization_count^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0	*
_output_shapes
: x
Read_43/DisableCopyOnReadDisableCopyOnRead#read_43_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp#read_43_disablecopyonread_iteration^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0	*
_output_shapes
: �
Read_44/DisableCopyOnReadDisableCopyOnRead/read_44_disablecopyonread_current_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp/read_44_disablecopyonread_current_learning_rate^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_45/DisableCopyOnReadDisableCopyOnRead1read_45_disablecopyonread_adam_m_conv2d_49_kernel"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp1read_45_disablecopyonread_adam_m_conv2d_49_kernel^Read_45/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_46/DisableCopyOnReadDisableCopyOnRead1read_46_disablecopyonread_adam_v_conv2d_49_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp1read_46_disablecopyonread_adam_v_conv2d_49_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_47/DisableCopyOnReadDisableCopyOnRead/read_47_disablecopyonread_adam_m_conv2d_49_bias"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp/read_47_disablecopyonread_adam_m_conv2d_49_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead/read_48_disablecopyonread_adam_v_conv2d_49_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp/read_48_disablecopyonread_adam_v_conv2d_49_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead1read_49_disablecopyonread_adam_m_conv2d_50_kernel"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp1read_49_disablecopyonread_adam_m_conv2d_50_kernel^Read_49/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_50/DisableCopyOnReadDisableCopyOnRead1read_50_disablecopyonread_adam_v_conv2d_50_kernel"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp1read_50_disablecopyonread_adam_v_conv2d_50_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead/read_51_disablecopyonread_adam_m_conv2d_50_bias"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp/read_51_disablecopyonread_adam_m_conv2d_50_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_52/DisableCopyOnReadDisableCopyOnRead/read_52_disablecopyonread_adam_v_conv2d_50_bias"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp/read_52_disablecopyonread_adam_v_conv2d_50_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead1read_53_disablecopyonread_adam_m_conv2d_51_kernel"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp1read_53_disablecopyonread_adam_m_conv2d_51_kernel^Read_53/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_54/DisableCopyOnReadDisableCopyOnRead1read_54_disablecopyonread_adam_v_conv2d_51_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp1read_54_disablecopyonread_adam_v_conv2d_51_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead/read_55_disablecopyonread_adam_m_conv2d_51_bias"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp/read_55_disablecopyonread_adam_m_conv2d_51_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead/read_56_disablecopyonread_adam_v_conv2d_51_bias"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp/read_56_disablecopyonread_adam_v_conv2d_51_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead=read_57_disablecopyonread_adam_m_batch_normalization_24_gamma"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp=read_57_disablecopyonread_adam_m_batch_normalization_24_gamma^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_58/DisableCopyOnReadDisableCopyOnRead=read_58_disablecopyonread_adam_v_batch_normalization_24_gamma"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp=read_58_disablecopyonread_adam_v_batch_normalization_24_gamma^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead<read_59_disablecopyonread_adam_m_batch_normalization_24_beta"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp<read_59_disablecopyonread_adam_m_batch_normalization_24_beta^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead<read_60_disablecopyonread_adam_v_batch_normalization_24_beta"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp<read_60_disablecopyonread_adam_v_batch_normalization_24_beta^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead1read_61_disablecopyonread_adam_m_conv2d_52_kernel"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp1read_61_disablecopyonread_adam_m_conv2d_52_kernel^Read_61/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead1read_62_disablecopyonread_adam_v_conv2d_52_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp1read_62_disablecopyonread_adam_v_conv2d_52_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_63/DisableCopyOnReadDisableCopyOnRead/read_63_disablecopyonread_adam_m_conv2d_52_bias"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp/read_63_disablecopyonread_adam_m_conv2d_52_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_64/DisableCopyOnReadDisableCopyOnRead/read_64_disablecopyonread_adam_v_conv2d_52_bias"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp/read_64_disablecopyonread_adam_v_conv2d_52_bias^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_65/DisableCopyOnReadDisableCopyOnRead1read_65_disablecopyonread_adam_m_conv2d_53_kernel"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp1read_65_disablecopyonread_adam_m_conv2d_53_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_66/DisableCopyOnReadDisableCopyOnRead1read_66_disablecopyonread_adam_v_conv2d_53_kernel"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp1read_66_disablecopyonread_adam_v_conv2d_53_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_67/DisableCopyOnReadDisableCopyOnRead/read_67_disablecopyonread_adam_m_conv2d_53_bias"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp/read_67_disablecopyonread_adam_m_conv2d_53_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_68/DisableCopyOnReadDisableCopyOnRead/read_68_disablecopyonread_adam_v_conv2d_53_bias"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp/read_68_disablecopyonread_adam_v_conv2d_53_bias^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_69/DisableCopyOnReadDisableCopyOnRead=read_69_disablecopyonread_adam_m_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp=read_69_disablecopyonread_adam_m_batch_normalization_25_gamma^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_70/DisableCopyOnReadDisableCopyOnRead=read_70_disablecopyonread_adam_v_batch_normalization_25_gamma"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp=read_70_disablecopyonread_adam_v_batch_normalization_25_gamma^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_71/DisableCopyOnReadDisableCopyOnRead<read_71_disablecopyonread_adam_m_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp<read_71_disablecopyonread_adam_m_batch_normalization_25_beta^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_72/DisableCopyOnReadDisableCopyOnRead<read_72_disablecopyonread_adam_v_batch_normalization_25_beta"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp<read_72_disablecopyonread_adam_v_batch_normalization_25_beta^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_73/DisableCopyOnReadDisableCopyOnRead1read_73_disablecopyonread_adam_m_conv2d_54_kernel"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp1read_73_disablecopyonread_adam_m_conv2d_54_kernel^Read_73/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_74/DisableCopyOnReadDisableCopyOnRead1read_74_disablecopyonread_adam_v_conv2d_54_kernel"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp1read_74_disablecopyonread_adam_v_conv2d_54_kernel^Read_74/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_75/DisableCopyOnReadDisableCopyOnRead/read_75_disablecopyonread_adam_m_conv2d_54_bias"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp/read_75_disablecopyonread_adam_m_conv2d_54_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_76/DisableCopyOnReadDisableCopyOnRead/read_76_disablecopyonread_adam_v_conv2d_54_bias"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp/read_76_disablecopyonread_adam_v_conv2d_54_bias^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_77/DisableCopyOnReadDisableCopyOnRead1read_77_disablecopyonread_adam_m_conv2d_55_kernel"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp1read_77_disablecopyonread_adam_m_conv2d_55_kernel^Read_77/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_78/DisableCopyOnReadDisableCopyOnRead1read_78_disablecopyonread_adam_v_conv2d_55_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp1read_78_disablecopyonread_adam_v_conv2d_55_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_79/DisableCopyOnReadDisableCopyOnRead/read_79_disablecopyonread_adam_m_conv2d_55_bias"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp/read_79_disablecopyonread_adam_m_conv2d_55_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_80/DisableCopyOnReadDisableCopyOnRead/read_80_disablecopyonread_adam_v_conv2d_55_bias"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp/read_80_disablecopyonread_adam_v_conv2d_55_bias^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_81/DisableCopyOnReadDisableCopyOnRead=read_81_disablecopyonread_adam_m_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp=read_81_disablecopyonread_adam_m_batch_normalization_26_gamma^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_82/DisableCopyOnReadDisableCopyOnRead=read_82_disablecopyonread_adam_v_batch_normalization_26_gamma"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp=read_82_disablecopyonread_adam_v_batch_normalization_26_gamma^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_83/DisableCopyOnReadDisableCopyOnRead<read_83_disablecopyonread_adam_m_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp<read_83_disablecopyonread_adam_m_batch_normalization_26_beta^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_84/DisableCopyOnReadDisableCopyOnRead<read_84_disablecopyonread_adam_v_batch_normalization_26_beta"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp<read_84_disablecopyonread_adam_v_batch_normalization_26_beta^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_85/DisableCopyOnReadDisableCopyOnRead1read_85_disablecopyonread_adam_m_conv2d_56_kernel"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp1read_85_disablecopyonread_adam_m_conv2d_56_kernel^Read_85/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_86/DisableCopyOnReadDisableCopyOnRead1read_86_disablecopyonread_adam_v_conv2d_56_kernel"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOp1read_86_disablecopyonread_adam_v_conv2d_56_kernel^Read_86/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_87/DisableCopyOnReadDisableCopyOnRead/read_87_disablecopyonread_adam_m_conv2d_56_bias"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp/read_87_disablecopyonread_adam_m_conv2d_56_bias^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_88/DisableCopyOnReadDisableCopyOnRead/read_88_disablecopyonread_adam_v_conv2d_56_bias"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp/read_88_disablecopyonread_adam_v_conv2d_56_bias^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_89/DisableCopyOnReadDisableCopyOnRead1read_89_disablecopyonread_adam_m_conv2d_57_kernel"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp1read_89_disablecopyonread_adam_m_conv2d_57_kernel^Read_89/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_90/DisableCopyOnReadDisableCopyOnRead1read_90_disablecopyonread_adam_v_conv2d_57_kernel"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp1read_90_disablecopyonread_adam_v_conv2d_57_kernel^Read_90/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_91/DisableCopyOnReadDisableCopyOnRead/read_91_disablecopyonread_adam_m_conv2d_57_bias"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp/read_91_disablecopyonread_adam_m_conv2d_57_bias^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_92/DisableCopyOnReadDisableCopyOnRead/read_92_disablecopyonread_adam_v_conv2d_57_bias"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp/read_92_disablecopyonread_adam_v_conv2d_57_bias^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_93/DisableCopyOnReadDisableCopyOnRead=read_93_disablecopyonread_adam_m_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp=read_93_disablecopyonread_adam_m_batch_normalization_27_gamma^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_94/DisableCopyOnReadDisableCopyOnRead=read_94_disablecopyonread_adam_v_batch_normalization_27_gamma"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp=read_94_disablecopyonread_adam_v_batch_normalization_27_gamma^Read_94/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_95/DisableCopyOnReadDisableCopyOnRead<read_95_disablecopyonread_adam_m_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp<read_95_disablecopyonread_adam_m_batch_normalization_27_beta^Read_95/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_96/DisableCopyOnReadDisableCopyOnRead<read_96_disablecopyonread_adam_v_batch_normalization_27_beta"/device:CPU:0*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp<read_96_disablecopyonread_adam_v_batch_normalization_27_beta^Read_96/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_97/DisableCopyOnReadDisableCopyOnRead0read_97_disablecopyonread_adam_m_dense_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOp0read_97_disablecopyonread_adam_m_dense_19_kernel^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0q
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_98/DisableCopyOnReadDisableCopyOnRead0read_98_disablecopyonread_adam_v_dense_19_kernel"/device:CPU:0*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOp0read_98_disablecopyonread_adam_v_dense_19_kernel^Read_98/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0q
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_99/DisableCopyOnReadDisableCopyOnRead.read_99_disablecopyonread_adam_m_dense_19_bias"/device:CPU:0*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp.read_99_disablecopyonread_adam_m_dense_19_bias^Read_99/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_100/DisableCopyOnReadDisableCopyOnRead/read_100_disablecopyonread_adam_v_dense_19_bias"/device:CPU:0*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp/read_100_disablecopyonread_adam_v_dense_19_bias^Read_100/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_101/DisableCopyOnReadDisableCopyOnRead1read_101_disablecopyonread_adam_m_dense_20_kernel"/device:CPU:0*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp1read_101_disablecopyonread_adam_m_dense_20_kernel^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0q
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ g
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_102/DisableCopyOnReadDisableCopyOnRead1read_102_disablecopyonread_adam_v_dense_20_kernel"/device:CPU:0*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp1read_102_disablecopyonread_adam_v_dense_20_kernel^Read_102/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@ *
dtype0q
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@ g
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes

:@ �
Read_103/DisableCopyOnReadDisableCopyOnRead/read_103_disablecopyonread_adam_m_dense_20_bias"/device:CPU:0*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp/read_103_disablecopyonread_adam_m_dense_20_bias^Read_103/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_104/DisableCopyOnReadDisableCopyOnRead/read_104_disablecopyonread_adam_v_dense_20_bias"/device:CPU:0*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp/read_104_disablecopyonread_adam_v_dense_20_bias^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0m
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_105/DisableCopyOnReadDisableCopyOnRead1read_105_disablecopyonread_adam_m_dense_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp1read_105_disablecopyonread_adam_m_dense_21_kernel^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0q
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_106/DisableCopyOnReadDisableCopyOnRead1read_106_disablecopyonread_adam_v_dense_21_kernel"/device:CPU:0*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp1read_106_disablecopyonread_adam_v_dense_21_kernel^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0q
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_107/DisableCopyOnReadDisableCopyOnRead/read_107_disablecopyonread_adam_m_dense_21_bias"/device:CPU:0*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOp/read_107_disablecopyonread_adam_m_dense_21_bias^Read_107/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_108/DisableCopyOnReadDisableCopyOnRead/read_108_disablecopyonread_adam_v_dense_21_bias"/device:CPU:0*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOp/read_108_disablecopyonread_adam_v_dense_21_bias^Read_108/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_109/DisableCopyOnReadDisableCopyOnRead"read_109_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOp"read_109_disablecopyonread_total_1^Read_109/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_110/DisableCopyOnReadDisableCopyOnRead"read_110_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOp"read_110_disablecopyonread_count_1^Read_110/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_111/DisableCopyOnReadDisableCopyOnRead read_111_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp read_111_disablecopyonread_total^Read_111/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_112/DisableCopyOnReadDisableCopyOnRead read_112_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_112/ReadVariableOpReadVariableOp read_112_disablecopyonread_count^Read_112/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_113/DisableCopyOnReadDisableCopyOnRead1read_113_disablecopyonread_random_flip_6_statevar"/device:CPU:0*
_output_shapes
 �
Read_113/ReadVariableOpReadVariableOp1read_113_disablecopyonread_random_flip_6_statevar^Read_113/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	m
Identity_226IdentityRead_113/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_114/DisableCopyOnReadDisableCopyOnRead8read_114_disablecopyonread_random_translation_6_statevar"/device:CPU:0*
_output_shapes
 �
Read_114/ReadVariableOpReadVariableOp8read_114_disablecopyonread_random_translation_6_statevar^Read_114/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	m
Identity_228IdentityRead_114/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_115/DisableCopyOnReadDisableCopyOnRead5read_115_disablecopyonread_random_rotation_6_statevar"/device:CPU:0*
_output_shapes
 �
Read_115/ReadVariableOpReadVariableOp5read_115_disablecopyonread_random_rotation_6_statevar^Read_115/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	m
Identity_230IdentityRead_115/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_231IdentityIdentity_230:output:0"/device:CPU:0*
T0	*
_output_shapes
:�2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*�1
value�1B�1uB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-10/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-10/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB;optimizer/_current_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-1/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-1/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:u*
dtype0*�
value�B�uB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0Identity_231:output:0savev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *�
dtypesy
w2u					�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_232Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_233IdentityIdentity_232:output:0^NoOp*
T0*
_output_shapes
: �0
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_115/DisableCopyOnRead^Read_115/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_233Identity_233:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp28
Read_115/DisableCopyOnReadRead_115/DisableCopyOnRead22
Read_115/ReadVariableOpRead_115/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:u

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
+__inference_conv2d_55_layer_call_fn_1217636

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1214937w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_27_layer_call_fn_1217782

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214690�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218348

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F�?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������@@h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
O
3__inference_random_rotation_6_layer_call_fn_1218230

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214318h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�

�
E__inference_dense_21_layer_call_and_return_conditional_losses_1215079

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
F
*__inference_re_lu_24_layer_call_fn_1217470

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1214855h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
G
+__inference_dropout_6_layer_call_fn_1217882

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215190a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1214886

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_31_layer_call_fn_1217602

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1214589�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

e
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217894

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_33_layer_call_fn_1217846

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1214741�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1217627

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:��������� i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1217749

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�"
D__inference_model_6_layer_call_and_return_conditional_losses_1216945

inputsB
(conv2d_49_conv2d_readvariableop_resource:7
)conv2d_49_biasadd_readvariableop_resource:$
 sequential_6_normalization_sub_y%
!sequential_6_normalization_sqrt_xB
(conv2d_50_conv2d_readvariableop_resource:7
)conv2d_50_biasadd_readvariableop_resource:B
(conv2d_51_conv2d_readvariableop_resource:7
)conv2d_51_biasadd_readvariableop_resource:<
.batch_normalization_24_readvariableop_resource:>
0batch_normalization_24_readvariableop_1_resource:M
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_52_conv2d_readvariableop_resource:7
)conv2d_52_biasadd_readvariableop_resource:B
(conv2d_53_conv2d_readvariableop_resource:7
)conv2d_53_biasadd_readvariableop_resource:<
.batch_normalization_25_readvariableop_resource:>
0batch_normalization_25_readvariableop_1_resource:M
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_54_conv2d_readvariableop_resource: 7
)conv2d_54_biasadd_readvariableop_resource: B
(conv2d_55_conv2d_readvariableop_resource:  7
)conv2d_55_biasadd_readvariableop_resource: <
.batch_normalization_26_readvariableop_resource: >
0batch_normalization_26_readvariableop_1_resource: M
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_56_conv2d_readvariableop_resource: @7
)conv2d_56_biasadd_readvariableop_resource:@B
(conv2d_57_conv2d_readvariableop_resource:@@7
)conv2d_57_biasadd_readvariableop_resource:@<
.batch_normalization_27_readvariableop_resource:@>
0batch_normalization_27_readvariableop_1_resource:@M
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:@:
'dense_19_matmul_readvariableop_resource:	�@6
(dense_19_biasadd_readvariableop_resource:@9
'dense_20_matmul_readvariableop_resource:@ 6
(dense_20_biasadd_readvariableop_resource: 9
'dense_21_matmul_readvariableop_resource: 6
(dense_21_biasadd_readvariableop_resource:
identity��6batch_normalization_24/FusedBatchNormV3/ReadVariableOp�8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_24/ReadVariableOp�'batch_normalization_24/ReadVariableOp_1�6batch_normalization_25/FusedBatchNormV3/ReadVariableOp�8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_25/ReadVariableOp�'batch_normalization_25/ReadVariableOp_1�6batch_normalization_26/FusedBatchNormV3/ReadVariableOp�8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_26/ReadVariableOp�'batch_normalization_26/ReadVariableOp_1�6batch_normalization_27/FusedBatchNormV3/ReadVariableOp�8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_27/ReadVariableOp�'batch_normalization_27/ReadVariableOp_1� conv2d_49/BiasAdd/ReadVariableOp�conv2d_49/Conv2D/ReadVariableOp� conv2d_50/BiasAdd/ReadVariableOp�conv2d_50/Conv2D/ReadVariableOp� conv2d_51/BiasAdd/ReadVariableOp�conv2d_51/Conv2D/ReadVariableOp� conv2d_52/BiasAdd/ReadVariableOp�conv2d_52/Conv2D/ReadVariableOp� conv2d_53/BiasAdd/ReadVariableOp�conv2d_53/Conv2D/ReadVariableOp� conv2d_54/BiasAdd/ReadVariableOp�conv2d_54/Conv2D/ReadVariableOp� conv2d_55/BiasAdd/ReadVariableOp�conv2d_55/Conv2D/ReadVariableOp� conv2d_56/BiasAdd/ReadVariableOp�conv2d_56/Conv2D/ReadVariableOp� conv2d_57/BiasAdd/ReadVariableOp�conv2d_57/Conv2D/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp�dense_21/BiasAdd/ReadVariableOp�dense_21/MatMul/ReadVariableOp�
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_49/Conv2DConv2Dinputs'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������g
resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"@   @   s
resizing_6/resize/CastCastresizing_6/resize/size:output:0*

DstT0*

SrcT0*
_output_shapes
:o
resizing_6/resize/ShapeShapeconv2d_49/BiasAdd:output:0*
T0*
_output_shapes
::��o
%resizing_6/resize/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:q
'resizing_6/resize/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'resizing_6/resize/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
resizing_6/resize/strided_sliceStridedSlice resizing_6/resize/Shape:output:0.resizing_6/resize/strided_slice/stack:output:00resizing_6/resize/strided_slice/stack_1:output:00resizing_6/resize/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:~
resizing_6/resize/Cast_1Cast(resizing_6/resize/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
:�
resizing_6/resize/truedivRealDivresizing_6/resize/Cast:y:0resizing_6/resize/Cast_1:y:0*
T0*
_output_shapes
:d
resizing_6/resize/zerosConst*
_output_shapes
:*
dtype0*
valueB*    �
#resizing_6/resize/ScaleAndTranslateScaleAndTranslateconv2d_49/BiasAdd:output:0resizing_6/resize/size:output:0resizing_6/resize/truediv:z:0 resizing_6/resize/zeros:output:0*
T0*/
_output_shapes
:���������@@*
	antialias( �
sequential_6/normalization/subSub4resizing_6/resize/ScaleAndTranslate:resized_images:0 sequential_6_normalization_sub_y*
T0*/
_output_shapes
:���������@@{
sequential_6/normalization/SqrtSqrt!sequential_6_normalization_sqrt_x*
T0*&
_output_shapes
:i
$sequential_6/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
"sequential_6/normalization/MaximumMaximum#sequential_6/normalization/Sqrt:y:0-sequential_6/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
"sequential_6/normalization/truedivRealDiv"sequential_6/normalization/sub:z:0&sequential_6/normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@�
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_50/Conv2DConv2D&sequential_6/normalization/truediv:z:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@l
conv2d_50/ReluReluconv2d_50/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_51/Conv2DConv2Dconv2d_50/Relu:activations:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@l
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3conv2d_51/Relu:activations:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@:::::*
epsilon%o�:*
is_training( |
re_lu_24/ReluRelu+batch_normalization_24/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@@�
max_pooling2d_30/MaxPoolMaxPoolre_lu_24/Relu:activations:0*/
_output_shapes
:���������  *
ksize
*
paddingVALID*
strides
�
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_52/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  l
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  l
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3conv2d_53/Relu:activations:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
is_training( |
re_lu_25/ReluRelu+batch_normalization_25/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  �
max_pooling2d_31/MaxPoolMaxPoolre_lu_25/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_54/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� l
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� l
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
: *
dtype0�
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
: *
dtype0�
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3conv2d_55/Relu:activations:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( |
re_lu_26/ReluRelu+batch_normalization_26/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� �
max_pooling2d_32/MaxPoolMaxPoolre_lu_26/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_56/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_57/Conv2DConv2Dconv2d_56/Relu:activations:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_27/ReadVariableOp_1ReadVariableOp0batch_normalization_27_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3conv2d_57/Relu:activations:0-batch_normalization_27/ReadVariableOp:value:0/batch_normalization_27/ReadVariableOp_1:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( |
re_lu_27/ReluRelu+batch_normalization_27/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_33/MaxPoolMaxPoolre_lu_27/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
max_pooling2d_34/MaxPoolMaxPool!max_pooling2d_33/MaxPool:output:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_6/ReshapeReshape!max_pooling2d_34/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:����������m
dropout_6/IdentityIdentityflatten_6/Reshape:output:0*
T0*(
_output_shapes
:�����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_19/MatMulMatMuldropout_6/Identity:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_20/MatMulMatMuldense_19/Relu:activations:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_21/SoftmaxSoftmaxdense_21/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_21/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp7^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_17^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp(^batch_normalization_27/ReadVariableOp_1!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_27/ReadVariableOp_1'batch_normalization_27/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp:,(
&
_output_shapes
::,(
&
_output_shapes
::Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217709

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
��
�
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214290

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F�?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������@@h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_57_layer_call_fn_1217758

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1214988w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1217505

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
a
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1214957

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
a
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1217719

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:��������� b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1214168

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip�!stateful_uniform_1/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:���������\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:���������b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������e
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::��p
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:���������c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1217525

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
s
.__inference_sequential_6_layer_call_fn_1214380
normalization_input
unknown
	unknown_0
identity�
PartitionedCallPartitionedCallnormalization_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214373h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@:::,(
&
_output_shapes
::,(
&
_output_shapes
::d `
/
_output_shapes
:���������@@
-
_user_specified_namenormalization_input
�
�
+__inference_conv2d_49_layer_call_fn_1216954

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1214773y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
a
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1215008

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218214

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip�!stateful_uniform_1/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������\
mulMulstateful_uniform:z:0Cast:y:0*
T0*'
_output_shapes
:���������\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:���������b
mul_1Mulstateful_uniform_1:z:0
Cast_1:y:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2	mul_1:z:0mul:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������e
translation_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::��p
&translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 translation_matrix/strided_sliceStridedSlice!translation_matrix/Shape:output:0/translation_matrix/strided_slice/stack:output:01translation_matrix/strided_slice/stack_1:output:01translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/ones/packedPack)translation_matrix/strided_slice:output:0)translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:b
translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/onesFill'translation_matrix/ones/packed:output:0&translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:���������c
!translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/zeros/packedPack)translation_matrix/strided_slice:output:0*translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:c
translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zerosFill(translation_matrix/zeros/packed:output:0'translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
*translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_1StridedSliceconcat:output:01translation_matrix/strided_slice_1/stack:output:03translation_matrix/strided_slice_1/stack_1:output:03translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
translation_matrix/NegNeg+translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_1/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_1Fill*translation_matrix/zeros_1/packed:output:0)translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������d
"translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
 translation_matrix/ones_1/packedPack)translation_matrix/strided_slice:output:0+translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
translation_matrix/ones_1Fill)translation_matrix/ones_1/packed:output:0(translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:���������}
(translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
*translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
"translation_matrix/strided_slice_2StridedSliceconcat:output:01translation_matrix/strided_slice_2/stack:output:03translation_matrix/strided_slice_2/stack_1:output:03translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
translation_matrix/Neg_1Neg+translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������e
#translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
!translation_matrix/zeros_2/packedPack)translation_matrix/strided_slice:output:0,translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:e
 translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
translation_matrix/zeros_2Fill*translation_matrix/zeros_2/packed:output:0)translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������`
translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
translation_matrix/concatConcatV2 translation_matrix/ones:output:0!translation_matrix/zeros:output:0translation_matrix/Neg:y:0#translation_matrix/zeros_1:output:0"translation_matrix/ones_1:output:0translation_matrix/Neg_1:y:0#translation_matrix/zeros_2:output:0'translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputs"translation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*/
_output_shapes
:���������@@�
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@@: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
F
*__inference_re_lu_26_layer_call_fn_1217714

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1214957h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� :W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214538

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
K
/__inference_random_flip_6_layer_call_fn_1217971

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214308h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�)
D__inference_model_6_layer_call_and_return_conditional_losses_1216772

inputsB
(conv2d_49_conv2d_readvariableop_resource:7
)conv2d_49_biasadd_readvariableop_resource:$
 sequential_6_normalization_sub_y%
!sequential_6_normalization_sqrt_xZ
Lsequential_6_random_flip_6_stateful_uniform_full_int_rngreadandskip_resource:	X
Jsequential_6_random_translation_6_stateful_uniform_rngreadandskip_resource:	U
Gsequential_6_random_rotation_6_stateful_uniform_rngreadandskip_resource:	B
(conv2d_50_conv2d_readvariableop_resource:7
)conv2d_50_biasadd_readvariableop_resource:B
(conv2d_51_conv2d_readvariableop_resource:7
)conv2d_51_biasadd_readvariableop_resource:<
.batch_normalization_24_readvariableop_resource:>
0batch_normalization_24_readvariableop_1_resource:M
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_52_conv2d_readvariableop_resource:7
)conv2d_52_biasadd_readvariableop_resource:B
(conv2d_53_conv2d_readvariableop_resource:7
)conv2d_53_biasadd_readvariableop_resource:<
.batch_normalization_25_readvariableop_resource:>
0batch_normalization_25_readvariableop_1_resource:M
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_54_conv2d_readvariableop_resource: 7
)conv2d_54_biasadd_readvariableop_resource: B
(conv2d_55_conv2d_readvariableop_resource:  7
)conv2d_55_biasadd_readvariableop_resource: <
.batch_normalization_26_readvariableop_resource: >
0batch_normalization_26_readvariableop_1_resource: M
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_56_conv2d_readvariableop_resource: @7
)conv2d_56_biasadd_readvariableop_resource:@B
(conv2d_57_conv2d_readvariableop_resource:@@7
)conv2d_57_biasadd_readvariableop_resource:@<
.batch_normalization_27_readvariableop_resource:@>
0batch_normalization_27_readvariableop_1_resource:@M
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:@:
'dense_19_matmul_readvariableop_resource:	�@6
(dense_19_biasadd_readvariableop_resource:@9
'dense_20_matmul_readvariableop_resource:@ 6
(dense_20_biasadd_readvariableop_resource: 9
'dense_21_matmul_readvariableop_resource: 6
(dense_21_biasadd_readvariableop_resource:
identity��%batch_normalization_24/AssignNewValue�'batch_normalization_24/AssignNewValue_1�6batch_normalization_24/FusedBatchNormV3/ReadVariableOp�8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_24/ReadVariableOp�'batch_normalization_24/ReadVariableOp_1�%batch_normalization_25/AssignNewValue�'batch_normalization_25/AssignNewValue_1�6batch_normalization_25/FusedBatchNormV3/ReadVariableOp�8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_25/ReadVariableOp�'batch_normalization_25/ReadVariableOp_1�%batch_normalization_26/AssignNewValue�'batch_normalization_26/AssignNewValue_1�6batch_normalization_26/FusedBatchNormV3/ReadVariableOp�8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_26/ReadVariableOp�'batch_normalization_26/ReadVariableOp_1�%batch_normalization_27/AssignNewValue�'batch_normalization_27/AssignNewValue_1�6batch_normalization_27/FusedBatchNormV3/ReadVariableOp�8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_27/ReadVariableOp�'batch_normalization_27/ReadVariableOp_1� conv2d_49/BiasAdd/ReadVariableOp�conv2d_49/Conv2D/ReadVariableOp� conv2d_50/BiasAdd/ReadVariableOp�conv2d_50/Conv2D/ReadVariableOp� conv2d_51/BiasAdd/ReadVariableOp�conv2d_51/Conv2D/ReadVariableOp� conv2d_52/BiasAdd/ReadVariableOp�conv2d_52/Conv2D/ReadVariableOp� conv2d_53/BiasAdd/ReadVariableOp�conv2d_53/Conv2D/ReadVariableOp� conv2d_54/BiasAdd/ReadVariableOp�conv2d_54/Conv2D/ReadVariableOp� conv2d_55/BiasAdd/ReadVariableOp�conv2d_55/Conv2D/ReadVariableOp� conv2d_56/BiasAdd/ReadVariableOp�conv2d_56/Conv2D/ReadVariableOp� conv2d_57/BiasAdd/ReadVariableOp�conv2d_57/Conv2D/ReadVariableOp�dense_19/BiasAdd/ReadVariableOp�dense_19/MatMul/ReadVariableOp�dense_20/BiasAdd/ReadVariableOp�dense_20/MatMul/ReadVariableOp�dense_21/BiasAdd/ReadVariableOp�dense_21/MatMul/ReadVariableOp�Csequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkip�Esequential_6/random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip�>sequential_6/random_rotation_6/stateful_uniform/RngReadAndSkip�Asequential_6/random_translation_6/stateful_uniform/RngReadAndSkip�Csequential_6/random_translation_6/stateful_uniform_1/RngReadAndSkip�
conv2d_49/Conv2D/ReadVariableOpReadVariableOp(conv2d_49_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_49/Conv2DConv2Dinputs'conv2d_49/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_49/BiasAdd/ReadVariableOpReadVariableOp)conv2d_49_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_49/BiasAddBiasAddconv2d_49/Conv2D:output:0(conv2d_49/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������g
resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"@   @   s
resizing_6/resize/CastCastresizing_6/resize/size:output:0*

DstT0*

SrcT0*
_output_shapes
:o
resizing_6/resize/ShapeShapeconv2d_49/BiasAdd:output:0*
T0*
_output_shapes
::��o
%resizing_6/resize/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:q
'resizing_6/resize/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'resizing_6/resize/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
resizing_6/resize/strided_sliceStridedSlice resizing_6/resize/Shape:output:0.resizing_6/resize/strided_slice/stack:output:00resizing_6/resize/strided_slice/stack_1:output:00resizing_6/resize/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:~
resizing_6/resize/Cast_1Cast(resizing_6/resize/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
:�
resizing_6/resize/truedivRealDivresizing_6/resize/Cast:y:0resizing_6/resize/Cast_1:y:0*
T0*
_output_shapes
:d
resizing_6/resize/zerosConst*
_output_shapes
:*
dtype0*
valueB*    �
#resizing_6/resize/ScaleAndTranslateScaleAndTranslateconv2d_49/BiasAdd:output:0resizing_6/resize/size:output:0resizing_6/resize/truediv:z:0 resizing_6/resize/zeros:output:0*
T0*/
_output_shapes
:���������@@*
	antialias( �
sequential_6/normalization/subSub4resizing_6/resize/ScaleAndTranslate:resized_images:0 sequential_6_normalization_sub_y*
T0*/
_output_shapes
:���������@@{
sequential_6/normalization/SqrtSqrt!sequential_6_normalization_sqrt_x*
T0*&
_output_shapes
:i
$sequential_6/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
"sequential_6/normalization/MaximumMaximum#sequential_6/normalization/Sqrt:y:0-sequential_6/normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
"sequential_6/normalization/truedivRealDiv"sequential_6/normalization/sub:z:0&sequential_6/normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@�
:sequential_6/random_flip_6/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
:sequential_6/random_flip_6/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_6/random_flip_6/stateful_uniform_full_int/ProdProdCsequential_6/random_flip_6/stateful_uniform_full_int/shape:output:0Csequential_6/random_flip_6/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: }
;sequential_6/random_flip_6/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
;sequential_6/random_flip_6/stateful_uniform_full_int/Cast_1CastBsequential_6/random_flip_6/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Csequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipLsequential_6_random_flip_6_stateful_uniform_full_int_rngreadandskip_resourceDsequential_6/random_flip_6/stateful_uniform_full_int/Cast/x:output:0?sequential_6/random_flip_6/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Hsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Jsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_6/random_flip_6/stateful_uniform_full_int/strided_sliceStridedSliceKsequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkip:value:0Qsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice/stack:output:0Ssequential_6/random_flip_6/stateful_uniform_full_int/strided_slice/stack_1:output:0Ssequential_6/random_flip_6/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
<sequential_6/random_flip_6/stateful_uniform_full_int/BitcastBitcastKsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Jsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1StridedSliceKsequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkip:value:0Ssequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1/stack:output:0Usequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Usequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
>sequential_6/random_flip_6/stateful_uniform_full_int/Bitcast_1BitcastMsequential_6/random_flip_6/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8sequential_6/random_flip_6/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
4sequential_6/random_flip_6/stateful_uniform_full_intStatelessRandomUniformFullIntV2Csequential_6/random_flip_6/stateful_uniform_full_int/shape:output:0Gsequential_6/random_flip_6/stateful_uniform_full_int/Bitcast_1:output:0Esequential_6/random_flip_6/stateful_uniform_full_int/Bitcast:output:0Asequential_6/random_flip_6/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	o
%sequential_6/random_flip_6/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
 sequential_6/random_flip_6/stackPack=sequential_6/random_flip_6/stateful_uniform_full_int:output:0.sequential_6/random_flip_6/zeros_like:output:0*
N*
T0	*
_output_shapes

:
.sequential_6/random_flip_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0sequential_6/random_flip_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0sequential_6/random_flip_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(sequential_6/random_flip_6/strided_sliceStridedSlice)sequential_6/random_flip_6/stack:output:07sequential_6/random_flip_6/strided_slice/stack:output:09sequential_6/random_flip_6/strided_slice/stack_1:output:09sequential_6/random_flip_6/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Nsequential_6/random_flip_6/stateless_random_flip_left_right/control_dependencyIdentity&sequential_6/normalization/truediv:z:0*
T0*5
_class+
)'loc:@sequential_6/normalization/truediv*/
_output_shapes
:���������@@�
Asequential_6/random_flip_6/stateless_random_flip_left_right/ShapeShapeWsequential_6/random_flip_6/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::���
Osequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Qsequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Qsequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Isequential_6/random_flip_6/stateless_random_flip_left_right/strided_sliceStridedSliceJsequential_6/random_flip_6/stateless_random_flip_left_right/Shape:output:0Xsequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice/stack:output:0Zsequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice/stack_1:output:0Zsequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Zsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/shapePackRsequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Xsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Xsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
qsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1sequential_6/random_flip_6/strided_slice:output:0* 
_output_shapes
::�
qsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
msequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2csequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0wsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0{sequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0zsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Xsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/subSubasequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/max:output:0asequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Xsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/mulMulvsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0\sequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Tsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniformAddV2\sequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0asequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
Ksequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Ksequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Ksequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Isequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shapePackRsequential_6/random_flip_6/stateless_random_flip_left_right/strided_slice:output:0Tsequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shape/1:output:0Tsequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shape/2:output:0Tsequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
Csequential_6/random_flip_6/stateless_random_flip_left_right/ReshapeReshapeXsequential_6/random_flip_6/stateless_random_flip_left_right/stateless_random_uniform:z:0Rsequential_6/random_flip_6/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
Asequential_6/random_flip_6/stateless_random_flip_left_right/RoundRoundLsequential_6/random_flip_6/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
Jsequential_6/random_flip_6/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Esequential_6/random_flip_6/stateless_random_flip_left_right/ReverseV2	ReverseV2Wsequential_6/random_flip_6/stateless_random_flip_left_right/control_dependency:output:0Ssequential_6/random_flip_6/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
?sequential_6/random_flip_6/stateless_random_flip_left_right/mulMulEsequential_6/random_flip_6/stateless_random_flip_left_right/Round:y:0Nsequential_6/random_flip_6/stateless_random_flip_left_right/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@�
Asequential_6/random_flip_6/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
?sequential_6/random_flip_6/stateless_random_flip_left_right/subSubJsequential_6/random_flip_6/stateless_random_flip_left_right/sub/x:output:0Esequential_6/random_flip_6/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
Asequential_6/random_flip_6/stateless_random_flip_left_right/mul_1MulCsequential_6/random_flip_6/stateless_random_flip_left_right/sub:z:0Wsequential_6/random_flip_6/stateless_random_flip_left_right/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
?sequential_6/random_flip_6/stateless_random_flip_left_right/addAddV2Csequential_6/random_flip_6/stateless_random_flip_left_right/mul:z:0Esequential_6/random_flip_6/stateless_random_flip_left_right/mul_1:z:0*
T0*/
_output_shapes
:���������@@�
<sequential_6/random_flip_6/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
<sequential_6/random_flip_6/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
;sequential_6/random_flip_6/stateful_uniform_full_int_1/ProdProdEsequential_6/random_flip_6/stateful_uniform_full_int_1/shape:output:0Esequential_6/random_flip_6/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
=sequential_6/random_flip_6/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
=sequential_6/random_flip_6/stateful_uniform_full_int_1/Cast_1CastDsequential_6/random_flip_6/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Esequential_6/random_flip_6/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipLsequential_6_random_flip_6_stateful_uniform_full_int_rngreadandskip_resourceFsequential_6/random_flip_6/stateful_uniform_full_int_1/Cast/x:output:0Asequential_6/random_flip_6/stateful_uniform_full_int_1/Cast_1:y:0D^sequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Jsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Lsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_sliceStridedSliceMsequential_6/random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip:value:0Ssequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice/stack:output:0Usequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Usequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
>sequential_6/random_flip_6/stateful_uniform_full_int_1/BitcastBitcastMsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Lsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Nsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Nsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Fsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1StridedSliceMsequential_6/random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip:value:0Usequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Wsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Wsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
@sequential_6/random_flip_6/stateful_uniform_full_int_1/Bitcast_1BitcastOsequential_6/random_flip_6/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0|
:sequential_6/random_flip_6/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
6sequential_6/random_flip_6/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Esequential_6/random_flip_6/stateful_uniform_full_int_1/shape:output:0Isequential_6/random_flip_6/stateful_uniform_full_int_1/Bitcast_1:output:0Gsequential_6/random_flip_6/stateful_uniform_full_int_1/Bitcast:output:0Csequential_6/random_flip_6/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	q
'sequential_6/random_flip_6/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
"sequential_6/random_flip_6/stack_1Pack?sequential_6/random_flip_6/stateful_uniform_full_int_1:output:00sequential_6/random_flip_6/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:�
0sequential_6/random_flip_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
2sequential_6/random_flip_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
2sequential_6/random_flip_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
*sequential_6/random_flip_6/strided_slice_1StridedSlice+sequential_6/random_flip_6/stack_1:output:09sequential_6/random_flip_6/strided_slice_1/stack:output:0;sequential_6/random_flip_6/strided_slice_1/stack_1:output:0;sequential_6/random_flip_6/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Ksequential_6/random_flip_6/stateless_random_flip_up_down/control_dependencyIdentityCsequential_6/random_flip_6/stateless_random_flip_left_right/add:z:0*
T0*R
_classH
FDloc:@sequential_6/random_flip_6/stateless_random_flip_left_right/add*/
_output_shapes
:���������@@�
>sequential_6/random_flip_6/stateless_random_flip_up_down/ShapeShapeTsequential_6/random_flip_6/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::���
Lsequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Nsequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Nsequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Fsequential_6/random_flip_6/stateless_random_flip_up_down/strided_sliceStridedSliceGsequential_6/random_flip_6/stateless_random_flip_up_down/Shape:output:0Usequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice/stack:output:0Wsequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice/stack_1:output:0Wsequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Wsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/shapePackOsequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Usequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Usequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
nsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter3sequential_6/random_flip_6/strided_slice_1:output:0* 
_output_shapes
::�
nsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
jsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`sequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0tsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Usequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/subSub^sequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/max:output:0^sequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Usequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/mulMulssequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Ysequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Qsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniformAddV2Ysequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0^sequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
Hsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Hsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Hsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shapePackOsequential_6/random_flip_6/stateless_random_flip_up_down/strided_slice:output:0Qsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shape/1:output:0Qsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shape/2:output:0Qsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
@sequential_6/random_flip_6/stateless_random_flip_up_down/ReshapeReshapeUsequential_6/random_flip_6/stateless_random_flip_up_down/stateless_random_uniform:z:0Osequential_6/random_flip_6/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
>sequential_6/random_flip_6/stateless_random_flip_up_down/RoundRoundIsequential_6/random_flip_6/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:����������
Gsequential_6/random_flip_6/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_6/random_flip_6/stateless_random_flip_up_down/ReverseV2	ReverseV2Tsequential_6/random_flip_6/stateless_random_flip_up_down/control_dependency:output:0Psequential_6/random_flip_6/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*/
_output_shapes
:���������@@�
<sequential_6/random_flip_6/stateless_random_flip_up_down/mulMulBsequential_6/random_flip_6/stateless_random_flip_up_down/Round:y:0Ksequential_6/random_flip_6/stateless_random_flip_up_down/ReverseV2:output:0*
T0*/
_output_shapes
:���������@@�
>sequential_6/random_flip_6/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
<sequential_6/random_flip_6/stateless_random_flip_up_down/subSubGsequential_6/random_flip_6/stateless_random_flip_up_down/sub/x:output:0Bsequential_6/random_flip_6/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
>sequential_6/random_flip_6/stateless_random_flip_up_down/mul_1Mul@sequential_6/random_flip_6/stateless_random_flip_up_down/sub:z:0Tsequential_6/random_flip_6/stateless_random_flip_up_down/control_dependency:output:0*
T0*/
_output_shapes
:���������@@�
<sequential_6/random_flip_6/stateless_random_flip_up_down/addAddV2@sequential_6/random_flip_6/stateless_random_flip_up_down/mul:z:0Bsequential_6/random_flip_6/stateless_random_flip_up_down/mul_1:z:0*
T0*/
_output_shapes
:���������@@�
'sequential_6/random_translation_6/ShapeShape@sequential_6/random_flip_6/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��
5sequential_6/random_translation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_6/random_translation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_6/random_translation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_6/random_translation_6/strided_sliceStridedSlice0sequential_6/random_translation_6/Shape:output:0>sequential_6/random_translation_6/strided_slice/stack:output:0@sequential_6/random_translation_6/strided_slice/stack_1:output:0@sequential_6/random_translation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
7sequential_6/random_translation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
9sequential_6/random_translation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
9sequential_6/random_translation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_6/random_translation_6/strided_slice_1StridedSlice0sequential_6/random_translation_6/Shape:output:0@sequential_6/random_translation_6/strided_slice_1/stack:output:0Bsequential_6/random_translation_6/strided_slice_1/stack_1:output:0Bsequential_6/random_translation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
&sequential_6/random_translation_6/CastCast:sequential_6/random_translation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
7sequential_6/random_translation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
9sequential_6/random_translation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
9sequential_6/random_translation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_6/random_translation_6/strided_slice_2StridedSlice0sequential_6/random_translation_6/Shape:output:0@sequential_6/random_translation_6/strided_slice_2/stack:output:0Bsequential_6/random_translation_6/strided_slice_2/stack_1:output:0Bsequential_6/random_translation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
(sequential_6/random_translation_6/Cast_1Cast:sequential_6/random_translation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: |
:sequential_6/random_translation_6/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
8sequential_6/random_translation_6/stateful_uniform/shapePack8sequential_6/random_translation_6/strided_slice:output:0Csequential_6/random_translation_6/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:{
6sequential_6/random_translation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�{
6sequential_6/random_translation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=�
8sequential_6/random_translation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_6/random_translation_6/stateful_uniform/ProdProdAsequential_6/random_translation_6/stateful_uniform/shape:output:0Asequential_6/random_translation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: {
9sequential_6/random_translation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
9sequential_6/random_translation_6/stateful_uniform/Cast_1Cast@sequential_6/random_translation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Asequential_6/random_translation_6/stateful_uniform/RngReadAndSkipRngReadAndSkipJsequential_6_random_translation_6_stateful_uniform_rngreadandskip_resourceBsequential_6/random_translation_6/stateful_uniform/Cast/x:output:0=sequential_6/random_translation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
Fsequential_6/random_translation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Hsequential_6/random_translation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hsequential_6/random_translation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential_6/random_translation_6/stateful_uniform/strided_sliceStridedSliceIsequential_6/random_translation_6/stateful_uniform/RngReadAndSkip:value:0Osequential_6/random_translation_6/stateful_uniform/strided_slice/stack:output:0Qsequential_6/random_translation_6/stateful_uniform/strided_slice/stack_1:output:0Qsequential_6/random_translation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
:sequential_6/random_translation_6/stateful_uniform/BitcastBitcastIsequential_6/random_translation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Hsequential_6/random_translation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_6/random_translation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_6/random_translation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_6/random_translation_6/stateful_uniform/strided_slice_1StridedSliceIsequential_6/random_translation_6/stateful_uniform/RngReadAndSkip:value:0Qsequential_6/random_translation_6/stateful_uniform/strided_slice_1/stack:output:0Ssequential_6/random_translation_6/stateful_uniform/strided_slice_1/stack_1:output:0Ssequential_6/random_translation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
<sequential_6/random_translation_6/stateful_uniform/Bitcast_1BitcastKsequential_6/random_translation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Osequential_6/random_translation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ksequential_6/random_translation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Asequential_6/random_translation_6/stateful_uniform/shape:output:0Esequential_6/random_translation_6/stateful_uniform/Bitcast_1:output:0Csequential_6/random_translation_6/stateful_uniform/Bitcast:output:0Xsequential_6/random_translation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
6sequential_6/random_translation_6/stateful_uniform/subSub?sequential_6/random_translation_6/stateful_uniform/max:output:0?sequential_6/random_translation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
6sequential_6/random_translation_6/stateful_uniform/mulMulTsequential_6/random_translation_6/stateful_uniform/StatelessRandomUniformV2:output:0:sequential_6/random_translation_6/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
2sequential_6/random_translation_6/stateful_uniformAddV2:sequential_6/random_translation_6/stateful_uniform/mul:z:0?sequential_6/random_translation_6/stateful_uniform/min:output:0*
T0*'
_output_shapes
:����������
%sequential_6/random_translation_6/mulMul6sequential_6/random_translation_6/stateful_uniform:z:0*sequential_6/random_translation_6/Cast:y:0*
T0*'
_output_shapes
:���������~
<sequential_6/random_translation_6/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
:sequential_6/random_translation_6/stateful_uniform_1/shapePack8sequential_6/random_translation_6/strided_slice:output:0Esequential_6/random_translation_6/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:}
8sequential_6/random_translation_6/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *
ף�}
8sequential_6/random_translation_6/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *
ף=�
:sequential_6/random_translation_6/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_6/random_translation_6/stateful_uniform_1/ProdProdCsequential_6/random_translation_6/stateful_uniform_1/shape:output:0Csequential_6/random_translation_6/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: }
;sequential_6/random_translation_6/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
;sequential_6/random_translation_6/stateful_uniform_1/Cast_1CastBsequential_6/random_translation_6/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Csequential_6/random_translation_6/stateful_uniform_1/RngReadAndSkipRngReadAndSkipJsequential_6_random_translation_6_stateful_uniform_rngreadandskip_resourceDsequential_6/random_translation_6/stateful_uniform_1/Cast/x:output:0?sequential_6/random_translation_6/stateful_uniform_1/Cast_1:y:0B^sequential_6/random_translation_6/stateful_uniform/RngReadAndSkip*
_output_shapes
:�
Hsequential_6/random_translation_6/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Jsequential_6/random_translation_6/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_6/random_translation_6/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_6/random_translation_6/stateful_uniform_1/strided_sliceStridedSliceKsequential_6/random_translation_6/stateful_uniform_1/RngReadAndSkip:value:0Qsequential_6/random_translation_6/stateful_uniform_1/strided_slice/stack:output:0Ssequential_6/random_translation_6/stateful_uniform_1/strided_slice/stack_1:output:0Ssequential_6/random_translation_6/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
<sequential_6/random_translation_6/stateful_uniform_1/BitcastBitcastKsequential_6/random_translation_6/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Jsequential_6/random_translation_6/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_6/random_translation_6/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_6/random_translation_6/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_6/random_translation_6/stateful_uniform_1/strided_slice_1StridedSliceKsequential_6/random_translation_6/stateful_uniform_1/RngReadAndSkip:value:0Ssequential_6/random_translation_6/stateful_uniform_1/strided_slice_1/stack:output:0Usequential_6/random_translation_6/stateful_uniform_1/strided_slice_1/stack_1:output:0Usequential_6/random_translation_6/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
>sequential_6/random_translation_6/stateful_uniform_1/Bitcast_1BitcastMsequential_6/random_translation_6/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Qsequential_6/random_translation_6/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Msequential_6/random_translation_6/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2Csequential_6/random_translation_6/stateful_uniform_1/shape:output:0Gsequential_6/random_translation_6/stateful_uniform_1/Bitcast_1:output:0Esequential_6/random_translation_6/stateful_uniform_1/Bitcast:output:0Zsequential_6/random_translation_6/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
8sequential_6/random_translation_6/stateful_uniform_1/subSubAsequential_6/random_translation_6/stateful_uniform_1/max:output:0Asequential_6/random_translation_6/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: �
8sequential_6/random_translation_6/stateful_uniform_1/mulMulVsequential_6/random_translation_6/stateful_uniform_1/StatelessRandomUniformV2:output:0<sequential_6/random_translation_6/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
4sequential_6/random_translation_6/stateful_uniform_1AddV2<sequential_6/random_translation_6/stateful_uniform_1/mul:z:0Asequential_6/random_translation_6/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:����������
'sequential_6/random_translation_6/mul_1Mul8sequential_6/random_translation_6/stateful_uniform_1:z:0,sequential_6/random_translation_6/Cast_1:y:0*
T0*'
_output_shapes
:���������o
-sequential_6/random_translation_6/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
(sequential_6/random_translation_6/concatConcatV2+sequential_6/random_translation_6/mul_1:z:0)sequential_6/random_translation_6/mul:z:06sequential_6/random_translation_6/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
:sequential_6/random_translation_6/translation_matrix/ShapeShape1sequential_6/random_translation_6/concat:output:0*
T0*
_output_shapes
::���
Hsequential_6/random_translation_6/translation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Jsequential_6/random_translation_6/translation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_6/random_translation_6/translation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_6/random_translation_6/translation_matrix/strided_sliceStridedSliceCsequential_6/random_translation_6/translation_matrix/Shape:output:0Qsequential_6/random_translation_6/translation_matrix/strided_slice/stack:output:0Ssequential_6/random_translation_6/translation_matrix/strided_slice/stack_1:output:0Ssequential_6/random_translation_6/translation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Bsequential_6/random_translation_6/translation_matrix/ones/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
@sequential_6/random_translation_6/translation_matrix/ones/packedPackKsequential_6/random_translation_6/translation_matrix/strided_slice:output:0Ksequential_6/random_translation_6/translation_matrix/ones/packed/1:output:0*
N*
T0*
_output_shapes
:�
?sequential_6/random_translation_6/translation_matrix/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
9sequential_6/random_translation_6/translation_matrix/onesFillIsequential_6/random_translation_6/translation_matrix/ones/packed:output:0Hsequential_6/random_translation_6/translation_matrix/ones/Const:output:0*
T0*'
_output_shapes
:����������
Csequential_6/random_translation_6/translation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
Asequential_6/random_translation_6/translation_matrix/zeros/packedPackKsequential_6/random_translation_6/translation_matrix/strided_slice:output:0Lsequential_6/random_translation_6/translation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
@sequential_6/random_translation_6/translation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
:sequential_6/random_translation_6/translation_matrix/zerosFillJsequential_6/random_translation_6/translation_matrix/zeros/packed:output:0Isequential_6/random_translation_6/translation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:����������
Jsequential_6/random_translation_6/translation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
Lsequential_6/random_translation_6/translation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
Lsequential_6/random_translation_6/translation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
Dsequential_6/random_translation_6/translation_matrix/strided_slice_1StridedSlice1sequential_6/random_translation_6/concat:output:0Ssequential_6/random_translation_6/translation_matrix/strided_slice_1/stack:output:0Usequential_6/random_translation_6/translation_matrix/strided_slice_1/stack_1:output:0Usequential_6/random_translation_6/translation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
8sequential_6/random_translation_6/translation_matrix/NegNegMsequential_6/random_translation_6/translation_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:����������
Esequential_6/random_translation_6/translation_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
Csequential_6/random_translation_6/translation_matrix/zeros_1/packedPackKsequential_6/random_translation_6/translation_matrix/strided_slice:output:0Nsequential_6/random_translation_6/translation_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
Bsequential_6/random_translation_6/translation_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<sequential_6/random_translation_6/translation_matrix/zeros_1FillLsequential_6/random_translation_6/translation_matrix/zeros_1/packed:output:0Ksequential_6/random_translation_6/translation_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:����������
Dsequential_6/random_translation_6/translation_matrix/ones_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
Bsequential_6/random_translation_6/translation_matrix/ones_1/packedPackKsequential_6/random_translation_6/translation_matrix/strided_slice:output:0Msequential_6/random_translation_6/translation_matrix/ones_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
Asequential_6/random_translation_6/translation_matrix/ones_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
;sequential_6/random_translation_6/translation_matrix/ones_1FillKsequential_6/random_translation_6/translation_matrix/ones_1/packed:output:0Jsequential_6/random_translation_6/translation_matrix/ones_1/Const:output:0*
T0*'
_output_shapes
:����������
Jsequential_6/random_translation_6/translation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           �
Lsequential_6/random_translation_6/translation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
Lsequential_6/random_translation_6/translation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
Dsequential_6/random_translation_6/translation_matrix/strided_slice_2StridedSlice1sequential_6/random_translation_6/concat:output:0Ssequential_6/random_translation_6/translation_matrix/strided_slice_2/stack:output:0Usequential_6/random_translation_6/translation_matrix/strided_slice_2/stack_1:output:0Usequential_6/random_translation_6/translation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask�
:sequential_6/random_translation_6/translation_matrix/Neg_1NegMsequential_6/random_translation_6/translation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
Esequential_6/random_translation_6/translation_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
Csequential_6/random_translation_6/translation_matrix/zeros_2/packedPackKsequential_6/random_translation_6/translation_matrix/strided_slice:output:0Nsequential_6/random_translation_6/translation_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:�
Bsequential_6/random_translation_6/translation_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
<sequential_6/random_translation_6/translation_matrix/zeros_2FillLsequential_6/random_translation_6/translation_matrix/zeros_2/packed:output:0Ksequential_6/random_translation_6/translation_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:����������
@sequential_6/random_translation_6/translation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
;sequential_6/random_translation_6/translation_matrix/concatConcatV2Bsequential_6/random_translation_6/translation_matrix/ones:output:0Csequential_6/random_translation_6/translation_matrix/zeros:output:0<sequential_6/random_translation_6/translation_matrix/Neg:y:0Esequential_6/random_translation_6/translation_matrix/zeros_1:output:0Dsequential_6/random_translation_6/translation_matrix/ones_1:output:0>sequential_6/random_translation_6/translation_matrix/Neg_1:y:0Esequential_6/random_translation_6/translation_matrix/zeros_2:output:0Isequential_6/random_translation_6/translation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
1sequential_6/random_translation_6/transform/ShapeShape@sequential_6/random_flip_6/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::���
?sequential_6/random_translation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Asequential_6/random_translation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Asequential_6/random_translation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_6/random_translation_6/transform/strided_sliceStridedSlice:sequential_6/random_translation_6/transform/Shape:output:0Hsequential_6/random_translation_6/transform/strided_slice/stack:output:0Jsequential_6/random_translation_6/transform/strided_slice/stack_1:output:0Jsequential_6/random_translation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:{
6sequential_6/random_translation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Fsequential_6/random_translation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3@sequential_6/random_flip_6/stateless_random_flip_up_down/add:z:0Dsequential_6/random_translation_6/translation_matrix/concat:output:0Bsequential_6/random_translation_6/transform/strided_slice:output:0?sequential_6/random_translation_6/transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	NEAREST*
interpolation
BILINEAR�
$sequential_6/random_rotation_6/ShapeShape[sequential_6/random_translation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::��|
2sequential_6/random_rotation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_6/random_rotation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_6/random_rotation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_6/random_rotation_6/strided_sliceStridedSlice-sequential_6/random_rotation_6/Shape:output:0;sequential_6/random_rotation_6/strided_slice/stack:output:0=sequential_6/random_rotation_6/strided_slice/stack_1:output:0=sequential_6/random_rotation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4sequential_6/random_rotation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_6/random_rotation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_6/random_rotation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_6/random_rotation_6/strided_slice_1StridedSlice-sequential_6/random_rotation_6/Shape:output:0=sequential_6/random_rotation_6/strided_slice_1/stack:output:0?sequential_6/random_rotation_6/strided_slice_1/stack_1:output:0?sequential_6/random_rotation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
#sequential_6/random_rotation_6/CastCast7sequential_6/random_rotation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4sequential_6/random_rotation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_6/random_rotation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_6/random_rotation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_6/random_rotation_6/strided_slice_2StridedSlice-sequential_6/random_rotation_6/Shape:output:0=sequential_6/random_rotation_6/strided_slice_2/stack:output:0?sequential_6/random_rotation_6/strided_slice_2/stack_1:output:0?sequential_6/random_rotation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
%sequential_6/random_rotation_6/Cast_1Cast7sequential_6/random_rotation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
5sequential_6/random_rotation_6/stateful_uniform/shapePack5sequential_6/random_rotation_6/strided_slice:output:0*
N*
T0*
_output_shapes
:x
3sequential_6/random_rotation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�x
3sequential_6/random_rotation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *:F�?
5sequential_6/random_rotation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
4sequential_6/random_rotation_6/stateful_uniform/ProdProd>sequential_6/random_rotation_6/stateful_uniform/shape:output:0>sequential_6/random_rotation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: x
6sequential_6/random_rotation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
6sequential_6/random_rotation_6/stateful_uniform/Cast_1Cast=sequential_6/random_rotation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
>sequential_6/random_rotation_6/stateful_uniform/RngReadAndSkipRngReadAndSkipGsequential_6_random_rotation_6_stateful_uniform_rngreadandskip_resource?sequential_6/random_rotation_6/stateful_uniform/Cast/x:output:0:sequential_6/random_rotation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
Csequential_6/random_rotation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_6/random_rotation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential_6/random_rotation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential_6/random_rotation_6/stateful_uniform/strided_sliceStridedSliceFsequential_6/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Lsequential_6/random_rotation_6/stateful_uniform/strided_slice/stack:output:0Nsequential_6/random_rotation_6/stateful_uniform/strided_slice/stack_1:output:0Nsequential_6/random_rotation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
7sequential_6/random_rotation_6/stateful_uniform/BitcastBitcastFsequential_6/random_rotation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Esequential_6/random_rotation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_6/random_rotation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_6/random_rotation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential_6/random_rotation_6/stateful_uniform/strided_slice_1StridedSliceFsequential_6/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Nsequential_6/random_rotation_6/stateful_uniform/strided_slice_1/stack:output:0Psequential_6/random_rotation_6/stateful_uniform/strided_slice_1/stack_1:output:0Psequential_6/random_rotation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
9sequential_6/random_rotation_6/stateful_uniform/Bitcast_1BitcastHsequential_6/random_rotation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Lsequential_6/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Hsequential_6/random_rotation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2>sequential_6/random_rotation_6/stateful_uniform/shape:output:0Bsequential_6/random_rotation_6/stateful_uniform/Bitcast_1:output:0@sequential_6/random_rotation_6/stateful_uniform/Bitcast:output:0Usequential_6/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
3sequential_6/random_rotation_6/stateful_uniform/subSub<sequential_6/random_rotation_6/stateful_uniform/max:output:0<sequential_6/random_rotation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
3sequential_6/random_rotation_6/stateful_uniform/mulMulQsequential_6/random_rotation_6/stateful_uniform/StatelessRandomUniformV2:output:07sequential_6/random_rotation_6/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
/sequential_6/random_rotation_6/stateful_uniformAddV27sequential_6/random_rotation_6/stateful_uniform/mul:z:0<sequential_6/random_rotation_6/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������y
4sequential_6/random_rotation_6/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_6/random_rotation_6/rotation_matrix/subSub)sequential_6/random_rotation_6/Cast_1:y:0=sequential_6/random_rotation_6/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
2sequential_6/random_rotation_6/rotation_matrix/CosCos3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_6/random_rotation_6/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_6/random_rotation_6/rotation_matrix/sub_1Sub)sequential_6/random_rotation_6/Cast_1:y:0?sequential_6/random_rotation_6/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
2sequential_6/random_rotation_6/rotation_matrix/mulMul6sequential_6/random_rotation_6/rotation_matrix/Cos:y:08sequential_6/random_rotation_6/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
2sequential_6/random_rotation_6/rotation_matrix/SinSin3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_6/random_rotation_6/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_6/random_rotation_6/rotation_matrix/sub_2Sub'sequential_6/random_rotation_6/Cast:y:0?sequential_6/random_rotation_6/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
4sequential_6/random_rotation_6/rotation_matrix/mul_1Mul6sequential_6/random_rotation_6/rotation_matrix/Sin:y:08sequential_6/random_rotation_6/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
4sequential_6/random_rotation_6/rotation_matrix/sub_3Sub6sequential_6/random_rotation_6/rotation_matrix/mul:z:08sequential_6/random_rotation_6/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
4sequential_6/random_rotation_6/rotation_matrix/sub_4Sub6sequential_6/random_rotation_6/rotation_matrix/sub:z:08sequential_6/random_rotation_6/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������}
8sequential_6/random_rotation_6/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
6sequential_6/random_rotation_6/rotation_matrix/truedivRealDiv8sequential_6/random_rotation_6/rotation_matrix/sub_4:z:0Asequential_6/random_rotation_6/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������{
6sequential_6/random_rotation_6/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_6/random_rotation_6/rotation_matrix/sub_5Sub'sequential_6/random_rotation_6/Cast:y:0?sequential_6/random_rotation_6/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
4sequential_6/random_rotation_6/rotation_matrix/Sin_1Sin3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_6/random_rotation_6/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_6/random_rotation_6/rotation_matrix/sub_6Sub)sequential_6/random_rotation_6/Cast_1:y:0?sequential_6/random_rotation_6/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
4sequential_6/random_rotation_6/rotation_matrix/mul_2Mul8sequential_6/random_rotation_6/rotation_matrix/Sin_1:y:08sequential_6/random_rotation_6/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
4sequential_6/random_rotation_6/rotation_matrix/Cos_1Cos3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������{
6sequential_6/random_rotation_6/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
4sequential_6/random_rotation_6/rotation_matrix/sub_7Sub'sequential_6/random_rotation_6/Cast:y:0?sequential_6/random_rotation_6/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
4sequential_6/random_rotation_6/rotation_matrix/mul_3Mul8sequential_6/random_rotation_6/rotation_matrix/Cos_1:y:08sequential_6/random_rotation_6/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
2sequential_6/random_rotation_6/rotation_matrix/addAddV28sequential_6/random_rotation_6/rotation_matrix/mul_2:z:08sequential_6/random_rotation_6/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
4sequential_6/random_rotation_6/rotation_matrix/sub_8Sub8sequential_6/random_rotation_6/rotation_matrix/sub_5:z:06sequential_6/random_rotation_6/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������
:sequential_6/random_rotation_6/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
8sequential_6/random_rotation_6/rotation_matrix/truediv_1RealDiv8sequential_6/random_rotation_6/rotation_matrix/sub_8:z:0Csequential_6/random_rotation_6/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
4sequential_6/random_rotation_6/rotation_matrix/ShapeShape3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*
_output_shapes
::���
Bsequential_6/random_rotation_6/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential_6/random_rotation_6/rotation_matrix/strided_sliceStridedSlice=sequential_6/random_rotation_6/rotation_matrix/Shape:output:0Ksequential_6/random_rotation_6/rotation_matrix/strided_slice/stack:output:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice/stack_1:output:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
4sequential_6/random_rotation_6/rotation_matrix/Cos_2Cos3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_6/random_rotation_6/rotation_matrix/strided_slice_1StridedSlice8sequential_6/random_rotation_6/rotation_matrix/Cos_2:y:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice_1/stack:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
4sequential_6/random_rotation_6/rotation_matrix/Sin_2Sin3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_6/random_rotation_6/rotation_matrix/strided_slice_2StridedSlice8sequential_6/random_rotation_6/rotation_matrix/Sin_2:y:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice_2/stack:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_6/random_rotation_6/rotation_matrix/NegNegGsequential_6/random_rotation_6/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_6/random_rotation_6/rotation_matrix/strided_slice_3StridedSlice:sequential_6/random_rotation_6/rotation_matrix/truediv:z:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice_3/stack:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
4sequential_6/random_rotation_6/rotation_matrix/Sin_3Sin3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_6/random_rotation_6/rotation_matrix/strided_slice_4StridedSlice8sequential_6/random_rotation_6/rotation_matrix/Sin_3:y:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice_4/stack:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
4sequential_6/random_rotation_6/rotation_matrix/Cos_3Cos3sequential_6/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_6/random_rotation_6/rotation_matrix/strided_slice_5StridedSlice8sequential_6/random_rotation_6/rotation_matrix/Cos_3:y:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice_5/stack:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Dsequential_6/random_rotation_6/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Fsequential_6/random_rotation_6/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
>sequential_6/random_rotation_6/rotation_matrix/strided_slice_6StridedSlice<sequential_6/random_rotation_6/rotation_matrix/truediv_1:z:0Msequential_6/random_rotation_6/rotation_matrix/strided_slice_6/stack:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_6/random_rotation_6/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask
=sequential_6/random_rotation_6/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
;sequential_6/random_rotation_6/rotation_matrix/zeros/packedPackEsequential_6/random_rotation_6/rotation_matrix/strided_slice:output:0Fsequential_6/random_rotation_6/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
:sequential_6/random_rotation_6/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
4sequential_6/random_rotation_6/rotation_matrix/zerosFillDsequential_6/random_rotation_6/rotation_matrix/zeros/packed:output:0Csequential_6/random_rotation_6/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������|
:sequential_6/random_rotation_6/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
5sequential_6/random_rotation_6/rotation_matrix/concatConcatV2Gsequential_6/random_rotation_6/rotation_matrix/strided_slice_1:output:06sequential_6/random_rotation_6/rotation_matrix/Neg:y:0Gsequential_6/random_rotation_6/rotation_matrix/strided_slice_3:output:0Gsequential_6/random_rotation_6/rotation_matrix/strided_slice_4:output:0Gsequential_6/random_rotation_6/rotation_matrix/strided_slice_5:output:0Gsequential_6/random_rotation_6/rotation_matrix/strided_slice_6:output:0=sequential_6/random_rotation_6/rotation_matrix/zeros:output:0Csequential_6/random_rotation_6/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
.sequential_6/random_rotation_6/transform/ShapeShape[sequential_6/random_translation_6/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
::���
<sequential_6/random_rotation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
>sequential_6/random_rotation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_6/random_rotation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_6/random_rotation_6/transform/strided_sliceStridedSlice7sequential_6/random_rotation_6/transform/Shape:output:0Esequential_6/random_rotation_6/transform/strided_slice/stack:output:0Gsequential_6/random_rotation_6/transform/strided_slice/stack_1:output:0Gsequential_6/random_rotation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:x
3sequential_6/random_rotation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Csequential_6/random_rotation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3[sequential_6/random_translation_6/transform/ImageProjectiveTransformV3:transformed_images:0>sequential_6/random_rotation_6/rotation_matrix/concat:output:0?sequential_6/random_rotation_6/transform/strided_slice:output:0<sequential_6/random_rotation_6/transform/fill_value:output:0*/
_output_shapes
:���������@@*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
conv2d_50/Conv2D/ReadVariableOpReadVariableOp(conv2d_50_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_50/Conv2DConv2DXsequential_6/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_50/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
 conv2d_50/BiasAdd/ReadVariableOpReadVariableOp)conv2d_50_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_50/BiasAddBiasAddconv2d_50/Conv2D:output:0(conv2d_50/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@l
conv2d_50/ReluReluconv2d_50/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
conv2d_51/Conv2D/ReadVariableOpReadVariableOp(conv2d_51_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_51/Conv2DConv2Dconv2d_50/Relu:activations:0'conv2d_51/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
�
 conv2d_51/BiasAdd/ReadVariableOpReadVariableOp)conv2d_51_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_51/BiasAddBiasAddconv2d_51/Conv2D:output:0(conv2d_51/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@l
conv2d_51/ReluReluconv2d_51/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@�
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3conv2d_51/Relu:activations:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@@:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_24/AssignNewValueAssignVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource4batch_normalization_24/FusedBatchNormV3:batch_mean:07^batch_normalization_24/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_24/AssignNewValue_1AssignVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_24/FusedBatchNormV3:batch_variance:09^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(|
re_lu_24/ReluRelu+batch_normalization_24/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@@�
max_pooling2d_30/MaxPoolMaxPoolre_lu_24/Relu:activations:0*/
_output_shapes
:���������  *
ksize
*
paddingVALID*
strides
�
conv2d_52/Conv2D/ReadVariableOpReadVariableOp(conv2d_52_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_52/Conv2DConv2D!max_pooling2d_30/MaxPool:output:0'conv2d_52/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
 conv2d_52/BiasAdd/ReadVariableOpReadVariableOp)conv2d_52_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_52/BiasAddBiasAddconv2d_52/Conv2D:output:0(conv2d_52/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  l
conv2d_52/ReluReluconv2d_52/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
conv2d_53/Conv2D/ReadVariableOpReadVariableOp(conv2d_53_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
conv2d_53/Conv2DConv2Dconv2d_52/Relu:activations:0'conv2d_53/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  *
paddingSAME*
strides
�
 conv2d_53/BiasAdd/ReadVariableOpReadVariableOp)conv2d_53_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_53/BiasAddBiasAddconv2d_53/Conv2D:output:0(conv2d_53/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  l
conv2d_53/ReluReluconv2d_53/BiasAdd:output:0*
T0*/
_output_shapes
:���������  �
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
:*
dtype0�
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes
:*
dtype0�
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3conv2d_53/Relu:activations:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������  :::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_25/AssignNewValueAssignVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource4batch_normalization_25/FusedBatchNormV3:batch_mean:07^batch_normalization_25/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_25/AssignNewValue_1AssignVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_25/FusedBatchNormV3:batch_variance:09^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(|
re_lu_25/ReluRelu+batch_normalization_25/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������  �
max_pooling2d_31/MaxPoolMaxPoolre_lu_25/Relu:activations:0*/
_output_shapes
:���������*
ksize
*
paddingVALID*
strides
�
conv2d_54/Conv2D/ReadVariableOpReadVariableOp(conv2d_54_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_54/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_54/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
 conv2d_54/BiasAdd/ReadVariableOpReadVariableOp)conv2d_54_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_54/BiasAddBiasAddconv2d_54/Conv2D:output:0(conv2d_54/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� l
conv2d_54/ReluReluconv2d_54/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
conv2d_55/Conv2D/ReadVariableOpReadVariableOp(conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_55/Conv2DConv2Dconv2d_54/Relu:activations:0'conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
 conv2d_55/BiasAdd/ReadVariableOpReadVariableOp)conv2d_55_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_55/BiasAddBiasAddconv2d_55/Conv2D:output:0(conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� l
conv2d_55/ReluReluconv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:��������� �
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
: *
dtype0�
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
: *
dtype0�
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3conv2d_55/Relu:activations:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_26/AssignNewValueAssignVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource4batch_normalization_26/FusedBatchNormV3:batch_mean:07^batch_normalization_26/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_26/AssignNewValue_1AssignVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_26/FusedBatchNormV3:batch_variance:09^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(|
re_lu_26/ReluRelu+batch_normalization_26/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� �
max_pooling2d_32/MaxPoolMaxPoolre_lu_26/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_56/Conv2D/ReadVariableOpReadVariableOp(conv2d_56_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_56/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_56/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_56/BiasAdd/ReadVariableOpReadVariableOp)conv2d_56_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_56/BiasAddBiasAddconv2d_56/Conv2D:output:0(conv2d_56/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_56/ReluReluconv2d_56/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
conv2d_57/Conv2D/ReadVariableOpReadVariableOp(conv2d_57_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_57/Conv2DConv2Dconv2d_56/Relu:activations:0'conv2d_57/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
 conv2d_57/BiasAdd/ReadVariableOpReadVariableOp)conv2d_57_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_57/BiasAddBiasAddconv2d_57/Conv2D:output:0(conv2d_57/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_57/ReluReluconv2d_57/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_27/ReadVariableOp_1ReadVariableOp0batch_normalization_27_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3conv2d_57/Relu:activations:0-batch_normalization_27/ReadVariableOp:value:0/batch_normalization_27/ReadVariableOp_1:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
%batch_normalization_27/AssignNewValueAssignVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource4batch_normalization_27/FusedBatchNormV3:batch_mean:07^batch_normalization_27/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
'batch_normalization_27/AssignNewValue_1AssignVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_27/FusedBatchNormV3:batch_variance:09^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(|
re_lu_27/ReluRelu+batch_normalization_27/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_33/MaxPoolMaxPoolre_lu_27/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
max_pooling2d_34/MaxPoolMaxPool!max_pooling2d_33/MaxPool:output:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_6/ReshapeReshape!max_pooling2d_34/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:����������\
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_6/dropout/MulMulflatten_6/Reshape:output:0 dropout_6/dropout/Const:output:0*
T0*(
_output_shapes
:����������o
dropout_6/dropout/ShapeShapeflatten_6/Reshape:output:0*
T0*
_output_shapes
::���
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������^
dropout_6/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout_6/dropout/SelectV2SelectV2"dropout_6/dropout/GreaterEqual:z:0dropout_6/dropout/Mul:z:0"dropout_6/dropout/Const_1:output:0*
T0*(
_output_shapes
:�����������
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_19/MatMulMatMul#dropout_6/dropout/SelectV2:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_20/MatMulMatMuldense_19/Relu:activations:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_21/MatMulMatMuldense_20/Relu:activations:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_21/SoftmaxSoftmaxdense_21/BiasAdd:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentitydense_21/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^batch_normalization_24/AssignNewValue(^batch_normalization_24/AssignNewValue_17^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_1&^batch_normalization_25/AssignNewValue(^batch_normalization_25/AssignNewValue_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_1&^batch_normalization_26/AssignNewValue(^batch_normalization_26/AssignNewValue_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_1&^batch_normalization_27/AssignNewValue(^batch_normalization_27/AssignNewValue_17^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp(^batch_normalization_27/ReadVariableOp_1!^conv2d_49/BiasAdd/ReadVariableOp ^conv2d_49/Conv2D/ReadVariableOp!^conv2d_50/BiasAdd/ReadVariableOp ^conv2d_50/Conv2D/ReadVariableOp!^conv2d_51/BiasAdd/ReadVariableOp ^conv2d_51/Conv2D/ReadVariableOp!^conv2d_52/BiasAdd/ReadVariableOp ^conv2d_52/Conv2D/ReadVariableOp!^conv2d_53/BiasAdd/ReadVariableOp ^conv2d_53/Conv2D/ReadVariableOp!^conv2d_54/BiasAdd/ReadVariableOp ^conv2d_54/Conv2D/ReadVariableOp!^conv2d_55/BiasAdd/ReadVariableOp ^conv2d_55/Conv2D/ReadVariableOp!^conv2d_56/BiasAdd/ReadVariableOp ^conv2d_56/Conv2D/ReadVariableOp!^conv2d_57/BiasAdd/ReadVariableOp ^conv2d_57/Conv2D/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOpD^sequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkipF^sequential_6/random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip?^sequential_6/random_rotation_6/stateful_uniform/RngReadAndSkipB^sequential_6/random_translation_6/stateful_uniform/RngReadAndSkipD^sequential_6/random_translation_6/stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'batch_normalization_24/AssignNewValue_1'batch_normalization_24/AssignNewValue_12N
%batch_normalization_24/AssignNewValue%batch_normalization_24/AssignNewValue2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2R
'batch_normalization_25/AssignNewValue_1'batch_normalization_25/AssignNewValue_12N
%batch_normalization_25/AssignNewValue%batch_normalization_25/AssignNewValue2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2R
'batch_normalization_26/AssignNewValue_1'batch_normalization_26/AssignNewValue_12N
%batch_normalization_26/AssignNewValue%batch_normalization_26/AssignNewValue2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2R
'batch_normalization_27/AssignNewValue_1'batch_normalization_27/AssignNewValue_12N
%batch_normalization_27/AssignNewValue%batch_normalization_27/AssignNewValue2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2R
'batch_normalization_27/ReadVariableOp_1'batch_normalization_27/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2D
 conv2d_49/BiasAdd/ReadVariableOp conv2d_49/BiasAdd/ReadVariableOp2B
conv2d_49/Conv2D/ReadVariableOpconv2d_49/Conv2D/ReadVariableOp2D
 conv2d_50/BiasAdd/ReadVariableOp conv2d_50/BiasAdd/ReadVariableOp2B
conv2d_50/Conv2D/ReadVariableOpconv2d_50/Conv2D/ReadVariableOp2D
 conv2d_51/BiasAdd/ReadVariableOp conv2d_51/BiasAdd/ReadVariableOp2B
conv2d_51/Conv2D/ReadVariableOpconv2d_51/Conv2D/ReadVariableOp2D
 conv2d_52/BiasAdd/ReadVariableOp conv2d_52/BiasAdd/ReadVariableOp2B
conv2d_52/Conv2D/ReadVariableOpconv2d_52/Conv2D/ReadVariableOp2D
 conv2d_53/BiasAdd/ReadVariableOp conv2d_53/BiasAdd/ReadVariableOp2B
conv2d_53/Conv2D/ReadVariableOpconv2d_53/Conv2D/ReadVariableOp2D
 conv2d_54/BiasAdd/ReadVariableOp conv2d_54/BiasAdd/ReadVariableOp2B
conv2d_54/Conv2D/ReadVariableOpconv2d_54/Conv2D/ReadVariableOp2D
 conv2d_55/BiasAdd/ReadVariableOp conv2d_55/BiasAdd/ReadVariableOp2B
conv2d_55/Conv2D/ReadVariableOpconv2d_55/Conv2D/ReadVariableOp2D
 conv2d_56/BiasAdd/ReadVariableOp conv2d_56/BiasAdd/ReadVariableOp2B
conv2d_56/Conv2D/ReadVariableOpconv2d_56/Conv2D/ReadVariableOp2D
 conv2d_57/BiasAdd/ReadVariableOp conv2d_57/BiasAdd/ReadVariableOp2B
conv2d_57/Conv2D/ReadVariableOpconv2d_57/Conv2D/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2�
Csequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkipCsequential_6/random_flip_6/stateful_uniform_full_int/RngReadAndSkip2�
Esequential_6/random_flip_6/stateful_uniform_full_int_1/RngReadAndSkipEsequential_6/random_flip_6/stateful_uniform_full_int_1/RngReadAndSkip2�
>sequential_6/random_rotation_6/stateful_uniform/RngReadAndSkip>sequential_6/random_rotation_6/stateful_uniform/RngReadAndSkip2�
Asequential_6/random_translation_6/stateful_uniform/RngReadAndSkipAsequential_6/random_translation_6/stateful_uniform/RngReadAndSkip2�
Csequential_6/random_translation_6/stateful_uniform_1/RngReadAndSkipCsequential_6/random_translation_6/stateful_uniform_1/RngReadAndSkip:,(
&
_output_shapes
::,(
&
_output_shapes
::Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
G
+__inference_flatten_6_layer_call_fn_1217866

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_1215018a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217569

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�	
%__inference_signature_wrapper_1216075
input_7!
unknown:
	unknown_0:
	unknown_1
	unknown_2#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:$

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:$

unknown_19: 

unknown_20: $

unknown_21:  

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: 

unknown_26: $

unknown_27: @

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:	�@

unknown_36:@

unknown_37:@ 

unknown_38: 

unknown_39: 

unknown_40:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*J
_read_only_resource_inputs,
*(	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_1213926o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7
�
N
2__inference_max_pooling2d_34_layer_call_fn_1217856

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1214753�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217363

inputs
normalization_sub_y
normalization_sqrt_x
identityo
normalization/subSubinputsnormalization_sub_y*
T0*/
_output_shapes
:���������@@a
normalization/SqrtSqrtnormalization_sqrt_x*
T0*&
_output_shapes
:\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*&
_output_shapes
:�
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentitynormalization/truediv:z:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:���������@@:::,(
&
_output_shapes
::,(
&
_output_shapes
::W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
j
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218352

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1217485

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217447

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
f
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1214308

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�

)__inference_model_6_layer_call_fn_1215427
input_7!
unknown:
	unknown_0:
	unknown_1
	unknown_2
	unknown_3:	
	unknown_4:	
	unknown_5:	#
	unknown_6:
	unknown_7:#
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14:

unknown_15:$

unknown_16:

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:$

unknown_22: 

unknown_23: $

unknown_24:  

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29: $

unknown_30: @

unknown_31:@$

unknown_32:@@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:	�@

unknown_39:@

unknown_40:@ 

unknown_41: 

unknown_42: 

unknown_43:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*B
_read_only_resource_inputs$
" 	
 !"#$%()*+,-*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_model_6_layer_call_and_return_conditional_losses_1215334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_7
�
i
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1217729

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
N
2__inference_max_pooling2d_30_layer_call_fn_1217480

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1214513�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1217841

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������@b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
E__inference_dense_19_layer_call_and_return_conditional_losses_1217919

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214614

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
a
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1214906

inputs
identityN
ReluReluinputs*
T0*/
_output_shapes
:���������  b
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������  :W S
/
_output_shapes
:���������  
 
_user_specified_nameinputs
�
H
,__inference_resizing_6_layer_call_fn_1216969

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_1214794h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_27_layer_call_fn_1217795

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214708�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_26_layer_call_fn_1217673

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214632�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
+__inference_conv2d_54_layer_call_fn_1217616

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1214920w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1214773

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������i
IdentityIdentityBiasAdd:output:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1214835

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
D__inference_model_6_layer_call_and_return_conditional_losses_1215546

inputs+
conv2d_49_1215432:
conv2d_49_1215434:
sequential_6_1215438
sequential_6_1215440+
conv2d_50_1215443:
conv2d_50_1215445:+
conv2d_51_1215448:
conv2d_51_1215450:,
batch_normalization_24_1215453:,
batch_normalization_24_1215455:,
batch_normalization_24_1215457:,
batch_normalization_24_1215459:+
conv2d_52_1215464:
conv2d_52_1215466:+
conv2d_53_1215469:
conv2d_53_1215471:,
batch_normalization_25_1215474:,
batch_normalization_25_1215476:,
batch_normalization_25_1215478:,
batch_normalization_25_1215480:+
conv2d_54_1215485: 
conv2d_54_1215487: +
conv2d_55_1215490:  
conv2d_55_1215492: ,
batch_normalization_26_1215495: ,
batch_normalization_26_1215497: ,
batch_normalization_26_1215499: ,
batch_normalization_26_1215501: +
conv2d_56_1215506: @
conv2d_56_1215508:@+
conv2d_57_1215511:@@
conv2d_57_1215513:@,
batch_normalization_27_1215516:@,
batch_normalization_27_1215518:@,
batch_normalization_27_1215520:@,
batch_normalization_27_1215522:@#
dense_19_1215530:	�@
dense_19_1215532:@"
dense_20_1215535:@ 
dense_20_1215537: "
dense_21_1215540: 
dense_21_1215542:
identity��.batch_normalization_24/StatefulPartitionedCall�.batch_normalization_25/StatefulPartitionedCall�.batch_normalization_26/StatefulPartitionedCall�.batch_normalization_27/StatefulPartitionedCall�!conv2d_49/StatefulPartitionedCall�!conv2d_50/StatefulPartitionedCall�!conv2d_51/StatefulPartitionedCall�!conv2d_52/StatefulPartitionedCall�!conv2d_53/StatefulPartitionedCall�!conv2d_54/StatefulPartitionedCall�!conv2d_55/StatefulPartitionedCall�!conv2d_56/StatefulPartitionedCall�!conv2d_57/StatefulPartitionedCall� dense_19/StatefulPartitionedCall� dense_20/StatefulPartitionedCall� dense_21/StatefulPartitionedCall�
!conv2d_49/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_49_1215432conv2d_49_1215434*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1214773�
resizing_6/PartitionedCallPartitionedCall*conv2d_49/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_1214794�
sequential_6/PartitionedCallPartitionedCall#resizing_6/PartitionedCall:output:0sequential_6_1215438sequential_6_1215440*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214373�
!conv2d_50/StatefulPartitionedCallStatefulPartitionedCall%sequential_6/PartitionedCall:output:0conv2d_50_1215443conv2d_50_1215445*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1214818�
!conv2d_51/StatefulPartitionedCallStatefulPartitionedCall*conv2d_50/StatefulPartitionedCall:output:0conv2d_51_1215448conv2d_51_1215450*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1214835�
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall*conv2d_51/StatefulPartitionedCall:output:0batch_normalization_24_1215453batch_normalization_24_1215455batch_normalization_24_1215457batch_normalization_24_1215459*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214480�
re_lu_24/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1214855�
 max_pooling2d_30/PartitionedCallPartitionedCall!re_lu_24/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1214513�
!conv2d_52/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_30/PartitionedCall:output:0conv2d_52_1215464conv2d_52_1215466*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1214869�
!conv2d_53/StatefulPartitionedCallStatefulPartitionedCall*conv2d_52/StatefulPartitionedCall:output:0conv2d_53_1215469conv2d_53_1215471*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1214886�
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall*conv2d_53/StatefulPartitionedCall:output:0batch_normalization_25_1215474batch_normalization_25_1215476batch_normalization_25_1215478batch_normalization_25_1215480*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1214556�
re_lu_25/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1214906�
 max_pooling2d_31/PartitionedCallPartitionedCall!re_lu_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1214589�
!conv2d_54/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_54_1215485conv2d_54_1215487*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1214920�
!conv2d_55/StatefulPartitionedCallStatefulPartitionedCall*conv2d_54/StatefulPartitionedCall:output:0conv2d_55_1215490conv2d_55_1215492*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1214937�
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall*conv2d_55/StatefulPartitionedCall:output:0batch_normalization_26_1215495batch_normalization_26_1215497batch_normalization_26_1215499batch_normalization_26_1215501*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1214632�
re_lu_26/PartitionedCallPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1214957�
 max_pooling2d_32/PartitionedCallPartitionedCall!re_lu_26/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1214665�
!conv2d_56/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_56_1215506conv2d_56_1215508*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1214971�
!conv2d_57/StatefulPartitionedCallStatefulPartitionedCall*conv2d_56/StatefulPartitionedCall:output:0conv2d_57_1215511conv2d_57_1215513*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1214988�
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall*conv2d_57/StatefulPartitionedCall:output:0batch_normalization_27_1215516batch_normalization_27_1215518batch_normalization_27_1215520batch_normalization_27_1215522*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214708�
re_lu_27/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1215008�
 max_pooling2d_33/PartitionedCallPartitionedCall!re_lu_27/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1214741�
 max_pooling2d_34/PartitionedCallPartitionedCall)max_pooling2d_33/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1214753�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_34/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_1215018�
dropout_6/PartitionedCallPartitionedCall"flatten_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_1215190�
 dense_19/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_19_1215530dense_19_1215532*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_19_layer_call_and_return_conditional_losses_1215045�
 dense_20/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0dense_20_1215535dense_20_1215537*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1215062�
 dense_21/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0dense_21_1215540dense_21_1215542*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_1215079x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_49/StatefulPartitionedCall"^conv2d_50/StatefulPartitionedCall"^conv2d_51/StatefulPartitionedCall"^conv2d_52/StatefulPartitionedCall"^conv2d_53/StatefulPartitionedCall"^conv2d_54/StatefulPartitionedCall"^conv2d_55/StatefulPartitionedCall"^conv2d_56/StatefulPartitionedCall"^conv2d_57/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������: : ::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_49/StatefulPartitionedCall!conv2d_49/StatefulPartitionedCall2F
!conv2d_50/StatefulPartitionedCall!conv2d_50/StatefulPartitionedCall2F
!conv2d_51/StatefulPartitionedCall!conv2d_51/StatefulPartitionedCall2F
!conv2d_52/StatefulPartitionedCall!conv2d_52/StatefulPartitionedCall2F
!conv2d_53/StatefulPartitionedCall!conv2d_53/StatefulPartitionedCall2F
!conv2d_54/StatefulPartitionedCall!conv2d_54/StatefulPartitionedCall2F
!conv2d_55/StatefulPartitionedCall!conv2d_55/StatefulPartitionedCall2F
!conv2d_56/StatefulPartitionedCall!conv2d_56/StatefulPartitionedCall2F
!conv2d_57/StatefulPartitionedCall!conv2d_57/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall:,(
&
_output_shapes
::,(
&
_output_shapes
::Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214462

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214690

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1214988

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_dense_20_layer_call_fn_1217928

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_dense_20_layer_call_and_return_conditional_losses_1215062o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1217861

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
j
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1214318

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1214708

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

�
E__inference_dense_20_layer_call_and_return_conditional_losses_1217939

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
i
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1217607

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
+__inference_conv2d_50_layer_call_fn_1217372

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1214818w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
m
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218218

inputs
identityV
IdentityIdentityinputs*
T0*/
_output_shapes
:���������@@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@@:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
+__inference_conv2d_51_layer_call_fn_1217392

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1214835w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_24_layer_call_fn_1217429

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214480�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_1217872

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
8__inference_batch_normalization_24_layer_call_fn_1217416

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1214462�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_7:
serving_default_input_7:0�����������<
dense_210
StatefulPartitionedCall:0���������tensorflow/serving/predict:
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer_with_weights-10
layer-16
layer-17
layer-18
layer_with_weights-11
layer-19
layer_with_weights-12
layer-20
layer_with_weights-13
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer_with_weights-14
layer-27
layer_with_weights-15
layer-28
layer_with_weights-16
layer-29
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature
&	optimizer
'
signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
�
7layer_with_weights-0
7layer-0
8layer-1
9layer-2
:layer-3
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
 I_jit_compiled_convolution_op"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias
 R_jit_compiled_convolution_op"
_tf_keras_layer
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Yaxis
	Zgamma
[beta
\moving_mean
]moving_variance"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias
 r_jit_compiled_convolution_op"
_tf_keras_layer
�
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses

ykernel
zbias
 {_jit_compiled_convolution_op"
_tf_keras_layer
�
|	variables
}trainable_variables
~regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta
�moving_mean
�moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
.0
/1
�2
�3
�4
G5
H6
P7
Q8
Z9
[10
\11
]12
p13
q14
y15
z16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42"
trackable_list_wrapper
�
.0
/1
G2
H3
P4
Q5
Z6
[7
p8
q9
y10
z11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
)__inference_model_6_layer_call_fn_1215427
)__inference_model_6_layer_call_fn_1215633
)__inference_model_6_layer_call_fn_1216170
)__inference_model_6_layer_call_fn_1216259�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
D__inference_model_6_layer_call_and_return_conditional_losses_1215086
D__inference_model_6_layer_call_and_return_conditional_losses_1215208
D__inference_model_6_layer_call_and_return_conditional_losses_1216772
D__inference_model_6_layer_call_and_return_conditional_losses_1216945�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	capture_2
�	capture_3B�
"__inference__wrapped_model_1213926input_7"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�
_variables
�_iterations
�_current_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_49_layer_call_fn_1216954�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1216964�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_49/kernel
:2conv2d_49/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_resizing_6_layer_call_fn_1216969�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_resizing_6_layer_call_and_return_conditional_losses_1216984�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	keras_api
�
_keep_axis
�_reduce_axis
�_reduce_axis_mask
�_broadcast_shape
	�mean
�
adapt_mean
�variance
�adapt_variance

�count"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
.__inference_sequential_6_layer_call_fn_1214357
.__inference_sequential_6_layer_call_fn_1214380
.__inference_sequential_6_layer_call_fn_1216999
.__inference_sequential_6_layer_call_fn_1217008�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214295
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214321
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217352
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217363�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_50_layer_call_fn_1217372�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1217383�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_50/kernel
:2conv2d_50/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_51_layer_call_fn_1217392�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1217403�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_51/kernel
:2conv2d_51/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
Z0
[1
\2
]3"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_24_layer_call_fn_1217416
8__inference_batch_normalization_24_layer_call_fn_1217429�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217447
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217465�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_24/gamma
):'2batch_normalization_24/beta
2:0 (2"batch_normalization_24/moving_mean
6:4 (2&batch_normalization_24/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_re_lu_24_layer_call_fn_1217470�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1217475�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_30_layer_call_fn_1217480�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1217485�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_52_layer_call_fn_1217494�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1217505�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_52/kernel
:2conv2d_52/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_53_layer_call_fn_1217514�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1217525�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(2conv2d_53/kernel
:2conv2d_53/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
|	variables
}trainable_variables
~regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_25_layer_call_fn_1217538
8__inference_batch_normalization_25_layer_call_fn_1217551�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217569
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217587�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_25/gamma
):'2batch_normalization_25/beta
2:0 (2"batch_normalization_25/moving_mean
6:4 (2&batch_normalization_25/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_re_lu_25_layer_call_fn_1217592�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1217597�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_31_layer_call_fn_1217602�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1217607�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_54_layer_call_fn_1217616�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1217627�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( 2conv2d_54/kernel
: 2conv2d_54/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_55_layer_call_fn_1217636�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1217647�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(  2conv2d_55/kernel
: 2conv2d_55/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_26_layer_call_fn_1217660
8__inference_batch_normalization_26_layer_call_fn_1217673�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217691
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217709�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_26/gamma
):' 2batch_normalization_26/beta
2:0  (2"batch_normalization_26/moving_mean
6:4  (2&batch_normalization_26/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_re_lu_26_layer_call_fn_1217714�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1217719�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_32_layer_call_fn_1217724�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1217729�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_56_layer_call_fn_1217738�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1217749�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( @2conv2d_56/kernel
:@2conv2d_56/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_conv2d_57_layer_call_fn_1217758�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1217769�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_57/kernel
:@2conv2d_57/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
@
�0
�1
�2
�3"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
8__inference_batch_normalization_27_layer_call_fn_1217782
8__inference_batch_normalization_27_layer_call_fn_1217795�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217813
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217831�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_27/gamma
):'@2batch_normalization_27/beta
2:0@ (2"batch_normalization_27/moving_mean
6:4@ (2&batch_normalization_27/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_re_lu_27_layer_call_fn_1217836�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1217841�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_33_layer_call_fn_1217846�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1217851�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_max_pooling2d_34_layer_call_fn_1217856�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1217861�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_flatten_6_layer_call_fn_1217866�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_flatten_6_layer_call_and_return_conditional_losses_1217872�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_6_layer_call_fn_1217877
+__inference_dropout_6_layer_call_fn_1217882�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217894
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217899�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_19_layer_call_fn_1217908�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_19_layer_call_and_return_conditional_losses_1217919�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�@2dense_19/kernel
:@2dense_19/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_20_layer_call_fn_1217928�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_20_layer_call_and_return_conditional_losses_1217939�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@ 2dense_20/kernel
: 2dense_20/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_21_layer_call_fn_1217948�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_21_layer_call_and_return_conditional_losses_1217959�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!: 2dense_21/kernel
:2dense_21/bias
:2normalization/mean
": 2normalization/variance
:	 2normalization/count
w
�0
�1
�2
\3
]4
�5
�6
�7
�8
�9
�10"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�	capture_2
�	capture_3B�
)__inference_model_6_layer_call_fn_1215427input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�	capture_2
�	capture_3B�
)__inference_model_6_layer_call_fn_1215633input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�	capture_2
�	capture_3B�
)__inference_model_6_layer_call_fn_1216170inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�	capture_2
�	capture_3B�
)__inference_model_6_layer_call_fn_1216259inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�	capture_2
�	capture_3B�
D__inference_model_6_layer_call_and_return_conditional_losses_1215086input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�	capture_2
�	capture_3B�
D__inference_model_6_layer_call_and_return_conditional_losses_1215208input_7"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�	capture_2
�	capture_3B�
D__inference_model_6_layer_call_and_return_conditional_losses_1216772inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
�
�	capture_2
�	capture_3B�
D__inference_model_6_layer_call_and_return_conditional_losses_1216945inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64"
trackable_list_wrapper
:	 2	iteration
: 2current_learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
�	capture_2
�	capture_3B�
%__inference_signature_wrapper_1216075input_7"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2z�	capture_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_49_layer_call_fn_1216954inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1216964inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_resizing_6_layer_call_fn_1216969inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_resizing_6_layer_call_and_return_conditional_losses_1216984inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
/__inference_random_flip_6_layer_call_fn_1217966
/__inference_random_flip_6_layer_call_fn_1217971�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218082
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218086�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_random_translation_6_layer_call_fn_1218093
6__inference_random_translation_6_layer_call_fn_1218098�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218214
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218218�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
3__inference_random_rotation_6_layer_call_fn_1218225
3__inference_random_rotation_6_layer_call_fn_1218230�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218348
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218352�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
8
�0
�1
�2"
trackable_list_wrapper
<
70
81
92
:3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�	capture_0
�	capture_1B�
.__inference_sequential_6_layer_call_fn_1214357normalization_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
�
�	capture_0
�	capture_1B�
.__inference_sequential_6_layer_call_fn_1214380normalization_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
�
�	capture_0
�	capture_1B�
.__inference_sequential_6_layer_call_fn_1216999inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
�
�	capture_0
�	capture_1B�
.__inference_sequential_6_layer_call_fn_1217008inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
�
�	capture_0
�	capture_1B�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214295normalization_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
�
�	capture_0
�	capture_1B�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214321normalization_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
�
�	capture_0
�	capture_1B�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217352inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
�
�	capture_0
�	capture_1B�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217363inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0z�	capture_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_50_layer_call_fn_1217372inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1217383inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_51_layer_call_fn_1217392inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1217403inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_24_layer_call_fn_1217416inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_24_layer_call_fn_1217429inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217447inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217465inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_re_lu_24_layer_call_fn_1217470inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1217475inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_max_pooling2d_30_layer_call_fn_1217480inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1217485inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_52_layer_call_fn_1217494inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1217505inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_53_layer_call_fn_1217514inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1217525inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_25_layer_call_fn_1217538inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_25_layer_call_fn_1217551inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217569inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217587inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_re_lu_25_layer_call_fn_1217592inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1217597inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_max_pooling2d_31_layer_call_fn_1217602inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1217607inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_54_layer_call_fn_1217616inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1217627inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_55_layer_call_fn_1217636inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1217647inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_26_layer_call_fn_1217660inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_26_layer_call_fn_1217673inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217691inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217709inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_re_lu_26_layer_call_fn_1217714inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1217719inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_max_pooling2d_32_layer_call_fn_1217724inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1217729inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_56_layer_call_fn_1217738inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1217749inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_conv2d_57_layer_call_fn_1217758inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1217769inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_batch_normalization_27_layer_call_fn_1217782inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
8__inference_batch_normalization_27_layer_call_fn_1217795inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217813inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217831inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_re_lu_27_layer_call_fn_1217836inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1217841inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_max_pooling2d_33_layer_call_fn_1217846inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1217851inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_max_pooling2d_34_layer_call_fn_1217856inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1217861inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_flatten_6_layer_call_fn_1217866inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_flatten_6_layer_call_and_return_conditional_losses_1217872inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_dropout_6_layer_call_fn_1217877inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_dropout_6_layer_call_fn_1217882inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217894inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217899inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_19_layer_call_fn_1217908inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_19_layer_call_and_return_conditional_losses_1217919inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_20_layer_call_fn_1217928inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_20_layer_call_and_return_conditional_losses_1217939inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_21_layer_call_fn_1217948inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_21_layer_call_and_return_conditional_losses_1217959inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-2Adam/m/conv2d_49/kernel
/:-2Adam/v/conv2d_49/kernel
!:2Adam/m/conv2d_49/bias
!:2Adam/v/conv2d_49/bias
/:-2Adam/m/conv2d_50/kernel
/:-2Adam/v/conv2d_50/kernel
!:2Adam/m/conv2d_50/bias
!:2Adam/v/conv2d_50/bias
/:-2Adam/m/conv2d_51/kernel
/:-2Adam/v/conv2d_51/kernel
!:2Adam/m/conv2d_51/bias
!:2Adam/v/conv2d_51/bias
/:-2#Adam/m/batch_normalization_24/gamma
/:-2#Adam/v/batch_normalization_24/gamma
.:,2"Adam/m/batch_normalization_24/beta
.:,2"Adam/v/batch_normalization_24/beta
/:-2Adam/m/conv2d_52/kernel
/:-2Adam/v/conv2d_52/kernel
!:2Adam/m/conv2d_52/bias
!:2Adam/v/conv2d_52/bias
/:-2Adam/m/conv2d_53/kernel
/:-2Adam/v/conv2d_53/kernel
!:2Adam/m/conv2d_53/bias
!:2Adam/v/conv2d_53/bias
/:-2#Adam/m/batch_normalization_25/gamma
/:-2#Adam/v/batch_normalization_25/gamma
.:,2"Adam/m/batch_normalization_25/beta
.:,2"Adam/v/batch_normalization_25/beta
/:- 2Adam/m/conv2d_54/kernel
/:- 2Adam/v/conv2d_54/kernel
!: 2Adam/m/conv2d_54/bias
!: 2Adam/v/conv2d_54/bias
/:-  2Adam/m/conv2d_55/kernel
/:-  2Adam/v/conv2d_55/kernel
!: 2Adam/m/conv2d_55/bias
!: 2Adam/v/conv2d_55/bias
/:- 2#Adam/m/batch_normalization_26/gamma
/:- 2#Adam/v/batch_normalization_26/gamma
.:, 2"Adam/m/batch_normalization_26/beta
.:, 2"Adam/v/batch_normalization_26/beta
/:- @2Adam/m/conv2d_56/kernel
/:- @2Adam/v/conv2d_56/kernel
!:@2Adam/m/conv2d_56/bias
!:@2Adam/v/conv2d_56/bias
/:-@@2Adam/m/conv2d_57/kernel
/:-@@2Adam/v/conv2d_57/kernel
!:@2Adam/m/conv2d_57/bias
!:@2Adam/v/conv2d_57/bias
/:-@2#Adam/m/batch_normalization_27/gamma
/:-@2#Adam/v/batch_normalization_27/gamma
.:,@2"Adam/m/batch_normalization_27/beta
.:,@2"Adam/v/batch_normalization_27/beta
':%	�@2Adam/m/dense_19/kernel
':%	�@2Adam/v/dense_19/kernel
 :@2Adam/m/dense_19/bias
 :@2Adam/v/dense_19/bias
&:$@ 2Adam/m/dense_20/kernel
&:$@ 2Adam/v/dense_20/kernel
 : 2Adam/m/dense_20/bias
 : 2Adam/v/dense_20/bias
&:$ 2Adam/m/dense_21/kernel
&:$ 2Adam/v/dense_21/kernel
 :2Adam/m/dense_21/bias
 :2Adam/v/dense_21/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_random_flip_6_layer_call_fn_1217966inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_random_flip_6_layer_call_fn_1217971inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218082inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218086inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_random_translation_6_layer_call_fn_1218093inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_random_translation_6_layer_call_fn_1218098inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218214inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218218inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_random_rotation_6_layer_call_fn_1218225inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_random_rotation_6_layer_call_fn_1218230inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218348inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218352inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
": 	2random_flip_6/StateVar
):'	2random_translation_6/StateVar
&:$	2random_rotation_6/StateVar�
"__inference__wrapped_model_1213926�F./��GHPQZ[\]pqyz��������������������������:�7
0�-
+�(
input_7�����������
� "3�0
.
dense_21"�
dense_21����������
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217447�Z[\]Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_1217465�Z[\]Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
8__inference_batch_normalization_24_layer_call_fn_1217416�Z[\]Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
8__inference_batch_normalization_24_layer_call_fn_1217429�Z[\]Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217569�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_1217587�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
8__inference_batch_normalization_25_layer_call_fn_1217538�����Q�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
8__inference_batch_normalization_25_layer_call_fn_1217551�����Q�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217691�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_1217709�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
8__inference_batch_normalization_26_layer_call_fn_1217660�����Q�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
8__inference_batch_normalization_26_layer_call_fn_1217673�����Q�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217813�����Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_1217831�����Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
8__inference_batch_normalization_27_layer_call_fn_1217782�����Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
8__inference_batch_normalization_27_layer_call_fn_1217795�����Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
F__inference_conv2d_49_layer_call_and_return_conditional_losses_1216964w./9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
+__inference_conv2d_49_layer_call_fn_1216954l./9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
F__inference_conv2d_50_layer_call_and_return_conditional_losses_1217383sGH7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@
� �
+__inference_conv2d_50_layer_call_fn_1217372hGH7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@�
F__inference_conv2d_51_layer_call_and_return_conditional_losses_1217403sPQ7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@
� �
+__inference_conv2d_51_layer_call_fn_1217392hPQ7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@�
F__inference_conv2d_52_layer_call_and_return_conditional_losses_1217505spq7�4
-�*
(�%
inputs���������  
� "4�1
*�'
tensor_0���������  
� �
+__inference_conv2d_52_layer_call_fn_1217494hpq7�4
-�*
(�%
inputs���������  
� ")�&
unknown���������  �
F__inference_conv2d_53_layer_call_and_return_conditional_losses_1217525syz7�4
-�*
(�%
inputs���������  
� "4�1
*�'
tensor_0���������  
� �
+__inference_conv2d_53_layer_call_fn_1217514hyz7�4
-�*
(�%
inputs���������  
� ")�&
unknown���������  �
F__inference_conv2d_54_layer_call_and_return_conditional_losses_1217627u��7�4
-�*
(�%
inputs���������
� "4�1
*�'
tensor_0��������� 
� �
+__inference_conv2d_54_layer_call_fn_1217616j��7�4
-�*
(�%
inputs���������
� ")�&
unknown��������� �
F__inference_conv2d_55_layer_call_and_return_conditional_losses_1217647u��7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
+__inference_conv2d_55_layer_call_fn_1217636j��7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
F__inference_conv2d_56_layer_call_and_return_conditional_losses_1217749u��7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0���������@
� �
+__inference_conv2d_56_layer_call_fn_1217738j��7�4
-�*
(�%
inputs��������� 
� ")�&
unknown���������@�
F__inference_conv2d_57_layer_call_and_return_conditional_losses_1217769u��7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
+__inference_conv2d_57_layer_call_fn_1217758j��7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
E__inference_dense_19_layer_call_and_return_conditional_losses_1217919f��0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������@
� �
*__inference_dense_19_layer_call_fn_1217908[��0�-
&�#
!�
inputs����������
� "!�
unknown���������@�
E__inference_dense_20_layer_call_and_return_conditional_losses_1217939e��/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0��������� 
� �
*__inference_dense_20_layer_call_fn_1217928Z��/�,
%�"
 �
inputs���������@
� "!�
unknown��������� �
E__inference_dense_21_layer_call_and_return_conditional_losses_1217959e��/�,
%�"
 �
inputs��������� 
� ",�)
"�
tensor_0���������
� �
*__inference_dense_21_layer_call_fn_1217948Z��/�,
%�"
 �
inputs��������� 
� "!�
unknown����������
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217894e4�1
*�'
!�
inputs����������
p
� "-�*
#� 
tensor_0����������
� �
F__inference_dropout_6_layer_call_and_return_conditional_losses_1217899e4�1
*�'
!�
inputs����������
p 
� "-�*
#� 
tensor_0����������
� �
+__inference_dropout_6_layer_call_fn_1217877Z4�1
*�'
!�
inputs����������
p
� ""�
unknown�����������
+__inference_dropout_6_layer_call_fn_1217882Z4�1
*�'
!�
inputs����������
p 
� ""�
unknown�����������
F__inference_flatten_6_layer_call_and_return_conditional_losses_1217872h7�4
-�*
(�%
inputs���������@
� "-�*
#� 
tensor_0����������
� �
+__inference_flatten_6_layer_call_fn_1217866]7�4
-�*
(�%
inputs���������@
� ""�
unknown�����������
M__inference_max_pooling2d_30_layer_call_and_return_conditional_losses_1217485�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_30_layer_call_fn_1217480�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
M__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_1217607�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_31_layer_call_fn_1217602�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
M__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_1217729�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_32_layer_call_fn_1217724�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
M__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_1217851�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_33_layer_call_fn_1217846�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
M__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_1217861�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
2__inference_max_pooling2d_34_layer_call_fn_1217856�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
D__inference_model_6_layer_call_and_return_conditional_losses_1215086�L./�����GHPQZ[\]pqyz��������������������������B�?
8�5
+�(
input_7�����������
p

 
� ",�)
"�
tensor_0���������
� �
D__inference_model_6_layer_call_and_return_conditional_losses_1215208�F./��GHPQZ[\]pqyz��������������������������B�?
8�5
+�(
input_7�����������
p 

 
� ",�)
"�
tensor_0���������
� �
D__inference_model_6_layer_call_and_return_conditional_losses_1216772�L./�����GHPQZ[\]pqyz��������������������������A�>
7�4
*�'
inputs�����������
p

 
� ",�)
"�
tensor_0���������
� �
D__inference_model_6_layer_call_and_return_conditional_losses_1216945�F./��GHPQZ[\]pqyz��������������������������A�>
7�4
*�'
inputs�����������
p 

 
� ",�)
"�
tensor_0���������
� �
)__inference_model_6_layer_call_fn_1215427�L./�����GHPQZ[\]pqyz��������������������������B�?
8�5
+�(
input_7�����������
p

 
� "!�
unknown����������
)__inference_model_6_layer_call_fn_1215633�F./��GHPQZ[\]pqyz��������������������������B�?
8�5
+�(
input_7�����������
p 

 
� "!�
unknown����������
)__inference_model_6_layer_call_fn_1216170�L./�����GHPQZ[\]pqyz��������������������������A�>
7�4
*�'
inputs�����������
p

 
� "!�
unknown����������
)__inference_model_6_layer_call_fn_1216259�F./��GHPQZ[\]pqyz��������������������������A�>
7�4
*�'
inputs�����������
p 

 
� "!�
unknown����������
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218082w�;�8
1�.
(�%
inputs���������@@
p
� "4�1
*�'
tensor_0���������@@
� �
J__inference_random_flip_6_layer_call_and_return_conditional_losses_1218086s;�8
1�.
(�%
inputs���������@@
p 
� "4�1
*�'
tensor_0���������@@
� �
/__inference_random_flip_6_layer_call_fn_1217966l�;�8
1�.
(�%
inputs���������@@
p
� ")�&
unknown���������@@�
/__inference_random_flip_6_layer_call_fn_1217971h;�8
1�.
(�%
inputs���������@@
p 
� ")�&
unknown���������@@�
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218348w�;�8
1�.
(�%
inputs���������@@
p
� "4�1
*�'
tensor_0���������@@
� �
N__inference_random_rotation_6_layer_call_and_return_conditional_losses_1218352s;�8
1�.
(�%
inputs���������@@
p 
� "4�1
*�'
tensor_0���������@@
� �
3__inference_random_rotation_6_layer_call_fn_1218225l�;�8
1�.
(�%
inputs���������@@
p
� ")�&
unknown���������@@�
3__inference_random_rotation_6_layer_call_fn_1218230h;�8
1�.
(�%
inputs���������@@
p 
� ")�&
unknown���������@@�
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218214w�;�8
1�.
(�%
inputs���������@@
p
� "4�1
*�'
tensor_0���������@@
� �
Q__inference_random_translation_6_layer_call_and_return_conditional_losses_1218218s;�8
1�.
(�%
inputs���������@@
p 
� "4�1
*�'
tensor_0���������@@
� �
6__inference_random_translation_6_layer_call_fn_1218093l�;�8
1�.
(�%
inputs���������@@
p
� ")�&
unknown���������@@�
6__inference_random_translation_6_layer_call_fn_1218098h;�8
1�.
(�%
inputs���������@@
p 
� ")�&
unknown���������@@�
E__inference_re_lu_24_layer_call_and_return_conditional_losses_1217475o7�4
-�*
(�%
inputs���������@@
� "4�1
*�'
tensor_0���������@@
� �
*__inference_re_lu_24_layer_call_fn_1217470d7�4
-�*
(�%
inputs���������@@
� ")�&
unknown���������@@�
E__inference_re_lu_25_layer_call_and_return_conditional_losses_1217597o7�4
-�*
(�%
inputs���������  
� "4�1
*�'
tensor_0���������  
� �
*__inference_re_lu_25_layer_call_fn_1217592d7�4
-�*
(�%
inputs���������  
� ")�&
unknown���������  �
E__inference_re_lu_26_layer_call_and_return_conditional_losses_1217719o7�4
-�*
(�%
inputs��������� 
� "4�1
*�'
tensor_0��������� 
� �
*__inference_re_lu_26_layer_call_fn_1217714d7�4
-�*
(�%
inputs��������� 
� ")�&
unknown��������� �
E__inference_re_lu_27_layer_call_and_return_conditional_losses_1217841o7�4
-�*
(�%
inputs���������@
� "4�1
*�'
tensor_0���������@
� �
*__inference_re_lu_27_layer_call_fn_1217836d7�4
-�*
(�%
inputs���������@
� ")�&
unknown���������@�
G__inference_resizing_6_layer_call_and_return_conditional_losses_1216984q9�6
/�,
*�'
inputs�����������
� "4�1
*�'
tensor_0���������@@
� �
,__inference_resizing_6_layer_call_fn_1216969f9�6
/�,
*�'
inputs�����������
� ")�&
unknown���������@@�
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214295�
�����L�I
B�?
5�2
normalization_input���������@@
p

 
� "4�1
*�'
tensor_0���������@@
� �
I__inference_sequential_6_layer_call_and_return_conditional_losses_1214321���L�I
B�?
5�2
normalization_input���������@@
p 

 
� "4�1
*�'
tensor_0���������@@
� �
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217352�
�����?�<
5�2
(�%
inputs���������@@
p

 
� "4�1
*�'
tensor_0���������@@
� �
I__inference_sequential_6_layer_call_and_return_conditional_losses_1217363}��?�<
5�2
(�%
inputs���������@@
p 

 
� "4�1
*�'
tensor_0���������@@
� �
.__inference_sequential_6_layer_call_fn_1214357�
�����L�I
B�?
5�2
normalization_input���������@@
p

 
� ")�&
unknown���������@@�
.__inference_sequential_6_layer_call_fn_1214380��L�I
B�?
5�2
normalization_input���������@@
p 

 
� ")�&
unknown���������@@�
.__inference_sequential_6_layer_call_fn_1216999x
�����?�<
5�2
(�%
inputs���������@@
p

 
� ")�&
unknown���������@@�
.__inference_sequential_6_layer_call_fn_1217008r��?�<
5�2
(�%
inputs���������@@
p 

 
� ")�&
unknown���������@@�
%__inference_signature_wrapper_1216075�F./��GHPQZ[\]pqyz��������������������������E�B
� 
;�8
6
input_7+�(
input_7�����������"3�0
.
dense_21"�
dense_21���������