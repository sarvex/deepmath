ФП
КOэN
,
Abs
x"T
y"T"
Ttype:

2	
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
2	АР
Ы
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
░
BatchDatasetV2
input_dataset

batch_size	
drop_remainder


handle"
parallel_copybool( "
output_types
list(type)(0" 
output_shapeslist(shape)(0
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
Ъ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
╣
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
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
2	
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

2
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
╖
FlatMapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
Ц
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
б
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
W
InTopKV2
predictions
targets"T
k"T
	precision
"
Ttype0:
2	
А
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
C
IteratorToStringHandle
resource_handle
string_handleИ
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
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z
Р
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
TouttypeИ
!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
М
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
Ttype"
TItype0	:
2	
п
OneShotIterator

handle"
dataset_factoryfunc"
output_types
list(type)(0" 
output_shapeslist(shape)(0"
	containerstring "
shared_namestring И
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
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
)
Rank

input"T

output"	
Ttype
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
{
RepeatDataset
input_dataset	
count	

handle"
output_types
list(type)(0" 
output_shapeslist(shape)(0
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
е

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
H
ShardedFilename
basename	
shard

num_shards
filename
╜
ShuffleDataset
input_dataset
buffer_size	
seed		
seed2	

handle"$
reshuffle_each_iterationbool("
output_types
list(type)(0" 
output_shapeslist(shape)(0
0
Sigmoid
x"T
y"T"
Ttype:

2
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
М
SparseSlice
indices	
values"T	
shape		
start	
size	
output_indices	
output_values"T
output_shape	"	
Ttype
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
╝
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
Ў
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
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint         
$
StringStrip	
input

output
:
Sub
x"T
y"T
z"T"
Ttype:
2	
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

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
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
▐
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
Г
TensorSliceDataset

components2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0И
`
TensorSummaryV2
tag
tensor"T
serialized_summary_metadata
summary"	
Ttype
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12unknown8╜К

global_step/Initializer/zerosConst*
_output_shapes
: *
value	B	 R *
_class
loc:@global_step*
dtype0	
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Й
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
_class
loc:@global_step*
_output_shapes
: *
T0	
j
global_step/readIdentityglobal_step*
_output_shapes
: *
T0	*
_class
loc:@global_step
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:         *
shape:         
h
Placeholder_1Placeholder*
shape:         *
dtype0*#
_output_shapes
:         
h
Placeholder_3Placeholder*
shape:         *
dtype0	*#
_output_shapes
:         
W
extractor/range/startConst*
value	B	 R *
dtype0	*
_output_shapes
: 
X
extractor/range/limitConst*
_output_shapes
: *
value
B	 R╘*
dtype0	
W
extractor/range/deltaConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ж
extractor/rangeRangeextractor/range/startextractor/range/limitextractor/range/delta*
_output_shapes	
:╘*

Tidx0	
┼H
extractor/keysConst*БH
valueўGBЇG╘B B<OBSC>B<START>B<END>BfunBrealBaBcartBboolBcBnumBvBNB1B2BMBprodBxB_0BNUMERALBlB/\B==>BABreal_of_numBBIT1BlistB=BsB?0BINBdropBfB!B,BiByBtBreal_leB?BBIT0Breal_ltBbBkBnB
finite_sumBgBuBvecB~B$B
GEN%PVAR%0BrBzBpBBBPBCONSBNILBdB?1BtopologyBclosed_intervalBhBSUBSETBreal_divBreal_mulB%BintBSETSPECBGSPECBCxBeB
vector_subBvector_normBmBUNIVB<=BnetBliftBreal_subBIMAGEB
vector_addBreal_powBx'BINTERBqBEMPTYBreal_addBwBcomplex_mulB
path_imageBjBdimindexB3BCONDB+BINSERTBDIFFBballBreal_absB\/BpiBSUCBintegralBdistanceBUNIONB*Breal_invBlambdaBsubtopologyBf'B	euclideanB?2BdotBcontinuous_onBiiBcexpBoBUNIONSB<BcballBhullBmeasureBbasisBCB	pathstartBpath_lengthBQB..BsphereBclosureBopen_inBdetB	connectedBfrontierBatB
pathfinishBg'BsumBFINITEB
int_of_numBabsolutely_integrable_onBreal_negBopen_intervalB	pastecartBhrealBDELETEBconvexBFB
GEN%PVAR%1B
vector_negBboundedBaff_dimBsubpathBvsumBopenBinteriorBt'BReBreal_sgnB-->BcompactBmetricB
negligibleBaffineBy'BwithinBrelative_frontierBinsideBx''Breal_minB-BlinepathBc1Bi'Bc2Bs'B	closed_inBmaprowsBa'Bc'Bclosed_segmentBk1B
measurableBDBsequentiallyBCARDBTBEXPBb'B
componentsBDISJOINTBint_leBz'BpathBp2BnaddBface_ofBsetdistBoutsideBvector_variationBk2BINTERSBint_subBsqrtB?3BspanBsimple_pathB++BPCROSSBreal_geBintegrable_onBc3Bcomplex_divBfstcartBcontentBImBhas_integralBp1Bg2Bpath_integralBg1BconicBmatrixBrelative_interiorBdiameterBh2B
matrix_mulBclosedBh1BtagBmultivectorBcomplex_powB	COUNTABLEB@Bholomorphic_onBmatrix_vector_mulBkdeBsndcartBcomplex_derivativeBhomeomorphismB?4BGEQBconnected_componentBd'Bclosed_real_intervalBwinding_numberBu'Bf2BGABSB4Bhomotopic_pathsBx2Bx1BfgBf1BlinearBsdBEBlocallyB	dimensionBopen_segmentBboxB	shiftpathBm'BopBvertex_imageBrectifiable_pathBtopBp'Binterval_lowerboundBh3Binterval_upperboundBlebesgue_measurableBhas_derivativeBhas_bounded_variation_onBRBn'B
continuousBbopBdimBrationalBh'BmulBa2BafBwsBa1BexpBcomplex_invBd2Bt0BpartcirclepathBa3Bd1Breal_maxBhomotopic_withBoptionBIBmeasurable_onBatrealBhausdistBuvBv'BkkBextreme_point_ofB
eventuallyBflBf3BrpowBarcBpairwiseB
circlepathBtranspBk'Breal_gtB	collinearB	indicatorBmdistBe2BANRBhomeomorphicBdivision_ofBproductB
orthogonalBrightcutBleftcutBhigher_complex_derivativeBintegerBvector_derivativeBFACTBint_addBucBXBe1BaddBfineBr0BubB	bernoulliBODDBpath_connectedBsupBu0Bs2BrowBinfBs1B<<Breal_integralB?5BiterateB>=Btagged_division_ofBint_ltB
GEN%PVAR%2BmspaceBbaireBHAS_SIZEBclogBhas_vector_derivativeBvvBfloorBp2'Br'Buniformly_continuous_onBArgBfracBpath_componentBswapB--->Br1By2By1B
valid_pathBreversepathBrecspaceBclosest_pointBITERBPSUBSETBUBsumsBlogBp1'B?6BfromB<=_cBgaugeBhas_complex_derivativeBmatB
closure_ofBtopspaceBdifferentiableBm2BDIVBmbBcofactorB
retract_ofB	dest_naddBmaBSNDBhas_real_derivativeBint_negBddBsubspaceBfrontier_ofBv0BuuBtwoBlimit_point_ofBfinite_diffBVBhas_measureBoutBinsBprojBvv'BdsBm1BmidpointBt''BborelBrelative_orientationBMODBpwrBis_intervalBreal_continuousBD'BfsBcosBcnjBl'Bu2BuxB
matrix_invBEVENBHBsliceBneutralBu1BsinBbinomB=_cBms'BGB?7Be'Bhas_path_integralBKB	hreal_addBaffine_dependentBFSTBreal_measureBnsumBfbB?9BindependentBonormBhas_real_integralBorthogonal_transformationB?8BrxBlxBw'BUNION_OFBN2Bborel_measurable_onBsimply_connectedBdivision_pointsBq'BdistB
polyhedronBsupportB>Bx'''BN1BsummableBa0Bp8Bhas_bounded_setvariation_onBc''BacsBpolytopeBSBgdeltaBMEMBlessBasnBMAPBset_variationBn2Babsolutely_continuous_onBINFINITEBp7Breal_integrable_onBmuBdropoutBINTERSECTION_OFBr2Bdimension_leBcovering_spaceBpermutesB%%BhcBLENGTHBindBrowsBbrouwer_degree3Bg3Ba''BmidBb2BqqBfsigmaBA'Bf''Bint_mulBn1Bx0Breflect_alongBgcBq2BmbasisBhreal_of_numBj'BsurfBLETBLET_ENDB	convex_onB
matrix_subBi''BinfsumBsimplexBmballBARBp6Borthogonal_matrixB$$BnetlimitBcontractibleBfacet_ofB+_cB
matrix_addBhomotopic_loopsBbetweenB?!BryBlyBdifferentiable_onBb1Bequiintegrable_onBz0Bb''Bi1Bconvex_coneBpatBreal_continuous_onB
invertibleBccosBYBkk'Bexposed_face_ofB
GEN%PVAR%3BB'Bi2Breal_of_intBsignBreal_measurableBl2BeeB*_cBreal_polynomial_functionBtagged_partial_division_ofBdeBSOMEBd''BcpowBtrivial_limitBq1BcoB^_cBrankBnadd_of_numBp5Bpath_integrable_onBffBALLBcomplexBcomplex_differentiableBaaBINLBINRBB2B?10Bt1Bt2BinverseBbox2BbilinearBreal_variationBreal_negligibleBAPPENDB	nadd_rinvB	hreal_invBB1BvectorBNONEBLBtkB<_cBextendBff'Bgg'Bpositive_semidefiniteBsndBfstB
barycentreBggBCROSSBusphBM'Bopen_real_intervalBnproductB	real_sumsBnadd_mulBnetordBnadd_leBlist_of_seqBp4B	mtopologyBpositive_definiteBH'BswapseqBx''''BtraceBhomotopy_equivalentBvector_polynomial_functionBcauchyBcsinBtrBint_absBP'B	hreal_mulBy''BcsqrtBcolumnBreal_measurable_onBv2BgbBENRBELBtreal_eqBcondensation_point_ofBinterval_bijBrrBABCBatnBITSETBZBrootBv1Brotate2dBwosetBz1Bmoebius_functionBliftedBmultBMAXBordinalBkgBp1''BcproductBu2'BadjointBanalytic_onBp2''Bhas_real_measureBmcballBu1'Bb0Bhreal_leBfinite_imageBabsolutely_real_integrable_onBfnBP2BchainBy'''BWFBbasBp3BiscaleB
retractionBP1BtriangulationBITLISTB	dependentBinsegBremBfyB	submetricBat_infinityBG2B	borsukianBtop'Bpolynomial_functionBisetBG1BargBlinsegBALL2Bl1BjacobianBmboundedBB0BmonoidalBinterior_ofBreal_summableBhas_bounded_real_variation_onBdivBfundamental_groupBEXTENSIONALBf4Bset_of_listBgsBanalyticBsuslinBreal_differentiableBtanBk0Bu''Breal_lebesgue_measurableBfunspaceBstarlikeB
admissibleBH2Bpiecewise_differentiable_onBlimitBdrBFILTERBH1B
GEN%PVAR%4BfxBrelative_toBnum_dividesBnadd_eqBfdistBreal_convex_onBderived_set_ofBdiagonal_matrixBNNBabsolutely_setcontinuous_onBhc'BclausesBgc'By4By3Bx4Bx3BevenpermB	cfunspaceBh''Breal_infsumBRESTRICTIONBPAIRWISEBcacsBreal_boundedBh0BcasnBmsBdlBsuslin_operationBgmBN'BFINRECBgnBy0Bg''BpermutationBfspaceBcanonizeBy0'Bis_realintervalBx0'Bb3Bs''BcatnBpfnBpncBnadd_addBn''BcharBint_of_realB
num_of_intBd'''Breal_polynomial_function'BpairBsrfBv''BcsB	operativeBpushinBunicoherentBtopcontinuousBEXBreal_log_convex_onBbbBw1BCASEWISEBcoplanarB
compact_inBdb'BcompoB	mcompleteBnnBoneBeuclidean_metricB	real_openBREVERSEBp0Bat_posinfinityB	bernsteinBnet2Bsimplicial_complexBlog_convex_onBduvBPRGBtreal_leBtosetBPREB
seqiterateBw2BR'BdbBnextBtailadmissibleBWBcbBCONSTRBIND_SUCBZCONSTRBabcBf0Breal_differentiable_onBcolumnsBinfnormBorigBcompleteBminimalBbitsetBz2BBUTLASTB	treal_mulBctanBmk_realBNUM_REPB	_dest_recBdvBc''''B	rowvectorBBfBmb'Bsomething_arbitraryBouterBccBFnBA2Bmk_numBc'''Bis_metric_spaceBxsBf'''BnsBfrechet_derivativeBabBN0Bnadd_invBnet1BHDBsuperadmissibleBf'yBduBptBl3B_MATCHB	ZRECSPACEBttBf'xBMAP2BfaBreal_uniformly_continuous_onBZIPB_UNGUARDED_PATTERNBtreal_of_numBLASTBmk_naddB?11B
GEN%PVAR%5BMEASUREBA1Breal_compactBsiB>=_cBdimension_le'BASSOCBint_dividesB	cauchy_inBZ'B>_cBposetB==B
matrix_negBn3B<<<B_GUARDED_PATTERNBi3BG'Breal_closedBxiBfinite_prodBi'''BBgBepigraphBfinite_indexB
ZRECSPACE'Bhas_integral_compact_intervalBclosed_real_segmentB_2585909BphBfpBIND_0Bm''BFINITE'BP''BBOTTOMBctBlist'BlimBCHOICEBssBcomplex_integerBMINBZBOTBvuB	treal_addBmk_cartBNUM_REP'Bq''''Blist_of_setBQ'Bterminates'BNUMSUMBint_modB	treal_invB
terminatesBcdBmk_multivectorBabc'Btr'BjjBtop2BINJNBINJFB	dest_cartBtop1Bedge_ofBcaBcolumnvectorB	UNDEFINEDBTLBq''B_2555617Brotoinversion_matrixBFCONSBC1BC2BNUMPAIRBu0'BlaBeuclideanrealBq'''Bnum_modBanythingBat_neginfinityBbrBg4Bc2'Bint_powBdkBmultivecBciBPRG'BProductBc1'BknBkeBkpBxyB_2555613BtiBs0BsubBykBhhBd0BiabB	_FUNCTIONBU'Bg0B_SEQPATTERNBdest_numBmk_finite_diffBk2'Breal_euclidean_metricBmk_pairBpuB_3033987Bmk_netB_2555615B_2555619Bone_REPBmkBrotation_matrixB	dest_realBDECIMALBdest_metricBtopcontinuous_atBopen_real_segmentBibBt3Bp1'''B	binarysumBreal_polynomial_function''Bint_gtBwevBsum'BysB_2951045Bint_geB_24595B_24864B_2951035B_1544B_266567BNUMFSTB_mk_recBwhateverBNUMSNDB_2541579B_2560693BftBgeom_mulBINJPB_595087B_24648B_2560694B_2954929BABS_prodBy''''B_24649BsetcodeB_266554Bk''BgradeB_229872Bvector_matrix_mulB_2560576BbeyondBlambdasBiaBint_minBone_ABSB
istopologyBITLIST2Bmk_finite_prodBmk_finite_sumB_2972896BxnB_595442B_2570879B_2207939B_2546141B_2560613B_2560615Breal_derivativeBREP_prodB_600503B_2956222Bint_sgnBcodesetBunB_595088BdestBINJAB_2611355B_533158Bbrouwer_degree2B_2973947B	unwindingBISOBynB_266555B_2553877BinnerBoutermorphismB	treal_negBin_directionBis_nadd*
dtype0*
_output_shapes	
:╘
Q
extractor/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 
_
extractor/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
value_dtype0	
С
,extractor/key_value_init/LookupTableImportV2LookupTableImportV2extractor/hash_tableextractor/keysextractor/range*

Tout0	*	
Tin0
Y
extractor/range_1/startConst*
_output_shapes
: *
value	B	 R *
dtype0	
Z
extractor/range_1/limitConst*
_output_shapes
: *
value
B	 Rи	*
dtype0	
Y
extractor/range_1/deltaConst*
_output_shapes
: *
value	B	 R*
dtype0	
О
extractor/range_1Rangeextractor/range_1/startextractor/range_1/limitextractor/range_1/delta*
_output_shapes	
:и	*

Tidx0	
МK
extractor/keys_1Const*╞J
value╝JB╣Jи	B B<OBSC>B<START>B<END>BfunBboolBaBrealBcBcartBvBnumBNBAB1BlBxBMB2B!B?0B=BsBprodB/\BINB_0BtBNUMERALB?1ByBnBfBlistB?4BBIT1BBBreal_of_numB?2B?3B==>BpBPBmBiB,BbB?BBIT0B~BgBdropBreal_ltBzBreal_leBkB
finite_sumBSUBSETBGSPECBSETSPECBuB
GEN%PVAR%0BvecBEMPTYBnetBtopologyBCONSBNILB<=B$BUNIVBdBclosed_intervalBrBIMAGEBeBintBreal_divBhBINTERBreal_mulBvector_normBwBreal_powBINSERTB+B\/B
vector_subBCxB%BQBsumBdimindexB*BliftB
path_imageBqB3BDIFFB
vector_addBCBreal_subB<Bcontinuous_onBjBreal_addBUNIONB..B?7BUNIONSBSUCBdistanceBballB?5BFINITEBf'B?6B?8Bcomplex_mulBlambdaBhullBDELETEBx'BEXPBsubtopologyB	euclideanBoBdotBreal_absBFBCONDBDISJOINTB?9Breal_invB?10BTBconvexB	connectedBreal_negBINTERSBboundedB-BopenBt1Bt2BatBfrontierBcballBopen_inB>=BPSUBSETBcompactB
int_of_numBintegralB>B	pathstartBclosureBmeasureBhrealB
vector_negB
pathfinishBopen_intervalBSINGBCHOICEBRESTB-->BaffineBinteriorBpiBabsolutely_integrable_onBg'Bt3BReB	pastecartBbasisBmetricBdetBsphereB
measurableBwithinBinsideBDBiiBc2Baff_dimBintegrable_onBc1BcexpBclosedB	closed_inBlinearBholomorphic_onB
negligibleBnaddBvsumBk1BCARDBclosed_segmentBpath_lengthBtopBpathBt'Bface_ofB	COUNTABLEBs'BsequentiallyBImBspanBoutsideBk2BODDBconicBg1BPREBg2B
componentsBint_leBc3Bc'Bvertex_imageBEVENBPCROSSBrelative_frontierBint_subBlinepathBrelative_interiorBintegerBlocallyBrightcutBextreme_point_ofBsubpathBleftcutB
matrix_mulBlebesgue_measurableBcontentBmaprowsB
GEN%PVAR%1Ba'BsetdistBhas_derivativeBopBhas_integralB
continuousBz'Breal_geBopen_segmentBboxBdimBb'Bcomplex_derivativeBRBmeasurable_onBconnected_componentBclosed_real_intervalBdiameterBflB++Bcomplex_divBsimple_pathBy'Breal_minBcomplex_invBmatrixBmatrix_vector_mulBXBx1Bh'BhomeomorphismBdivision_ofBhas_bounded_variation_onB
eventuallyBx2Bi'Breal_sgnBIBrectifiable_pathBsubspaceBu'BtranspBbopBp1Bcomplex_powBsndcartBp2BpairwiseBEBe2B
orthogonalBe1Bpath_integralB4BatrealBANRBf2B	collinearBfineBpath_connectedBh2Bvector_variationBf1Bh1BGEQBGABSBarcB	dimensionBd1BfstcartB
valid_pathBis_intervalBrationalBsqrtB@B	indicatorBd'BhomeomorphicBp'Bhigher_complex_derivativeBhomotopic_withBmspaceBh''Bd2Btagged_division_ofBmultivectorBhausdistBhomotopic_pathsB<=_cBreal_gtBHAS_SIZEBwinding_numberBgaugeBsdBexpBfsBhas_complex_derivativeBy1BITERBmatBinfBbaireBe'Bhas_vector_derivativeBa1BtopspaceBcomplexBprojBmidpointBff'Bgg'Bt0BindependentBinterval_lowerboundBinterval_upperboundBy2BuvBreal_maxBoptionBaffine_dependentBlimit_point_ofBv'BdifferentiableBreal_continuousBafBhas_real_derivativeBsupBsumsBint_addBfgBint_ltBclosest_pointBddBproductBtagBwsBreversepathBrowsBr'BclogBmdistBrowB=_cBsimplexBINFINITEBrelative_orientationBa2B--->BpolytopeBYB<<B
polyhedronB	shiftpathBr0BeeBvvBhas_measureBdsBkkBu0B
closure_ofBx''BfloorBa3BVBm'B	dest_naddBk'BArgBrpowBint_negBbilinearBtrivial_limitBHBMAPBpath_componentBfromBborelBz0Buniformly_continuous_onBf3BcnjBr1BiterateB
retract_ofBcosBn'BKBffBs2Breal_integrable_onBsinBmuBdifferentiable_onBggBUBmulBFACTBs1BneutralBnetlimitBuuBoutBinsBpath_integrable_onBcomplex_differentiableB	convex_onBx0BsliceBms'B	hreal_addBh3BUNION_OFBpermutesBA'BtriangulationBINTERSECTION_OFBonormBopen_real_intervalBSBvector_derivativeBreal_continuous_onBtagged_partial_division_ofBsummableBhas_real_integralBsimply_connectedB
invertibleBgdeltaBhas_bounded_setvariation_onBv0BkdeB
matrix_invBcovering_spaceBm2Bhas_path_integralB
circlepathBfracB	bernoulliBlogBpositive_semidefiniteBccosBfsigmaBorthogonal_matrixBfrontier_ofBborel_measurable_onBvv'Borthogonal_transformationBpartcirclepathBm1Bu1BFSTBu2Breal_integralBwosetBswapBLENGTHBreal_measurableBcontractibleBmonoidalBsupportBmidBmbBlessBa0Breal_polynomial_functionBmaBusphBucBSNDBqqBfbBcofactorBbinomBabsolutely_continuous_onB<_cBubBD'B
matrix_subBfinite_diffBARBN1BnetordBN2BaddBMEMBb2BbetweenBdistBrankBq'BnsumBd''BDIVBi1B%%BcsinBAPPENDBextendBi2Bj'Bconvex_coneBf''Breal_measureBsurfBB1BALLBdiagonal_matrixBindBB'BB2Bequiintegrable_onBMODBrecspaceBcauchyBhomotopy_equivalentBnadd_of_numBn1BGBnadd_leBordinalBl'Bb1BmballBdimension_leBint_mulBcoBuxBreal_negligibleBr2B?!BtrBxsBttBmsBptBn2BnextBl2Bhomotopic_loopsBvectorBfacet_ofBbox2Breal_of_intBinverseBpositive_definiteBgcB	dependentBhcBreal_boundedBEXTENSIONALBdeBreflect_alongBg''Bvector_polynomial_functionBd'''BkgBhas_real_measureBdivision_pointsBcolumnB	operativeBsndBw'B	real_sumsBWFBv2BaaB
retractionB	mtopologyBnnBnadd_mulBINLBnadd_eqBfinite_imageBtop'Bv1BnproductBgbBt''BPRGBexposed_face_ofBhreal_of_numBrotate2dBrrBINRBmboundedBpiecewise_differentiable_onBl1BswapseqBfstBbrouwer_degree3BENRBis_realintervalBat_infinityBset_variationBreal_differentiableB+_cBNONEBinterior_ofBa''BcproductBrootBtkBadjointBALL2Bg0Bpolynomial_functionBinsegBSOMEB>=_cBz2B	nadd_rinvBhreal_leBMEASUREBpwrB*_cBd0BcompleteBpermutationBreal_measurable_onBanalyticBITSETBanalytic_onBreal_summableBstarlikeBx'''B
GEN%PVAR%2BdropoutBjacobianBatnBfspaceBpatBREVERSEBtraceBinfsumBLBtreal_eqBz1Bint_of_realB
matrix_addBabsolutely_real_integrable_onBcsqrtB>_cBhas_bounded_real_variation_onBELBcanonizeB^_cB
barycentreBsignBgsBacsBliftedB	hreal_mulBreal_lebesgue_measurableBset_of_listBasnBc''BoneBb''Brelative_toBPAIRWISEBderived_set_ofBfunspaceBZBposetB	submetricB?18B?23BlimitBabsolutely_setcontinuous_onBcaBq1BbbBtanBLETBLET_ENDBABCBcbBreal_polynomial_function'BabcB	real_openBPRG'B	cfunspaceBisetBchainBg3B	borsukianBWBsuslinBint_absBcoplanarBITLISTBCROSSBM'Bborel'Breal_convex_onBevenpermB
num_of_intBk0BcpowBpncBBfBmbasisBdlBb0B?17B?22BdrB$$BduvBf4BtwoBlinsegB?25B?21BRESTRICTIONB?24Breal_differentiable_onBB0By0BcasnBFINRECBsrfBiscaleBnadd_addB?30Bh0Beuclidean_metricBcondensation_point_ofB?31By''BctanBfxBq2B_BcacsB?11B
matrix_negB?13BbasBclausesB?20Bm''BtopcontinuousBtreal_leBBgBHDBfnBmcballB?33B?32BfyBlist_of_seqBreal_compactBmoebius_functionBp7BFINITE'BdvBpairBp1'Bv''BduB	cauchy_inBhhBmultBTLBs''B?28Bborel_measurable_on'Bq''B?26B?27B	mcompleteBgnBcsBnet2B?34BcompoB?14BEXBgmBp6Bp8BFILTERB?35Bw1Bp2'B	UNDEFINEDBNUM_REPBp5Bw2BxyBpfnBP'BMAXB
admissibleBy0'Bb3Binterval_bijBfdistBreal_variationB
GEN%PVAR%3BBUTLASTBremB	bernsteinBx0'B
compact_inBp4Bsuslin_operationBat_posinfinityBnet1BG2BbitsetBP2Bmk_numBcatnBnsBabBQ'BG1BtailadmissibleBP1Blog_convex_onB	_dest_recBabc'BunicoherentBProductBbeyondBswapseq'BargBtosetB
seqiterateBpushinBp3B?29B?12B?19BH2Bcomplex_integerBcolumnsBinfnormBouterBmk_naddBsubBreal_log_convex_onBCASEWISEBNNBi''Bclosed_real_segmentBMAP2Bu''BphBq'''Bmk_realBZIPBH1BZCONSTRBccBdest_metricBreal_infsumBgaBdivBeuclideanrealBnum_dividesBLASTBis_metric_spaceBN'Bx''''By'''Bnadd_invBfinite_prodB	ZRECSPACEBint_dividesBreal_closedBsetcodeBsiBfrechet_derivativeB	treal_mulBlaB==BxiBN0Bmk_netBminimalBepigraphBMINBsimplicial_complexBIND_SUCBvuBA1Bint_powBint_modBedge_ofBopen_real_segmentBdimension_le'Btreal_of_numBA2BfaBreal_uniformly_continuous_onBdest_numB_399298B_mk_recBmk_cartBINJNB_399299Bf'''B	dest_realBINJPBc'''B	hreal_invBn3Bfinite_indexBixBc''''B
GEN%PVAR%4BaxBH'BsuperadmissibleBlist_of_setB	dest_cartBis_naddBIND_0Bone_REPB	rowvectorBat_neginfinityBrotoinversion_matrixBynBdkBdgB	treal_addBrotation_matrixBNUMPAIRBcodesetBfpBlambdasBa0'Ba1'B_MATCHBASSOCB_2585909Bint_coprimeB?16B?15B_399296B_399297B_399294B_399295B_399292B_399293BrjBp1''BgzBdb'B_399291BC1BC2BdbBmk_pairBtop1Btop2Bp0Bfundamental_groupBhc'BuwBINJFBkeBgc'BcolumnvectorBmb'BwzBf2'Bf1'BxkBsgBmk_multivectorBp2''BgxBNUMFSTBmkBNUMSNDBi3BftBkdBR'BunB	binarysumBdsaB
GEN%PVAR%5Brj'B_1544Btopcontinuous_atBcharBayBamBtiBFCONSBdiaBdest_multivectorBc2'Breal_euclidean_metricBsfBigBpuBf0BdestBhas_integral_compact_intervalBhtBc1'Bvector_matrix_mulBINJAB
istopologyBbcBbaBp''BABS_prodBs0BtsBDECIMALBdg'BsnBCONSTRBfactBznBpsB_GUARDED_PATTERNBab'BiabBhsBaeBrelBnum_modBREP_prodBikBibBiaBone_ABSBusBlsB_UNGUARDED_PATTERNBl3Bq3BpitBbrouwer_degree2B_2972896BlimBxnBs3BZBOTB_SEQPATTERNBITLIST2Bmk_finite_diffBgradeBvgBghn'BepBuv'BenBviBZ'BrbBraBghnBsf'Bgh0BasBazBacBhnBheBhaBhbBg4BhuBguBgtBmuaBmubBgyBterminates'BNUMSUMBrabBdiB
terminatesBreal_derivativeBbmBciBi0BsoBgeom_mulBisByaB<<<BcpBdest_finite_sumBxgBBOTTOMBgn'BfmBfuBuiBumBNUM_REP'BnubBr''BFnBknBnuaBkpBfvBbxB_2973947BbnBbdBhgnBhn'BctByuB	treal_invBint_gtBmk_finite_prodBgdBmk_finite_sumBdest_finite_imageBlist'Bdest_finite_diffBdest_finite_prodBxxBxuBxmBxaBxbBsmBspB	unwindingB
ZRECSPACE'BISOBjjByyBykBybB	_FUNCTIONBf'xBreal_polynomial_function''Bint_sgnBinnerBint_geBmultivecBoutermorphismBwhateverBint_minB	REPLICATEB	treal_negBwevBf'yBsum'Bin_direction*
dtype0*
_output_shapes	
:и	
S
extractor/Const_1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
a
extractor/hash_table_1HashTableV2*
value_dtype0	*
_output_shapes
: *
	key_dtype0
Щ
.extractor/key_value_init_1/LookupTableImportV2LookupTableImportV2extractor/hash_table_1extractor/keys_1extractor/range_1*

Tout0	*	
Tin0
П
extractor/Const_2Const*N
valueEBC B=/usr/local/google/home/smloos/deephol_tiny_data/thms_ls.train*
dtype0*
_output_shapes
: 
q
extractor/flat_filenames/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
{
extractor/flat_filenamesReshapeextractor/Const_2extractor/flat_filenames/shape*
_output_shapes
:*
T0
У
extractor/TensorSliceDatasetTensorSliceDatasetextractor/flat_filenames*
output_shapes
: *
_output_shapes
: *
Toutput_types
2
┌
extractor/FlatMapDatasetFlatMapDatasetextractor/TensorSliceDataset*
output_shapes
: *
output_types
2*8
f3R1
/__inference_Dataset_flat_map_read_one_file_7768*
_output_shapes
: *

Targuments
 
Z
extractor/countConst*
valueB	 R
         *
dtype0	*
_output_shapes
: 
Щ
extractor/RepeatDatasetRepeatDatasetextractor/FlatMapDatasetextractor/count*
output_shapes
: *
output_types
2*
_output_shapes
: 
X
extractor/buffer_sizeConst*
value
B	 Rш*
dtype0	*
_output_shapes
: 
P
extractor/seedConst*
_output_shapes
: *
value	B	 R *
dtype0	
Q
extractor/seed2Const*
_output_shapes
: *
value	B	 R *
dtype0	
┴
extractor/ShuffleDatasetShuffleDatasetextractor/RepeatDatasetextractor/buffer_sizeextractor/seedextractor/seed2*
output_shapes
: *
output_types
2*
_output_shapes
: 
V
extractor/batch_sizeConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Z
extractor/drop_remainderConst*
_output_shapes
: *
value	B
 Z *
dtype0

╟
extractor/BatchDatasetV2BatchDatasetV2extractor/ShuffleDatasetextractor/batch_sizeextractor/drop_remainder*"
output_shapes
:         *
output_types
2*
_output_shapes
: 
▒
extractor/OneShotIteratorOneShotIterator*
output_types
2*"
output_shapes
:         *
_output_shapes
: *0
dataset_factoryR
_make_dataset_PuUzmJZHmRc
m
 extractor/IteratorToStringHandleIteratorToStringHandleextractor/OneShotIterator*
_output_shapes
: 
з
extractor/IteratorGetNextIteratorGetNextextractor/OneShotIterator*"
output_shapes
:         *
output_types
2*#
_output_shapes
:         
Y
extractor/range_2/startConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Z
extractor/range_2/limitConst*
_output_shapes
: *
value
B	 R╘*
dtype0	
Y
extractor/range_2/deltaConst*
value	B	 R*
dtype0	*
_output_shapes
: 
О
extractor/range_2Rangeextractor/range_2/startextractor/range_2/limitextractor/range_2/delta*
_output_shapes	
:╘*

Tidx0	
╟H
extractor/keys_2Const*БH
valueўGBЇG╘B B<OBSC>B<START>B<END>BfunBrealBaBcartBboolBcBnumBvBNB1B2BMBprodBxB_0BNUMERALBlB/\B==>BABreal_of_numBBIT1BlistB=BsB?0BINBdropBfB!B,BiByBtBreal_leB?BBIT0Breal_ltBbBkBnB
finite_sumBgBuBvecB~B$B
GEN%PVAR%0BrBzBpBBBPBCONSBNILBdB?1BtopologyBclosed_intervalBhBSUBSETBreal_divBreal_mulB%BintBSETSPECBGSPECBCxBeB
vector_subBvector_normBmBUNIVB<=BnetBliftBreal_subBIMAGEB
vector_addBreal_powBx'BINTERBqBEMPTYBreal_addBwBcomplex_mulB
path_imageBjBdimindexB3BCONDB+BINSERTBDIFFBballBreal_absB\/BpiBSUCBintegralBdistanceBUNIONB*Breal_invBlambdaBsubtopologyBf'B	euclideanB?2BdotBcontinuous_onBiiBcexpBoBUNIONSB<BcballBhullBmeasureBbasisBCB	pathstartBpath_lengthBQB..BsphereBclosureBopen_inBdetB	connectedBfrontierBatB
pathfinishBg'BsumBFINITEB
int_of_numBabsolutely_integrable_onBreal_negBopen_intervalB	pastecartBhrealBDELETEBconvexBFB
GEN%PVAR%1B
vector_negBboundedBaff_dimBsubpathBvsumBopenBinteriorBt'BReBreal_sgnB-->BcompactBmetricB
negligibleBaffineBy'BwithinBrelative_frontierBinsideBx''Breal_minB-BlinepathBc1Bi'Bc2Bs'B	closed_inBmaprowsBa'Bc'Bclosed_segmentBk1B
measurableBDBsequentiallyBCARDBTBEXPBb'B
componentsBDISJOINTBint_leBz'BpathBp2BnaddBface_ofBsetdistBoutsideBvector_variationBk2BINTERSBint_subBsqrtB?3BspanBsimple_pathB++BPCROSSBreal_geBintegrable_onBc3Bcomplex_divBfstcartBcontentBImBhas_integralBp1Bg2Bpath_integralBg1BconicBmatrixBrelative_interiorBdiameterBh2B
matrix_mulBclosedBh1BtagBmultivectorBcomplex_powB	COUNTABLEB@Bholomorphic_onBmatrix_vector_mulBkdeBsndcartBcomplex_derivativeBhomeomorphismB?4BGEQBconnected_componentBd'Bclosed_real_intervalBwinding_numberBu'Bf2BGABSB4Bhomotopic_pathsBx2Bx1BfgBf1BlinearBsdBEBlocallyB	dimensionBopen_segmentBboxB	shiftpathBm'BopBvertex_imageBrectifiable_pathBtopBp'Binterval_lowerboundBh3Binterval_upperboundBlebesgue_measurableBhas_derivativeBhas_bounded_variation_onBRBn'B
continuousBbopBdimBrationalBh'BmulBa2BafBwsBa1BexpBcomplex_invBd2Bt0BpartcirclepathBa3Bd1Breal_maxBhomotopic_withBoptionBIBmeasurable_onBatrealBhausdistBuvBv'BkkBextreme_point_ofB
eventuallyBflBf3BrpowBarcBpairwiseB
circlepathBtranspBk'Breal_gtB	collinearB	indicatorBmdistBe2BANRBhomeomorphicBdivision_ofBproductB
orthogonalBrightcutBleftcutBhigher_complex_derivativeBintegerBvector_derivativeBFACTBint_addBucBXBe1BaddBfineBr0BubB	bernoulliBODDBpath_connectedBsupBu0Bs2BrowBinfBs1B<<Breal_integralB?5BiterateB>=Btagged_division_ofBint_ltB
GEN%PVAR%2BmspaceBbaireBHAS_SIZEBclogBhas_vector_derivativeBvvBfloorBp2'Br'Buniformly_continuous_onBArgBfracBpath_componentBswapB--->Br1By2By1B
valid_pathBreversepathBrecspaceBclosest_pointBITERBPSUBSETBUBsumsBlogBp1'B?6BfromB<=_cBgaugeBhas_complex_derivativeBmatB
closure_ofBtopspaceBdifferentiableBm2BDIVBmbBcofactorB
retract_ofB	dest_naddBmaBSNDBhas_real_derivativeBint_negBddBsubspaceBfrontier_ofBv0BuuBtwoBlimit_point_ofBfinite_diffBVBhas_measureBoutBinsBprojBvv'BdsBm1BmidpointBt''BborelBrelative_orientationBMODBpwrBis_intervalBreal_continuousBD'BfsBcosBcnjBl'Bu2BuxB
matrix_invBEVENBHBsliceBneutralBu1BsinBbinomB=_cBms'BGB?7Be'Bhas_path_integralBKB	hreal_addBaffine_dependentBFSTBreal_measureBnsumBfbB?9BindependentBonormBhas_real_integralBorthogonal_transformationB?8BrxBlxBw'BUNION_OFBN2Bborel_measurable_onBsimply_connectedBdivision_pointsBq'BdistB
polyhedronBsupportB>Bx'''BN1BsummableBa0Bp8Bhas_bounded_setvariation_onBc''BacsBpolytopeBSBgdeltaBMEMBlessBasnBMAPBset_variationBn2Babsolutely_continuous_onBINFINITEBp7Breal_integrable_onBmuBdropoutBINTERSECTION_OFBr2Bdimension_leBcovering_spaceBpermutesB%%BhcBLENGTHBindBrowsBbrouwer_degree3Bg3Ba''BmidBb2BqqBfsigmaBA'Bf''Bint_mulBn1Bx0Breflect_alongBgcBq2BmbasisBhreal_of_numBj'BsurfBLETBLET_ENDB	convex_onB
matrix_subBi''BinfsumBsimplexBmballBARBp6Borthogonal_matrixB$$BnetlimitBcontractibleBfacet_ofB+_cB
matrix_addBhomotopic_loopsBbetweenB?!BryBlyBdifferentiable_onBb1Bequiintegrable_onBz0Bb''Bi1Bconvex_coneBpatBreal_continuous_onB
invertibleBccosBYBkk'Bexposed_face_ofB
GEN%PVAR%3BB'Bi2Breal_of_intBsignBreal_measurableBl2BeeB*_cBreal_polynomial_functionBtagged_partial_division_ofBdeBSOMEBd''BcpowBtrivial_limitBq1BcoB^_cBrankBnadd_of_numBp5Bpath_integrable_onBffBALLBcomplexBcomplex_differentiableBaaBINLBINRBB2B?10Bt1Bt2BinverseBbox2BbilinearBreal_variationBreal_negligibleBAPPENDB	nadd_rinvB	hreal_invBB1BvectorBNONEBLBtkB<_cBextendBff'Bgg'Bpositive_semidefiniteBsndBfstB
barycentreBggBCROSSBusphBM'Bopen_real_intervalBnproductB	real_sumsBnadd_mulBnetordBnadd_leBlist_of_seqBp4B	mtopologyBpositive_definiteBH'BswapseqBx''''BtraceBhomotopy_equivalentBvector_polynomial_functionBcauchyBcsinBtrBint_absBP'B	hreal_mulBy''BcsqrtBcolumnBreal_measurable_onBv2BgbBENRBELBtreal_eqBcondensation_point_ofBinterval_bijBrrBABCBatnBITSETBZBrootBv1Brotate2dBwosetBz1Bmoebius_functionBliftedBmultBMAXBordinalBkgBp1''BcproductBu2'BadjointBanalytic_onBp2''Bhas_real_measureBmcballBu1'Bb0Bhreal_leBfinite_imageBabsolutely_real_integrable_onBfnBP2BchainBy'''BWFBbasBp3BiscaleB
retractionBP1BtriangulationBITLISTB	dependentBinsegBremBfyB	submetricBat_infinityBG2B	borsukianBtop'Bpolynomial_functionBisetBG1BargBlinsegBALL2Bl1BjacobianBmboundedBB0BmonoidalBinterior_ofBreal_summableBhas_bounded_real_variation_onBdivBfundamental_groupBEXTENSIONALBf4Bset_of_listBgsBanalyticBsuslinBreal_differentiableBtanBk0Bu''Breal_lebesgue_measurableBfunspaceBstarlikeB
admissibleBH2Bpiecewise_differentiable_onBlimitBdrBFILTERBH1B
GEN%PVAR%4BfxBrelative_toBnum_dividesBnadd_eqBfdistBreal_convex_onBderived_set_ofBdiagonal_matrixBNNBabsolutely_setcontinuous_onBhc'BclausesBgc'By4By3Bx4Bx3BevenpermB	cfunspaceBh''Breal_infsumBRESTRICTIONBPAIRWISEBcacsBreal_boundedBh0BcasnBmsBdlBsuslin_operationBgmBN'BFINRECBgnBy0Bg''BpermutationBfspaceBcanonizeBy0'Bis_realintervalBx0'Bb3Bs''BcatnBpfnBpncBnadd_addBn''BcharBint_of_realB
num_of_intBd'''Breal_polynomial_function'BpairBsrfBv''BcsB	operativeBpushinBunicoherentBtopcontinuousBEXBreal_log_convex_onBbbBw1BCASEWISEBcoplanarB
compact_inBdb'BcompoB	mcompleteBnnBoneBeuclidean_metricB	real_openBREVERSEBp0Bat_posinfinityB	bernsteinBnet2Bsimplicial_complexBlog_convex_onBduvBPRGBtreal_leBtosetBPREB
seqiterateBw2BR'BdbBnextBtailadmissibleBWBcbBCONSTRBIND_SUCBZCONSTRBabcBf0Breal_differentiable_onBcolumnsBinfnormBorigBcompleteBminimalBbitsetBz2BBUTLASTB	treal_mulBctanBmk_realBNUM_REPB	_dest_recBdvBc''''B	rowvectorBBfBmb'Bsomething_arbitraryBouterBccBFnBA2Bmk_numBc'''Bis_metric_spaceBxsBf'''BnsBfrechet_derivativeBabBN0Bnadd_invBnet1BHDBsuperadmissibleBf'yBduBptBl3B_MATCHB	ZRECSPACEBttBf'xBMAP2BfaBreal_uniformly_continuous_onBZIPB_UNGUARDED_PATTERNBtreal_of_numBLASTBmk_naddB?11B
GEN%PVAR%5BMEASUREBA1Breal_compactBsiB>=_cBdimension_le'BASSOCBint_dividesB	cauchy_inBZ'B>_cBposetB==B
matrix_negBn3B<<<B_GUARDED_PATTERNBi3BG'Breal_closedBxiBfinite_prodBi'''BBgBepigraphBfinite_indexB
ZRECSPACE'Bhas_integral_compact_intervalBclosed_real_segmentB_2585909BphBfpBIND_0Bm''BFINITE'BP''BBOTTOMBctBlist'BlimBCHOICEBssBcomplex_integerBMINBZBOTBvuB	treal_addBmk_cartBNUM_REP'Bq''''Blist_of_setBQ'Bterminates'BNUMSUMBint_modB	treal_invB
terminatesBcdBmk_multivectorBabc'Btr'BjjBtop2BINJNBINJFB	dest_cartBtop1Bedge_ofBcaBcolumnvectorB	UNDEFINEDBTLBq''B_2555617Brotoinversion_matrixBFCONSBC1BC2BNUMPAIRBu0'BlaBeuclideanrealBq'''Bnum_modBanythingBat_neginfinityBbrBg4Bc2'Bint_powBdkBmultivecBciBPRG'BProductBc1'BknBkeBkpBxyB_2555613BtiBs0BsubBykBhhBd0BiabB	_FUNCTIONBU'Bg0B_SEQPATTERNBdest_numBmk_finite_diffBk2'Breal_euclidean_metricBmk_pairBpuB_3033987Bmk_netB_2555615B_2555619Bone_REPBmkBrotation_matrixB	dest_realBDECIMALBdest_metricBtopcontinuous_atBopen_real_segmentBibBt3Bp1'''B	binarysumBreal_polynomial_function''Bint_gtBwevBsum'BysB_2951045Bint_geB_24595B_24864B_2951035B_1544B_266567BNUMFSTB_mk_recBwhateverBNUMSNDB_2541579B_2560693BftBgeom_mulBINJPB_595087B_24648B_2560694B_2954929BABS_prodBy''''B_24649BsetcodeB_266554Bk''BgradeB_229872Bvector_matrix_mulB_2560576BbeyondBlambdasBiaBint_minBone_ABSB
istopologyBITLIST2Bmk_finite_prodBmk_finite_sumB_2972896BxnB_595442B_2570879B_2207939B_2546141B_2560613B_2560615Breal_derivativeBREP_prodB_600503B_2956222Bint_sgnBcodesetBunB_595088BdestBINJAB_2611355B_533158Bbrouwer_degree2B_2973947B	unwindingBISOBynB_266555B_2553877BinnerBoutermorphismB	treal_negBin_directionBis_nadd*
dtype0*
_output_shapes	
:╘
S
extractor/Const_3Const*
dtype0	*
_output_shapes
: *
value	B	 R
a
extractor/hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
value_dtype0	
Щ
.extractor/key_value_init_2/LookupTableImportV2LookupTableImportV2extractor/hash_table_2extractor/keys_2extractor/range_2*

Tout0	*	
Tin0
Y
extractor/range_3/startConst*
dtype0	*
_output_shapes
: *
value	B	 R 
Z
extractor/range_3/limitConst*
value
B	 Rи	*
dtype0	*
_output_shapes
: 
Y
extractor/range_3/deltaConst*
dtype0	*
_output_shapes
: *
value	B	 R
О
extractor/range_3Rangeextractor/range_3/startextractor/range_3/limitextractor/range_3/delta*
_output_shapes	
:и	*

Tidx0	
МK
extractor/keys_3Const*╞J
value╝JB╣Jи	B B<OBSC>B<START>B<END>BfunBboolBaBrealBcBcartBvBnumBNBAB1BlBxBMB2B!B?0B=BsBprodB/\BINB_0BtBNUMERALB?1ByBnBfBlistB?4BBIT1BBBreal_of_numB?2B?3B==>BpBPBmBiB,BbB?BBIT0B~BgBdropBreal_ltBzBreal_leBkB
finite_sumBSUBSETBGSPECBSETSPECBuB
GEN%PVAR%0BvecBEMPTYBnetBtopologyBCONSBNILB<=B$BUNIVBdBclosed_intervalBrBIMAGEBeBintBreal_divBhBINTERBreal_mulBvector_normBwBreal_powBINSERTB+B\/B
vector_subBCxB%BQBsumBdimindexB*BliftB
path_imageBqB3BDIFFB
vector_addBCBreal_subB<Bcontinuous_onBjBreal_addBUNIONB..B?7BUNIONSBSUCBdistanceBballB?5BFINITEBf'B?6B?8Bcomplex_mulBlambdaBhullBDELETEBx'BEXPBsubtopologyB	euclideanBoBdotBreal_absBFBCONDBDISJOINTB?9Breal_invB?10BTBconvexB	connectedBreal_negBINTERSBboundedB-BopenBt1Bt2BatBfrontierBcballBopen_inB>=BPSUBSETBcompactB
int_of_numBintegralB>B	pathstartBclosureBmeasureBhrealB
vector_negB
pathfinishBopen_intervalBSINGBCHOICEBRESTB-->BaffineBinteriorBpiBabsolutely_integrable_onBg'Bt3BReB	pastecartBbasisBmetricBdetBsphereB
measurableBwithinBinsideBDBiiBc2Baff_dimBintegrable_onBc1BcexpBclosedB	closed_inBlinearBholomorphic_onB
negligibleBnaddBvsumBk1BCARDBclosed_segmentBpath_lengthBtopBpathBt'Bface_ofB	COUNTABLEBs'BsequentiallyBImBspanBoutsideBk2BODDBconicBg1BPREBg2B
componentsBint_leBc3Bc'Bvertex_imageBEVENBPCROSSBrelative_frontierBint_subBlinepathBrelative_interiorBintegerBlocallyBrightcutBextreme_point_ofBsubpathBleftcutB
matrix_mulBlebesgue_measurableBcontentBmaprowsB
GEN%PVAR%1Ba'BsetdistBhas_derivativeBopBhas_integralB
continuousBz'Breal_geBopen_segmentBboxBdimBb'Bcomplex_derivativeBRBmeasurable_onBconnected_componentBclosed_real_intervalBdiameterBflB++Bcomplex_divBsimple_pathBy'Breal_minBcomplex_invBmatrixBmatrix_vector_mulBXBx1Bh'BhomeomorphismBdivision_ofBhas_bounded_variation_onB
eventuallyBx2Bi'Breal_sgnBIBrectifiable_pathBsubspaceBu'BtranspBbopBp1Bcomplex_powBsndcartBp2BpairwiseBEBe2B
orthogonalBe1Bpath_integralB4BatrealBANRBf2B	collinearBfineBpath_connectedBh2Bvector_variationBf1Bh1BGEQBGABSBarcB	dimensionBd1BfstcartB
valid_pathBis_intervalBrationalBsqrtB@B	indicatorBd'BhomeomorphicBp'Bhigher_complex_derivativeBhomotopic_withBmspaceBh''Bd2Btagged_division_ofBmultivectorBhausdistBhomotopic_pathsB<=_cBreal_gtBHAS_SIZEBwinding_numberBgaugeBsdBexpBfsBhas_complex_derivativeBy1BITERBmatBinfBbaireBe'Bhas_vector_derivativeBa1BtopspaceBcomplexBprojBmidpointBff'Bgg'Bt0BindependentBinterval_lowerboundBinterval_upperboundBy2BuvBreal_maxBoptionBaffine_dependentBlimit_point_ofBv'BdifferentiableBreal_continuousBafBhas_real_derivativeBsupBsumsBint_addBfgBint_ltBclosest_pointBddBproductBtagBwsBreversepathBrowsBr'BclogBmdistBrowB=_cBsimplexBINFINITEBrelative_orientationBa2B--->BpolytopeBYB<<B
polyhedronB	shiftpathBr0BeeBvvBhas_measureBdsBkkBu0B
closure_ofBx''BfloorBa3BVBm'B	dest_naddBk'BArgBrpowBint_negBbilinearBtrivial_limitBHBMAPBpath_componentBfromBborelBz0Buniformly_continuous_onBf3BcnjBr1BiterateB
retract_ofBcosBn'BKBffBs2Breal_integrable_onBsinBmuBdifferentiable_onBggBUBmulBFACTBs1BneutralBnetlimitBuuBoutBinsBpath_integrable_onBcomplex_differentiableB	convex_onBx0BsliceBms'B	hreal_addBh3BUNION_OFBpermutesBA'BtriangulationBINTERSECTION_OFBonormBopen_real_intervalBSBvector_derivativeBreal_continuous_onBtagged_partial_division_ofBsummableBhas_real_integralBsimply_connectedB
invertibleBgdeltaBhas_bounded_setvariation_onBv0BkdeB
matrix_invBcovering_spaceBm2Bhas_path_integralB
circlepathBfracB	bernoulliBlogBpositive_semidefiniteBccosBfsigmaBorthogonal_matrixBfrontier_ofBborel_measurable_onBvv'Borthogonal_transformationBpartcirclepathBm1Bu1BFSTBu2Breal_integralBwosetBswapBLENGTHBreal_measurableBcontractibleBmonoidalBsupportBmidBmbBlessBa0Breal_polynomial_functionBmaBusphBucBSNDBqqBfbBcofactorBbinomBabsolutely_continuous_onB<_cBubBD'B
matrix_subBfinite_diffBARBN1BnetordBN2BaddBMEMBb2BbetweenBdistBrankBq'BnsumBd''BDIVBi1B%%BcsinBAPPENDBextendBi2Bj'Bconvex_coneBf''Breal_measureBsurfBB1BALLBdiagonal_matrixBindBB'BB2Bequiintegrable_onBMODBrecspaceBcauchyBhomotopy_equivalentBnadd_of_numBn1BGBnadd_leBordinalBl'Bb1BmballBdimension_leBint_mulBcoBuxBreal_negligibleBr2B?!BtrBxsBttBmsBptBn2BnextBl2Bhomotopic_loopsBvectorBfacet_ofBbox2Breal_of_intBinverseBpositive_definiteBgcB	dependentBhcBreal_boundedBEXTENSIONALBdeBreflect_alongBg''Bvector_polynomial_functionBd'''BkgBhas_real_measureBdivision_pointsBcolumnB	operativeBsndBw'B	real_sumsBWFBv2BaaB
retractionB	mtopologyBnnBnadd_mulBINLBnadd_eqBfinite_imageBtop'Bv1BnproductBgbBt''BPRGBexposed_face_ofBhreal_of_numBrotate2dBrrBINRBmboundedBpiecewise_differentiable_onBl1BswapseqBfstBbrouwer_degree3BENRBis_realintervalBat_infinityBset_variationBreal_differentiableB+_cBNONEBinterior_ofBa''BcproductBrootBtkBadjointBALL2Bg0Bpolynomial_functionBinsegBSOMEB>=_cBz2B	nadd_rinvBhreal_leBMEASUREBpwrB*_cBd0BcompleteBpermutationBreal_measurable_onBanalyticBITSETBanalytic_onBreal_summableBstarlikeBx'''B
GEN%PVAR%2BdropoutBjacobianBatnBfspaceBpatBREVERSEBtraceBinfsumBLBtreal_eqBz1Bint_of_realB
matrix_addBabsolutely_real_integrable_onBcsqrtB>_cBhas_bounded_real_variation_onBELBcanonizeB^_cB
barycentreBsignBgsBacsBliftedB	hreal_mulBreal_lebesgue_measurableBset_of_listBasnBc''BoneBb''Brelative_toBPAIRWISEBderived_set_ofBfunspaceBZBposetB	submetricB?18B?23BlimitBabsolutely_setcontinuous_onBcaBq1BbbBtanBLETBLET_ENDBABCBcbBreal_polynomial_function'BabcB	real_openBPRG'B	cfunspaceBisetBchainBg3B	borsukianBWBsuslinBint_absBcoplanarBITLISTBCROSSBM'Bborel'Breal_convex_onBevenpermB
num_of_intBk0BcpowBpncBBfBmbasisBdlBb0B?17B?22BdrB$$BduvBf4BtwoBlinsegB?25B?21BRESTRICTIONB?24Breal_differentiable_onBB0By0BcasnBFINRECBsrfBiscaleBnadd_addB?30Bh0Beuclidean_metricBcondensation_point_ofB?31By''BctanBfxBq2B_BcacsB?11B
matrix_negB?13BbasBclausesB?20Bm''BtopcontinuousBtreal_leBBgBHDBfnBmcballB?33B?32BfyBlist_of_seqBreal_compactBmoebius_functionBp7BFINITE'BdvBpairBp1'Bv''BduB	cauchy_inBhhBmultBTLBs''B?28Bborel_measurable_on'Bq''B?26B?27B	mcompleteBgnBcsBnet2B?34BcompoB?14BEXBgmBp6Bp8BFILTERB?35Bw1Bp2'B	UNDEFINEDBNUM_REPBp5Bw2BxyBpfnBP'BMAXB
admissibleBy0'Bb3Binterval_bijBfdistBreal_variationB
GEN%PVAR%3BBUTLASTBremB	bernsteinBx0'B
compact_inBp4Bsuslin_operationBat_posinfinityBnet1BG2BbitsetBP2Bmk_numBcatnBnsBabBQ'BG1BtailadmissibleBP1Blog_convex_onB	_dest_recBabc'BunicoherentBProductBbeyondBswapseq'BargBtosetB
seqiterateBpushinBp3B?29B?12B?19BH2Bcomplex_integerBcolumnsBinfnormBouterBmk_naddBsubBreal_log_convex_onBCASEWISEBNNBi''Bclosed_real_segmentBMAP2Bu''BphBq'''Bmk_realBZIPBH1BZCONSTRBccBdest_metricBreal_infsumBgaBdivBeuclideanrealBnum_dividesBLASTBis_metric_spaceBN'Bx''''By'''Bnadd_invBfinite_prodB	ZRECSPACEBint_dividesBreal_closedBsetcodeBsiBfrechet_derivativeB	treal_mulBlaB==BxiBN0Bmk_netBminimalBepigraphBMINBsimplicial_complexBIND_SUCBvuBA1Bint_powBint_modBedge_ofBopen_real_segmentBdimension_le'Btreal_of_numBA2BfaBreal_uniformly_continuous_onBdest_numB_399298B_mk_recBmk_cartBINJNB_399299Bf'''B	dest_realBINJPBc'''B	hreal_invBn3Bfinite_indexBixBc''''B
GEN%PVAR%4BaxBH'BsuperadmissibleBlist_of_setB	dest_cartBis_naddBIND_0Bone_REPB	rowvectorBat_neginfinityBrotoinversion_matrixBynBdkBdgB	treal_addBrotation_matrixBNUMPAIRBcodesetBfpBlambdasBa0'Ba1'B_MATCHBASSOCB_2585909Bint_coprimeB?16B?15B_399296B_399297B_399294B_399295B_399292B_399293BrjBp1''BgzBdb'B_399291BC1BC2BdbBmk_pairBtop1Btop2Bp0Bfundamental_groupBhc'BuwBINJFBkeBgc'BcolumnvectorBmb'BwzBf2'Bf1'BxkBsgBmk_multivectorBp2''BgxBNUMFSTBmkBNUMSNDBi3BftBkdBR'BunB	binarysumBdsaB
GEN%PVAR%5Brj'B_1544Btopcontinuous_atBcharBayBamBtiBFCONSBdiaBdest_multivectorBc2'Breal_euclidean_metricBsfBigBpuBf0BdestBhas_integral_compact_intervalBhtBc1'Bvector_matrix_mulBINJAB
istopologyBbcBbaBp''BABS_prodBs0BtsBDECIMALBdg'BsnBCONSTRBfactBznBpsB_GUARDED_PATTERNBab'BiabBhsBaeBrelBnum_modBREP_prodBikBibBiaBone_ABSBusBlsB_UNGUARDED_PATTERNBl3Bq3BpitBbrouwer_degree2B_2972896BlimBxnBs3BZBOTB_SEQPATTERNBITLIST2Bmk_finite_diffBgradeBvgBghn'BepBuv'BenBviBZ'BrbBraBghnBsf'Bgh0BasBazBacBhnBheBhaBhbBg4BhuBguBgtBmuaBmubBgyBterminates'BNUMSUMBrabBdiB
terminatesBreal_derivativeBbmBciBi0BsoBgeom_mulBisByaB<<<BcpBdest_finite_sumBxgBBOTTOMBgn'BfmBfuBuiBumBNUM_REP'BnubBr''BFnBknBnuaBkpBfvBbxB_2973947BbnBbdBhgnBhn'BctByuB	treal_invBint_gtBmk_finite_prodBgdBmk_finite_sumBdest_finite_imageBlist'Bdest_finite_diffBdest_finite_prodBxxBxuBxmBxaBxbBsmBspB	unwindingB
ZRECSPACE'BISOBjjByyBykBybB	_FUNCTIONBf'xBreal_polynomial_function''Bint_sgnBinnerBint_geBmultivecBoutermorphismBwhateverBint_minB	REPLICATEB	treal_negBwevBf'yBsum'Bin_direction*
dtype0*
_output_shapes	
:и	
S
extractor/Const_4Const*
dtype0	*
_output_shapes
: *
value	B	 R
a
extractor/hash_table_3HashTableV2*
	key_dtype0*
value_dtype0	*
_output_shapes
: 
Щ
.extractor/key_value_init_3/LookupTableImportV2LookupTableImportV2extractor/hash_table_3extractor/keys_3extractor/range_3*

Tout0	*	
Tin0
П
extractor/Const_5Const*N
valueEBC B=/usr/local/google/home/smloos/deephol_tiny_data/thms_ls.train*
dtype0*
_output_shapes
: 
s
 extractor/flat_filenames_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:

extractor/flat_filenames_1Reshapeextractor/Const_5 extractor/flat_filenames_1/shape*
_output_shapes
:*
T0
Ч
extractor/TensorSliceDataset_1TensorSliceDatasetextractor/flat_filenames_1*
_output_shapes
: *
Toutput_types
2*
output_shapes
: 
▐
extractor/FlatMapDataset_1FlatMapDatasetextractor/TensorSliceDataset_1*
output_shapes
: *
output_types
2*8
f3R1
/__inference_Dataset_flat_map_read_one_file_7824*
_output_shapes
: *

Targuments
 
\
extractor/count_1Const*
valueB	 R
         *
dtype0	*
_output_shapes
: 
Я
extractor/RepeatDataset_1RepeatDatasetextractor/FlatMapDataset_1extractor/count_1*
output_shapes
: *
output_types
2*
_output_shapes
: 
Z
extractor/buffer_size_1Const*
value
B	 Rш*
dtype0	*
_output_shapes
: 
R
extractor/seed_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
S
extractor/seed2_1Const*
value	B	 R *
dtype0	*
_output_shapes
: 
╦
extractor/ShuffleDataset_1ShuffleDatasetextractor/RepeatDataset_1extractor/buffer_size_1extractor/seed_1extractor/seed2_1*
output_shapes
: *
output_types
2*
_output_shapes
: 
X
extractor/batch_size_1Const*
value	B	 R*
dtype0	*
_output_shapes
: 
\
extractor/drop_remainder_1Const*
dtype0
*
_output_shapes
: *
value	B
 Z 
╧
extractor/BatchDatasetV2_1BatchDatasetV2extractor/ShuffleDataset_1extractor/batch_size_1extractor/drop_remainder_1*
_output_shapes
: *"
output_shapes
:         *
output_types
2
│
extractor/OneShotIterator_1OneShotIterator*"
output_shapes
:         *
output_types
2*
_output_shapes
: *0
dataset_factoryR
_make_dataset_bAnwcCttt3A
q
"extractor/IteratorToStringHandle_1IteratorToStringHandleextractor/OneShotIterator_1*
_output_shapes
: 
л
extractor/IteratorGetNext_1IteratorGetNextextractor/OneShotIterator_1*"
output_shapes
:         *
output_types
2*#
_output_shapes
:         
h
extractor/ones/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
V
extractor/ones/ConstConst*
_output_shapes
: *
value	B :*
dtype0
q
extractor/onesFillextractor/ones/shape_as_tensorextractor/ones/Const*
T0*
_output_shapes
:
i
extractor/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:
W
extractor/zeros/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
t
extractor/zerosFillextractor/zeros/shape_as_tensorextractor/zeros/Const*
_output_shapes
:*
T0
W
extractor/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
В
extractor/concatConcatV2extractor/onesextractor/zerosextractor/concat/axis*
_output_shapes
:*
T0*
N
b
extractor/Tile/multiplesConst*
valueB:*
dtype0*
_output_shapes
:
m
extractor/TileTilePlaceholder_3extractor/Tile/multiples*#
_output_shapes
:         *
T0	
]
extractor/ones_1Const*
valueB*  А?*
dtype0*
_output_shapes
:
b
extractor/transpose/permConst*
valueB: *
dtype0*
_output_shapes
:
w
extractor/transpose	TransposePlaceholder_2extractor/transpose/perm*#
_output_shapes
:         *
T0
j
extractor/Reshape/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x
extractor/ReshapeReshapeextractor/transposeextractor/Reshape/shape*#
_output_shapes
:         *
T0
T
extractor/map/ShapeShapeextractor/Reshape*
_output_shapes
:*
T0
k
!extractor/map/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#extractor/map/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
m
#extractor/map/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
є
extractor/map/strided_sliceStridedSliceextractor/map/Shape!extractor/map/strided_slice/stack#extractor/map/strided_slice/stack_1#extractor/map/strided_slice/stack_2*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0
Т
extractor/map/TensorArrayTensorArrayV3extractor/map/strided_slice*
dtype0*
_output_shapes

:: *
identical_element_shapes(
Ф
extractor/map/TensorArray_1TensorArrayV3extractor/map/strided_slice*
identical_element_shapes(*
dtype0*
_output_shapes

:: 
g
&extractor/map/TensorArrayUnstack/ShapeShapeextractor/Reshape*
_output_shapes
:*
T0
~
4extractor/map/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6extractor/map/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
А
6extractor/map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╥
.extractor/map/TensorArrayUnstack/strided_sliceStridedSlice&extractor/map/TensorArrayUnstack/Shape4extractor/map/TensorArrayUnstack/strided_slice/stack6extractor/map/TensorArrayUnstack/strided_slice/stack_16extractor/map/TensorArrayUnstack/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
n
,extractor/map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
n
,extractor/map/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
р
&extractor/map/TensorArrayUnstack/rangeRange,extractor/map/TensorArrayUnstack/range/start.extractor/map/TensorArrayUnstack/strided_slice,extractor/map/TensorArrayUnstack/range/delta*#
_output_shapes
:         
Ъ
Hextractor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3extractor/map/TensorArray&extractor/map/TensorArrayUnstack/rangeextractor/Reshapeextractor/map/TensorArray:1*$
_class
loc:@extractor/Reshape*
_output_shapes
: *
T0
q
(extractor/map/TensorArrayUnstack_1/ShapeShapeextractor/IteratorGetNext*
T0*
_output_shapes
:
А
6extractor/map/TensorArrayUnstack_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
В
8extractor/map/TensorArrayUnstack_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
В
8extractor/map/TensorArrayUnstack_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
▄
0extractor/map/TensorArrayUnstack_1/strided_sliceStridedSlice(extractor/map/TensorArrayUnstack_1/Shape6extractor/map/TensorArrayUnstack_1/strided_slice/stack8extractor/map/TensorArrayUnstack_1/strided_slice/stack_18extractor/map/TensorArrayUnstack_1/strided_slice/stack_2*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0
p
.extractor/map/TensorArrayUnstack_1/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
p
.extractor/map/TensorArrayUnstack_1/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ш
(extractor/map/TensorArrayUnstack_1/rangeRange.extractor/map/TensorArrayUnstack_1/range/start0extractor/map/TensorArrayUnstack_1/strided_slice.extractor/map/TensorArrayUnstack_1/range/delta*#
_output_shapes
:         
▓
Jextractor/map/TensorArrayUnstack_1/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3extractor/map/TensorArray_1(extractor/map/TensorArrayUnstack_1/rangeextractor/IteratorGetNextextractor/map/TensorArray_1:1*,
_class"
 loc:@extractor/IteratorGetNext*
_output_shapes
: *
T0
U
extractor/map/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
Ф
extractor/map/TensorArray_2TensorArrayV3extractor/map/strided_slice*
_output_shapes

:: *
identical_element_shapes(*
dtype0
g
%extractor/map/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
Э
extractor/map/while/EnterEnter%extractor/map/while/iteration_counter*1

frame_name#!extractor/map/while/while_context*
_output_shapes
: *
T0
Н
extractor/map/while/Enter_1Enterextractor/map/Const*
T0*1

frame_name#!extractor/map/while/while_context*
_output_shapes
: 
Ч
extractor/map/while/Enter_2Enterextractor/map/TensorArray_2:1*
T0*1

frame_name#!extractor/map/while/while_context*
_output_shapes
: 
М
extractor/map/while/MergeMergeextractor/map/while/Enter!extractor/map/while/NextIteration*
T0*
N*
_output_shapes
: : 
Т
extractor/map/while/Merge_1Mergeextractor/map/while/Enter_1#extractor/map/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
Т
extractor/map/while/Merge_2Mergeextractor/map/while/Enter_2#extractor/map/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
|
extractor/map/while/LessLessextractor/map/while/Mergeextractor/map/while/Less/Enter*
_output_shapes
: *
T0
л
extractor/map/while/Less/EnterEnterextractor/map/strided_slice*
T0*1

frame_name#!extractor/map/while/while_context*
_output_shapes
: *
is_constant(
А
extractor/map/while/Less_1Lessextractor/map/while/Merge_1extractor/map/while/Less/Enter*
_output_shapes
: *
T0
z
extractor/map/while/LogicalAnd
LogicalAndextractor/map/while/Lessextractor/map/while/Less_1*
_output_shapes
: 
`
extractor/map/while/LoopCondLoopCondextractor/map/while/LogicalAnd*
_output_shapes
: 
о
extractor/map/while/SwitchSwitchextractor/map/while/Mergeextractor/map/while/LoopCond*
_output_shapes
: : *
T0*,
_class"
 loc:@extractor/map/while/Merge
┤
extractor/map/while/Switch_1Switchextractor/map/while/Merge_1extractor/map/while/LoopCond*
T0*.
_class$
" loc:@extractor/map/while/Merge_1*
_output_shapes
: : 
┤
extractor/map/while/Switch_2Switchextractor/map/while/Merge_2extractor/map/while/LoopCond*.
_class$
" loc:@extractor/map/while/Merge_2*
_output_shapes
: : *
T0
g
extractor/map/while/IdentityIdentityextractor/map/while/Switch:1*
_output_shapes
: *
T0
k
extractor/map/while/Identity_1Identityextractor/map/while/Switch_1:1*
T0*
_output_shapes
: 
k
extractor/map/while/Identity_2Identityextractor/map/while/Switch_2:1*
_output_shapes
: *
T0
z
extractor/map/while/add/yConst^extractor/map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
x
extractor/map/while/addAddextractor/map/while/Identityextractor/map/while/add/y*
_output_shapes
: *
T0
█
%extractor/map/while/TensorArrayReadV3TensorArrayReadV3+extractor/map/while/TensorArrayReadV3/Enterextractor/map/while/Identity_1-extractor/map/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
: 
║
+extractor/map/while/TensorArrayReadV3/EnterEnterextractor/map/TensorArray*
T0*1

frame_name#!extractor/map/while/while_context*
_output_shapes
:*
is_constant(
ч
-extractor/map/while/TensorArrayReadV3/Enter_1EnterHextractor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*1

frame_name#!extractor/map/while/while_context*
_output_shapes
: *
is_constant(*
T0
с
'extractor/map/while/TensorArrayReadV3_1TensorArrayReadV3-extractor/map/while/TensorArrayReadV3_1/Enterextractor/map/while/Identity_1/extractor/map/while/TensorArrayReadV3_1/Enter_1*
dtype0*
_output_shapes
: 
╛
-extractor/map/while/TensorArrayReadV3_1/EnterEnterextractor/map/TensorArray_1*
_output_shapes
:*
is_constant(*
T0*1

frame_name#!extractor/map/while/while_context
ы
/extractor/map/while/TensorArrayReadV3_1/Enter_1EnterJextractor/map/TensorArrayUnstack_1/TensorArrayScatter/TensorArrayScatterV3*1

frame_name#!extractor/map/while/while_context*
_output_shapes
: *
is_constant(*
T0

extractor/map/while/ConstConst^extractor/map/while/Identity*
valueB B<NULL>*
dtype0*
_output_shapes
: 
Е
extractor/map/while/EqualEqual%extractor/map/while/TensorArrayReadV3extractor/map/while/Const*
_output_shapes
: *
T0
В
extractor/map/while/cond/SwitchSwitchextractor/map/while/Equalextractor/map/while/Equal*
_output_shapes
: : *
T0

q
!extractor/map/while/cond/switch_tIdentity!extractor/map/while/cond/Switch:1*
T0
*
_output_shapes
: 
o
!extractor/map/while/cond/switch_fIdentityextractor/map/while/cond/Switch*
_output_shapes
: *
T0

h
 extractor/map/while/cond/pred_idIdentityextractor/map/while/Equal*
_output_shapes
: *
T0

╒
!extractor/map/while/cond/Switch_1Switch'extractor/map/while/TensorArrayReadV3_1 extractor/map/while/cond/pred_id*
T0*:
_class0
.,loc:@extractor/map/while/TensorArrayReadV3_1*
_output_shapes
: : 
╤
!extractor/map/while/cond/Switch_2Switch%extractor/map/while/TensorArrayReadV3 extractor/map/while/cond/pred_id*
T0*8
_class.
,*loc:@extractor/map/while/TensorArrayReadV3*
_output_shapes
: : 
Ы
extractor/map/while/cond/MergeMerge!extractor/map/while/cond/Switch_2#extractor/map/while/cond/Switch_1:1*
T0*
N*
_output_shapes
: : 
└
7extractor/map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3=extractor/map/while/TensorArrayWrite/TensorArrayWriteV3/Enterextractor/map/while/Identity_1extractor/map/while/cond/Mergeextractor/map/while/Identity_2*
_output_shapes
: *
T0*1
_class'
%#loc:@extractor/map/while/cond/Merge
Б
=extractor/map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterextractor/map/TensorArray_2*1
_class'
%#loc:@extractor/map/while/cond/Merge*1

frame_name#!extractor/map/while/while_context*
is_constant(*
_output_shapes
:*
T0
|
extractor/map/while/add_1/yConst^extractor/map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
~
extractor/map/while/add_1Addextractor/map/while/Identity_1extractor/map/while/add_1/y*
_output_shapes
: *
T0
l
!extractor/map/while/NextIterationNextIterationextractor/map/while/add*
T0*
_output_shapes
: 
p
#extractor/map/while/NextIteration_1NextIterationextractor/map/while/add_1*
T0*
_output_shapes
: 
О
#extractor/map/while/NextIteration_2NextIteration7extractor/map/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
]
extractor/map/while/ExitExitextractor/map/while/Switch*
_output_shapes
: *
T0
a
extractor/map/while/Exit_1Exitextractor/map/while/Switch_1*
_output_shapes
: *
T0
a
extractor/map/while/Exit_2Exitextractor/map/while/Switch_2*
T0*
_output_shapes
: 
╞
0extractor/map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3extractor/map/TensorArray_2extractor/map/while/Exit_2*.
_class$
" loc:@extractor/map/TensorArray_2*
_output_shapes
: 
Ь
*extractor/map/TensorArrayStack/range/startConst*
value	B : *.
_class$
" loc:@extractor/map/TensorArray_2*
dtype0*
_output_shapes
: 
Ь
*extractor/map/TensorArrayStack/range/deltaConst*
_output_shapes
: *
value	B :*.
_class$
" loc:@extractor/map/TensorArray_2*
dtype0
М
$extractor/map/TensorArrayStack/rangeRange*extractor/map/TensorArrayStack/range/start0extractor/map/TensorArrayStack/TensorArraySizeV3*extractor/map/TensorArrayStack/range/delta*.
_class$
" loc:@extractor/map/TensorArray_2*#
_output_shapes
:         
Я
2extractor/map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3extractor/map/TensorArray_2$extractor/map/TensorArrayStack/rangeextractor/map/while/Exit_2*
element_shape: *.
_class$
" loc:@extractor/map/TensorArray_2*
dtype0*#
_output_shapes
:         
Y
extractor/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▒
extractor/concat_1ConcatV2Placeholder_12extractor/map/TensorArrayStack/TensorArrayGatherV3extractor/concat_1/axis*#
_output_shapes
:         *
T0*
N
V
extractor/StringStripStringStripPlaceholder*#
_output_shapes
:         
f
extractor/StringJoin/inputs_0Const*
valueB B<START> *
dtype0*
_output_shapes
: 
d
extractor/StringJoin/inputs_2Const*
dtype0*
_output_shapes
: *
valueB B <END>
е
extractor/StringJoin
StringJoinextractor/StringJoin/inputs_0extractor/StringStripextractor/StringJoin/inputs_2*
N*#
_output_shapes
:         
О
extractor/StaticRegexReplaceStaticRegexReplaceextractor/StringJoin*
rewrite *
pattern\(*#
_output_shapes
:         
Ш
extractor/StaticRegexReplace_1StaticRegexReplaceextractor/StaticRegexReplace*
rewrite *
pattern\)*#
_output_shapes
:         
\
extractor/StringSplit/ConstConst*
_output_shapes
: *
valueB B *
dtype0
п
#extractor/StringSplit/StringSplitV2StringSplitV2extractor/StaticRegexReplace_1extractor/StringSplit/Const*<
_output_shapes*
(:         :         :
w
extractor/Shape/CastCast%extractor/StringSplit/StringSplitV2:2*
_output_shapes
:*

SrcT0	*

DstT0
g
extractor/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
i
extractor/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
i
extractor/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ф
extractor/strided_sliceStridedSliceextractor/Shape/Castextractor/strided_slice/stackextractor/strided_slice/stack_1extractor/strided_slice/stack_2*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0
j
extractor/Const_6Const*%
valueB	"                *
dtype0	*
_output_shapes
:
_
extractor/CastCastextractor/strided_slice*

SrcT0*

DstT0	*
_output_shapes
: 
U
extractor/packed/1Const*
value
B	 Rш*
dtype0	*
_output_shapes
: 
j
extractor/packedPackextractor/Castextractor/packed/1*
_output_shapes
:*
T0	*
N
Г
extractor/SparseSliceSparseSlice#extractor/StringSplit/StringSplitV2%extractor/StringSplit/StringSplitV2:1%extractor/StringSplit/StringSplitV2:2extractor/Const_6extractor/packed*<
_output_shapes*
(:         :         :*
T0
╛
-extractor/hash_table_Lookup/LookupTableFindV2LookupTableFindV2extractor/hash_tableextractor/SparseSlice:1extractor/Const*

Tout0	*#
_output_shapes
:         *	
Tin0
Е
extractor/ToInt32Cast-extractor/hash_table_Lookup/LookupTableFindV2*

DstT0*#
_output_shapes
:         *

SrcT0	
g
%extractor/SparseToDense/default_valueConst*
_output_shapes
: *
value	B : *
dtype0
▌
extractor/SparseToDenseSparseToDenseextractor/SparseSliceextractor/SparseSlice:2extractor/ToInt32%extractor/SparseToDense/default_value*
T0*
Tindices0	*0
_output_shapes
:                  
_
extractor/StringStrip_1StringStripextractor/concat_1*#
_output_shapes
:         
h
extractor/StringJoin_1/inputs_0Const*
valueB B<START> *
dtype0*
_output_shapes
: 
f
extractor/StringJoin_1/inputs_2Const*
valueB B <END>*
dtype0*
_output_shapes
: 
н
extractor/StringJoin_1
StringJoinextractor/StringJoin_1/inputs_0extractor/StringStrip_1extractor/StringJoin_1/inputs_2*#
_output_shapes
:         *
N
Т
extractor/StaticRegexReplace_2StaticRegexReplaceextractor/StringJoin_1*
rewrite *
pattern\(*#
_output_shapes
:         
Ъ
extractor/StaticRegexReplace_3StaticRegexReplaceextractor/StaticRegexReplace_2*
rewrite *
pattern\)*#
_output_shapes
:         
^
extractor/StringSplit_1/ConstConst*
_output_shapes
: *
valueB B *
dtype0
│
%extractor/StringSplit_1/StringSplitV2StringSplitV2extractor/StaticRegexReplace_3extractor/StringSplit_1/Const*<
_output_shapes*
(:         :         :
{
extractor/Shape_1/CastCast'extractor/StringSplit_1/StringSplitV2:2*

DstT0*
_output_shapes
:*

SrcT0	
i
extractor/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
k
!extractor/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!extractor/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
ю
extractor/strided_slice_1StridedSliceextractor/Shape_1/Castextractor/strided_slice_1/stack!extractor/strided_slice_1/stack_1!extractor/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
j
extractor/Const_7Const*
_output_shapes
:*%
valueB	"                *
dtype0	
c
extractor/Cast_1Castextractor/strided_slice_1*

SrcT0*

DstT0	*
_output_shapes
: 
W
extractor/packed_1/1Const*
value
B	 Rш*
dtype0	*
_output_shapes
: 
p
extractor/packed_1Packextractor/Cast_1extractor/packed_1/1*
_output_shapes
:*
T0	*
N
Н
extractor/SparseSlice_1SparseSlice%extractor/StringSplit_1/StringSplitV2'extractor/StringSplit_1/StringSplitV2:1'extractor/StringSplit_1/StringSplitV2:2extractor/Const_7extractor/packed_1*
T0*<
_output_shapes*
(:         :         :
╞
/extractor/hash_table_1_Lookup/LookupTableFindV2LookupTableFindV2extractor/hash_table_1extractor/SparseSlice_1:1extractor/Const_1*#
_output_shapes
:         *	
Tin0*

Tout0	
Й
extractor/ToInt32_1Cast/extractor/hash_table_1_Lookup/LookupTableFindV2*#
_output_shapes
:         *

SrcT0	*

DstT0
i
'extractor/SparseToDense_1/default_valueConst*
value	B : *
dtype0*
_output_shapes
: 
ч
extractor/SparseToDense_1SparseToDenseextractor/SparseSlice_1extractor/SparseSlice_1:2extractor/ToInt32_1'extractor/SparseToDense_1/default_value*
T0*
Tindices0	*0
_output_shapes
:                  
э
Tencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/shapeConst*
valueB"и     *F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
dtype0*
_output_shapes
:
▀
Rencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *┤С╜*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
dtype0
▀
Rencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/maxConst*
valueB
 *┤С=*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
dtype0*
_output_shapes
: 
┬
\encoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/RandomUniformRandomUniformTencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/shape*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
dtype0*
_output_shapes
:	и	
ъ
Rencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/subSubRencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/maxRencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/min*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
_output_shapes
: 
¤
Rencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/mulMul\encoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/RandomUniformRencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/sub*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
_output_shapes
:	и	*
T0
я
Nencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniformAddRencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/mulRencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform/min*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
_output_shapes
:	и	
═
3encoder/dilated_cnn_pairwise_encoder/goal_embedding
VariableV2*
shape:	и	*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
dtype0*
_output_shapes
:	и	
╗
:encoder/dilated_cnn_pairwise_encoder/goal_embedding/AssignAssign3encoder/dilated_cnn_pairwise_encoder/goal_embeddingNencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform*
_output_shapes
:	и	*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding
ы
8encoder/dilated_cnn_pairwise_encoder/goal_embedding/readIdentity3encoder/dilated_cnn_pairwise_encoder/goal_embedding*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
_output_shapes
:	и	*
T0
ы
Sencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/shapeConst*
valueB"и     *E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
dtype0*
_output_shapes
:
▌
Qencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/minConst*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
dtype0*
_output_shapes
: *
valueB
 *┤С╜
▌
Qencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/maxConst*
valueB
 *┤С=*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
dtype0*
_output_shapes
: 
┐
[encoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/RandomUniformRandomUniformSencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/shape*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
dtype0*
_output_shapes
:	и	*
T0
ц
Qencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/subSubQencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/maxQencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/min*
T0*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
_output_shapes
: 
∙
Qencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/mulMul[encoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/RandomUniformQencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/sub*
_output_shapes
:	и	*
T0*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding
ы
Mencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniformAddQencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/mulQencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform/min*
T0*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
_output_shapes
:	и	
╦
2encoder/dilated_cnn_pairwise_encoder/thm_embedding
VariableV2*
shape:	и	*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
dtype0*
_output_shapes
:	и	
╖
9encoder/dilated_cnn_pairwise_encoder/thm_embedding/AssignAssign2encoder/dilated_cnn_pairwise_encoder/thm_embeddingMencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform*
_output_shapes
:	и	*
T0*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding
ш
7encoder/dilated_cnn_pairwise_encoder/thm_embedding/readIdentity2encoder/dilated_cnn_pairwise_encoder/thm_embedding*
T0*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
_output_shapes
:	и	
─
:encoder/dilated_cnn_pairwise_encoder/embedding_lookup/axisConst*
value	B : *F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
dtype0*
_output_shapes
: 
·
5encoder/dilated_cnn_pairwise_encoder/embedding_lookupGatherV28encoder/dilated_cnn_pairwise_encoder/goal_embedding/readextractor/SparseToDense:encoder/dilated_cnn_pairwise_encoder/embedding_lookup/axis*
Taxis0*
Tparams0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
Tindices0*4
_output_shapes"
 :                  
└
>encoder/dilated_cnn_pairwise_encoder/embedding_lookup/IdentityIdentity5encoder/dilated_cnn_pairwise_encoder/embedding_lookup*4
_output_shapes"
 :                  *
T0
н
?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/ShapeShape>encoder/dilated_cnn_pairwise_encoder/embedding_lookup/Identity*
_output_shapes
:*
T0
Ч
Mencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
Щ
Oencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Щ
Oencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╧
Gencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_sliceStridedSlice?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/ShapeMencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice/stackOencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice/stack_1Oencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice/stack_2*
T0*
_output_shapes
: *
Index0*
shrink_axis_mask
П
Dencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/floordiv/yConst*
dtype0*
_output_shapes
: *
valueB :
№        
■
Bencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/floordivFloorDivGencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_sliceDencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/floordiv/y*
_output_shapes
: *
T0
К
?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/mul/yConst*
valueB :
№        *
dtype0*
_output_shapes
: 
ъ
=encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/mulMulBencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/floordiv?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/mul/y*
T0*
_output_shapes
: 
А
>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/axisConst*
value	B :*
dtype0*
_output_shapes
: 
п
Aencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/Shape_1Shape>encoder/dilated_cnn_pairwise_encoder/embedding_lookup/Identity*
T0*
_output_shapes
:
Б
?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/add/yConst*
value	B :*
dtype0*
_output_shapes
: 
ц
=encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/addAdd>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/axis?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/add/y*
T0*
_output_shapes
: 
┼
Oencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1/stackPack>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/axis*
T0*
N*
_output_shapes
:
╞
Qencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1/stack_1Pack=encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/add*
T0*
N*
_output_shapes
:
Ы
Qencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┘
Iencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1StridedSliceAencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/Shape_1Oencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1/stackQencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1/stack_1Qencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
я
=encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/subSub=encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/mulIencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/strided_slice_1*
_output_shapes
: *
T0
ж
>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/ReluRelu=encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/sub*
T0*
_output_shapes
: 
Г
Aencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack/1Const*
value	B :*
dtype0*
_output_shapes
: 
°
?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stackPack>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/axisAencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack/1*
T0*
N*
_output_shapes
:
╝
Aencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack_1Pack?encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack*
T0*
N*
_output_shapes

:
А
>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/RankConst*
_output_shapes
: *
value	B :*
dtype0
Е
Cencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack_2/1Const*
dtype0*
_output_shapes
: *
value	B :
№
Aencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack_2Pack>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/RankCencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack_2/1*
_output_shapes
:*
T0*
N
Ч
Uencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/SparseToDense/default_valueConst*
_output_shapes
: *
value	B : *
dtype0
о
Gencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/SparseToDenseSparseToDenseAencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack_1Aencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/stack_2>encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/ReluUencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/SparseToDense/default_value*
Tindices0*
_output_shapes

:*
T0
И
9encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiplePad>encoder/dilated_cnn_pairwise_encoder/embedding_lookup/IdentityGencoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple/SparseToDense*4
_output_shapes"
 :                  *
T0
z
8encoder/dilated_cnn_pairwise_encoder/goal/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
·
4encoder/dilated_cnn_pairwise_encoder/goal/ExpandDims
ExpandDims9encoder/dilated_cnn_pairwise_encoder/goal/pad_to_multiple8encoder/dilated_cnn_pairwise_encoder/goal/ExpandDims/dim*8
_output_shapes&
$:"                  *
T0
б
=encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/ShapeShape4encoder/dilated_cnn_pairwise_encoder/goal/ExpandDims*
T0*
_output_shapes
:
п
Kencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/ShapeShape4encoder/dilated_cnn_pairwise_encoder/goal/ExpandDims*
T0*
_output_shapes
:
г
Yencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
е
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
е
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Л
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_sliceStridedSliceKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/ShapeYencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice/stack[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice/stack_1[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
е
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1StridedSliceKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Shape[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1/stack]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1/stack_1]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
Т
Pencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/floordiv/yConst*
value	B :*
dtype0*
_output_shapes
: 
д
Nencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/floordivFloorDivUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_1Pencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/floordiv/y*
_output_shapes
: *
T0
е
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2/stackConst*
_output_shapes
:*
valueB:*
dtype0
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2StridedSliceKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Shape[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2/stack]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2/stack_1]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
Н
Kencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/mul/xConst*
dtype0*
_output_shapes
: *
value	B :
Х
Iencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/mulMulKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/mul/xUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_2*
_output_shapes
: *
T0
Ч
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Reshape/shape/3Const*
dtype0*
_output_shapes
: *
value	B :
╨
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Reshape/shapePackSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_sliceNencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/floordivIencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/mulUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Reshape/shape/3*
_output_shapes
:*
T0*
N
п
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/ReshapeReshape4encoder/dilated_cnn_pairwise_encoder/goal/ExpandDimsSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Reshape/shape*
T0*A
_output_shapes/
-:+                           
│
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/shapeConst*%
valueB"            *e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*
dtype0*
_output_shapes
:
Э
qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *ь╤╛*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*
dtype0
Э
qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/maxConst*
valueB
 *ь╤>*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*
dtype0*
_output_shapes
: 
ж
{encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/RandomUniformRandomUniformsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/shape*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*
dtype0*&
_output_shapes
:*
T0
ц
qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/subSubqencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/maxqencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/min*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*
_output_shapes
: 
А
qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/mulMul{encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/RandomUniformqencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights
Є
mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniformAddqencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/mulqencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/min*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*&
_output_shapes
:
Щ
Rencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights
VariableV2*
shape:*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*
dtype0*&
_output_shapes
:
╛
Yencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/AssignAssignRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weightsmencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*&
_output_shapes
:*
T0
╧
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/readIdentityRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights*&
_output_shapes
:*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights
Ц
cencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/Initializer/zerosConst*
valueB*    *d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases*
dtype0*
_output_shapes
:
 
Qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases
VariableV2*
_output_shapes
:*
shape:*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases*
dtype0
е
Xencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/AssignAssignQencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biasescencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases*
_output_shapes
:*
T0
└
Vencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/readIdentityQencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases*
_output_shapes
:*
T0*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases
й
Xencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ў
Qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/Conv2DConv2DMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/ReshapeWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/read*
paddingSAME*A
_output_shapes/
-:+                           *
strides
*
T0
╘
Rencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/BiasAddBiasAddQencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/Conv2DVencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/read*A
_output_shapes/
-:+                           *
T0
┤
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*%
valueB"                
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3/stack_1Const*%
valueB"               *
dtype0*
_output_shapes
:
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3/stack_2Const*
dtype0*
_output_shapes
:*%
valueB"            
╧
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3StridedSliceRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/BiasAdd[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3/stack]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3/stack_1]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3/stack_2*

begin_mask*A
_output_shapes/
-:+                           *
Index0*
T0*
end_mask
ї
Jencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/TanhTanhUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_3*A
_output_shapes/
-:+                           *
T0
┤
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4/stackConst*
_output_shapes
:*%
valueB"               *
dtype0
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
╧
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4StridedSliceRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/BiasAdd[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4/stack]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4/stack_1]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4/stack_2*

begin_mask*A
_output_shapes/
-:+                           *
Index0*
T0*
end_mask
√
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/SigmoidSigmoidUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/strided_slice_4*
T0*A
_output_shapes/
-:+                           
╣
Kencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/mul_1MulJencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/TanhMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Sigmoid*A
_output_shapes/
-:+                           *
T0
╕
Iencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/addAddKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/mul_1Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Reshape*A
_output_shapes/
-:+                           *
T0
╞
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/ShapeShapeIencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/add*
T0*
_output_shapes
:
е
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Х
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_sliceStridedSliceMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Shape[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice/stack]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice/stack_1]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice/stack_2*
T0*
_output_shapes
: *
Index0*
shrink_axis_mask
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1StridedSliceMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Shape]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
Ф
Rencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/floordiv/yConst*
value	B :*
dtype0*
_output_shapes
: 
к
Pencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/floordivFloorDivWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_1Rencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/floordiv/y*
_output_shapes
: *
T0
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2/stackConst*
_output_shapes
:*
valueB:*
dtype0
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2StridedSliceMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Shape]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2/stack_2*
shrink_axis_mask*
T0*
_output_shapes
: *
Index0
П
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
Kencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/mulMulMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/mul/xWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_2*
T0*
_output_shapes
: 
Щ
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
┌
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Reshape/shapePackUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slicePencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/floordivKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/mulWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Reshape/shape/3*
_output_shapes
:*
T0*
N
╚
Oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/ReshapeReshapeIencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/addUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Reshape/shape*A
_output_shapes/
-:+                           *
T0
╖
uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/shapeConst*%
valueB"            *g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*
_output_shapes
:
б
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/minConst*
valueB
 *ь╤╛*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*
_output_shapes
: 
б
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/maxConst*
valueB
 *ь╤>*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*
_output_shapes
: 
м
}encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/RandomUniformRandomUniformuencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/shape*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*&
_output_shapes
:
ю
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/subSubsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/maxsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/min*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*
_output_shapes
: *
T0
И
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/mulMul}encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/RandomUniformsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/sub*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*&
_output_shapes
:*
T0
·
oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniformAddsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/mulsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/min*&
_output_shapes
:*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights
Э
Tencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights
VariableV2*&
_output_shapes
:*
shape:*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0
╞
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/AssignAssignTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weightsoencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform*&
_output_shapes
:*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights
╒
Yencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/readIdentityTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*&
_output_shapes
:*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights
Ъ
eencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zerosConst*
valueB*    *f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases*
dtype0*
_output_shapes
:
Г
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases
VariableV2*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases*
dtype0*
_output_shapes
:*
shape:
н
Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/AssignAssignSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biaseseencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases*
_output_shapes
:
╞
Xencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/readIdentitySencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases*
_output_shapes
:*
T0
л
Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¤
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/Conv2DConv2DOencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/ReshapeYencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/read*A
_output_shapes/
-:+                           *
strides
*
T0*
paddingSAME
┌
Tencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/BiasAddBiasAddSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/Conv2DXencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/read*A
_output_shapes/
-:+                           *
T0
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*%
valueB"                
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3/stack_1Const*%
valueB"               *
dtype0*
_output_shapes
:
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
┘
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3StridedSliceTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/BiasAdd]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3/stack_2*
Index0*
T0*
end_mask*

begin_mask*A
_output_shapes/
-:+                           
∙
Lencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/TanhTanhWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_3*A
_output_shapes/
-:+                           *
T0
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4/stackConst*
_output_shapes
:*%
valueB"               *
dtype0
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4/stack_2Const*
dtype0*
_output_shapes
:*%
valueB"            
┘
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4StridedSliceTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/BiasAdd]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4/stack_2*A
_output_shapes/
-:+                           *

begin_mask*
Index0*
T0*
end_mask
 
Oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/SigmoidSigmoidWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/strided_slice_4*A
_output_shapes/
-:+                           *
T0
┐
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/mul_1MulLencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/TanhOencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Sigmoid*A
_output_shapes/
-:+                           *
T0
╛
Kencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/addAddMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/mul_1Oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Reshape*
T0*A
_output_shapes/
-:+                           
╚
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/ShapeShapeKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/add*
T0*
_output_shapes
:
е
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Х
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_sliceStridedSliceMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Shape[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice/stack]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice/stack_1]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
Э
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1StridedSliceMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Shape]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1/stack_2*
T0*
_output_shapes
: *
Index0*
shrink_axis_mask
Ф
Rencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/floordiv/yConst*
value	B :*
dtype0*
_output_shapes
: 
к
Pencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/floordivFloorDivWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_1Rencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/floordiv/y*
_output_shapes
: *
T0
з
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
й
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2StridedSliceMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Shape]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
П
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/mul/xConst*
dtype0*
_output_shapes
: *
value	B :
Ы
Kencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/mulMulMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/mul/xWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_2*
_output_shapes
: *
T0
Щ
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Reshape/shape/3Const*
_output_shapes
: *
value	B :*
dtype0
┌
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Reshape/shapePackUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slicePencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/floordivKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/mulWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Reshape/shape/3*
T0*
N*
_output_shapes
:
╩
Oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/ReshapeReshapeKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/addUencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Reshape/shape*
T0*A
_output_shapes/
-:+                           
╖
uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/shapeConst*%
valueB"            *g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*
_output_shapes
:
б
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/minConst*
valueB
 *ь╤╛*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*
_output_shapes
: 
б
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/maxConst*
valueB
 *ь╤>*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*
_output_shapes
: 
м
}encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/RandomUniformRandomUniformuencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/shape*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*&
_output_shapes
:*
T0
ю
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/subSubsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/maxsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights
И
sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/mulMul}encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/RandomUniformsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights
·
oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniformAddsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/mulsencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/min*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*&
_output_shapes
:*
T0
Э
Tencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights
VariableV2*
shape:*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*&
_output_shapes
:
╞
[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/AssignAssignTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weightsoencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*&
_output_shapes
:*
T0
╒
Yencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/readIdentityTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights*&
_output_shapes
:
Ъ
eencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zerosConst*
valueB*    *f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases*
dtype0*
_output_shapes
:
Г
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases
VariableV2*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases*
dtype0*
_output_shapes
:*
shape:
н
Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/AssignAssignSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biaseseencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases*
_output_shapes
:*
T0
╞
Xencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/readIdentitySencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases*
_output_shapes
:
л
Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
¤
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/Conv2DConv2DOencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/ReshapeYencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/read*
strides
*
T0*
paddingSAME*A
_output_shapes/
-:+                           
┌
Tencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/BiasAddBiasAddSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/Conv2DXencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/read*A
_output_shapes/
-:+                           *
T0
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*%
valueB"               
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
┘
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3StridedSliceTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/BiasAdd]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3/stack_2*
Index0*
T0*
end_mask*

begin_mask*A
_output_shapes/
-:+                           
∙
Lencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/TanhTanhWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_3*
T0*A
_output_shapes/
-:+                           
╢
]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4/stackConst*
dtype0*
_output_shapes
:*%
valueB"               
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
╕
_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
┘
Wencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4StridedSliceTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/BiasAdd]encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4/stack_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4/stack_1_encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4/stack_2*A
_output_shapes/
-:+                           *

begin_mask*
Index0*
T0*
end_mask
 
Oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/SigmoidSigmoidWencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/strided_slice_4*A
_output_shapes/
-:+                           *
T0
┐
Mencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/mul_1MulLencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/TanhOencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Sigmoid*A
_output_shapes/
-:+                           *
T0
╛
Kencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/addAddMencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/mul_1Oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Reshape*A
_output_shapes/
-:+                           *
T0
Щ
?encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/ReshapeReshapeKencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/add=encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/Shape*8
_output_shapes&
$:"                  *
T0
t
/encoder/dilated_cnn_pairwise_encoder/goal/mul/xConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
щ
-encoder/dilated_cnn_pairwise_encoder/goal/mulMul/encoder/dilated_cnn_pairwise_encoder/goal/mul/x?encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/Reshape*8
_output_shapes&
$:"                  *
T0
▄
-encoder/dilated_cnn_pairwise_encoder/goal/addAdd-encoder/dilated_cnn_pairwise_encoder/goal/mul4encoder/dilated_cnn_pairwise_encoder/goal/ExpandDims*
T0*8
_output_shapes&
$:"                  
Л
:encoder/dilated_cnn_pairwise_encoder/Max/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB"      
╠
(encoder/dilated_cnn_pairwise_encoder/MaxMax-encoder/dilated_cnn_pairwise_encoder/goal/add:encoder/dilated_cnn_pairwise_encoder/Max/reduction_indices*
T0*'
_output_shapes
:         
Д
3encoder/dilated_cnn_pairwise_encoder/Tile/multiplesConst*
valueB"      *
dtype0*
_output_shapes
:
┬
)encoder/dilated_cnn_pairwise_encoder/TileTile(encoder/dilated_cnn_pairwise_encoder/Max3encoder/dilated_cnn_pairwise_encoder/Tile/multiples*'
_output_shapes
:         *
T0
┼
<encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1/axisConst*
value	B : *E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
dtype0*
_output_shapes
: 
■
7encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1GatherV27encoder/dilated_cnn_pairwise_encoder/thm_embedding/readextractor/SparseToDense_1<encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1/axis*
Tparams0*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
Tindices0*4
_output_shapes"
 :                  *
Taxis0
─
@encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1/IdentityIdentity7encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1*4
_output_shapes"
 :                  *
T0
о
>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/ShapeShape@encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1/Identity*
_output_shapes
:*
T0
Ц
Lencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Ш
Nencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Nencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
╩
Fencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_sliceStridedSlice>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/ShapeLencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice/stackNencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice/stack_1Nencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice/stack_2*
T0*
_output_shapes
: *
Index0*
shrink_axis_mask
О
Cencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/floordiv/yConst*
valueB :
№        *
dtype0*
_output_shapes
: 
√
Aencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/floordivFloorDivFencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_sliceCencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/floordiv/y*
_output_shapes
: *
T0
Й
>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/mul/yConst*
_output_shapes
: *
valueB :
№        *
dtype0
ч
<encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/mulMulAencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/floordiv>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/mul/y*
_output_shapes
: *
T0

=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/axisConst*
value	B :*
dtype0*
_output_shapes
: 
░
@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/Shape_1Shape@encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1/Identity*
_output_shapes
:*
T0
А
>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/add/yConst*
_output_shapes
: *
value	B :*
dtype0
у
<encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/addAdd=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/axis>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/add/y*
_output_shapes
: *
T0
├
Nencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1/stackPack=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/axis*
_output_shapes
:*
T0*
N
─
Pencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1/stack_1Pack<encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/add*
_output_shapes
:*
T0*
N
Ъ
Pencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
╘
Hencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1StridedSlice@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/Shape_1Nencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1/stackPencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1/stack_1Pencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
ь
<encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/subSub<encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/mulHencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/strided_slice_1*
_output_shapes
: *
T0
д
=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/ReluRelu<encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/sub*
_output_shapes
: *
T0
В
@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack/1Const*
dtype0*
_output_shapes
: *
value	B :
ї
>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stackPack=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/axis@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack/1*
T0*
N*
_output_shapes
:
║
@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack_1Pack>encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack*
_output_shapes

:*
T0*
N

=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/RankConst*
dtype0*
_output_shapes
: *
value	B :
Д
Bencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack_2/1Const*
value	B :*
dtype0*
_output_shapes
: 
∙
@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack_2Pack=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/RankBencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack_2/1*
_output_shapes
:*
T0*
N
Ц
Tencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/SparseToDense/default_valueConst*
_output_shapes
: *
value	B : *
dtype0
й
Fencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/SparseToDenseSparseToDense@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack_1@encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/stack_2=encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/ReluTencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/SparseToDense/default_value*
Tindices0*
_output_shapes

:*
T0
И
8encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiplePad@encoder/dilated_cnn_pairwise_encoder/embedding_lookup_1/IdentityFencoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple/SparseToDense*
T0*4
_output_shapes"
 :                  
y
7encoder/dilated_cnn_pairwise_encoder/thm/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B :
ў
3encoder/dilated_cnn_pairwise_encoder/thm/ExpandDims
ExpandDims8encoder/dilated_cnn_pairwise_encoder/thm/pad_to_multiple7encoder/dilated_cnn_pairwise_encoder/thm/ExpandDims/dim*8
_output_shapes&
$:"                  *
T0
Я
<encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/ShapeShape3encoder/dilated_cnn_pairwise_encoder/thm/ExpandDims*
_output_shapes
:*
T0
н
Jencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/ShapeShape3encoder/dilated_cnn_pairwise_encoder/thm/ExpandDims*
_output_shapes
:*
T0
в
Xencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
д
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
д
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_sliceStridedSliceJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/ShapeXencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice/stackZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice/stack_1Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
д
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1StridedSliceJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/ShapeZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1/stack\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1/stack_1\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
С
Oencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/floordiv/yConst*
value	B :*
dtype0*
_output_shapes
: 
б
Mencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/floordivFloorDivTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_1Oencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/floordiv/y*
_output_shapes
: *
T0
д
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2StridedSliceJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/ShapeZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2/stack\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2/stack_1\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
М
Jencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Т
Hencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/mulMulJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/mul/xTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_2*
_output_shapes
: *
T0
Ц
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
╦
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Reshape/shapePackRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_sliceMencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/floordivHencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/mulTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Reshape/shape/3*
_output_shapes
:*
T0*
N
м
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/ReshapeReshape3encoder/dilated_cnn_pairwise_encoder/thm/ExpandDimsRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Reshape/shape*
T0*A
_output_shapes/
-:+                           
▒
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights
Ы
pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *ь╤╛*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*
dtype0
Ы
pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/maxConst*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*
dtype0*
_output_shapes
: *
valueB
 *ь╤>
г
zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/RandomUniformRandomUniformrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/shape*
T0*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*
dtype0*&
_output_shapes
:
т
pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/subSubpencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/maxpencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/min*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*
_output_shapes
: *
T0
№
pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/mulMulzencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/RandomUniformpencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/sub*&
_output_shapes
:*
T0*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights
ю
lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniformAddpencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/mulpencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform/min*
T0*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*&
_output_shapes
:
Ч
Qencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights
VariableV2*
shape:*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*
dtype0*&
_output_shapes
:
║
Xencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/AssignAssignQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weightslencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform*
T0*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*&
_output_shapes
:
╠
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/readIdentityQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*&
_output_shapes
:*
T0
Ф
bencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/Initializer/zerosConst*
valueB*    *c
_classY
WUloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases*
dtype0*
_output_shapes
:
¤
Pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases
VariableV2*c
_classY
WUloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases*
dtype0*
_output_shapes
:*
shape:
б
Wencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/AssignAssignPencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biasesbencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros*c
_classY
WUloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases*
_output_shapes
:*
T0
╜
Uencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/readIdentityPencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases*
T0*c
_classY
WUloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases*
_output_shapes
:
и
Wencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ї
Pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/Conv2DConv2DLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/ReshapeVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/read*A
_output_shapes/
-:+                           *
strides
*
T0*
paddingSAME
╤
Qencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/BiasAddBiasAddPencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/Conv2DUencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/read*A
_output_shapes/
-:+                           *
T0
│
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3/stack_1Const*
dtype0*
_output_shapes
:*%
valueB"               
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
╩
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3StridedSliceQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/BiasAddZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3/stack\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3/stack_1\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3/stack_2*

begin_mask*A
_output_shapes/
-:+                           *
Index0*
T0*
end_mask
є
Iencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/TanhTanhTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_3*
T0*A
_output_shapes/
-:+                           
│
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4/stackConst*%
valueB"               *
dtype0*
_output_shapes
:
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4/stack_1Const*
dtype0*
_output_shapes
:*%
valueB"                
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
╩
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4StridedSliceQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/BiasAddZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4/stack\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4/stack_1\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4/stack_2*

begin_mask*A
_output_shapes/
-:+                           *
Index0*
T0*
end_mask
∙
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/SigmoidSigmoidTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/strided_slice_4*A
_output_shapes/
-:+                           *
T0
╢
Jencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/mul_1MulIencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/TanhLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Sigmoid*
T0*A
_output_shapes/
-:+                           
╡
Hencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/addAddJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/mul_1Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Reshape*
T0*A
_output_shapes/
-:+                           
─
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/ShapeShapeHencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/add*
_output_shapes
:*
T0
д
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Р
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_sliceStridedSliceLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/ShapeZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice/stack\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice/stack_1\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1StridedSliceLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Shape\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
У
Qencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/floordiv/yConst*
_output_shapes
: *
value	B :*
dtype0
з
Oencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/floordivFloorDivVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_1Qencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/floordiv/y*
_output_shapes
: *
T0
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2StridedSliceLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Shape\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
О
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
Jencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/mulMulLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/mul/xVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_2*
_output_shapes
: *
T0
Ш
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
╒
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Reshape/shapePackTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_sliceOencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/floordivJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/mulVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Reshape/shape/3*
_output_shapes
:*
T0*
N
┼
Nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/ReshapeReshapeHencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/addTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Reshape/shape*
T0*A
_output_shapes/
-:+                           
╡
tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/shapeConst*%
valueB"            *f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*
_output_shapes
:
Я
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/minConst*
valueB
 *ь╤╛*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*
_output_shapes
: 
Я
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/maxConst*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*
_output_shapes
: *
valueB
 *ь╤>
й
|encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/RandomUniformRandomUniformtencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/shape*&
_output_shapes
:*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0
ъ
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/subSubrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/maxrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/min*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*
_output_shapes
: 
Д
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/mulMul|encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/RandomUniformrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/sub*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*&
_output_shapes
:
Ў
nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniformAddrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/mulrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform/min*&
_output_shapes
:*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights
Ы
Sencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights
VariableV2*
shape:*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*
dtype0*&
_output_shapes
:
┬
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/AssignAssignSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weightsnencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*&
_output_shapes
:
╥
Xencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/readIdentitySencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*&
_output_shapes
:*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights
Ш
dencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases
Б
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases
VariableV2*
_output_shapes
:*
shape:*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases*
dtype0
й
Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/AssignAssignRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biasesdencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros*
_output_shapes
:*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases
├
Wencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/readIdentityRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases*
_output_shapes
:*
T0
к
Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
·
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/Conv2DConv2DNencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/ReshapeXencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/read*A
_output_shapes/
-:+                           *
T0*
strides
*
paddingSAME
╫
Sencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/BiasAddBiasAddRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/Conv2DWencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/read*
T0*A
_output_shapes/
-:+                           
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3/stack_1Const*%
valueB"               *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
╘
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3StridedSliceSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/BiasAdd\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3/stack_2*
Index0*
T0*
end_mask*

begin_mask*A
_output_shapes/
-:+                           
ў
Kencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/TanhTanhVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_3*
T0*A
_output_shapes/
-:+                           
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4/stackConst*%
valueB"               *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
╘
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4StridedSliceSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/BiasAdd\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4/stack_2*

begin_mask*A
_output_shapes/
-:+                           *
Index0*
T0*
end_mask
¤
Nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/SigmoidSigmoidVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/strided_slice_4*
T0*A
_output_shapes/
-:+                           
╝
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/mul_1MulKencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/TanhNencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Sigmoid*A
_output_shapes/
-:+                           *
T0
╗
Jencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/addAddLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/mul_1Nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Reshape*A
_output_shapes/
-:+                           *
T0
╞
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/ShapeShapeJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/add*
_output_shapes
:*
T0
д
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Р
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_sliceStridedSliceLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/ShapeZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice/stack\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice/stack_1\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1StridedSliceLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Shape\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
У
Qencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/floordiv/yConst*
value	B :*
dtype0*
_output_shapes
: 
з
Oencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/floordivFloorDivVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_1Qencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/floordiv/y*
_output_shapes
: *
T0
ж
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
и
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2StridedSliceLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Shape\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
О
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ш
Jencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/mulMulLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/mul/xVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_2*
_output_shapes
: *
T0
Ш
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Reshape/shape/3Const*
value	B :*
dtype0*
_output_shapes
: 
╒
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Reshape/shapePackTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_sliceOencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/floordivJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/mulVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Reshape/shape/3*
T0*
N*
_output_shapes
:
╟
Nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/ReshapeReshapeJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/addTencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Reshape/shape*
T0*A
_output_shapes/
-:+                           
╡
tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/shapeConst*%
valueB"            *f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*
_output_shapes
:
Я
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/minConst*
valueB
 *ь╤╛*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*
_output_shapes
: 
Я
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/maxConst*
valueB
 *ь╤>*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*
_output_shapes
: 
й
|encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/RandomUniformRandomUniformtencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/shape*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*&
_output_shapes
:*
T0
ъ
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/subSubrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/maxrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/min*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*
_output_shapes
: 
Д
rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/mulMul|encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/RandomUniformrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/sub*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*&
_output_shapes
:
Ў
nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniformAddrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/mulrencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform/min*&
_output_shapes
:*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights
Ы
Sencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights
VariableV2*
shape:*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*
dtype0*&
_output_shapes
:
┬
Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/AssignAssignSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weightsnencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*&
_output_shapes
:
╥
Xencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/readIdentitySencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*&
_output_shapes
:
Ш
dencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases
Б
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases
VariableV2*
shape:*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases*
dtype0*
_output_shapes
:
й
Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/AssignAssignRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biasesdencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases*
_output_shapes
:
├
Wencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/readIdentityRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases*
_output_shapes
:
к
Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
·
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/Conv2DConv2DNencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/ReshapeXencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/read*A
_output_shapes/
-:+                           *
strides
*
T0*
paddingSAME
╫
Sencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/BiasAddBiasAddRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/Conv2DWencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/read*
T0*A
_output_shapes/
-:+                           
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3/stack_1Const*%
valueB"               *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
╘
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3StridedSliceSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/BiasAdd\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3/stack_2*
Index0*
T0*
end_mask*

begin_mask*A
_output_shapes/
-:+                           
ў
Kencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/TanhTanhVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_3*A
_output_shapes/
-:+                           *
T0
╡
\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4/stackConst*%
valueB"               *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
╖
^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4/stack_2Const*%
valueB"            *
dtype0*
_output_shapes
:
╘
Vencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4StridedSliceSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/BiasAdd\encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4/stack^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4/stack_1^encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4/stack_2*
end_mask*

begin_mask*A
_output_shapes/
-:+                           *
Index0*
T0
¤
Nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/SigmoidSigmoidVencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/strided_slice_4*A
_output_shapes/
-:+                           *
T0
╝
Lencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/mul_1MulKencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/TanhNencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Sigmoid*
T0*A
_output_shapes/
-:+                           
╗
Jencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/addAddLencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/mul_1Nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Reshape*A
_output_shapes/
-:+                           *
T0
Ц
>encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/ReshapeReshapeJencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/add<encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/Shape*
T0*8
_output_shapes&
$:"                  
s
.encoder/dilated_cnn_pairwise_encoder/thm/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ц
,encoder/dilated_cnn_pairwise_encoder/thm/mulMul.encoder/dilated_cnn_pairwise_encoder/thm/mul/x>encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/Reshape*
T0*8
_output_shapes&
$:"                  
┘
,encoder/dilated_cnn_pairwise_encoder/thm/addAdd,encoder/dilated_cnn_pairwise_encoder/thm/mul3encoder/dilated_cnn_pairwise_encoder/thm/ExpandDims*8
_output_shapes&
$:"                  *
T0
Н
<encoder/dilated_cnn_pairwise_encoder/Max_1/reduction_indicesConst*
valueB"      *
dtype0*
_output_shapes
:
╧
*encoder/dilated_cnn_pairwise_encoder/Max_1Max,encoder/dilated_cnn_pairwise_encoder/thm/add<encoder/dilated_cnn_pairwise_encoder/Max_1/reduction_indices*'
_output_shapes
:         *
T0
╕
(encoder/dilated_cnn_pairwise_encoder/MulMul)encoder/dilated_cnn_pairwise_encoder/Tile*encoder/dilated_cnn_pairwise_encoder/Max_1*'
_output_shapes
:         *
T0
{
0encoder/dilated_cnn_pairwise_encoder/concat/axisConst*
valueB :
         *
dtype0*
_output_shapes
: 
е
+encoder/dilated_cnn_pairwise_encoder/concatConcatV2)encoder/dilated_cnn_pairwise_encoder/Tile*encoder/dilated_cnn_pairwise_encoder/Max_1(encoder/dilated_cnn_pairwise_encoder/Mul0encoder/dilated_cnn_pairwise_encoder/concat/axis*'
_output_shapes
:         *
T0*
N
z
5encoder/dilated_cnn_pairwise_encoder/one_hot/on_valueConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
{
6encoder/dilated_cnn_pairwise_encoder/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
t
2encoder/dilated_cnn_pairwise_encoder/one_hot/depthConst*
value	B :)*
dtype0*
_output_shapes
: 
Ы
,encoder/dilated_cnn_pairwise_encoder/one_hotOneHotextractor/Tile2encoder/dilated_cnn_pairwise_encoder/one_hot/depth5encoder/dilated_cnn_pairwise_encoder/one_hot/on_value6encoder/dilated_cnn_pairwise_encoder/one_hot/off_value*'
_output_shapes
:         )*
T0
t
2encoder/dilated_cnn_pairwise_encoder/concat_1/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Г
-encoder/dilated_cnn_pairwise_encoder/concat_1ConcatV2+encoder/dilated_cnn_pairwise_encoder/concat,encoder/dilated_cnn_pairwise_encoder/one_hot2encoder/dilated_cnn_pairwise_encoder/concat_1/axis*
T0*
N*'
_output_shapes
:         5
щ
Rencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"5      *D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
dtype0
█
Pencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *_ж╛*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
dtype0*
_output_shapes
: 
█
Pencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/maxConst*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
dtype0*
_output_shapes
: *
valueB
 *_ж>
╗
Zencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniformRencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:5*
T0*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel
т
Pencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/subSubPencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/maxPencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/min*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
_output_shapes
: *
T0
Ї
Pencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/mulMulZencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/RandomUniformPencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/sub*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
_output_shapes

:5*
T0
ц
Lencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniformAddPencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/mulPencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:5*
T0*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel
╟
1encoder/dilated_cnn_pairwise_encoder/dense/kernel
VariableV2*
shape
:5*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
dtype0*
_output_shapes

:5
▓
8encoder/dilated_cnn_pairwise_encoder/dense/kernel/AssignAssign1encoder/dilated_cnn_pairwise_encoder/dense/kernelLencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
_output_shapes

:5*
T0
ф
6encoder/dilated_cnn_pairwise_encoder/dense/kernel/readIdentity1encoder/dilated_cnn_pairwise_encoder/dense/kernel*
_output_shapes

:5*
T0*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel
╥
Aencoder/dilated_cnn_pairwise_encoder/dense/bias/Initializer/zerosConst*
valueB*    *B
_class8
64loc:@encoder/dilated_cnn_pairwise_encoder/dense/bias*
dtype0*
_output_shapes
:
╗
/encoder/dilated_cnn_pairwise_encoder/dense/bias
VariableV2*
shape:*B
_class8
64loc:@encoder/dilated_cnn_pairwise_encoder/dense/bias*
dtype0*
_output_shapes
:
Э
6encoder/dilated_cnn_pairwise_encoder/dense/bias/AssignAssign/encoder/dilated_cnn_pairwise_encoder/dense/biasAencoder/dilated_cnn_pairwise_encoder/dense/bias/Initializer/zeros*
_output_shapes
:*
T0*B
_class8
64loc:@encoder/dilated_cnn_pairwise_encoder/dense/bias
┌
4encoder/dilated_cnn_pairwise_encoder/dense/bias/readIdentity/encoder/dilated_cnn_pairwise_encoder/dense/bias*B
_class8
64loc:@encoder/dilated_cnn_pairwise_encoder/dense/bias*
_output_shapes
:*
T0
╘
1encoder/dilated_cnn_pairwise_encoder/dense/MatMulMatMul-encoder/dilated_cnn_pairwise_encoder/concat_16encoder/dilated_cnn_pairwise_encoder/dense/kernel/read*'
_output_shapes
:         *
T0
╪
2encoder/dilated_cnn_pairwise_encoder/dense/BiasAddBiasAdd1encoder/dilated_cnn_pairwise_encoder/dense/MatMul4encoder/dilated_cnn_pairwise_encoder/dense/bias/read*'
_output_shapes
:         *
T0
Э
/encoder/dilated_cnn_pairwise_encoder/dense/ReluRelu2encoder/dilated_cnn_pairwise_encoder/dense/BiasAdd*'
_output_shapes
:         *
T0
э
Tencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
dtype0*
_output_shapes
:
▀
Rencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│]┐*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
dtype0*
_output_shapes
: 
▀
Rencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│]?*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
dtype0*
_output_shapes
: 
┴
\encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniformTencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/shape*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
dtype0*
_output_shapes

:*
T0
ъ
Rencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/subSubRencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/maxRencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/min*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
_output_shapes
: 
№
Rencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/mulMul\encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/RandomUniformRencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/sub*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
_output_shapes

:*
T0
ю
Nencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniformAddRencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/mulRencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel
╦
3encoder/dilated_cnn_pairwise_encoder/dense_1/kernel
VariableV2*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
dtype0*
_output_shapes

:*
shape
:
║
:encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/AssignAssign3encoder/dilated_cnn_pairwise_encoder/dense_1/kernelNencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
_output_shapes

:
ъ
8encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/readIdentity3encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel*
_output_shapes

:
╓
Cencoder/dilated_cnn_pairwise_encoder/dense_1/bias/Initializer/zerosConst*
valueB*    *D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/bias*
dtype0*
_output_shapes
:
┐
1encoder/dilated_cnn_pairwise_encoder/dense_1/bias
VariableV2*
shape:*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/bias*
dtype0*
_output_shapes
:
е
8encoder/dilated_cnn_pairwise_encoder/dense_1/bias/AssignAssign1encoder/dilated_cnn_pairwise_encoder/dense_1/biasCencoder/dilated_cnn_pairwise_encoder/dense_1/bias/Initializer/zeros*
T0*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/bias*
_output_shapes
:
р
6encoder/dilated_cnn_pairwise_encoder/dense_1/bias/readIdentity1encoder/dilated_cnn_pairwise_encoder/dense_1/bias*
T0*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/bias*
_output_shapes
:
┌
3encoder/dilated_cnn_pairwise_encoder/dense_1/MatMulMatMul/encoder/dilated_cnn_pairwise_encoder/dense/Relu8encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/read*
T0*'
_output_shapes
:         
▐
4encoder/dilated_cnn_pairwise_encoder/dense_1/BiasAddBiasAdd3encoder/dilated_cnn_pairwise_encoder/dense_1/MatMul6encoder/dilated_cnn_pairwise_encoder/dense_1/bias/read*'
_output_shapes
:         *
T0
б
1encoder/dilated_cnn_pairwise_encoder/dense_1/ReluRelu4encoder/dilated_cnn_pairwise_encoder/dense_1/BiasAdd*
T0*'
_output_shapes
:         
э
Tencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
dtype0*
_output_shapes
:
▀
Rencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│]┐*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
dtype0*
_output_shapes
: 
▀
Rencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│]?*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
dtype0*
_output_shapes
: 
┴
\encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniformTencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/shape*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
dtype0*
_output_shapes

:*
T0
ъ
Rencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/subSubRencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/maxRencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/min*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
_output_shapes
: *
T0
№
Rencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/mulMul\encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/RandomUniformRencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/sub*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
_output_shapes

:
ю
Nencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniformAddRencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/mulRencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform/min*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
_output_shapes

:*
T0
╦
3encoder/dilated_cnn_pairwise_encoder/dense_2/kernel
VariableV2*
shape
:*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
dtype0*
_output_shapes

:
║
:encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/AssignAssign3encoder/dilated_cnn_pairwise_encoder/dense_2/kernelNencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
_output_shapes

:*
T0
ъ
8encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/readIdentity3encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
_output_shapes

:*
T0
╓
Cencoder/dilated_cnn_pairwise_encoder/dense_2/bias/Initializer/zerosConst*
valueB*    *D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/bias*
dtype0*
_output_shapes
:
┐
1encoder/dilated_cnn_pairwise_encoder/dense_2/bias
VariableV2*
shape:*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/bias*
dtype0*
_output_shapes
:
е
8encoder/dilated_cnn_pairwise_encoder/dense_2/bias/AssignAssign1encoder/dilated_cnn_pairwise_encoder/dense_2/biasCencoder/dilated_cnn_pairwise_encoder/dense_2/bias/Initializer/zeros*
_output_shapes
:*
T0*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/bias
р
6encoder/dilated_cnn_pairwise_encoder/dense_2/bias/readIdentity1encoder/dilated_cnn_pairwise_encoder/dense_2/bias*
T0*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/bias*
_output_shapes
:
▄
3encoder/dilated_cnn_pairwise_encoder/dense_2/MatMulMatMul1encoder/dilated_cnn_pairwise_encoder/dense_1/Relu8encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/read*
T0*'
_output_shapes
:         
▐
4encoder/dilated_cnn_pairwise_encoder/dense_2/BiasAddBiasAdd3encoder/dilated_cnn_pairwise_encoder/dense_2/MatMul6encoder/dilated_cnn_pairwise_encoder/dense_2/bias/read*'
_output_shapes
:         *
T0
б
1encoder/dilated_cnn_pairwise_encoder/dense_2/ReluRelu4encoder/dilated_cnn_pairwise_encoder/dense_2/BiasAdd*'
_output_shapes
:         *
T0
╡
8classifier/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"      **
_class 
loc:@classifier/dense/kernel*
dtype0
з
6classifier/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│]┐**
_class 
loc:@classifier/dense/kernel*
dtype0*
_output_shapes
: 
з
6classifier/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│]?**
_class 
loc:@classifier/dense/kernel*
dtype0*
_output_shapes
: 
э
@classifier/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform8classifier/dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0**
_class 
loc:@classifier/dense/kernel
·
6classifier/dense/kernel/Initializer/random_uniform/subSub6classifier/dense/kernel/Initializer/random_uniform/max6classifier/dense/kernel/Initializer/random_uniform/min*
T0**
_class 
loc:@classifier/dense/kernel*
_output_shapes
: 
М
6classifier/dense/kernel/Initializer/random_uniform/mulMul@classifier/dense/kernel/Initializer/random_uniform/RandomUniform6classifier/dense/kernel/Initializer/random_uniform/sub*
T0**
_class 
loc:@classifier/dense/kernel*
_output_shapes

:
■
2classifier/dense/kernel/Initializer/random_uniformAdd6classifier/dense/kernel/Initializer/random_uniform/mul6classifier/dense/kernel/Initializer/random_uniform/min**
_class 
loc:@classifier/dense/kernel*
_output_shapes

:*
T0
У
classifier/dense/kernel
VariableV2*
shape
:**
_class 
loc:@classifier/dense/kernel*
dtype0*
_output_shapes

:
╩
classifier/dense/kernel/AssignAssignclassifier/dense/kernel2classifier/dense/kernel/Initializer/random_uniform**
_class 
loc:@classifier/dense/kernel*
_output_shapes

:*
T0
Ц
classifier/dense/kernel/readIdentityclassifier/dense/kernel*
_output_shapes

:*
T0**
_class 
loc:@classifier/dense/kernel
Ю
'classifier/dense/bias/Initializer/zerosConst*(
_class
loc:@classifier/dense/bias*
dtype0*
_output_shapes
:*
valueB*    
З
classifier/dense/bias
VariableV2*
_output_shapes
:*
shape:*(
_class
loc:@classifier/dense/bias*
dtype0
╡
classifier/dense/bias/AssignAssignclassifier/dense/bias'classifier/dense/bias/Initializer/zeros*(
_class
loc:@classifier/dense/bias*
_output_shapes
:*
T0
М
classifier/dense/bias/readIdentityclassifier/dense/bias*(
_class
loc:@classifier/dense/bias*
_output_shapes
:*
T0
Ь
classifier/dense/MatMulMatMul)encoder/dilated_cnn_pairwise_encoder/Tileclassifier/dense/kernel/read*'
_output_shapes
:         *
T0
К
classifier/dense/BiasAddBiasAddclassifier/dense/MatMulclassifier/dense/bias/read*
T0*'
_output_shapes
:         
i
classifier/dense/ReluReluclassifier/dense/BiasAdd*'
_output_shapes
:         *
T0
╣
:classifier/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *,
_class"
 loc:@classifier/dense_1/kernel*
dtype0*
_output_shapes
:
л
8classifier/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│]┐*,
_class"
 loc:@classifier/dense_1/kernel*
dtype0*
_output_shapes
: 
л
8classifier/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *╫│]?*,
_class"
 loc:@classifier/dense_1/kernel
є
Bclassifier/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform:classifier/dense_1/kernel/Initializer/random_uniform/shape*,
_class"
 loc:@classifier/dense_1/kernel*
dtype0*
_output_shapes

:*
T0
В
8classifier/dense_1/kernel/Initializer/random_uniform/subSub8classifier/dense_1/kernel/Initializer/random_uniform/max8classifier/dense_1/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@classifier/dense_1/kernel*
_output_shapes
: 
Ф
8classifier/dense_1/kernel/Initializer/random_uniform/mulMulBclassifier/dense_1/kernel/Initializer/random_uniform/RandomUniform8classifier/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*,
_class"
 loc:@classifier/dense_1/kernel
Ж
4classifier/dense_1/kernel/Initializer/random_uniformAdd8classifier/dense_1/kernel/Initializer/random_uniform/mul8classifier/dense_1/kernel/Initializer/random_uniform/min*,
_class"
 loc:@classifier/dense_1/kernel*
_output_shapes

:*
T0
Ч
classifier/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:*
shape
:*,
_class"
 loc:@classifier/dense_1/kernel
╥
 classifier/dense_1/kernel/AssignAssignclassifier/dense_1/kernel4classifier/dense_1/kernel/Initializer/random_uniform*
_output_shapes

:*
T0*,
_class"
 loc:@classifier/dense_1/kernel
Ь
classifier/dense_1/kernel/readIdentityclassifier/dense_1/kernel*
_output_shapes

:*
T0*,
_class"
 loc:@classifier/dense_1/kernel
в
)classifier/dense_1/bias/Initializer/zerosConst*
valueB*    **
_class 
loc:@classifier/dense_1/bias*
dtype0*
_output_shapes
:
Л
classifier/dense_1/bias
VariableV2*
_output_shapes
:*
shape:**
_class 
loc:@classifier/dense_1/bias*
dtype0
╜
classifier/dense_1/bias/AssignAssignclassifier/dense_1/bias)classifier/dense_1/bias/Initializer/zeros*
T0**
_class 
loc:@classifier/dense_1/bias*
_output_shapes
:
Т
classifier/dense_1/bias/readIdentityclassifier/dense_1/bias**
_class 
loc:@classifier/dense_1/bias*
_output_shapes
:*
T0
М
classifier/dense_1/MatMulMatMulclassifier/dense/Reluclassifier/dense_1/kernel/read*'
_output_shapes
:         *
T0
Р
classifier/dense_1/BiasAddBiasAddclassifier/dense_1/MatMulclassifier/dense_1/bias/read*
T0*'
_output_shapes
:         
m
classifier/dense_1/ReluReluclassifier/dense_1/BiasAdd*
T0*'
_output_shapes
:         
╣
:classifier/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"   )   *,
_class"
 loc:@classifier/dense_2/kernel*
dtype0*
_output_shapes
:
л
8classifier/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *║Ї║╛*,
_class"
 loc:@classifier/dense_2/kernel*
dtype0*
_output_shapes
: 
л
8classifier/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *║Ї║>*,
_class"
 loc:@classifier/dense_2/kernel*
dtype0*
_output_shapes
: 
є
Bclassifier/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform:classifier/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes

:)*
T0*,
_class"
 loc:@classifier/dense_2/kernel*
dtype0
В
8classifier/dense_2/kernel/Initializer/random_uniform/subSub8classifier/dense_2/kernel/Initializer/random_uniform/max8classifier/dense_2/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@classifier/dense_2/kernel*
_output_shapes
: 
Ф
8classifier/dense_2/kernel/Initializer/random_uniform/mulMulBclassifier/dense_2/kernel/Initializer/random_uniform/RandomUniform8classifier/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:)*
T0*,
_class"
 loc:@classifier/dense_2/kernel
Ж
4classifier/dense_2/kernel/Initializer/random_uniformAdd8classifier/dense_2/kernel/Initializer/random_uniform/mul8classifier/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes

:)*
T0*,
_class"
 loc:@classifier/dense_2/kernel
Ч
classifier/dense_2/kernel
VariableV2*,
_class"
 loc:@classifier/dense_2/kernel*
dtype0*
_output_shapes

:)*
shape
:)
╥
 classifier/dense_2/kernel/AssignAssignclassifier/dense_2/kernel4classifier/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:)*
T0*,
_class"
 loc:@classifier/dense_2/kernel
Ь
classifier/dense_2/kernel/readIdentityclassifier/dense_2/kernel*
_output_shapes

:)*
T0*,
_class"
 loc:@classifier/dense_2/kernel
в
)classifier/dense_2/bias/Initializer/zerosConst*
valueB)*    **
_class 
loc:@classifier/dense_2/bias*
dtype0*
_output_shapes
:)
Л
classifier/dense_2/bias
VariableV2*
shape:)**
_class 
loc:@classifier/dense_2/bias*
dtype0*
_output_shapes
:)
╜
classifier/dense_2/bias/AssignAssignclassifier/dense_2/bias)classifier/dense_2/bias/Initializer/zeros**
_class 
loc:@classifier/dense_2/bias*
_output_shapes
:)*
T0
Т
classifier/dense_2/bias/readIdentityclassifier/dense_2/bias**
_class 
loc:@classifier/dense_2/bias*
_output_shapes
:)*
T0
О
classifier/dense_2/MatMulMatMulclassifier/dense_1/Reluclassifier/dense_2/kernel/read*'
_output_shapes
:         )*
T0
Р
classifier/dense_2/BiasAddBiasAddclassifier/dense_2/MatMulclassifier/dense_2/bias/read*'
_output_shapes
:         )*
T0
`
classifier/in_top_k/InTopKV2/kConst*
dtype0	*
_output_shapes
: *
value	B	 R
в
classifier/in_top_k/InTopKV2InTopKV2classifier/dense_2/BiasAddextractor/Tileclassifier/in_top_k/InTopKV2/k*
T0	*#
_output_shapes
:         
u
classifier/ToFloatCastclassifier/in_top_k/InTopKV2*

SrcT0
*

DstT0*#
_output_shapes
:         
k
classifier/Reshape/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
y
classifier/ReshapeReshapeclassifier/ToFloatclassifier/Reshape/shape*
T0*#
_output_shapes
:         
m
classifier/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
r
classifier/Reshape_1Reshapeextractor/ones_1classifier/Reshape_1/shape*
_output_shapes
:*
T0
c
classifier/Tensordot/axesConst*
dtype0*
_output_shapes
:*
valueB: 
\
classifier/Tensordot/freeConst*
valueB *
dtype0*
_output_shapes
: 
\
classifier/Tensordot/ShapeShapeclassifier/Reshape*
T0*
_output_shapes
:
d
"classifier/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╩
classifier/Tensordot/GatherV2GatherV2classifier/Tensordot/Shapeclassifier/Tensordot/free"classifier/Tensordot/GatherV2/axis*
Tindices0*
_output_shapes
: *
Taxis0*
Tparams0
f
$classifier/Tensordot/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╨
classifier/Tensordot/GatherV2_1GatherV2classifier/Tensordot/Shapeclassifier/Tensordot/axes$classifier/Tensordot/GatherV2_1/axis*
Tindices0*
_output_shapes
:*
Taxis0*
Tparams0
d
classifier/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
classifier/Tensordot/ProdProdclassifier/Tensordot/GatherV2classifier/Tensordot/Const*
T0*
_output_shapes
: 
f
classifier/Tensordot/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
Г
classifier/Tensordot/Prod_1Prodclassifier/Tensordot/GatherV2_1classifier/Tensordot/Const_1*
_output_shapes
: *
T0
b
 classifier/Tensordot/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
н
classifier/Tensordot/concatConcatV2classifier/Tensordot/freeclassifier/Tensordot/axes classifier/Tensordot/concat/axis*
_output_shapes
:*
T0*
N
И
classifier/Tensordot/stackPackclassifier/Tensordot/Prodclassifier/Tensordot/Prod_1*
_output_shapes
:*
T0*
N
К
classifier/Tensordot/transpose	Transposeclassifier/Reshapeclassifier/Tensordot/concat*
T0*#
_output_shapes
:         
Ю
classifier/Tensordot/ReshapeReshapeclassifier/Tensordot/transposeclassifier/Tensordot/stack*0
_output_shapes
:                  *
T0
o
%classifier/Tensordot/transpose_1/permConst*
_output_shapes
:*
valueB: *
dtype0
П
 classifier/Tensordot/transpose_1	Transposeclassifier/Reshape_1%classifier/Tensordot/transpose_1/perm*
T0*
_output_shapes
:
u
$classifier/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Ъ
classifier/Tensordot/Reshape_1Reshape classifier/Tensordot/transpose_1$classifier/Tensordot/Reshape_1/shape*
_output_shapes

:*
T0
Х
classifier/Tensordot/MatMulMatMulclassifier/Tensordot/Reshapeclassifier/Tensordot/Reshape_1*'
_output_shapes
:         *
T0
_
classifier/Tensordot/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
d
"classifier/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╢
classifier/Tensordot/concat_1ConcatV2classifier/Tensordot/GatherV2classifier/Tensordot/Const_2"classifier/Tensordot/concat_1/axis*
_output_shapes
: *
T0*
N
|
classifier/TensordotReshapeclassifier/Tensordot/MatMulclassifier/Tensordot/concat_1*
_output_shapes
: *
T0
Z
classifier/ConstConst*
valueB: *
dtype0*
_output_shapes
:
^
classifier/SumSumclassifier/Reshape_1classifier/Const*
_output_shapes
: *
T0
d
classifier/truedivRealDivclassifier/Tensordotclassifier/Sum*
T0*
_output_shapes
: 
f
classifier/ArgMax/dimensionConst*
_output_shapes
: *
valueB :
         *
dtype0
В
classifier/ArgMaxArgMaxclassifier/dense_2/BiasAddclassifier/ArgMax/dimension*#
_output_shapes
:         *
T0
j
classifier/EqualEqualextractor/Tileclassifier/ArgMax*
T0	*#
_output_shapes
:         
k
classifier/ToFloat_1Castclassifier/Equal*

SrcT0
*

DstT0*#
_output_shapes
:         
m
classifier/Reshape_2/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:

classifier/Reshape_2Reshapeclassifier/ToFloat_1classifier/Reshape_2/shape*#
_output_shapes
:         *
T0
m
classifier/Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
r
classifier/Reshape_3Reshapeextractor/ones_1classifier/Reshape_3/shape*
_output_shapes
:*
T0
e
classifier/Tensordot_1/axesConst*
valueB: *
dtype0*
_output_shapes
:
^
classifier/Tensordot_1/freeConst*
_output_shapes
: *
valueB *
dtype0
`
classifier/Tensordot_1/ShapeShapeclassifier/Reshape_2*
T0*
_output_shapes
:
f
$classifier/Tensordot_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╥
classifier/Tensordot_1/GatherV2GatherV2classifier/Tensordot_1/Shapeclassifier/Tensordot_1/free$classifier/Tensordot_1/GatherV2/axis*
Taxis0*
Tparams0*
Tindices0*
_output_shapes
: 
h
&classifier/Tensordot_1/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╪
!classifier/Tensordot_1/GatherV2_1GatherV2classifier/Tensordot_1/Shapeclassifier/Tensordot_1/axes&classifier/Tensordot_1/GatherV2_1/axis*
Tparams0*
Tindices0*
_output_shapes
:*
Taxis0
f
classifier/Tensordot_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Г
classifier/Tensordot_1/ProdProdclassifier/Tensordot_1/GatherV2classifier/Tensordot_1/Const*
_output_shapes
: *
T0
h
classifier/Tensordot_1/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
Й
classifier/Tensordot_1/Prod_1Prod!classifier/Tensordot_1/GatherV2_1classifier/Tensordot_1/Const_1*
_output_shapes
: *
T0
d
"classifier/Tensordot_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╡
classifier/Tensordot_1/concatConcatV2classifier/Tensordot_1/freeclassifier/Tensordot_1/axes"classifier/Tensordot_1/concat/axis*
_output_shapes
:*
T0*
N
О
classifier/Tensordot_1/stackPackclassifier/Tensordot_1/Prodclassifier/Tensordot_1/Prod_1*
T0*
N*
_output_shapes
:
Р
 classifier/Tensordot_1/transpose	Transposeclassifier/Reshape_2classifier/Tensordot_1/concat*
T0*#
_output_shapes
:         
д
classifier/Tensordot_1/ReshapeReshape classifier/Tensordot_1/transposeclassifier/Tensordot_1/stack*0
_output_shapes
:                  *
T0
q
'classifier/Tensordot_1/transpose_1/permConst*
_output_shapes
:*
valueB: *
dtype0
У
"classifier/Tensordot_1/transpose_1	Transposeclassifier/Reshape_3'classifier/Tensordot_1/transpose_1/perm*
_output_shapes
:*
T0
w
&classifier/Tensordot_1/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
а
 classifier/Tensordot_1/Reshape_1Reshape"classifier/Tensordot_1/transpose_1&classifier/Tensordot_1/Reshape_1/shape*
_output_shapes

:*
T0
Ы
classifier/Tensordot_1/MatMulMatMulclassifier/Tensordot_1/Reshape classifier/Tensordot_1/Reshape_1*'
_output_shapes
:         *
T0
a
classifier/Tensordot_1/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
f
$classifier/Tensordot_1/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╛
classifier/Tensordot_1/concat_1ConcatV2classifier/Tensordot_1/GatherV2classifier/Tensordot_1/Const_2$classifier/Tensordot_1/concat_1/axis*
T0*
N*
_output_shapes
: 
В
classifier/Tensordot_1Reshapeclassifier/Tensordot_1/MatMulclassifier/Tensordot_1/concat_1*
_output_shapes
: *
T0
\
classifier/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
b
classifier/Sum_1Sumclassifier/Reshape_3classifier/Const_1*
_output_shapes
: *
T0
j
classifier/truediv_1RealDivclassifier/Tensordot_1classifier/Sum_1*
_output_shapes
: *
T0
y
;classifier/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapeextractor/Tile*
_output_shapes
:*
T0	
╥
>classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitsclassifier/dense_2/BiasAddextractor/Tile*6
_output_shapes$
":         :         )*
T0
Щ
Oclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB:*
dtype0*
_output_shapes
:
Р
Nclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
╝
Nclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape>classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
_output_shapes
:
П
Mclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
П
Mclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
Ф
Kclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalarEqualMclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar/xNclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Ю
Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/SwitchSwitchKclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalarKclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
с
Yclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_tIdentityYclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
▀
Yclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_fIdentityWclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0

╥
Xclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_idIdentityKclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

Н
Yclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1SwitchKclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalarXclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*
T0
*^
_classT
RPloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar*
_output_shapes
: : 
д
wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqual~classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchАclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
╢
~classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchMclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankXclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*`
_classV
TRloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
╗
Аclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchNclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankXclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*a
_classW
USloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rank*
_output_shapes
: : *
T0
Р
qclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchwclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankwclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
Х
sclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitysclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
_output_shapes
: *
T0

У
sclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityqclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
Ш
rclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentitywclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

╠
Кclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstt^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
         
▀
Жclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsСclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Кclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*
T0
╨
Нclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchNclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeXclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*a
_classW
USloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape
м
Пclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchНclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchrclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*a
_classW
USloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape* 
_output_shapes
::
╙
Лclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstt^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
─
Лclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstt^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
╙
Еclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillЛclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeЛclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*
_output_shapes

:
└
Зclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstt^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
▄
Вclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2Жclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsЕclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeЗclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
_output_shapes

:*
T0*
N
╬
Мclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstt^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
х
Иclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsУclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Мclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
╘
Пclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchOclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeXclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*b
_classX
VTloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape
▒
Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchПclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchrclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*b
_classX
VTloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape
а
Фclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationИclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1Вclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:         :         :*
set_operationa-b*
T0
╧
Мclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeЦclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
_output_shapes
: 
╡
}classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstt^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
│
{classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqual}classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xМclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
Ы
sclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchwclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankrclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*Л
_classА
~|loc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

Ч
pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergesclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1{classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
T0
*
N
┌
Vclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/MergeMergepclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:1*
_output_shapes
: : *
T0
*
N
п
Gclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
Ш
Iclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Ь
Iclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/Const_2Const*#
valueB Bextractor/ones_1:0*
dtype0*
_output_shapes
: 
Ч
Iclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/Const_3Const*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
╩
Iclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/Const_4Const*Q
valueHBF B@classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropy:0*
dtype0*
_output_shapes
: 
Ф
Iclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
▒
Tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/SwitchSwitchVclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/MergeVclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

█
Vclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_tIdentityVclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
┘
Vclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_fIdentityTclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

┌
Uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_idIdentityVclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
│
Rclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/NoOpNoOpW^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t
е
`classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependencyIdentityVclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_tS^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/NoOp*
_output_shapes
: *
T0
*i
_class_
][loc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t
Ь
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_0ConstW^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
Г
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_1ConstW^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
З
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_2ConstW^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*#
valueB Bextractor/ones_1:0*
dtype0*
_output_shapes
: 
В
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_4ConstW^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
╡
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_5ConstW^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*Q
valueHBF B@classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropy:0*
dtype0*
_output_shapes
: 
 
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_7ConstW^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
Ъ
Tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/AssertAssert[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_0[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_1[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_2]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_4[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_5]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_7]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

в
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/SwitchSwitchVclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/MergeUclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id*
T0
*i
_class_
][loc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
Ю
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchOclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeUclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id* 
_output_shapes
::*
T0*b
_classX
VTloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape
Ь
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchNclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeUclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id*a
_classW
USloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape* 
_output_shapes
::*
T0
О
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchKclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalarUclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id*
T0
*^
_classT
RPloc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar*
_output_shapes
: : 
й
bclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency_1IdentityVclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_fU^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert*i
_class_
][loc:@classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: *
T0

╬
Sclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeMergebclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency_1`classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Д
0classifier/sparse_softmax_cross_entropy_loss/MulMul>classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropyextractor/ones_1T^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
T0*
_output_shapes
:
╥
2classifier/sparse_softmax_cross_entropy_loss/ConstConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB: *
dtype0*
_output_shapes
:
╛
0classifier/sparse_softmax_cross_entropy_loss/SumSum0classifier/sparse_softmax_cross_entropy_loss/Mul2classifier/sparse_softmax_cross_entropy_loss/Const*
_output_shapes
: *
T0
█
@classifier/sparse_softmax_cross_entropy_loss/num_present/Equal/yConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
└
>classifier/sparse_softmax_cross_entropy_loss/num_present/EqualEqualextractor/ones_1@classifier/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
:
ц
Cclassifier/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
:*
valueB*    
ш
Hclassifier/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
valueB:*
dtype0
у
Hclassifier/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Г
Bclassifier/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillHclassifier/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeHclassifier/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
_output_shapes
:*
T0
╖
?classifier/sparse_softmax_cross_entropy_loss/num_present/SelectSelect>classifier/sparse_softmax_cross_entropy_loss/num_present/EqualCclassifier/sparse_softmax_cross_entropy_loss/num_present/zeros_likeBclassifier/sparse_softmax_cross_entropy_loss/num_present/ones_like*
_output_shapes
:*
T0
Н
mclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB:*
dtype0*
_output_shapes
:
Д
lclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
value	B :*
dtype0*
_output_shapes
: 
░
lclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape>classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropyT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0
Г
kclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
value	B :*
dtype0*
_output_shapes
: 
Г
kclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar/xConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *
value	B : *
dtype0
ю
iclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarEqualkclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar/xlclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: *
T0
°
uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchiclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalariclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

Э
wclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentitywclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

Ы
wclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityuclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
_output_shapes
: *
T0

О
vclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityiclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
Е
wclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1Switchiclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarvclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*|
_classr
pnloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

А
Хclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualЬclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchЮclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
_output_shapes
: *
T0
п
Ьclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchkclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankvclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*~
_classt
rploc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : *
T0
│
Юclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1Switchlclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankvclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
_classu
sqloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : *
T0
э
Пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchХclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankХclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

╙
Сclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityСclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
╤
Сclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityПclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
_output_shapes
: *
T0

╓
Рclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityХclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

▀
иclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeТ^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
╣
дclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsпclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1иclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
_output_shapes

:*
T0
╚
лclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchlclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapevclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*
_classu
sqloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
е
нclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switchлclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchРclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*
_classu
sqloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
ц
йclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeТ^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
╫
йclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeТ^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
н
гclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillйclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeйclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0
╙
еclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeТ^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
╘
аclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2дclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsгclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeеclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:
с
кclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeТ^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
         *
dtype0*
_output_shapes
: 
┐
жclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDims▒classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1кclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:
═
нclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchmclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapevclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id* 
_output_shapes
::*
T0*А
_classv
trloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape
л
пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switchнclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchРclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id* 
_output_shapes
::*
T0*А
_classv
trloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape
·
▓classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationжclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1аclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:         :         :*
set_operationa-b*
T0
Л
кclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSize┤classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0
╔
Ыclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeТ^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B : 
П
Щclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualЫclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xкclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
Ш
Сclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1SwitchХclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankРclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*л
_classа
ЭЪloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : *
T0

Ї
Оclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeСclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Щclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
_output_shapes
: : *
T0
*
N
╡
tclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergeОclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Mergeyclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
г
eclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/ConstConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.*
dtype0
М
gclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_1ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
┐
gclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_2ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *R
valueIBG BAclassifier/sparse_softmax_cross_entropy_loss/num_present/Select:0
Л
gclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_3ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB Bvalues.shape=
╛
gclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_4ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*Q
valueHBF B@classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropy:0*
dtype0*
_output_shapes
: 
И
gclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_5ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Л
rclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchtclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Mergetclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

Ч
tclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentitytclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
Х
tclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityrclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

Ц
sclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentitytclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: *
T0

┼
pclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergeu^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Ю
~classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentitytclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_tq^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
_output_shapes
: *
T0
*З
_class}
{yloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
о
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergeu^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
Х
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergeu^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
╚
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergeu^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *R
valueIBG BAclassifier/sparse_softmax_cross_entropy_loss/num_present/Select:0
Ф
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergeu^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
╟
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergeu^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*Q
valueHBF B@classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropy:0*
dtype0*
_output_shapes
: 
С
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergeu^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
ф

rclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertyclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switchyclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	

Ы
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchtclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Mergesclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*З
_class}
{yloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
Ч
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Switchmclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapesclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*А
_classv
trloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Ф
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Switchlclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapesclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*
_classu
sqloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Ж
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3Switchiclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarsclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*|
_classr
pnloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar
г
Аclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Identitytclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fs^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*З
_class}
{yloc:@classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
й
qclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeАclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1~classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
_output_shapes
: : *
T0
*
N
Т
Zclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape>classifier/sparse_softmax_cross_entropy_loss/xentropy/xentropyT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merger^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
_output_shapes
:*
T0
щ
Zclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merger^classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *  А?
┬
Tclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillZclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeZclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:         
Н
Jclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMul?classifier/sparse_softmax_cross_entropy_loss/num_present/SelectTclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
_output_shapes
:*
T0
▐
>classifier/sparse_softmax_cross_entropy_loss/num_present/ConstConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB: *
dtype0*
_output_shapes
:
ь
8classifier/sparse_softmax_cross_entropy_loss/num_presentSumJclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights>classifier/sparse_softmax_cross_entropy_loss/num_present/Const*
T0*
_output_shapes
: 
═
4classifier/sparse_softmax_cross_entropy_loss/Const_1ConstT^classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB *
dtype0*
_output_shapes
: 
┬
2classifier/sparse_softmax_cross_entropy_loss/Sum_1Sum0classifier/sparse_softmax_cross_entropy_loss/Sum4classifier/sparse_softmax_cross_entropy_loss/Const_1*
_output_shapes
: *
T0
═
2classifier/sparse_softmax_cross_entropy_loss/valueDivNoNan2classifier/sparse_softmax_cross_entropy_loss/Sum_18classifier/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
|
7classifier/multiclass_precision_up_to_k_loss/smoothnessConst*
valueB
 *    *
dtype0*
_output_shapes
: 
|
2classifier/multiclass_precision_up_to_k_loss/ShapeShapeclassifier/dense_2/BiasAdd*
T0*
_output_shapes
:
К
@classifier/multiclass_precision_up_to_k_loss/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
М
Bclassifier/multiclass_precision_up_to_k_loss/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
Bclassifier/multiclass_precision_up_to_k_loss/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
О
:classifier/multiclass_precision_up_to_k_loss/strided_sliceStridedSlice2classifier/multiclass_precision_up_to_k_loss/Shape@classifier/multiclass_precision_up_to_k_loss/strided_slice/stackBclassifier/multiclass_precision_up_to_k_loss/strided_slice/stack_1Bclassifier/multiclass_precision_up_to_k_loss/strided_slice/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
е
1classifier/multiclass_precision_up_to_k_loss/CastCast:classifier/multiclass_precision_up_to_k_loss/strided_slice*

SrcT0*

DstT0	*
_output_shapes
: 
z
8classifier/multiclass_precision_up_to_k_loss/range/startConst*
value	B	 R *
dtype0	*
_output_shapes
: 
z
8classifier/multiclass_precision_up_to_k_loss/range/deltaConst*
value	B	 R*
dtype0	*
_output_shapes
: 
У
2classifier/multiclass_precision_up_to_k_loss/rangeRange8classifier/multiclass_precision_up_to_k_loss/range/start1classifier/multiclass_precision_up_to_k_loss/Cast8classifier/multiclass_precision_up_to_k_loss/range/delta*#
_output_shapes
:         *

Tidx0	
Л
:classifier/multiclass_precision_up_to_k_loss/Reshape/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
с
4classifier/multiclass_precision_up_to_k_loss/ReshapeReshape2classifier/multiclass_precision_up_to_k_loss/range:classifier/multiclass_precision_up_to_k_loss/Reshape/shape*
T0	*'
_output_shapes
:         
Н
<classifier/multiclass_precision_up_to_k_loss/Reshape_1/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
┴
6classifier/multiclass_precision_up_to_k_loss/Reshape_1Reshapeextractor/Tile<classifier/multiclass_precision_up_to_k_loss/Reshape_1/shape*'
_output_shapes
:         *
T0	
z
8classifier/multiclass_precision_up_to_k_loss/concat/axisConst*
dtype0*
_output_shapes
: *
value	B :
в
3classifier/multiclass_precision_up_to_k_loss/concatConcatV24classifier/multiclass_precision_up_to_k_loss/Reshape6classifier/multiclass_precision_up_to_k_loss/Reshape_18classifier/multiclass_precision_up_to_k_loss/concat/axis*'
_output_shapes
:         *
T0	*
N
╓
5classifier/multiclass_precision_up_to_k_loss/GatherNdGatherNdclassifier/dense_2/BiasAdd3classifier/multiclass_precision_up_to_k_loss/concat*
Tindices0	*#
_output_shapes
:         *
Tparams0
}
;classifier/multiclass_precision_up_to_k_loss/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ы
7classifier/multiclass_precision_up_to_k_loss/ExpandDims
ExpandDims5classifier/multiclass_precision_up_to_k_loss/GatherNd;classifier/multiclass_precision_up_to_k_loss/ExpandDims/dim*
T0*'
_output_shapes
:         
w
5classifier/multiclass_precision_up_to_k_loss/TopKV2/kConst*
dtype0*
_output_shapes
: *
value	B :
╒
3classifier/multiclass_precision_up_to_k_loss/TopKV2TopKV2classifier/dense_2/BiasAdd5classifier/multiclass_precision_up_to_k_loss/TopKV2/k*
T0*:
_output_shapes(
&:         :         
Й
8classifier/multiclass_precision_up_to_k_loss/Slice/beginConst*
valueB"        *
dtype0*
_output_shapes
:
И
7classifier/multiclass_precision_up_to_k_loss/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB"       
в
2classifier/multiclass_precision_up_to_k_loss/SliceSlice3classifier/multiclass_precision_up_to_k_loss/TopKV28classifier/multiclass_precision_up_to_k_loss/Slice/begin7classifier/multiclass_precision_up_to_k_loss/Slice/size*'
_output_shapes
:         *
Index0*
T0
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_1/beginConst*
valueB"       *
dtype0*
_output_shapes
:
К
9classifier/multiclass_precision_up_to_k_loss/Slice_1/sizeConst*
_output_shapes
:*
valueB"       *
dtype0
и
4classifier/multiclass_precision_up_to_k_loss/Slice_1Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_1/begin9classifier/multiclass_precision_up_to_k_loss/Slice_1/size*
T0*'
_output_shapes
:         *
Index0
р
4classifier/multiclass_precision_up_to_k_loss/GreaterGreater7classifier/multiclass_precision_up_to_k_loss/ExpandDims4classifier/multiclass_precision_up_to_k_loss/Slice_1*
T0*'
_output_shapes
:         
П
3classifier/multiclass_precision_up_to_k_loss/SelectSelect4classifier/multiclass_precision_up_to_k_loss/Greater4classifier/multiclass_precision_up_to_k_loss/Slice_12classifier/multiclass_precision_up_to_k_loss/Slice*
T0*'
_output_shapes
:         
Я
<classifier/multiclass_precision_up_to_k_loss/ones_like/ShapeShape3classifier/multiclass_precision_up_to_k_loss/Select*
_output_shapes
:*
T0
Б
<classifier/multiclass_precision_up_to_k_loss/ones_like/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ь
6classifier/multiclass_precision_up_to_k_loss/ones_likeFill<classifier/multiclass_precision_up_to_k_loss/ones_like/Shape<classifier/multiclass_precision_up_to_k_loss/ones_like/Const*'
_output_shapes
:         *
T0
╓
0classifier/multiclass_precision_up_to_k_loss/addAdd6classifier/multiclass_precision_up_to_k_loss/ones_like3classifier/multiclass_precision_up_to_k_loss/Select*'
_output_shapes
:         *
T0
╘
0classifier/multiclass_precision_up_to_k_loss/subSub0classifier/multiclass_precision_up_to_k_loss/add7classifier/multiclass_precision_up_to_k_loss/ExpandDims*
T0*'
_output_shapes
:         
Э
1classifier/multiclass_precision_up_to_k_loss/ReluRelu0classifier/multiclass_precision_up_to_k_loss/sub*'
_output_shapes
:         *
T0
y
4classifier/multiclass_precision_up_to_k_loss/add_1/xConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
╔
2classifier/multiclass_precision_up_to_k_loss/add_1Add4classifier/multiclass_precision_up_to_k_loss/add_1/x7classifier/multiclass_precision_up_to_k_loss/smoothness*
_output_shapes
: *
T0
╙
0classifier/multiclass_precision_up_to_k_loss/divRealDiv0classifier/multiclass_precision_up_to_k_loss/sub2classifier/multiclass_precision_up_to_k_loss/add_1*
T0*'
_output_shapes
:         
Ы
0classifier/multiclass_precision_up_to_k_loss/AbsAbs0classifier/multiclass_precision_up_to_k_loss/div*
T0*'
_output_shapes
:         
Ы
0classifier/multiclass_precision_up_to_k_loss/NegNeg0classifier/multiclass_precision_up_to_k_loss/Abs*
T0*'
_output_shapes
:         
Ы
0classifier/multiclass_precision_up_to_k_loss/ExpExp0classifier/multiclass_precision_up_to_k_loss/Neg*
T0*'
_output_shapes
:         
y
4classifier/multiclass_precision_up_to_k_loss/add_2/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╙
2classifier/multiclass_precision_up_to_k_loss/add_2Add4classifier/multiclass_precision_up_to_k_loss/add_2/x0classifier/multiclass_precision_up_to_k_loss/Exp*'
_output_shapes
:         *
T0
Э
0classifier/multiclass_precision_up_to_k_loss/LogLog2classifier/multiclass_precision_up_to_k_loss/add_2*
T0*'
_output_shapes
:         
╘
0classifier/multiclass_precision_up_to_k_loss/MulMul7classifier/multiclass_precision_up_to_k_loss/smoothness0classifier/multiclass_precision_up_to_k_loss/Log*
T0*'
_output_shapes
:         
╨
2classifier/multiclass_precision_up_to_k_loss/Add_3Add1classifier/multiclass_precision_up_to_k_loss/Relu0classifier/multiclass_precision_up_to_k_loss/Mul*
T0*'
_output_shapes
:         
y
4classifier/multiclass_precision_up_to_k_loss/mul_1/xConst*
valueB
 *hжн>*
dtype0*
_output_shapes
: 
╒
2classifier/multiclass_precision_up_to_k_loss/mul_1Mul4classifier/multiclass_precision_up_to_k_loss/mul_1/x2classifier/multiclass_precision_up_to_k_loss/Add_3*'
_output_shapes
:         *
T0
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB"       
К
9classifier/multiclass_precision_up_to_k_loss/Slice_2/sizeConst*
_output_shapes
:*
valueB"       *
dtype0
и
4classifier/multiclass_precision_up_to_k_loss/Slice_2Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_2/begin9classifier/multiclass_precision_up_to_k_loss/Slice_2/size*'
_output_shapes
:         *
Index0*
T0
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_3/beginConst*
valueB"       *
dtype0*
_output_shapes
:
К
9classifier/multiclass_precision_up_to_k_loss/Slice_3/sizeConst*
dtype0*
_output_shapes
:*
valueB"       
и
4classifier/multiclass_precision_up_to_k_loss/Slice_3Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_3/begin9classifier/multiclass_precision_up_to_k_loss/Slice_3/size*'
_output_shapes
:         *
Index0*
T0
т
6classifier/multiclass_precision_up_to_k_loss/Greater_1Greater7classifier/multiclass_precision_up_to_k_loss/ExpandDims4classifier/multiclass_precision_up_to_k_loss/Slice_3*
T0*'
_output_shapes
:         
Х
5classifier/multiclass_precision_up_to_k_loss/Select_1Select6classifier/multiclass_precision_up_to_k_loss/Greater_14classifier/multiclass_precision_up_to_k_loss/Slice_34classifier/multiclass_precision_up_to_k_loss/Slice_2*
T0*'
_output_shapes
:         
г
>classifier/multiclass_precision_up_to_k_loss/ones_like_1/ShapeShape5classifier/multiclass_precision_up_to_k_loss/Select_1*
_output_shapes
:*
T0
Г
>classifier/multiclass_precision_up_to_k_loss/ones_like_1/ConstConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Є
8classifier/multiclass_precision_up_to_k_loss/ones_like_1Fill>classifier/multiclass_precision_up_to_k_loss/ones_like_1/Shape>classifier/multiclass_precision_up_to_k_loss/ones_like_1/Const*'
_output_shapes
:         *
T0
▄
2classifier/multiclass_precision_up_to_k_loss/add_4Add8classifier/multiclass_precision_up_to_k_loss/ones_like_15classifier/multiclass_precision_up_to_k_loss/Select_1*'
_output_shapes
:         *
T0
╪
2classifier/multiclass_precision_up_to_k_loss/sub_1Sub2classifier/multiclass_precision_up_to_k_loss/add_47classifier/multiclass_precision_up_to_k_loss/ExpandDims*'
_output_shapes
:         *
T0
б
3classifier/multiclass_precision_up_to_k_loss/Relu_1Relu2classifier/multiclass_precision_up_to_k_loss/sub_1*'
_output_shapes
:         *
T0
y
4classifier/multiclass_precision_up_to_k_loss/add_5/xConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
╔
2classifier/multiclass_precision_up_to_k_loss/add_5Add4classifier/multiclass_precision_up_to_k_loss/add_5/x7classifier/multiclass_precision_up_to_k_loss/smoothness*
T0*
_output_shapes
: 
╫
2classifier/multiclass_precision_up_to_k_loss/div_1RealDiv2classifier/multiclass_precision_up_to_k_loss/sub_12classifier/multiclass_precision_up_to_k_loss/add_5*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Abs_1Abs2classifier/multiclass_precision_up_to_k_loss/div_1*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Neg_1Neg2classifier/multiclass_precision_up_to_k_loss/Abs_1*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Exp_1Exp2classifier/multiclass_precision_up_to_k_loss/Neg_1*
T0*'
_output_shapes
:         
y
4classifier/multiclass_precision_up_to_k_loss/add_6/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
╒
2classifier/multiclass_precision_up_to_k_loss/add_6Add4classifier/multiclass_precision_up_to_k_loss/add_6/x2classifier/multiclass_precision_up_to_k_loss/Exp_1*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Log_1Log2classifier/multiclass_precision_up_to_k_loss/add_6*
T0*'
_output_shapes
:         
╪
2classifier/multiclass_precision_up_to_k_loss/Mul_2Mul7classifier/multiclass_precision_up_to_k_loss/smoothness2classifier/multiclass_precision_up_to_k_loss/Log_1*'
_output_shapes
:         *
T0
╘
2classifier/multiclass_precision_up_to_k_loss/Add_7Add3classifier/multiclass_precision_up_to_k_loss/Relu_12classifier/multiclass_precision_up_to_k_loss/Mul_2*'
_output_shapes
:         *
T0
y
4classifier/multiclass_precision_up_to_k_loss/mul_3/xConst*
valueB
 *7[>*
dtype0*
_output_shapes
: 
╒
2classifier/multiclass_precision_up_to_k_loss/mul_3Mul4classifier/multiclass_precision_up_to_k_loss/mul_3/x2classifier/multiclass_precision_up_to_k_loss/Add_7*
T0*'
_output_shapes
:         
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_4/beginConst*
valueB"       *
dtype0*
_output_shapes
:
К
9classifier/multiclass_precision_up_to_k_loss/Slice_4/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
и
4classifier/multiclass_precision_up_to_k_loss/Slice_4Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_4/begin9classifier/multiclass_precision_up_to_k_loss/Slice_4/size*'
_output_shapes
:         *
Index0*
T0
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_5/beginConst*
_output_shapes
:*
valueB"       *
dtype0
К
9classifier/multiclass_precision_up_to_k_loss/Slice_5/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
и
4classifier/multiclass_precision_up_to_k_loss/Slice_5Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_5/begin9classifier/multiclass_precision_up_to_k_loss/Slice_5/size*'
_output_shapes
:         *
Index0*
T0
т
6classifier/multiclass_precision_up_to_k_loss/Greater_2Greater7classifier/multiclass_precision_up_to_k_loss/ExpandDims4classifier/multiclass_precision_up_to_k_loss/Slice_5*
T0*'
_output_shapes
:         
Х
5classifier/multiclass_precision_up_to_k_loss/Select_2Select6classifier/multiclass_precision_up_to_k_loss/Greater_24classifier/multiclass_precision_up_to_k_loss/Slice_54classifier/multiclass_precision_up_to_k_loss/Slice_4*
T0*'
_output_shapes
:         
г
>classifier/multiclass_precision_up_to_k_loss/ones_like_2/ShapeShape5classifier/multiclass_precision_up_to_k_loss/Select_2*
T0*
_output_shapes
:
Г
>classifier/multiclass_precision_up_to_k_loss/ones_like_2/ConstConst*
_output_shapes
: *
valueB
 *  А?*
dtype0
Є
8classifier/multiclass_precision_up_to_k_loss/ones_like_2Fill>classifier/multiclass_precision_up_to_k_loss/ones_like_2/Shape>classifier/multiclass_precision_up_to_k_loss/ones_like_2/Const*
T0*'
_output_shapes
:         
▄
2classifier/multiclass_precision_up_to_k_loss/add_8Add8classifier/multiclass_precision_up_to_k_loss/ones_like_25classifier/multiclass_precision_up_to_k_loss/Select_2*'
_output_shapes
:         *
T0
╪
2classifier/multiclass_precision_up_to_k_loss/sub_2Sub2classifier/multiclass_precision_up_to_k_loss/add_87classifier/multiclass_precision_up_to_k_loss/ExpandDims*
T0*'
_output_shapes
:         
б
3classifier/multiclass_precision_up_to_k_loss/Relu_2Relu2classifier/multiclass_precision_up_to_k_loss/sub_2*'
_output_shapes
:         *
T0
y
4classifier/multiclass_precision_up_to_k_loss/add_9/xConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
╔
2classifier/multiclass_precision_up_to_k_loss/add_9Add4classifier/multiclass_precision_up_to_k_loss/add_9/x7classifier/multiclass_precision_up_to_k_loss/smoothness*
T0*
_output_shapes
: 
╫
2classifier/multiclass_precision_up_to_k_loss/div_2RealDiv2classifier/multiclass_precision_up_to_k_loss/sub_22classifier/multiclass_precision_up_to_k_loss/add_9*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Abs_2Abs2classifier/multiclass_precision_up_to_k_loss/div_2*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Neg_2Neg2classifier/multiclass_precision_up_to_k_loss/Abs_2*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Exp_2Exp2classifier/multiclass_precision_up_to_k_loss/Neg_2*'
_output_shapes
:         *
T0
z
5classifier/multiclass_precision_up_to_k_loss/add_10/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
╫
3classifier/multiclass_precision_up_to_k_loss/add_10Add5classifier/multiclass_precision_up_to_k_loss/add_10/x2classifier/multiclass_precision_up_to_k_loss/Exp_2*
T0*'
_output_shapes
:         
а
2classifier/multiclass_precision_up_to_k_loss/Log_2Log3classifier/multiclass_precision_up_to_k_loss/add_10*
T0*'
_output_shapes
:         
╪
2classifier/multiclass_precision_up_to_k_loss/Mul_4Mul7classifier/multiclass_precision_up_to_k_loss/smoothness2classifier/multiclass_precision_up_to_k_loss/Log_2*'
_output_shapes
:         *
T0
╒
3classifier/multiclass_precision_up_to_k_loss/Add_11Add3classifier/multiclass_precision_up_to_k_loss/Relu_22classifier/multiclass_precision_up_to_k_loss/Mul_4*'
_output_shapes
:         *
T0
y
4classifier/multiclass_precision_up_to_k_loss/mul_5/xConst*
valueB
 *hж->*
dtype0*
_output_shapes
: 
╓
2classifier/multiclass_precision_up_to_k_loss/mul_5Mul4classifier/multiclass_precision_up_to_k_loss/mul_5/x3classifier/multiclass_precision_up_to_k_loss/Add_11*'
_output_shapes
:         *
T0
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_6/beginConst*
valueB"       *
dtype0*
_output_shapes
:
К
9classifier/multiclass_precision_up_to_k_loss/Slice_6/sizeConst*
dtype0*
_output_shapes
:*
valueB"       
и
4classifier/multiclass_precision_up_to_k_loss/Slice_6Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_6/begin9classifier/multiclass_precision_up_to_k_loss/Slice_6/size*'
_output_shapes
:         *
Index0*
T0
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_7/beginConst*
dtype0*
_output_shapes
:*
valueB"       
К
9classifier/multiclass_precision_up_to_k_loss/Slice_7/sizeConst*
valueB"       *
dtype0*
_output_shapes
:
и
4classifier/multiclass_precision_up_to_k_loss/Slice_7Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_7/begin9classifier/multiclass_precision_up_to_k_loss/Slice_7/size*'
_output_shapes
:         *
Index0*
T0
т
6classifier/multiclass_precision_up_to_k_loss/Greater_3Greater7classifier/multiclass_precision_up_to_k_loss/ExpandDims4classifier/multiclass_precision_up_to_k_loss/Slice_7*'
_output_shapes
:         *
T0
Х
5classifier/multiclass_precision_up_to_k_loss/Select_3Select6classifier/multiclass_precision_up_to_k_loss/Greater_34classifier/multiclass_precision_up_to_k_loss/Slice_74classifier/multiclass_precision_up_to_k_loss/Slice_6*
T0*'
_output_shapes
:         
г
>classifier/multiclass_precision_up_to_k_loss/ones_like_3/ShapeShape5classifier/multiclass_precision_up_to_k_loss/Select_3*
_output_shapes
:*
T0
Г
>classifier/multiclass_precision_up_to_k_loss/ones_like_3/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Є
8classifier/multiclass_precision_up_to_k_loss/ones_like_3Fill>classifier/multiclass_precision_up_to_k_loss/ones_like_3/Shape>classifier/multiclass_precision_up_to_k_loss/ones_like_3/Const*
T0*'
_output_shapes
:         
▌
3classifier/multiclass_precision_up_to_k_loss/add_12Add8classifier/multiclass_precision_up_to_k_loss/ones_like_35classifier/multiclass_precision_up_to_k_loss/Select_3*
T0*'
_output_shapes
:         
┘
2classifier/multiclass_precision_up_to_k_loss/sub_3Sub3classifier/multiclass_precision_up_to_k_loss/add_127classifier/multiclass_precision_up_to_k_loss/ExpandDims*'
_output_shapes
:         *
T0
б
3classifier/multiclass_precision_up_to_k_loss/Relu_3Relu2classifier/multiclass_precision_up_to_k_loss/sub_3*'
_output_shapes
:         *
T0
z
5classifier/multiclass_precision_up_to_k_loss/add_13/xConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
╦
3classifier/multiclass_precision_up_to_k_loss/add_13Add5classifier/multiclass_precision_up_to_k_loss/add_13/x7classifier/multiclass_precision_up_to_k_loss/smoothness*
_output_shapes
: *
T0
╪
2classifier/multiclass_precision_up_to_k_loss/div_3RealDiv2classifier/multiclass_precision_up_to_k_loss/sub_33classifier/multiclass_precision_up_to_k_loss/add_13*
T0*'
_output_shapes
:         
Я
2classifier/multiclass_precision_up_to_k_loss/Abs_3Abs2classifier/multiclass_precision_up_to_k_loss/div_3*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Neg_3Neg2classifier/multiclass_precision_up_to_k_loss/Abs_3*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Exp_3Exp2classifier/multiclass_precision_up_to_k_loss/Neg_3*'
_output_shapes
:         *
T0
z
5classifier/multiclass_precision_up_to_k_loss/add_14/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╫
3classifier/multiclass_precision_up_to_k_loss/add_14Add5classifier/multiclass_precision_up_to_k_loss/add_14/x2classifier/multiclass_precision_up_to_k_loss/Exp_3*
T0*'
_output_shapes
:         
а
2classifier/multiclass_precision_up_to_k_loss/Log_3Log3classifier/multiclass_precision_up_to_k_loss/add_14*'
_output_shapes
:         *
T0
╪
2classifier/multiclass_precision_up_to_k_loss/Mul_6Mul7classifier/multiclass_precision_up_to_k_loss/smoothness2classifier/multiclass_precision_up_to_k_loss/Log_3*
T0*'
_output_shapes
:         
╒
3classifier/multiclass_precision_up_to_k_loss/Add_15Add3classifier/multiclass_precision_up_to_k_loss/Relu_32classifier/multiclass_precision_up_to_k_loss/Mul_6*'
_output_shapes
:         *
T0
y
4classifier/multiclass_precision_up_to_k_loss/mul_7/xConst*
dtype0*
_output_shapes
: *
valueB
 *ёТ>
╓
2classifier/multiclass_precision_up_to_k_loss/mul_7Mul4classifier/multiclass_precision_up_to_k_loss/mul_7/x3classifier/multiclass_precision_up_to_k_loss/Add_15*
T0*'
_output_shapes
:         
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_8/beginConst*
valueB"       *
dtype0*
_output_shapes
:
К
9classifier/multiclass_precision_up_to_k_loss/Slice_8/sizeConst*
dtype0*
_output_shapes
:*
valueB"       
и
4classifier/multiclass_precision_up_to_k_loss/Slice_8Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_8/begin9classifier/multiclass_precision_up_to_k_loss/Slice_8/size*
T0*'
_output_shapes
:         *
Index0
Л
:classifier/multiclass_precision_up_to_k_loss/Slice_9/beginConst*
valueB"       *
dtype0*
_output_shapes
:
К
9classifier/multiclass_precision_up_to_k_loss/Slice_9/sizeConst*
_output_shapes
:*
valueB"       *
dtype0
и
4classifier/multiclass_precision_up_to_k_loss/Slice_9Slice3classifier/multiclass_precision_up_to_k_loss/TopKV2:classifier/multiclass_precision_up_to_k_loss/Slice_9/begin9classifier/multiclass_precision_up_to_k_loss/Slice_9/size*'
_output_shapes
:         *
Index0*
T0
т
6classifier/multiclass_precision_up_to_k_loss/Greater_4Greater7classifier/multiclass_precision_up_to_k_loss/ExpandDims4classifier/multiclass_precision_up_to_k_loss/Slice_9*'
_output_shapes
:         *
T0
Х
5classifier/multiclass_precision_up_to_k_loss/Select_4Select6classifier/multiclass_precision_up_to_k_loss/Greater_44classifier/multiclass_precision_up_to_k_loss/Slice_94classifier/multiclass_precision_up_to_k_loss/Slice_8*
T0*'
_output_shapes
:         
г
>classifier/multiclass_precision_up_to_k_loss/ones_like_4/ShapeShape5classifier/multiclass_precision_up_to_k_loss/Select_4*
_output_shapes
:*
T0
Г
>classifier/multiclass_precision_up_to_k_loss/ones_like_4/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Є
8classifier/multiclass_precision_up_to_k_loss/ones_like_4Fill>classifier/multiclass_precision_up_to_k_loss/ones_like_4/Shape>classifier/multiclass_precision_up_to_k_loss/ones_like_4/Const*'
_output_shapes
:         *
T0
▌
3classifier/multiclass_precision_up_to_k_loss/add_16Add8classifier/multiclass_precision_up_to_k_loss/ones_like_45classifier/multiclass_precision_up_to_k_loss/Select_4*
T0*'
_output_shapes
:         
┘
2classifier/multiclass_precision_up_to_k_loss/sub_4Sub3classifier/multiclass_precision_up_to_k_loss/add_167classifier/multiclass_precision_up_to_k_loss/ExpandDims*'
_output_shapes
:         *
T0
б
3classifier/multiclass_precision_up_to_k_loss/Relu_4Relu2classifier/multiclass_precision_up_to_k_loss/sub_4*
T0*'
_output_shapes
:         
z
5classifier/multiclass_precision_up_to_k_loss/add_17/xConst*
valueB
 *╜7Ж5*
dtype0*
_output_shapes
: 
╦
3classifier/multiclass_precision_up_to_k_loss/add_17Add5classifier/multiclass_precision_up_to_k_loss/add_17/x7classifier/multiclass_precision_up_to_k_loss/smoothness*
T0*
_output_shapes
: 
╪
2classifier/multiclass_precision_up_to_k_loss/div_4RealDiv2classifier/multiclass_precision_up_to_k_loss/sub_43classifier/multiclass_precision_up_to_k_loss/add_17*
T0*'
_output_shapes
:         
Я
2classifier/multiclass_precision_up_to_k_loss/Abs_4Abs2classifier/multiclass_precision_up_to_k_loss/div_4*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Neg_4Neg2classifier/multiclass_precision_up_to_k_loss/Abs_4*'
_output_shapes
:         *
T0
Я
2classifier/multiclass_precision_up_to_k_loss/Exp_4Exp2classifier/multiclass_precision_up_to_k_loss/Neg_4*
T0*'
_output_shapes
:         
z
5classifier/multiclass_precision_up_to_k_loss/add_18/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╫
3classifier/multiclass_precision_up_to_k_loss/add_18Add5classifier/multiclass_precision_up_to_k_loss/add_18/x2classifier/multiclass_precision_up_to_k_loss/Exp_4*
T0*'
_output_shapes
:         
а
2classifier/multiclass_precision_up_to_k_loss/Log_4Log3classifier/multiclass_precision_up_to_k_loss/add_18*
T0*'
_output_shapes
:         
╪
2classifier/multiclass_precision_up_to_k_loss/Mul_8Mul7classifier/multiclass_precision_up_to_k_loss/smoothness2classifier/multiclass_precision_up_to_k_loss/Log_4*'
_output_shapes
:         *
T0
╒
3classifier/multiclass_precision_up_to_k_loss/Add_19Add3classifier/multiclass_precision_up_to_k_loss/Relu_42classifier/multiclass_precision_up_to_k_loss/Mul_8*'
_output_shapes
:         *
T0
y
4classifier/multiclass_precision_up_to_k_loss/mul_9/xConst*
valueB
 *аZ>*
dtype0*
_output_shapes
: 
╓
2classifier/multiclass_precision_up_to_k_loss/mul_9Mul4classifier/multiclass_precision_up_to_k_loss/mul_9/x3classifier/multiclass_precision_up_to_k_loss/Add_19*'
_output_shapes
:         *
T0
°
1classifier/multiclass_precision_up_to_k_loss/AddNAddN2classifier/multiclass_precision_up_to_k_loss/mul_12classifier/multiclass_precision_up_to_k_loss/mul_32classifier/multiclass_precision_up_to_k_loss/mul_52classifier/multiclass_precision_up_to_k_loss/mul_72classifier/multiclass_precision_up_to_k_loss/mul_9*
T0*
N*'
_output_shapes
:         
m
classifier/Reshape_4/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
Ь
classifier/Reshape_4Reshape1classifier/multiclass_precision_up_to_k_loss/AddNclassifier/Reshape_4/shape*#
_output_shapes
:         *
T0
m
classifier/Reshape_5/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
r
classifier/Reshape_5Reshapeextractor/ones_1classifier/Reshape_5/shape*
T0*
_output_shapes
:
e
classifier/Tensordot_2/axesConst*
dtype0*
_output_shapes
:*
valueB: 
^
classifier/Tensordot_2/freeConst*
valueB *
dtype0*
_output_shapes
: 
`
classifier/Tensordot_2/ShapeShapeclassifier/Reshape_4*
T0*
_output_shapes
:
f
$classifier/Tensordot_2/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╥
classifier/Tensordot_2/GatherV2GatherV2classifier/Tensordot_2/Shapeclassifier/Tensordot_2/free$classifier/Tensordot_2/GatherV2/axis*
Taxis0*
Tparams0*
Tindices0*
_output_shapes
: 
h
&classifier/Tensordot_2/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╪
!classifier/Tensordot_2/GatherV2_1GatherV2classifier/Tensordot_2/Shapeclassifier/Tensordot_2/axes&classifier/Tensordot_2/GatherV2_1/axis*
Taxis0*
Tparams0*
Tindices0*
_output_shapes
:
f
classifier/Tensordot_2/ConstConst*
_output_shapes
:*
valueB: *
dtype0
Г
classifier/Tensordot_2/ProdProdclassifier/Tensordot_2/GatherV2classifier/Tensordot_2/Const*
_output_shapes
: *
T0
h
classifier/Tensordot_2/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
Й
classifier/Tensordot_2/Prod_1Prod!classifier/Tensordot_2/GatherV2_1classifier/Tensordot_2/Const_1*
T0*
_output_shapes
: 
d
"classifier/Tensordot_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╡
classifier/Tensordot_2/concatConcatV2classifier/Tensordot_2/freeclassifier/Tensordot_2/axes"classifier/Tensordot_2/concat/axis*
_output_shapes
:*
T0*
N
О
classifier/Tensordot_2/stackPackclassifier/Tensordot_2/Prodclassifier/Tensordot_2/Prod_1*
T0*
N*
_output_shapes
:
Р
 classifier/Tensordot_2/transpose	Transposeclassifier/Reshape_4classifier/Tensordot_2/concat*#
_output_shapes
:         *
T0
д
classifier/Tensordot_2/ReshapeReshape classifier/Tensordot_2/transposeclassifier/Tensordot_2/stack*
T0*0
_output_shapes
:                  
q
'classifier/Tensordot_2/transpose_1/permConst*
_output_shapes
:*
valueB: *
dtype0
У
"classifier/Tensordot_2/transpose_1	Transposeclassifier/Reshape_5'classifier/Tensordot_2/transpose_1/perm*
T0*
_output_shapes
:
w
&classifier/Tensordot_2/Reshape_1/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
а
 classifier/Tensordot_2/Reshape_1Reshape"classifier/Tensordot_2/transpose_1&classifier/Tensordot_2/Reshape_1/shape*
_output_shapes

:*
T0
Ы
classifier/Tensordot_2/MatMulMatMulclassifier/Tensordot_2/Reshape classifier/Tensordot_2/Reshape_1*
T0*'
_output_shapes
:         
a
classifier/Tensordot_2/Const_2Const*
dtype0*
_output_shapes
: *
valueB 
f
$classifier/Tensordot_2/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╛
classifier/Tensordot_2/concat_1ConcatV2classifier/Tensordot_2/GatherV2classifier/Tensordot_2/Const_2$classifier/Tensordot_2/concat_1/axis*
_output_shapes
: *
T0*
N
В
classifier/Tensordot_2Reshapeclassifier/Tensordot_2/MatMulclassifier/Tensordot_2/concat_1*
T0*
_output_shapes
: 
\
classifier/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
b
classifier/Sum_2Sumclassifier/Reshape_5classifier/Const_2*
_output_shapes
: *
T0
j
classifier/truediv_2RealDivclassifier/Tensordot_2classifier/Sum_2*
T0*
_output_shapes
: 
U
classifier/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *q=ъ?
|
classifier/mulMulclassifier/mul/x2classifier/sparse_softmax_cross_entropy_loss/value*
_output_shapes
: *
T0
W
classifier/mul_1/xConst*
dtype0*
_output_shapes
: *
valueB
 *    
b
classifier/mul_1Mulclassifier/mul_1/xclassifier/truediv_2*
T0*
_output_shapes
: 
z
classifier/log_prob_tactic/tagsConst*+
value"B  Bclassifier/log_prob_tactic*
dtype0*
_output_shapes
: 
б
classifier/log_prob_tacticScalarSummaryclassifier/log_prob_tactic/tags2classifier/sparse_softmax_cross_entropy_loss/value*
_output_shapes
: *
T0
Ц
'classifier/mean/total/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *(
_class
loc:@classifier/mean/total

classifier/mean/total
VariableV2*
_output_shapes
: *
shape: *(
_class
loc:@classifier/mean/total*
dtype0
▒
classifier/mean/total/AssignAssignclassifier/mean/total'classifier/mean/total/Initializer/zeros*(
_class
loc:@classifier/mean/total*
_output_shapes
: *
T0
И
classifier/mean/total/readIdentityclassifier/mean/total*
_output_shapes
: *
T0*(
_class
loc:@classifier/mean/total
Ц
'classifier/mean/count/Initializer/zerosConst*
valueB
 *    *(
_class
loc:@classifier/mean/count*
dtype0*
_output_shapes
: 

classifier/mean/count
VariableV2*
shape: *(
_class
loc:@classifier/mean/count*
dtype0*
_output_shapes
: 
▒
classifier/mean/count/AssignAssignclassifier/mean/count'classifier/mean/count/Initializer/zeros*
T0*(
_class
loc:@classifier/mean/count*
_output_shapes
: 
И
classifier/mean/count/readIdentityclassifier/mean/count*(
_class
loc:@classifier/mean/count*
_output_shapes
: *
T0
V
classifier/mean/SizeConst*
dtype0*
_output_shapes
: *
value	B :
b
classifier/mean/CastCastclassifier/mean/Size*

SrcT0*

DstT0*
_output_shapes
: 
X
classifier/mean/ConstConst*
_output_shapes
: *
valueB *
dtype0
Ж
classifier/mean/SumSum2classifier/sparse_softmax_cross_entropy_loss/valueclassifier/mean/Const*
_output_shapes
: *
T0
Э
classifier/mean/AssignAdd	AssignAddclassifier/mean/totalclassifier/mean/Sum*
_output_shapes
: *
T0*(
_class
loc:@classifier/mean/total
╒
classifier/mean/AssignAdd_1	AssignAddclassifier/mean/countclassifier/mean/Cast3^classifier/sparse_softmax_cross_entropy_loss/value*
T0*(
_class
loc:@classifier/mean/count*
_output_shapes
: 
^
classifier/mean/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
z
classifier/mean/MaximumMaximumclassifier/mean/count/readclassifier/mean/Maximum/y*
T0*
_output_shapes
: 
w
classifier/mean/valueDivNoNanclassifier/mean/total/readclassifier/mean/Maximum*
T0*
_output_shapes
: 
`
classifier/mean/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 

classifier/mean/Maximum_1Maximumclassifier/mean/AssignAdd_1classifier/mean/Maximum_1/y*
T0*
_output_shapes
: 
|
classifier/mean/update_opDivNoNanclassifier/mean/AssignAddclassifier/mean/Maximum_1*
T0*
_output_shapes
: 
z
classifier/tactic_accuracy/tagsConst*+
value"B  Bclassifier/tactic_accuracy*
dtype0*
_output_shapes
: 
Г
classifier/tactic_accuracyScalarSummaryclassifier/tactic_accuracy/tagsclassifier/truediv_1*
T0*
_output_shapes
: 
Ъ
)classifier/mean_1/total/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    **
_class 
loc:@classifier/mean_1/total*
dtype0
Г
classifier/mean_1/total
VariableV2*
shape: **
_class 
loc:@classifier/mean_1/total*
dtype0*
_output_shapes
: 
╣
classifier/mean_1/total/AssignAssignclassifier/mean_1/total)classifier/mean_1/total/Initializer/zeros*
_output_shapes
: *
T0**
_class 
loc:@classifier/mean_1/total
О
classifier/mean_1/total/readIdentityclassifier/mean_1/total*
T0**
_class 
loc:@classifier/mean_1/total*
_output_shapes
: 
Ъ
)classifier/mean_1/count/Initializer/zerosConst**
_class 
loc:@classifier/mean_1/count*
dtype0*
_output_shapes
: *
valueB
 *    
Г
classifier/mean_1/count
VariableV2*
dtype0*
_output_shapes
: *
shape: **
_class 
loc:@classifier/mean_1/count
╣
classifier/mean_1/count/AssignAssignclassifier/mean_1/count)classifier/mean_1/count/Initializer/zeros*
_output_shapes
: *
T0**
_class 
loc:@classifier/mean_1/count
О
classifier/mean_1/count/readIdentityclassifier/mean_1/count**
_class 
loc:@classifier/mean_1/count*
_output_shapes
: *
T0
X
classifier/mean_1/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
f
classifier/mean_1/CastCastclassifier/mean_1/Size*

SrcT0*

DstT0*
_output_shapes
: 
Z
classifier/mean_1/ConstConst*
_output_shapes
: *
valueB *
dtype0
l
classifier/mean_1/SumSumclassifier/truediv_1classifier/mean_1/Const*
_output_shapes
: *
T0
е
classifier/mean_1/AssignAdd	AssignAddclassifier/mean_1/totalclassifier/mean_1/Sum*
T0**
_class 
loc:@classifier/mean_1/total*
_output_shapes
: 
┐
classifier/mean_1/AssignAdd_1	AssignAddclassifier/mean_1/countclassifier/mean_1/Cast^classifier/truediv_1*
T0**
_class 
loc:@classifier/mean_1/count*
_output_shapes
: 
`
classifier/mean_1/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
А
classifier/mean_1/MaximumMaximumclassifier/mean_1/count/readclassifier/mean_1/Maximum/y*
_output_shapes
: *
T0
}
classifier/mean_1/valueDivNoNanclassifier/mean_1/total/readclassifier/mean_1/Maximum*
_output_shapes
: *
T0
b
classifier/mean_1/Maximum_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Е
classifier/mean_1/Maximum_1Maximumclassifier/mean_1/AssignAdd_1classifier/mean_1/Maximum_1/y*
_output_shapes
: *
T0
В
classifier/mean_1/update_opDivNoNanclassifier/mean_1/AssignAddclassifier/mean_1/Maximum_1*
_output_shapes
: *
T0
v
classifier/weighted_topk/tagsConst*
dtype0*
_output_shapes
: *)
value B Bclassifier/weighted_topk

classifier/weighted_topkScalarSummaryclassifier/weighted_topk/tagsclassifier/truediv_2*
_output_shapes
: *
T0
Ъ
)classifier/mean_2/total/Initializer/zerosConst*
valueB
 *    **
_class 
loc:@classifier/mean_2/total*
dtype0*
_output_shapes
: 
Г
classifier/mean_2/total
VariableV2*
shape: **
_class 
loc:@classifier/mean_2/total*
dtype0*
_output_shapes
: 
╣
classifier/mean_2/total/AssignAssignclassifier/mean_2/total)classifier/mean_2/total/Initializer/zeros**
_class 
loc:@classifier/mean_2/total*
_output_shapes
: *
T0
О
classifier/mean_2/total/readIdentityclassifier/mean_2/total*
T0**
_class 
loc:@classifier/mean_2/total*
_output_shapes
: 
Ъ
)classifier/mean_2/count/Initializer/zerosConst*
valueB
 *    **
_class 
loc:@classifier/mean_2/count*
dtype0*
_output_shapes
: 
Г
classifier/mean_2/count
VariableV2*
shape: **
_class 
loc:@classifier/mean_2/count*
dtype0*
_output_shapes
: 
╣
classifier/mean_2/count/AssignAssignclassifier/mean_2/count)classifier/mean_2/count/Initializer/zeros*
_output_shapes
: *
T0**
_class 
loc:@classifier/mean_2/count
О
classifier/mean_2/count/readIdentityclassifier/mean_2/count*
T0**
_class 
loc:@classifier/mean_2/count*
_output_shapes
: 
X
classifier/mean_2/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
f
classifier/mean_2/CastCastclassifier/mean_2/Size*

DstT0*
_output_shapes
: *

SrcT0
Z
classifier/mean_2/ConstConst*
_output_shapes
: *
valueB *
dtype0
l
classifier/mean_2/SumSumclassifier/truediv_2classifier/mean_2/Const*
T0*
_output_shapes
: 
е
classifier/mean_2/AssignAdd	AssignAddclassifier/mean_2/totalclassifier/mean_2/Sum*
T0**
_class 
loc:@classifier/mean_2/total*
_output_shapes
: 
┐
classifier/mean_2/AssignAdd_1	AssignAddclassifier/mean_2/countclassifier/mean_2/Cast^classifier/truediv_2**
_class 
loc:@classifier/mean_2/count*
_output_shapes
: *
T0
`
classifier/mean_2/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
А
classifier/mean_2/MaximumMaximumclassifier/mean_2/count/readclassifier/mean_2/Maximum/y*
T0*
_output_shapes
: 
}
classifier/mean_2/valueDivNoNanclassifier/mean_2/total/readclassifier/mean_2/Maximum*
T0*
_output_shapes
: 
b
classifier/mean_2/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
classifier/mean_2/Maximum_1Maximumclassifier/mean_2/AssignAdd_1classifier/mean_2/Maximum_1/y*
T0*
_output_shapes
: 
В
classifier/mean_2/update_opDivNoNanclassifier/mean_2/AssignAddclassifier/mean_2/Maximum_1*
T0*
_output_shapes
: 
Д
$classifier/tactic_topk_accuracy/tagsConst*
dtype0*
_output_shapes
: *0
value'B% Bclassifier/tactic_topk_accuracy
Л
classifier/tactic_topk_accuracyScalarSummary$classifier/tactic_topk_accuracy/tagsclassifier/truediv*
_output_shapes
: *
T0
Ъ
)classifier/mean_3/total/Initializer/zerosConst*
valueB
 *    **
_class 
loc:@classifier/mean_3/total*
dtype0*
_output_shapes
: 
Г
classifier/mean_3/total
VariableV2*
shape: **
_class 
loc:@classifier/mean_3/total*
dtype0*
_output_shapes
: 
╣
classifier/mean_3/total/AssignAssignclassifier/mean_3/total)classifier/mean_3/total/Initializer/zeros**
_class 
loc:@classifier/mean_3/total*
_output_shapes
: *
T0
О
classifier/mean_3/total/readIdentityclassifier/mean_3/total**
_class 
loc:@classifier/mean_3/total*
_output_shapes
: *
T0
Ъ
)classifier/mean_3/count/Initializer/zerosConst**
_class 
loc:@classifier/mean_3/count*
dtype0*
_output_shapes
: *
valueB
 *    
Г
classifier/mean_3/count
VariableV2*
shape: **
_class 
loc:@classifier/mean_3/count*
dtype0*
_output_shapes
: 
╣
classifier/mean_3/count/AssignAssignclassifier/mean_3/count)classifier/mean_3/count/Initializer/zeros**
_class 
loc:@classifier/mean_3/count*
_output_shapes
: *
T0
О
classifier/mean_3/count/readIdentityclassifier/mean_3/count**
_class 
loc:@classifier/mean_3/count*
_output_shapes
: *
T0
X
classifier/mean_3/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
f
classifier/mean_3/CastCastclassifier/mean_3/Size*

DstT0*
_output_shapes
: *

SrcT0
Z
classifier/mean_3/ConstConst*
valueB *
dtype0*
_output_shapes
: 
j
classifier/mean_3/SumSumclassifier/truedivclassifier/mean_3/Const*
T0*
_output_shapes
: 
е
classifier/mean_3/AssignAdd	AssignAddclassifier/mean_3/totalclassifier/mean_3/Sum*
T0**
_class 
loc:@classifier/mean_3/total*
_output_shapes
: 
╜
classifier/mean_3/AssignAdd_1	AssignAddclassifier/mean_3/countclassifier/mean_3/Cast^classifier/truediv*
T0**
_class 
loc:@classifier/mean_3/count*
_output_shapes
: 
`
classifier/mean_3/Maximum/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
А
classifier/mean_3/MaximumMaximumclassifier/mean_3/count/readclassifier/mean_3/Maximum/y*
_output_shapes
: *
T0
}
classifier/mean_3/valueDivNoNanclassifier/mean_3/total/readclassifier/mean_3/Maximum*
T0*
_output_shapes
: 
b
classifier/mean_3/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Е
classifier/mean_3/Maximum_1Maximumclassifier/mean_3/AssignAdd_1classifier/mean_3/Maximum_1/y*
T0*
_output_shapes
: 
В
classifier/mean_3/update_opDivNoNanclassifier/mean_3/AssignAddclassifier/mean_3/Maximum_1*
_output_shapes
: *
T0
w
classifier/target_tactics/tagConst**
value!B Bclassifier/target_tactics*
dtype0*
_output_shapes
: 
v
5classifier/target_tactics/serialized_summary_metadataConst*
_output_shapes
: *
valueB B *
dtype0
│
classifier/target_tacticsTensorSummaryV2classifier/target_tactics/tagextractor/Tile5classifier/target_tactics/serialized_summary_metadata*
_output_shapes
: *
T0	
}
 classifier/predicted_tactics/tagConst*-
value$B" Bclassifier/predicted_tactics*
dtype0*
_output_shapes
: 
y
8classifier/predicted_tactics/serialized_summary_metadataConst*
dtype0*
_output_shapes
: *
valueB B 
┐
classifier/predicted_tacticsTensorSummaryV2 classifier/predicted_tactics/tagclassifier/ArgMax8classifier/predicted_tactics/serialized_summary_metadata*
_output_shapes
: *
T0	
░
0classifier/mean_accuracy/total/Initializer/zerosConst*
valueB)*    *1
_class'
%#loc:@classifier/mean_accuracy/total*
dtype0*
_output_shapes
:)
Щ
classifier/mean_accuracy/total
VariableV2*
shape:)*1
_class'
%#loc:@classifier/mean_accuracy/total*
dtype0*
_output_shapes
:)
┘
%classifier/mean_accuracy/total/AssignAssignclassifier/mean_accuracy/total0classifier/mean_accuracy/total/Initializer/zeros*1
_class'
%#loc:@classifier/mean_accuracy/total*
_output_shapes
:)*
T0
з
#classifier/mean_accuracy/total/readIdentityclassifier/mean_accuracy/total*
T0*1
_class'
%#loc:@classifier/mean_accuracy/total*
_output_shapes
:)
░
0classifier/mean_accuracy/count/Initializer/zerosConst*
valueB)*    *1
_class'
%#loc:@classifier/mean_accuracy/count*
dtype0*
_output_shapes
:)
Щ
classifier/mean_accuracy/count
VariableV2*
shape:)*1
_class'
%#loc:@classifier/mean_accuracy/count*
dtype0*
_output_shapes
:)
┘
%classifier/mean_accuracy/count/AssignAssignclassifier/mean_accuracy/count0classifier/mean_accuracy/count/Initializer/zeros*1
_class'
%#loc:@classifier/mean_accuracy/count*
_output_shapes
:)*
T0
з
#classifier/mean_accuracy/count/readIdentityclassifier/mean_accuracy/count*
T0*1
_class'
%#loc:@classifier/mean_accuracy/count*
_output_shapes
:)
V
classifier/mean_accuracy/SizeSizeextractor/Tile*
T0	*
_output_shapes
: 
g
$classifier/mean_accuracy/ones/Less/yConst*
value
B :ш*
dtype0*
_output_shapes
: 
Р
"classifier/mean_accuracy/ones/LessLessclassifier/mean_accuracy/Size$classifier/mean_accuracy/ones/Less/y*
_output_shapes
: *
T0
y
$classifier/mean_accuracy/ones/packedPackclassifier/mean_accuracy/Size*
_output_shapes
:*
T0*
N
h
#classifier/mean_accuracy/ones/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Ю
classifier/mean_accuracy/onesFill$classifier/mean_accuracy/ones/packed#classifier/mean_accuracy/ones/Const*#
_output_shapes
:         *
T0
x
classifier/mean_accuracy/EqualEqualclassifier/ArgMaxextractor/Tile*#
_output_shapes
:         *
T0	
В
classifier/mean_accuracy/CastCastclassifier/mean_accuracy/Equal*

SrcT0
*

DstT0*#
_output_shapes
:         
ш
#classifier/mean_accuracy/ScatterAdd
ScatterAddclassifier/mean_accuracy/totalextractor/Tileclassifier/mean_accuracy/ones*
Tindices0	*
_output_shapes
:)*
T0*1
_class'
%#loc:@classifier/mean_accuracy/total
ъ
%classifier/mean_accuracy/ScatterAdd_1
ScatterAddclassifier/mean_accuracy/countextractor/Tileclassifier/mean_accuracy/Cast*1
_class'
%#loc:@classifier/mean_accuracy/count*
Tindices0	*
_output_shapes
:)*
T0
g
"classifier/mean_accuracy/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Щ
 classifier/mean_accuracy/MaximumMaximum#classifier/mean_accuracy/total/read"classifier/mean_accuracy/Maximum/y*
_output_shapes
:)*
T0
Ы
#classifier/mean_accuracy/div_no_nanDivNoNan#classifier/mean_accuracy/count/read classifier/mean_accuracy/Maximum*
_output_shapes
:)*
T0
h
classifier/mean_accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ф
&classifier/mean_accuracy/mean_accuracyMean#classifier/mean_accuracy/div_no_nanclassifier/mean_accuracy/Const*
T0*
_output_shapes
: 
i
$classifier/mean_accuracy/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Э
"classifier/mean_accuracy/Maximum_1Maximum#classifier/mean_accuracy/ScatterAdd$classifier/mean_accuracy/Maximum_1/y*
_output_shapes
:)*
T0
Ю
"classifier/mean_accuracy/update_opDivNoNan%classifier/mean_accuracy/ScatterAdd_1"classifier/mean_accuracy/Maximum_1*
_output_shapes
:)*
T0
┐
=pairwise_scorer/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      */
_class%
#!loc:@pairwise_scorer/dense/kernel*
dtype0*
_output_shapes
:
▒
;pairwise_scorer/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *М7М┐*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
dtype0*
_output_shapes
: 
▒
;pairwise_scorer/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *М7М?*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
dtype0*
_output_shapes
: 
№
Epairwise_scorer/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform=pairwise_scorer/dense/kernel/Initializer/random_uniform/shape*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
dtype0*
_output_shapes

:*
T0
О
;pairwise_scorer/dense/kernel/Initializer/random_uniform/subSub;pairwise_scorer/dense/kernel/Initializer/random_uniform/max;pairwise_scorer/dense/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
_output_shapes
: 
а
;pairwise_scorer/dense/kernel/Initializer/random_uniform/mulMulEpairwise_scorer/dense/kernel/Initializer/random_uniform/RandomUniform;pairwise_scorer/dense/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
_output_shapes

:
Т
7pairwise_scorer/dense/kernel/Initializer/random_uniformAdd;pairwise_scorer/dense/kernel/Initializer/random_uniform/mul;pairwise_scorer/dense/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
_output_shapes

:
Э
pairwise_scorer/dense/kernel
VariableV2*
dtype0*
_output_shapes

:*
shape
:*/
_class%
#!loc:@pairwise_scorer/dense/kernel
▐
#pairwise_scorer/dense/kernel/AssignAssignpairwise_scorer/dense/kernel7pairwise_scorer/dense/kernel/Initializer/random_uniform*
T0*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
_output_shapes

:
е
!pairwise_scorer/dense/kernel/readIdentitypairwise_scorer/dense/kernel*
T0*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
_output_shapes

:
и
,pairwise_scorer/dense/bias/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@pairwise_scorer/dense/bias*
dtype0*
_output_shapes
:
С
pairwise_scorer/dense/bias
VariableV2*
shape:*-
_class#
!loc:@pairwise_scorer/dense/bias*
dtype0*
_output_shapes
:
╔
!pairwise_scorer/dense/bias/AssignAssignpairwise_scorer/dense/bias,pairwise_scorer/dense/bias/Initializer/zeros*-
_class#
!loc:@pairwise_scorer/dense/bias*
_output_shapes
:*
T0
Ы
pairwise_scorer/dense/bias/readIdentitypairwise_scorer/dense/bias*
_output_shapes
:*
T0*-
_class#
!loc:@pairwise_scorer/dense/bias
о
pairwise_scorer/dense/MatMulMatMul1encoder/dilated_cnn_pairwise_encoder/dense_2/Relu!pairwise_scorer/dense/kernel/read*
T0*'
_output_shapes
:         
Щ
pairwise_scorer/dense/BiasAddBiasAddpairwise_scorer/dense/MatMulpairwise_scorer/dense/bias/read*
T0*'
_output_shapes
:         
Z
pairwise_scorer/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
pairwise_scorer/Const_1Const*
_output_shapes
: *
valueB
 *    *
dtype0
o
"pairwise_scorer/boolean_mask/ShapeShapepairwise_scorer/dense/BiasAdd*
T0*
_output_shapes
:
z
0pairwise_scorer/boolean_mask/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
|
2pairwise_scorer/boolean_mask/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
|
2pairwise_scorer/boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
к
*pairwise_scorer/boolean_mask/strided_sliceStridedSlice"pairwise_scorer/boolean_mask/Shape0pairwise_scorer/boolean_mask/strided_slice/stack2pairwise_scorer/boolean_mask/strided_slice/stack_12pairwise_scorer/boolean_mask/strided_slice/stack_2*
_output_shapes
:*
Index0*
T0
}
3pairwise_scorer/boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
л
!pairwise_scorer/boolean_mask/ProdProd*pairwise_scorer/boolean_mask/strided_slice3pairwise_scorer/boolean_mask/Prod/reduction_indices*
_output_shapes
: *
T0
q
$pairwise_scorer/boolean_mask/Shape_1Shapepairwise_scorer/dense/BiasAdd*
_output_shapes
:*
T0
|
2pairwise_scorer/boolean_mask/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
~
4pairwise_scorer/boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
─
,pairwise_scorer/boolean_mask/strided_slice_1StridedSlice$pairwise_scorer/boolean_mask/Shape_12pairwise_scorer/boolean_mask/strided_slice_1/stack4pairwise_scorer/boolean_mask/strided_slice_1/stack_14pairwise_scorer/boolean_mask/strided_slice_1/stack_2*
T0*

begin_mask*
_output_shapes
: *
Index0
q
$pairwise_scorer/boolean_mask/Shape_2Shapepairwise_scorer/dense/BiasAdd*
_output_shapes
:*
T0
|
2pairwise_scorer/boolean_mask/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB: 
~
4pairwise_scorer/boolean_mask/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
─
,pairwise_scorer/boolean_mask/strided_slice_2StridedSlice$pairwise_scorer/boolean_mask/Shape_22pairwise_scorer/boolean_mask/strided_slice_2/stack4pairwise_scorer/boolean_mask/strided_slice_2/stack_14pairwise_scorer/boolean_mask/strided_slice_2/stack_2*
_output_shapes
:*
Index0*
T0*
end_mask
Е
,pairwise_scorer/boolean_mask/concat/values_1Pack!pairwise_scorer/boolean_mask/Prod*
_output_shapes
:*
T0*
N
j
(pairwise_scorer/boolean_mask/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
С
#pairwise_scorer/boolean_mask/concatConcatV2,pairwise_scorer/boolean_mask/strided_slice_1,pairwise_scorer/boolean_mask/concat/values_1,pairwise_scorer/boolean_mask/strided_slice_2(pairwise_scorer/boolean_mask/concat/axis*
T0*
N*
_output_shapes
:
е
$pairwise_scorer/boolean_mask/ReshapeReshapepairwise_scorer/dense/BiasAdd#pairwise_scorer/boolean_mask/concat*
T0*'
_output_shapes
:         

,pairwise_scorer/boolean_mask/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
Ц
&pairwise_scorer/boolean_mask/Reshape_1Reshapeextractor/ones_1,pairwise_scorer/boolean_mask/Reshape_1/shape*
_output_shapes
:*
T0
Е
"pairwise_scorer/boolean_mask/WhereWhere&pairwise_scorer/boolean_mask/Reshape_1*'
_output_shapes
:         *
T0
Ш
$pairwise_scorer/boolean_mask/SqueezeSqueeze"pairwise_scorer/boolean_mask/Where*#
_output_shapes
:         *
T0	*
squeeze_dims

l
*pairwise_scorer/boolean_mask/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
■
%pairwise_scorer/boolean_mask/GatherV2GatherV2$pairwise_scorer/boolean_mask/Reshape$pairwise_scorer/boolean_mask/Squeeze*pairwise_scorer/boolean_mask/GatherV2/axis*
Tindices0	*'
_output_shapes
:         *
Taxis0*
Tparams0
n
$pairwise_scorer/boolean_mask_1/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
|
2pairwise_scorer/boolean_mask_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┤
,pairwise_scorer/boolean_mask_1/strided_sliceStridedSlice$pairwise_scorer/boolean_mask_1/Shape2pairwise_scorer/boolean_mask_1/strided_slice/stack4pairwise_scorer/boolean_mask_1/strided_slice/stack_14pairwise_scorer/boolean_mask_1/strided_slice/stack_2*
T0*
_output_shapes
:*
Index0

5pairwise_scorer/boolean_mask_1/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
▒
#pairwise_scorer/boolean_mask_1/ProdProd,pairwise_scorer/boolean_mask_1/strided_slice5pairwise_scorer/boolean_mask_1/Prod/reduction_indices*
_output_shapes
: *
T0
p
&pairwise_scorer/boolean_mask_1/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask_1/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_1/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╬
.pairwise_scorer/boolean_mask_1/strided_slice_1StridedSlice&pairwise_scorer/boolean_mask_1/Shape_14pairwise_scorer/boolean_mask_1/strided_slice_1/stack6pairwise_scorer/boolean_mask_1/strided_slice_1/stack_16pairwise_scorer/boolean_mask_1/strided_slice_1/stack_2*

begin_mask*
_output_shapes
: *
Index0*
T0
p
&pairwise_scorer/boolean_mask_1/Shape_2Const*
valueB:*
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask_1/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_1/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_1/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╠
.pairwise_scorer/boolean_mask_1/strided_slice_2StridedSlice&pairwise_scorer/boolean_mask_1/Shape_24pairwise_scorer/boolean_mask_1/strided_slice_2/stack6pairwise_scorer/boolean_mask_1/strided_slice_2/stack_16pairwise_scorer/boolean_mask_1/strided_slice_2/stack_2*
end_mask*
_output_shapes
: *
Index0*
T0
Й
.pairwise_scorer/boolean_mask_1/concat/values_1Pack#pairwise_scorer/boolean_mask_1/Prod*
T0*
N*
_output_shapes
:
l
*pairwise_scorer/boolean_mask_1/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ы
%pairwise_scorer/boolean_mask_1/concatConcatV2.pairwise_scorer/boolean_mask_1/strided_slice_1.pairwise_scorer/boolean_mask_1/concat/values_1.pairwise_scorer/boolean_mask_1/strided_slice_2*pairwise_scorer/boolean_mask_1/concat/axis*
T0*
N*
_output_shapes
:
П
&pairwise_scorer/boolean_mask_1/ReshapeReshapeextractor/concat%pairwise_scorer/boolean_mask_1/concat*
_output_shapes
:*
T0
Б
.pairwise_scorer/boolean_mask_1/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ъ
(pairwise_scorer/boolean_mask_1/Reshape_1Reshapeextractor/ones_1.pairwise_scorer/boolean_mask_1/Reshape_1/shape*
_output_shapes
:*
T0
Й
$pairwise_scorer/boolean_mask_1/WhereWhere(pairwise_scorer/boolean_mask_1/Reshape_1*'
_output_shapes
:         *
T0
Ь
&pairwise_scorer/boolean_mask_1/SqueezeSqueeze$pairwise_scorer/boolean_mask_1/Where*
T0	*
squeeze_dims
*#
_output_shapes
:         
n
,pairwise_scorer/boolean_mask_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
В
'pairwise_scorer/boolean_mask_1/GatherV2GatherV2&pairwise_scorer/boolean_mask_1/Reshape&pairwise_scorer/boolean_mask_1/Squeeze,pairwise_scorer/boolean_mask_1/GatherV2/axis*
Tparams0*
Tindices0	*#
_output_shapes
:         *
Taxis0
`
pairwise_scorer/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
г
pairwise_scorer/ExpandDims
ExpandDims'pairwise_scorer/boolean_mask_1/GatherV2pairwise_scorer/ExpandDims/dim*
T0*'
_output_shapes
:         
Ф
/pairwise_scorer/sigmoid_cross_entropy_loss/CastCastpairwise_scorer/ExpandDims*

DstT0*'
_output_shapes
:         *

SrcT0
д
>pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/zeros_like	ZerosLike%pairwise_scorer/boolean_mask/GatherV2*'
_output_shapes
:         *
T0
щ
@pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/GreaterEqualGreaterEqual%pairwise_scorer/boolean_mask/GatherV2>pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/zeros_like*'
_output_shapes
:         *
T0
Я
:pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/SelectSelect@pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/GreaterEqual%pairwise_scorer/boolean_mask/GatherV2>pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/zeros_like*'
_output_shapes
:         *
T0
Ч
7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/NegNeg%pairwise_scorer/boolean_mask/GatherV2*'
_output_shapes
:         *
T0
Ъ
<pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/Select_1Select@pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/GreaterEqual7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/Neg%pairwise_scorer/boolean_mask/GatherV2*'
_output_shapes
:         *
T0
╚
7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/mulMul%pairwise_scorer/boolean_mask/GatherV2/pairwise_scorer/sigmoid_cross_entropy_loss/Cast*
T0*'
_output_shapes
:         
х
7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/subSub:pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/Select7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/mul*
T0*'
_output_shapes
:         
о
7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/ExpExp<pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/Select_1*
T0*'
_output_shapes
:         
н
9pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/Log1pLog1p7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/Exp*'
_output_shapes
:         *
T0
р
3pairwise_scorer/sigmoid_cross_entropy_loss/xentropyAdd7pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/sub9pairwise_scorer/sigmoid_cross_entropy_loss/xentropy/Log1p*'
_output_shapes
:         *
T0
М
Gpairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/weightsConst*
dtype0*
_output_shapes
: *
valueB
 *  А?
Р
Mpairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
valueB *
dtype0
О
Lpairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
п
Lpairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/values/shapeShape3pairwise_scorer/sigmoid_cross_entropy_loss/xentropy*
_output_shapes
:*
T0
Н
Kpairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
c
[pairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
╓
3pairwise_scorer/sigmoid_cross_entropy_loss/Cast_1/xConst\^pairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  А?*
dtype0*
_output_shapes
: 
╤
.pairwise_scorer/sigmoid_cross_entropy_loss/MulMul3pairwise_scorer/sigmoid_cross_entropy_loss/xentropy3pairwise_scorer/sigmoid_cross_entropy_loss/Cast_1/x*
T0*'
_output_shapes
:         
▀
0pairwise_scorer/sigmoid_cross_entropy_loss/ConstConst\^pairwise_scorer/sigmoid_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
╕
.pairwise_scorer/sigmoid_cross_entropy_loss/SumSum.pairwise_scorer/sigmoid_cross_entropy_loss/Mul0pairwise_scorer/sigmoid_cross_entropy_loss/Const*
_output_shapes
: *
T0
l
pairwise_scorer/SqueezeSqueeze%pairwise_scorer/boolean_mask/GatherV2*
T0*
_output_shapes
:
t
$pairwise_scorer/boolean_mask_2/ShapeShapepairwise_scorer/Squeeze*#
_output_shapes
:         *
T0
|
2pairwise_scorer/boolean_mask_2/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask_2/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask_2/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╜
,pairwise_scorer/boolean_mask_2/strided_sliceStridedSlice$pairwise_scorer/boolean_mask_2/Shape2pairwise_scorer/boolean_mask_2/strided_slice/stack4pairwise_scorer/boolean_mask_2/strided_slice/stack_14pairwise_scorer/boolean_mask_2/strided_slice/stack_2*
T0*#
_output_shapes
:         *
Index0

5pairwise_scorer/boolean_mask_2/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
▒
#pairwise_scorer/boolean_mask_2/ProdProd,pairwise_scorer/boolean_mask_2/strided_slice5pairwise_scorer/boolean_mask_2/Prod/reduction_indices*
_output_shapes
: *
T0
v
&pairwise_scorer/boolean_mask_2/Shape_1Shapepairwise_scorer/Squeeze*
T0*#
_output_shapes
:         
~
4pairwise_scorer/boolean_mask_2/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_2/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_2/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
┘
.pairwise_scorer/boolean_mask_2/strided_slice_1StridedSlice&pairwise_scorer/boolean_mask_2/Shape_14pairwise_scorer/boolean_mask_2/strided_slice_1/stack6pairwise_scorer/boolean_mask_2/strided_slice_1/stack_16pairwise_scorer/boolean_mask_2/strided_slice_1/stack_2*
Index0*
T0*

begin_mask*#
_output_shapes
:         
v
&pairwise_scorer/boolean_mask_2/Shape_2Shapepairwise_scorer/Squeeze*
T0*#
_output_shapes
:         
~
4pairwise_scorer/boolean_mask_2/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_2/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_2/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╫
.pairwise_scorer/boolean_mask_2/strided_slice_2StridedSlice&pairwise_scorer/boolean_mask_2/Shape_24pairwise_scorer/boolean_mask_2/strided_slice_2/stack6pairwise_scorer/boolean_mask_2/strided_slice_2/stack_16pairwise_scorer/boolean_mask_2/strided_slice_2/stack_2*
Index0*
T0*
end_mask*#
_output_shapes
:         
Й
.pairwise_scorer/boolean_mask_2/concat/values_1Pack#pairwise_scorer/boolean_mask_2/Prod*
T0*
N*
_output_shapes
:
l
*pairwise_scorer/boolean_mask_2/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
%pairwise_scorer/boolean_mask_2/concatConcatV2.pairwise_scorer/boolean_mask_2/strided_slice_1.pairwise_scorer/boolean_mask_2/concat/values_1.pairwise_scorer/boolean_mask_2/strided_slice_2*pairwise_scorer/boolean_mask_2/concat/axis*#
_output_shapes
:         *
T0*
N
Ф
&pairwise_scorer/boolean_mask_2/ReshapeReshapepairwise_scorer/Squeeze%pairwise_scorer/boolean_mask_2/concat*
T0*
_output_shapes
:
Б
.pairwise_scorer/boolean_mask_2/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB:
         
║
(pairwise_scorer/boolean_mask_2/Reshape_1Reshape'pairwise_scorer/boolean_mask_1/GatherV2.pairwise_scorer/boolean_mask_2/Reshape_1/shape*
T0*#
_output_shapes
:         
Й
$pairwise_scorer/boolean_mask_2/WhereWhere(pairwise_scorer/boolean_mask_2/Reshape_1*'
_output_shapes
:         *
T0
Ь
&pairwise_scorer/boolean_mask_2/SqueezeSqueeze$pairwise_scorer/boolean_mask_2/Where*
squeeze_dims
*#
_output_shapes
:         *
T0	
n
,pairwise_scorer/boolean_mask_2/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ў
'pairwise_scorer/boolean_mask_2/GatherV2GatherV2&pairwise_scorer/boolean_mask_2/Reshape&pairwise_scorer/boolean_mask_2/Squeeze,pairwise_scorer/boolean_mask_2/GatherV2/axis*
Tindices0	*
_output_shapes
:*
Taxis0*
Tparams0
n
pairwise_scorer/Squeeze_1Squeeze%pairwise_scorer/boolean_mask/GatherV2*
T0*
_output_shapes
:
W
pairwise_scorer/sub/xConst*
value	B :*
dtype0*
_output_shapes
: 
И
pairwise_scorer/subSubpairwise_scorer/sub/x'pairwise_scorer/boolean_mask_1/GatherV2*
T0*#
_output_shapes
:         
v
$pairwise_scorer/boolean_mask_3/ShapeShapepairwise_scorer/Squeeze_1*
T0*#
_output_shapes
:         
|
2pairwise_scorer/boolean_mask_3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4pairwise_scorer/boolean_mask_3/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
~
4pairwise_scorer/boolean_mask_3/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
╜
,pairwise_scorer/boolean_mask_3/strided_sliceStridedSlice$pairwise_scorer/boolean_mask_3/Shape2pairwise_scorer/boolean_mask_3/strided_slice/stack4pairwise_scorer/boolean_mask_3/strided_slice/stack_14pairwise_scorer/boolean_mask_3/strided_slice/stack_2*#
_output_shapes
:         *
Index0*
T0

5pairwise_scorer/boolean_mask_3/Prod/reduction_indicesConst*
valueB: *
dtype0*
_output_shapes
:
▒
#pairwise_scorer/boolean_mask_3/ProdProd,pairwise_scorer/boolean_mask_3/strided_slice5pairwise_scorer/boolean_mask_3/Prod/reduction_indices*
_output_shapes
: *
T0
x
&pairwise_scorer/boolean_mask_3/Shape_1Shapepairwise_scorer/Squeeze_1*#
_output_shapes
:         *
T0
~
4pairwise_scorer/boolean_mask_3/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_3/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_3/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┘
.pairwise_scorer/boolean_mask_3/strided_slice_1StridedSlice&pairwise_scorer/boolean_mask_3/Shape_14pairwise_scorer/boolean_mask_3/strided_slice_1/stack6pairwise_scorer/boolean_mask_3/strided_slice_1/stack_16pairwise_scorer/boolean_mask_3/strided_slice_1/stack_2*#
_output_shapes
:         *

begin_mask*
Index0*
T0
x
&pairwise_scorer/boolean_mask_3/Shape_2Shapepairwise_scorer/Squeeze_1*#
_output_shapes
:         *
T0
~
4pairwise_scorer/boolean_mask_3/strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB:
А
6pairwise_scorer/boolean_mask_3/strided_slice_2/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
А
6pairwise_scorer/boolean_mask_3/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╫
.pairwise_scorer/boolean_mask_3/strided_slice_2StridedSlice&pairwise_scorer/boolean_mask_3/Shape_24pairwise_scorer/boolean_mask_3/strided_slice_2/stack6pairwise_scorer/boolean_mask_3/strided_slice_2/stack_16pairwise_scorer/boolean_mask_3/strided_slice_2/stack_2*#
_output_shapes
:         *
Index0*
T0*
end_mask
Й
.pairwise_scorer/boolean_mask_3/concat/values_1Pack#pairwise_scorer/boolean_mask_3/Prod*
T0*
N*
_output_shapes
:
l
*pairwise_scorer/boolean_mask_3/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
%pairwise_scorer/boolean_mask_3/concatConcatV2.pairwise_scorer/boolean_mask_3/strided_slice_1.pairwise_scorer/boolean_mask_3/concat/values_1.pairwise_scorer/boolean_mask_3/strided_slice_2*pairwise_scorer/boolean_mask_3/concat/axis*#
_output_shapes
:         *
T0*
N
Ц
&pairwise_scorer/boolean_mask_3/ReshapeReshapepairwise_scorer/Squeeze_1%pairwise_scorer/boolean_mask_3/concat*
_output_shapes
:*
T0
Б
.pairwise_scorer/boolean_mask_3/Reshape_1/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ж
(pairwise_scorer/boolean_mask_3/Reshape_1Reshapepairwise_scorer/sub.pairwise_scorer/boolean_mask_3/Reshape_1/shape*
T0*#
_output_shapes
:         
Й
$pairwise_scorer/boolean_mask_3/WhereWhere(pairwise_scorer/boolean_mask_3/Reshape_1*'
_output_shapes
:         *
T0
Ь
&pairwise_scorer/boolean_mask_3/SqueezeSqueeze$pairwise_scorer/boolean_mask_3/Where*
T0	*
squeeze_dims
*#
_output_shapes
:         
n
,pairwise_scorer/boolean_mask_3/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ў
'pairwise_scorer/boolean_mask_3/GatherV2GatherV2&pairwise_scorer/boolean_mask_3/Reshape&pairwise_scorer/boolean_mask_3/Squeeze,pairwise_scorer/boolean_mask_3/GatherV2/axis*
Tindices0	*
_output_shapes
:*
Taxis0*
Tparams0
n
pairwise_scorer/SigmoidSigmoid'pairwise_scorer/boolean_mask_2/GatherV2*
_output_shapes
:*
T0
p
pairwise_scorer/Sigmoid_1Sigmoid'pairwise_scorer/boolean_mask_3/GatherV2*
T0*
_output_shapes
:
^
pairwise_scorer/Greater/yConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
y
pairwise_scorer/GreaterGreaterpairwise_scorer/Sigmoidpairwise_scorer/Greater/y*
T0*
_output_shapes
:
j
pairwise_scorer/ToFloatCastpairwise_scorer/Greater*
_output_shapes
:*

SrcT0
*

DstT0
V
pairwise_scorer/RankRankpairwise_scorer/ToFloat*
T0*
_output_shapes
: 
]
pairwise_scorer/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
pairwise_scorer/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
У
pairwise_scorer/rangeRangepairwise_scorer/range/startpairwise_scorer/Rankpairwise_scorer/range/delta*#
_output_shapes
:         
m
pairwise_scorer/MeanMeanpairwise_scorer/ToFloatpairwise_scorer/range*
_output_shapes
: *
T0
[
pairwise_scorer/Less/yConst*
_output_shapes
: *
valueB
 *   ?*
dtype0
r
pairwise_scorer/LessLesspairwise_scorer/Sigmoid_1pairwise_scorer/Less/y*
_output_shapes
:*
T0
i
pairwise_scorer/ToFloat_1Castpairwise_scorer/Less*

SrcT0
*

DstT0*
_output_shapes
:
Z
pairwise_scorer/Rank_1Rankpairwise_scorer/ToFloat_1*
T0*
_output_shapes
: 
_
pairwise_scorer/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
_
pairwise_scorer/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ы
pairwise_scorer/range_1Rangepairwise_scorer/range_1/startpairwise_scorer/Rank_1pairwise_scorer/range_1/delta*#
_output_shapes
:         
s
pairwise_scorer/Mean_1Meanpairwise_scorer/ToFloat_1pairwise_scorer/range_1*
T0*
_output_shapes
: 
u
pairwise_scorer/ShapeShape'pairwise_scorer/boolean_mask_3/GatherV2*#
_output_shapes
:         *
T0
m
#pairwise_scorer/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
o
%pairwise_scorer/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
o
%pairwise_scorer/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¤
pairwise_scorer/strided_sliceStridedSlicepairwise_scorer/Shape#pairwise_scorer/strided_slice/stack%pairwise_scorer/strided_slice/stack_1%pairwise_scorer/strided_slice/stack_2*
Index0*
shrink_axis_mask*
T0*
_output_shapes
: 
w
pairwise_scorer/Shape_1Shape'pairwise_scorer/boolean_mask_2/GatherV2*
T0*#
_output_shapes
:         
o
%pairwise_scorer/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'pairwise_scorer/strided_slice_1/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
q
'pairwise_scorer/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
З
pairwise_scorer/strided_slice_1StridedSlicepairwise_scorer/Shape_1%pairwise_scorer/strided_slice_1/stack'pairwise_scorer/strided_slice_1/stack_1'pairwise_scorer/strided_slice_1/stack_2*
_output_shapes
: *
Index0*
shrink_axis_mask*
T0
s
pairwise_scorer/truediv/CastCastpairwise_scorer/strided_slice*

SrcT0*

DstT0*
_output_shapes
: 
w
pairwise_scorer/truediv/Cast_1Castpairwise_scorer/strided_slice_1*

SrcT0*

DstT0*
_output_shapes
: 
Б
pairwise_scorer/truedivRealDivpairwise_scorer/truediv/Castpairwise_scorer/truediv/Cast_1*
_output_shapes
: *
T0
j
pairwise_scorer/Tile/CastCastpairwise_scorer/truediv*

DstT0*
_output_shapes
: *

SrcT0
o
pairwise_scorer/Tile/multiplesPackpairwise_scorer/Tile/Cast*
T0*
N*
_output_shapes
:
У
pairwise_scorer/TileTile'pairwise_scorer/boolean_mask_2/GatherV2pairwise_scorer/Tile/multiples*#
_output_shapes
:         *
T0
Ж
pairwise_scorer/Greater_1Greaterpairwise_scorer/Tile'pairwise_scorer/boolean_mask_3/GatherV2*
_output_shapes
:*
T0
n
pairwise_scorer/ToFloat_2Castpairwise_scorer/Greater_1*

SrcT0
*

DstT0*
_output_shapes
:
Z
pairwise_scorer/Rank_2Rankpairwise_scorer/ToFloat_2*
_output_shapes
: *
T0
_
pairwise_scorer/range_2/startConst*
dtype0*
_output_shapes
: *
value	B : 
_
pairwise_scorer/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
pairwise_scorer/range_2Rangepairwise_scorer/range_2/startpairwise_scorer/Rank_2pairwise_scorer/range_2/delta*#
_output_shapes
:         
s
pairwise_scorer/Mean_2Meanpairwise_scorer/ToFloat_2pairwise_scorer/range_2*
T0*
_output_shapes
: 
h
pairwise_scorer/Rank_3Rank'pairwise_scorer/boolean_mask_2/GatherV2*
_output_shapes
: *
T0
_
pairwise_scorer/range_3/startConst*
value	B : *
dtype0*
_output_shapes
: 
_
pairwise_scorer/range_3/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
pairwise_scorer/range_3Rangepairwise_scorer/range_3/startpairwise_scorer/Rank_3pairwise_scorer/range_3/delta*#
_output_shapes
:         
Б
pairwise_scorer/Mean_3Mean'pairwise_scorer/boolean_mask_2/GatherV2pairwise_scorer/range_3*
_output_shapes
: *
T0
h
pairwise_scorer/Rank_4Rank'pairwise_scorer/boolean_mask_3/GatherV2*
T0*
_output_shapes
: 
_
pairwise_scorer/range_4/startConst*
value	B : *
dtype0*
_output_shapes
: 
_
pairwise_scorer/range_4/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
pairwise_scorer/range_4Rangepairwise_scorer/range_4/startpairwise_scorer/Rank_4pairwise_scorer/range_4/delta*#
_output_shapes
:         
Б
pairwise_scorer/Mean_4Mean'pairwise_scorer/boolean_mask_3/GatherV2pairwise_scorer/range_4*
T0*
_output_shapes
: 
X
pairwise_scorer/Rank_5Rankpairwise_scorer/Sigmoid*
T0*
_output_shapes
: 
_
pairwise_scorer/range_5/startConst*
value	B : *
dtype0*
_output_shapes
: 
_
pairwise_scorer/range_5/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ы
pairwise_scorer/range_5Rangepairwise_scorer/range_5/startpairwise_scorer/Rank_5pairwise_scorer/range_5/delta*#
_output_shapes
:         
q
pairwise_scorer/Mean_5Meanpairwise_scorer/Sigmoidpairwise_scorer/range_5*
T0*
_output_shapes
: 
Z
pairwise_scorer/Rank_6Rankpairwise_scorer/Sigmoid_1*
T0*
_output_shapes
: 
_
pairwise_scorer/range_6/startConst*
dtype0*
_output_shapes
: *
value	B : 
_
pairwise_scorer/range_6/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Ы
pairwise_scorer/range_6Rangepairwise_scorer/range_6/startpairwise_scorer/Rank_6pairwise_scorer/range_6/delta*#
_output_shapes
:         
s
pairwise_scorer/Mean_6Meanpairwise_scorer/Sigmoid_1pairwise_scorer/range_6*
_output_shapes
: *
T0
i
pairwise_scorer/addAddpairwise_scorer/Meanpairwise_scorer/Mean_1*
_output_shapes
: *
T0
`
pairwise_scorer/truediv_1/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
w
pairwise_scorer/truediv_1RealDivpairwise_scorer/addpairwise_scorer/truediv_1/y*
_output_shapes
: *
T0
Z
pairwise_scorer/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩ?
В
pairwise_scorer/mulMulpairwise_scorer/mul/x.pairwise_scorer/sigmoid_cross_entropy_loss/Sum*
_output_shapes
: *
T0
\
pairwise_scorer/mul_1/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
pairwise_scorer/mul_1Mulpairwise_scorer/mul_1/xpairwise_scorer/Const*
_output_shapes
: *
T0
\
pairwise_scorer/mul_2/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
pairwise_scorer/mul_2Mulpairwise_scorer/mul_2/xpairwise_scorer/Const_1*
_output_shapes
: *
T0
А
"pairwise_scorer/roc_loss_goal/tagsConst*
_output_shapes
: *.
value%B# Bpairwise_scorer/roc_loss_goal*
dtype0
М
pairwise_scorer/roc_loss_goalScalarSummary"pairwise_scorer/roc_loss_goal/tagspairwise_scorer/Const_1*
_output_shapes
: *
T0
д
.pairwise_scorer/mean_7/total/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@pairwise_scorer/mean_7/total*
dtype0*
_output_shapes
: 
Н
pairwise_scorer/mean_7/total
VariableV2*
dtype0*
_output_shapes
: *
shape: */
_class%
#!loc:@pairwise_scorer/mean_7/total
═
#pairwise_scorer/mean_7/total/AssignAssignpairwise_scorer/mean_7/total.pairwise_scorer/mean_7/total/Initializer/zeros*/
_class%
#!loc:@pairwise_scorer/mean_7/total*
_output_shapes
: *
T0
Э
!pairwise_scorer/mean_7/total/readIdentitypairwise_scorer/mean_7/total*
T0*/
_class%
#!loc:@pairwise_scorer/mean_7/total*
_output_shapes
: 
д
.pairwise_scorer/mean_7/count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    */
_class%
#!loc:@pairwise_scorer/mean_7/count
Н
pairwise_scorer/mean_7/count
VariableV2*/
_class%
#!loc:@pairwise_scorer/mean_7/count*
dtype0*
_output_shapes
: *
shape: 
═
#pairwise_scorer/mean_7/count/AssignAssignpairwise_scorer/mean_7/count.pairwise_scorer/mean_7/count/Initializer/zeros*
T0*/
_class%
#!loc:@pairwise_scorer/mean_7/count*
_output_shapes
: 
Э
!pairwise_scorer/mean_7/count/readIdentitypairwise_scorer/mean_7/count*/
_class%
#!loc:@pairwise_scorer/mean_7/count*
_output_shapes
: *
T0
]
pairwise_scorer/mean_7/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
p
pairwise_scorer/mean_7/CastCastpairwise_scorer/mean_7/Size*

DstT0*
_output_shapes
: *

SrcT0
_
pairwise_scorer/mean_7/ConstConst*
valueB *
dtype0*
_output_shapes
: 
y
pairwise_scorer/mean_7/SumSumpairwise_scorer/Const_1pairwise_scorer/mean_7/Const*
_output_shapes
: *
T0
╣
 pairwise_scorer/mean_7/AssignAdd	AssignAddpairwise_scorer/mean_7/totalpairwise_scorer/mean_7/Sum*
_output_shapes
: *
T0*/
_class%
#!loc:@pairwise_scorer/mean_7/total
╓
"pairwise_scorer/mean_7/AssignAdd_1	AssignAddpairwise_scorer/mean_7/countpairwise_scorer/mean_7/Cast^pairwise_scorer/Const_1*/
_class%
#!loc:@pairwise_scorer/mean_7/count*
_output_shapes
: *
T0
e
 pairwise_scorer/mean_7/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
П
pairwise_scorer/mean_7/MaximumMaximum!pairwise_scorer/mean_7/count/read pairwise_scorer/mean_7/Maximum/y*
_output_shapes
: *
T0
М
pairwise_scorer/mean_7/valueDivNoNan!pairwise_scorer/mean_7/total/readpairwise_scorer/mean_7/Maximum*
_output_shapes
: *
T0
g
"pairwise_scorer/mean_7/Maximum_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ф
 pairwise_scorer/mean_7/Maximum_1Maximum"pairwise_scorer/mean_7/AssignAdd_1"pairwise_scorer/mean_7/Maximum_1/y*
_output_shapes
: *
T0
С
 pairwise_scorer/mean_7/update_opDivNoNan pairwise_scorer/mean_7/AssignAdd pairwise_scorer/mean_7/Maximum_1*
_output_shapes
: *
T0
z
pairwise_scorer/pos_logits/tagsConst*
dtype0*
_output_shapes
: *+
value"B  Bpairwise_scorer/pos_logits
Е
pairwise_scorer/pos_logitsScalarSummarypairwise_scorer/pos_logits/tagspairwise_scorer/Mean_3*
_output_shapes
: *
T0
д
.pairwise_scorer/mean_8/total/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@pairwise_scorer/mean_8/total*
dtype0*
_output_shapes
: 
Н
pairwise_scorer/mean_8/total
VariableV2*
shape: */
_class%
#!loc:@pairwise_scorer/mean_8/total*
dtype0*
_output_shapes
: 
═
#pairwise_scorer/mean_8/total/AssignAssignpairwise_scorer/mean_8/total.pairwise_scorer/mean_8/total/Initializer/zeros*/
_class%
#!loc:@pairwise_scorer/mean_8/total*
_output_shapes
: *
T0
Э
!pairwise_scorer/mean_8/total/readIdentitypairwise_scorer/mean_8/total*/
_class%
#!loc:@pairwise_scorer/mean_8/total*
_output_shapes
: *
T0
д
.pairwise_scorer/mean_8/count/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@pairwise_scorer/mean_8/count*
dtype0*
_output_shapes
: 
Н
pairwise_scorer/mean_8/count
VariableV2*
shape: */
_class%
#!loc:@pairwise_scorer/mean_8/count*
dtype0*
_output_shapes
: 
═
#pairwise_scorer/mean_8/count/AssignAssignpairwise_scorer/mean_8/count.pairwise_scorer/mean_8/count/Initializer/zeros*
T0*/
_class%
#!loc:@pairwise_scorer/mean_8/count*
_output_shapes
: 
Э
!pairwise_scorer/mean_8/count/readIdentitypairwise_scorer/mean_8/count*
_output_shapes
: *
T0*/
_class%
#!loc:@pairwise_scorer/mean_8/count
]
pairwise_scorer/mean_8/SizeConst*
dtype0*
_output_shapes
: *
value	B :
p
pairwise_scorer/mean_8/CastCastpairwise_scorer/mean_8/Size*

SrcT0*

DstT0*
_output_shapes
: 
_
pairwise_scorer/mean_8/ConstConst*
dtype0*
_output_shapes
: *
valueB 
x
pairwise_scorer/mean_8/SumSumpairwise_scorer/Mean_3pairwise_scorer/mean_8/Const*
_output_shapes
: *
T0
╣
 pairwise_scorer/mean_8/AssignAdd	AssignAddpairwise_scorer/mean_8/totalpairwise_scorer/mean_8/Sum*
T0*/
_class%
#!loc:@pairwise_scorer/mean_8/total*
_output_shapes
: 
╒
"pairwise_scorer/mean_8/AssignAdd_1	AssignAddpairwise_scorer/mean_8/countpairwise_scorer/mean_8/Cast^pairwise_scorer/Mean_3*
_output_shapes
: *
T0*/
_class%
#!loc:@pairwise_scorer/mean_8/count
e
 pairwise_scorer/mean_8/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
П
pairwise_scorer/mean_8/MaximumMaximum!pairwise_scorer/mean_8/count/read pairwise_scorer/mean_8/Maximum/y*
_output_shapes
: *
T0
М
pairwise_scorer/mean_8/valueDivNoNan!pairwise_scorer/mean_8/total/readpairwise_scorer/mean_8/Maximum*
_output_shapes
: *
T0
g
"pairwise_scorer/mean_8/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ф
 pairwise_scorer/mean_8/Maximum_1Maximum"pairwise_scorer/mean_8/AssignAdd_1"pairwise_scorer/mean_8/Maximum_1/y*
_output_shapes
: *
T0
С
 pairwise_scorer/mean_8/update_opDivNoNan pairwise_scorer/mean_8/AssignAdd pairwise_scorer/mean_8/Maximum_1*
_output_shapes
: *
T0
~
!pairwise_scorer/neg_accuracy/tagsConst*
dtype0*
_output_shapes
: *-
value$B" Bpairwise_scorer/neg_accuracy
Й
pairwise_scorer/neg_accuracyScalarSummary!pairwise_scorer/neg_accuracy/tagspairwise_scorer/Mean_1*
_output_shapes
: *
T0
д
.pairwise_scorer/mean_9/total/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@pairwise_scorer/mean_9/total*
dtype0*
_output_shapes
: 
Н
pairwise_scorer/mean_9/total
VariableV2*/
_class%
#!loc:@pairwise_scorer/mean_9/total*
dtype0*
_output_shapes
: *
shape: 
═
#pairwise_scorer/mean_9/total/AssignAssignpairwise_scorer/mean_9/total.pairwise_scorer/mean_9/total/Initializer/zeros*/
_class%
#!loc:@pairwise_scorer/mean_9/total*
_output_shapes
: *
T0
Э
!pairwise_scorer/mean_9/total/readIdentitypairwise_scorer/mean_9/total*
_output_shapes
: *
T0*/
_class%
#!loc:@pairwise_scorer/mean_9/total
д
.pairwise_scorer/mean_9/count/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@pairwise_scorer/mean_9/count*
dtype0*
_output_shapes
: 
Н
pairwise_scorer/mean_9/count
VariableV2*
_output_shapes
: *
shape: */
_class%
#!loc:@pairwise_scorer/mean_9/count*
dtype0
═
#pairwise_scorer/mean_9/count/AssignAssignpairwise_scorer/mean_9/count.pairwise_scorer/mean_9/count/Initializer/zeros*/
_class%
#!loc:@pairwise_scorer/mean_9/count*
_output_shapes
: *
T0
Э
!pairwise_scorer/mean_9/count/readIdentitypairwise_scorer/mean_9/count*/
_class%
#!loc:@pairwise_scorer/mean_9/count*
_output_shapes
: *
T0
]
pairwise_scorer/mean_9/SizeConst*
dtype0*
_output_shapes
: *
value	B :
p
pairwise_scorer/mean_9/CastCastpairwise_scorer/mean_9/Size*

SrcT0*

DstT0*
_output_shapes
: 
_
pairwise_scorer/mean_9/ConstConst*
valueB *
dtype0*
_output_shapes
: 
x
pairwise_scorer/mean_9/SumSumpairwise_scorer/Mean_1pairwise_scorer/mean_9/Const*
_output_shapes
: *
T0
╣
 pairwise_scorer/mean_9/AssignAdd	AssignAddpairwise_scorer/mean_9/totalpairwise_scorer/mean_9/Sum*
_output_shapes
: *
T0*/
_class%
#!loc:@pairwise_scorer/mean_9/total
╒
"pairwise_scorer/mean_9/AssignAdd_1	AssignAddpairwise_scorer/mean_9/countpairwise_scorer/mean_9/Cast^pairwise_scorer/Mean_1*/
_class%
#!loc:@pairwise_scorer/mean_9/count*
_output_shapes
: *
T0
e
 pairwise_scorer/mean_9/Maximum/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
П
pairwise_scorer/mean_9/MaximumMaximum!pairwise_scorer/mean_9/count/read pairwise_scorer/mean_9/Maximum/y*
_output_shapes
: *
T0
М
pairwise_scorer/mean_9/valueDivNoNan!pairwise_scorer/mean_9/total/readpairwise_scorer/mean_9/Maximum*
_output_shapes
: *
T0
g
"pairwise_scorer/mean_9/Maximum_1/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ф
 pairwise_scorer/mean_9/Maximum_1Maximum"pairwise_scorer/mean_9/AssignAdd_1"pairwise_scorer/mean_9/Maximum_1/y*
T0*
_output_shapes
: 
С
 pairwise_scorer/mean_9/update_opDivNoNan pairwise_scorer/mean_9/AssignAdd pairwise_scorer/mean_9/Maximum_1*
_output_shapes
: *
T0
И
&pairwise_scorer/log_prob_pairwise/tagsConst*2
value)B' B!pairwise_scorer/log_prob_pairwise*
dtype0*
_output_shapes
: 
л
!pairwise_scorer/log_prob_pairwiseScalarSummary&pairwise_scorer/log_prob_pairwise/tags.pairwise_scorer/sigmoid_cross_entropy_loss/Sum*
_output_shapes
: *
T0
ж
/pairwise_scorer/mean_10/total/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_10/total*
dtype0
П
pairwise_scorer/mean_10/total
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_10/total*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_10/total/AssignAssignpairwise_scorer/mean_10/total/pairwise_scorer/mean_10/total/Initializer/zeros*
T0*0
_class&
$"loc:@pairwise_scorer/mean_10/total*
_output_shapes
: 
а
"pairwise_scorer/mean_10/total/readIdentitypairwise_scorer/mean_10/total*
T0*0
_class&
$"loc:@pairwise_scorer/mean_10/total*
_output_shapes
: 
ж
/pairwise_scorer/mean_10/count/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_10/count*
dtype0*
_output_shapes
: 
П
pairwise_scorer/mean_10/count
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_10/count*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_10/count/AssignAssignpairwise_scorer/mean_10/count/pairwise_scorer/mean_10/count/Initializer/zeros*0
_class&
$"loc:@pairwise_scorer/mean_10/count*
_output_shapes
: *
T0
а
"pairwise_scorer/mean_10/count/readIdentitypairwise_scorer/mean_10/count*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_10/count
^
pairwise_scorer/mean_10/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
r
pairwise_scorer/mean_10/CastCastpairwise_scorer/mean_10/Size*

DstT0*
_output_shapes
: *

SrcT0
`
pairwise_scorer/mean_10/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Т
pairwise_scorer/mean_10/SumSum.pairwise_scorer/sigmoid_cross_entropy_loss/Sumpairwise_scorer/mean_10/Const*
_output_shapes
: *
T0
╜
!pairwise_scorer/mean_10/AssignAdd	AssignAddpairwise_scorer/mean_10/totalpairwise_scorer/mean_10/Sum*0
_class&
$"loc:@pairwise_scorer/mean_10/total*
_output_shapes
: *
T0
ё
#pairwise_scorer/mean_10/AssignAdd_1	AssignAddpairwise_scorer/mean_10/countpairwise_scorer/mean_10/Cast/^pairwise_scorer/sigmoid_cross_entropy_loss/Sum*0
_class&
$"loc:@pairwise_scorer/mean_10/count*
_output_shapes
: *
T0
f
!pairwise_scorer/mean_10/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
pairwise_scorer/mean_10/MaximumMaximum"pairwise_scorer/mean_10/count/read!pairwise_scorer/mean_10/Maximum/y*
T0*
_output_shapes
: 
П
pairwise_scorer/mean_10/valueDivNoNan"pairwise_scorer/mean_10/total/readpairwise_scorer/mean_10/Maximum*
T0*
_output_shapes
: 
h
#pairwise_scorer/mean_10/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
!pairwise_scorer/mean_10/Maximum_1Maximum#pairwise_scorer/mean_10/AssignAdd_1#pairwise_scorer/mean_10/Maximum_1/y*
T0*
_output_shapes
: 
Ф
!pairwise_scorer/mean_10/update_opDivNoNan!pairwise_scorer/mean_10/AssignAdd!pairwise_scorer/mean_10/Maximum_1*
_output_shapes
: *
T0
v
pairwise_scorer/neg_pred/tagsConst*)
value B Bpairwise_scorer/neg_pred*
dtype0*
_output_shapes
: 
Б
pairwise_scorer/neg_predScalarSummarypairwise_scorer/neg_pred/tagspairwise_scorer/Mean_6*
T0*
_output_shapes
: 
ж
/pairwise_scorer/mean_11/total/Initializer/zerosConst*0
_class&
$"loc:@pairwise_scorer/mean_11/total*
dtype0*
_output_shapes
: *
valueB
 *    
П
pairwise_scorer/mean_11/total
VariableV2*0
_class&
$"loc:@pairwise_scorer/mean_11/total*
dtype0*
_output_shapes
: *
shape: 
╤
$pairwise_scorer/mean_11/total/AssignAssignpairwise_scorer/mean_11/total/pairwise_scorer/mean_11/total/Initializer/zeros*
T0*0
_class&
$"loc:@pairwise_scorer/mean_11/total*
_output_shapes
: 
а
"pairwise_scorer/mean_11/total/readIdentitypairwise_scorer/mean_11/total*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_11/total
ж
/pairwise_scorer/mean_11/count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_11/count
П
pairwise_scorer/mean_11/count
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_11/count*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_11/count/AssignAssignpairwise_scorer/mean_11/count/pairwise_scorer/mean_11/count/Initializer/zeros*0
_class&
$"loc:@pairwise_scorer/mean_11/count*
_output_shapes
: *
T0
а
"pairwise_scorer/mean_11/count/readIdentitypairwise_scorer/mean_11/count*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_11/count
^
pairwise_scorer/mean_11/SizeConst*
dtype0*
_output_shapes
: *
value	B :
r
pairwise_scorer/mean_11/CastCastpairwise_scorer/mean_11/Size*

SrcT0*

DstT0*
_output_shapes
: 
`
pairwise_scorer/mean_11/ConstConst*
valueB *
dtype0*
_output_shapes
: 
z
pairwise_scorer/mean_11/SumSumpairwise_scorer/Mean_6pairwise_scorer/mean_11/Const*
_output_shapes
: *
T0
╜
!pairwise_scorer/mean_11/AssignAdd	AssignAddpairwise_scorer/mean_11/totalpairwise_scorer/mean_11/Sum*0
_class&
$"loc:@pairwise_scorer/mean_11/total*
_output_shapes
: *
T0
┘
#pairwise_scorer/mean_11/AssignAdd_1	AssignAddpairwise_scorer/mean_11/countpairwise_scorer/mean_11/Cast^pairwise_scorer/Mean_6*0
_class&
$"loc:@pairwise_scorer/mean_11/count*
_output_shapes
: *
T0
f
!pairwise_scorer/mean_11/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
pairwise_scorer/mean_11/MaximumMaximum"pairwise_scorer/mean_11/count/read!pairwise_scorer/mean_11/Maximum/y*
_output_shapes
: *
T0
П
pairwise_scorer/mean_11/valueDivNoNan"pairwise_scorer/mean_11/total/readpairwise_scorer/mean_11/Maximum*
T0*
_output_shapes
: 
h
#pairwise_scorer/mean_11/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
!pairwise_scorer/mean_11/Maximum_1Maximum#pairwise_scorer/mean_11/AssignAdd_1#pairwise_scorer/mean_11/Maximum_1/y*
_output_shapes
: *
T0
Ф
!pairwise_scorer/mean_11/update_opDivNoNan!pairwise_scorer/mean_11/AssignAdd!pairwise_scorer/mean_11/Maximum_1*
T0*
_output_shapes
: 
z
pairwise_scorer/neg_logits/tagsConst*+
value"B  Bpairwise_scorer/neg_logits*
dtype0*
_output_shapes
: 
Е
pairwise_scorer/neg_logitsScalarSummarypairwise_scorer/neg_logits/tagspairwise_scorer/Mean_4*
T0*
_output_shapes
: 
ж
/pairwise_scorer/mean_12/total/Initializer/zerosConst*0
_class&
$"loc:@pairwise_scorer/mean_12/total*
dtype0*
_output_shapes
: *
valueB
 *    
П
pairwise_scorer/mean_12/total
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_12/total*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_12/total/AssignAssignpairwise_scorer/mean_12/total/pairwise_scorer/mean_12/total/Initializer/zeros*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_12/total
а
"pairwise_scorer/mean_12/total/readIdentitypairwise_scorer/mean_12/total*0
_class&
$"loc:@pairwise_scorer/mean_12/total*
_output_shapes
: *
T0
ж
/pairwise_scorer/mean_12/count/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_12/count*
dtype0*
_output_shapes
: 
П
pairwise_scorer/mean_12/count
VariableV2*
dtype0*
_output_shapes
: *
shape: *0
_class&
$"loc:@pairwise_scorer/mean_12/count
╤
$pairwise_scorer/mean_12/count/AssignAssignpairwise_scorer/mean_12/count/pairwise_scorer/mean_12/count/Initializer/zeros*
T0*0
_class&
$"loc:@pairwise_scorer/mean_12/count*
_output_shapes
: 
а
"pairwise_scorer/mean_12/count/readIdentitypairwise_scorer/mean_12/count*0
_class&
$"loc:@pairwise_scorer/mean_12/count*
_output_shapes
: *
T0
^
pairwise_scorer/mean_12/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
r
pairwise_scorer/mean_12/CastCastpairwise_scorer/mean_12/Size*

SrcT0*

DstT0*
_output_shapes
: 
`
pairwise_scorer/mean_12/ConstConst*
valueB *
dtype0*
_output_shapes
: 
z
pairwise_scorer/mean_12/SumSumpairwise_scorer/Mean_4pairwise_scorer/mean_12/Const*
T0*
_output_shapes
: 
╜
!pairwise_scorer/mean_12/AssignAdd	AssignAddpairwise_scorer/mean_12/totalpairwise_scorer/mean_12/Sum*
T0*0
_class&
$"loc:@pairwise_scorer/mean_12/total*
_output_shapes
: 
┘
#pairwise_scorer/mean_12/AssignAdd_1	AssignAddpairwise_scorer/mean_12/countpairwise_scorer/mean_12/Cast^pairwise_scorer/Mean_4*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_12/count
f
!pairwise_scorer/mean_12/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
pairwise_scorer/mean_12/MaximumMaximum"pairwise_scorer/mean_12/count/read!pairwise_scorer/mean_12/Maximum/y*
_output_shapes
: *
T0
П
pairwise_scorer/mean_12/valueDivNoNan"pairwise_scorer/mean_12/total/readpairwise_scorer/mean_12/Maximum*
_output_shapes
: *
T0
h
#pairwise_scorer/mean_12/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
!pairwise_scorer/mean_12/Maximum_1Maximum#pairwise_scorer/mean_12/AssignAdd_1#pairwise_scorer/mean_12/Maximum_1/y*
_output_shapes
: *
T0
Ф
!pairwise_scorer/mean_12/update_opDivNoNan!pairwise_scorer/mean_12/AssignAdd!pairwise_scorer/mean_12/Maximum_1*
_output_shapes
: *
T0
В
#pairwise_scorer/roc_loss_batch/tagsConst*/
value&B$ Bpairwise_scorer/roc_loss_batch*
dtype0*
_output_shapes
: 
М
pairwise_scorer/roc_loss_batchScalarSummary#pairwise_scorer/roc_loss_batch/tagspairwise_scorer/Const*
T0*
_output_shapes
: 
ж
/pairwise_scorer/mean_13/total/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_13/total
П
pairwise_scorer/mean_13/total
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_13/total*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_13/total/AssignAssignpairwise_scorer/mean_13/total/pairwise_scorer/mean_13/total/Initializer/zeros*
T0*0
_class&
$"loc:@pairwise_scorer/mean_13/total*
_output_shapes
: 
а
"pairwise_scorer/mean_13/total/readIdentitypairwise_scorer/mean_13/total*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_13/total
ж
/pairwise_scorer/mean_13/count/Initializer/zerosConst*0
_class&
$"loc:@pairwise_scorer/mean_13/count*
dtype0*
_output_shapes
: *
valueB
 *    
П
pairwise_scorer/mean_13/count
VariableV2*0
_class&
$"loc:@pairwise_scorer/mean_13/count*
dtype0*
_output_shapes
: *
shape: 
╤
$pairwise_scorer/mean_13/count/AssignAssignpairwise_scorer/mean_13/count/pairwise_scorer/mean_13/count/Initializer/zeros*
T0*0
_class&
$"loc:@pairwise_scorer/mean_13/count*
_output_shapes
: 
а
"pairwise_scorer/mean_13/count/readIdentitypairwise_scorer/mean_13/count*
T0*0
_class&
$"loc:@pairwise_scorer/mean_13/count*
_output_shapes
: 
^
pairwise_scorer/mean_13/SizeConst*
dtype0*
_output_shapes
: *
value	B :
r
pairwise_scorer/mean_13/CastCastpairwise_scorer/mean_13/Size*

DstT0*
_output_shapes
: *

SrcT0
`
pairwise_scorer/mean_13/ConstConst*
valueB *
dtype0*
_output_shapes
: 
y
pairwise_scorer/mean_13/SumSumpairwise_scorer/Constpairwise_scorer/mean_13/Const*
_output_shapes
: *
T0
╜
!pairwise_scorer/mean_13/AssignAdd	AssignAddpairwise_scorer/mean_13/totalpairwise_scorer/mean_13/Sum*
T0*0
_class&
$"loc:@pairwise_scorer/mean_13/total*
_output_shapes
: 
╪
#pairwise_scorer/mean_13/AssignAdd_1	AssignAddpairwise_scorer/mean_13/countpairwise_scorer/mean_13/Cast^pairwise_scorer/Const*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_13/count
f
!pairwise_scorer/mean_13/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Т
pairwise_scorer/mean_13/MaximumMaximum"pairwise_scorer/mean_13/count/read!pairwise_scorer/mean_13/Maximum/y*
_output_shapes
: *
T0
П
pairwise_scorer/mean_13/valueDivNoNan"pairwise_scorer/mean_13/total/readpairwise_scorer/mean_13/Maximum*
T0*
_output_shapes
: 
h
#pairwise_scorer/mean_13/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
!pairwise_scorer/mean_13/Maximum_1Maximum#pairwise_scorer/mean_13/AssignAdd_1#pairwise_scorer/mean_13/Maximum_1/y*
T0*
_output_shapes
: 
Ф
!pairwise_scorer/mean_13/update_opDivNoNan!pairwise_scorer/mean_13/AssignAdd!pairwise_scorer/mean_13/Maximum_1*
_output_shapes
: *
T0
v
pairwise_scorer/pos_pred/tagsConst*
dtype0*
_output_shapes
: *)
value B Bpairwise_scorer/pos_pred
Б
pairwise_scorer/pos_predScalarSummarypairwise_scorer/pos_pred/tagspairwise_scorer/Mean_5*
T0*
_output_shapes
: 
ж
/pairwise_scorer/mean_14/total/Initializer/zerosConst*0
_class&
$"loc:@pairwise_scorer/mean_14/total*
dtype0*
_output_shapes
: *
valueB
 *    
П
pairwise_scorer/mean_14/total
VariableV2*0
_class&
$"loc:@pairwise_scorer/mean_14/total*
dtype0*
_output_shapes
: *
shape: 
╤
$pairwise_scorer/mean_14/total/AssignAssignpairwise_scorer/mean_14/total/pairwise_scorer/mean_14/total/Initializer/zeros*0
_class&
$"loc:@pairwise_scorer/mean_14/total*
_output_shapes
: *
T0
а
"pairwise_scorer/mean_14/total/readIdentitypairwise_scorer/mean_14/total*0
_class&
$"loc:@pairwise_scorer/mean_14/total*
_output_shapes
: *
T0
ж
/pairwise_scorer/mean_14/count/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_14/count*
dtype0
П
pairwise_scorer/mean_14/count
VariableV2*
dtype0*
_output_shapes
: *
shape: *0
_class&
$"loc:@pairwise_scorer/mean_14/count
╤
$pairwise_scorer/mean_14/count/AssignAssignpairwise_scorer/mean_14/count/pairwise_scorer/mean_14/count/Initializer/zeros*0
_class&
$"loc:@pairwise_scorer/mean_14/count*
_output_shapes
: *
T0
а
"pairwise_scorer/mean_14/count/readIdentitypairwise_scorer/mean_14/count*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_14/count
^
pairwise_scorer/mean_14/SizeConst*
dtype0*
_output_shapes
: *
value	B :
r
pairwise_scorer/mean_14/CastCastpairwise_scorer/mean_14/Size*

SrcT0*

DstT0*
_output_shapes
: 
`
pairwise_scorer/mean_14/ConstConst*
valueB *
dtype0*
_output_shapes
: 
z
pairwise_scorer/mean_14/SumSumpairwise_scorer/Mean_5pairwise_scorer/mean_14/Const*
_output_shapes
: *
T0
╜
!pairwise_scorer/mean_14/AssignAdd	AssignAddpairwise_scorer/mean_14/totalpairwise_scorer/mean_14/Sum*
T0*0
_class&
$"loc:@pairwise_scorer/mean_14/total*
_output_shapes
: 
┘
#pairwise_scorer/mean_14/AssignAdd_1	AssignAddpairwise_scorer/mean_14/countpairwise_scorer/mean_14/Cast^pairwise_scorer/Mean_5*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_14/count
f
!pairwise_scorer/mean_14/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Т
pairwise_scorer/mean_14/MaximumMaximum"pairwise_scorer/mean_14/count/read!pairwise_scorer/mean_14/Maximum/y*
T0*
_output_shapes
: 
П
pairwise_scorer/mean_14/valueDivNoNan"pairwise_scorer/mean_14/total/readpairwise_scorer/mean_14/Maximum*
T0*
_output_shapes
: 
h
#pairwise_scorer/mean_14/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
!pairwise_scorer/mean_14/Maximum_1Maximum#pairwise_scorer/mean_14/AssignAdd_1#pairwise_scorer/mean_14/Maximum_1/y*
_output_shapes
: *
T0
Ф
!pairwise_scorer/mean_14/update_opDivNoNan!pairwise_scorer/mean_14/AssignAdd!pairwise_scorer/mean_14/Maximum_1*
_output_shapes
: *
T0
А
"pairwise_scorer/relative_pred/tagsConst*.
value%B# Bpairwise_scorer/relative_pred*
dtype0*
_output_shapes
: 
Л
pairwise_scorer/relative_predScalarSummary"pairwise_scorer/relative_pred/tagspairwise_scorer/Mean_2*
_output_shapes
: *
T0
ж
/pairwise_scorer/mean_15/total/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_15/total*
dtype0*
_output_shapes
: 
П
pairwise_scorer/mean_15/total
VariableV2*0
_class&
$"loc:@pairwise_scorer/mean_15/total*
dtype0*
_output_shapes
: *
shape: 
╤
$pairwise_scorer/mean_15/total/AssignAssignpairwise_scorer/mean_15/total/pairwise_scorer/mean_15/total/Initializer/zeros*
T0*0
_class&
$"loc:@pairwise_scorer/mean_15/total*
_output_shapes
: 
а
"pairwise_scorer/mean_15/total/readIdentitypairwise_scorer/mean_15/total*
T0*0
_class&
$"loc:@pairwise_scorer/mean_15/total*
_output_shapes
: 
ж
/pairwise_scorer/mean_15/count/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_15/count*
dtype0*
_output_shapes
: 
П
pairwise_scorer/mean_15/count
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_15/count*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_15/count/AssignAssignpairwise_scorer/mean_15/count/pairwise_scorer/mean_15/count/Initializer/zeros*0
_class&
$"loc:@pairwise_scorer/mean_15/count*
_output_shapes
: *
T0
а
"pairwise_scorer/mean_15/count/readIdentitypairwise_scorer/mean_15/count*
T0*0
_class&
$"loc:@pairwise_scorer/mean_15/count*
_output_shapes
: 
^
pairwise_scorer/mean_15/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
r
pairwise_scorer/mean_15/CastCastpairwise_scorer/mean_15/Size*

SrcT0*

DstT0*
_output_shapes
: 
`
pairwise_scorer/mean_15/ConstConst*
valueB *
dtype0*
_output_shapes
: 
z
pairwise_scorer/mean_15/SumSumpairwise_scorer/Mean_2pairwise_scorer/mean_15/Const*
T0*
_output_shapes
: 
╜
!pairwise_scorer/mean_15/AssignAdd	AssignAddpairwise_scorer/mean_15/totalpairwise_scorer/mean_15/Sum*
T0*0
_class&
$"loc:@pairwise_scorer/mean_15/total*
_output_shapes
: 
┘
#pairwise_scorer/mean_15/AssignAdd_1	AssignAddpairwise_scorer/mean_15/countpairwise_scorer/mean_15/Cast^pairwise_scorer/Mean_2*0
_class&
$"loc:@pairwise_scorer/mean_15/count*
_output_shapes
: *
T0
f
!pairwise_scorer/mean_15/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
pairwise_scorer/mean_15/MaximumMaximum"pairwise_scorer/mean_15/count/read!pairwise_scorer/mean_15/Maximum/y*
_output_shapes
: *
T0
П
pairwise_scorer/mean_15/valueDivNoNan"pairwise_scorer/mean_15/total/readpairwise_scorer/mean_15/Maximum*
_output_shapes
: *
T0
h
#pairwise_scorer/mean_15/Maximum_1/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
Ч
!pairwise_scorer/mean_15/Maximum_1Maximum#pairwise_scorer/mean_15/AssignAdd_1#pairwise_scorer/mean_15/Maximum_1/y*
_output_shapes
: *
T0
Ф
!pairwise_scorer/mean_15/update_opDivNoNan!pairwise_scorer/mean_15/AssignAdd!pairwise_scorer/mean_15/Maximum_1*
_output_shapes
: *
T0
~
!pairwise_scorer/pos_accuracy/tagsConst*-
value$B" Bpairwise_scorer/pos_accuracy*
dtype0*
_output_shapes
: 
З
pairwise_scorer/pos_accuracyScalarSummary!pairwise_scorer/pos_accuracy/tagspairwise_scorer/Mean*
T0*
_output_shapes
: 
ж
/pairwise_scorer/mean_16/total/Initializer/zerosConst*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_16/total*
dtype0
П
pairwise_scorer/mean_16/total
VariableV2*
_output_shapes
: *
shape: *0
_class&
$"loc:@pairwise_scorer/mean_16/total*
dtype0
╤
$pairwise_scorer/mean_16/total/AssignAssignpairwise_scorer/mean_16/total/pairwise_scorer/mean_16/total/Initializer/zeros*0
_class&
$"loc:@pairwise_scorer/mean_16/total*
_output_shapes
: *
T0
а
"pairwise_scorer/mean_16/total/readIdentitypairwise_scorer/mean_16/total*
T0*0
_class&
$"loc:@pairwise_scorer/mean_16/total*
_output_shapes
: 
ж
/pairwise_scorer/mean_16/count/Initializer/zerosConst*0
_class&
$"loc:@pairwise_scorer/mean_16/count*
dtype0*
_output_shapes
: *
valueB
 *    
П
pairwise_scorer/mean_16/count
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_16/count*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_16/count/AssignAssignpairwise_scorer/mean_16/count/pairwise_scorer/mean_16/count/Initializer/zeros*
T0*0
_class&
$"loc:@pairwise_scorer/mean_16/count*
_output_shapes
: 
а
"pairwise_scorer/mean_16/count/readIdentitypairwise_scorer/mean_16/count*
T0*0
_class&
$"loc:@pairwise_scorer/mean_16/count*
_output_shapes
: 
^
pairwise_scorer/mean_16/SizeConst*
dtype0*
_output_shapes
: *
value	B :
r
pairwise_scorer/mean_16/CastCastpairwise_scorer/mean_16/Size*

DstT0*
_output_shapes
: *

SrcT0
`
pairwise_scorer/mean_16/ConstConst*
valueB *
dtype0*
_output_shapes
: 
x
pairwise_scorer/mean_16/SumSumpairwise_scorer/Meanpairwise_scorer/mean_16/Const*
T0*
_output_shapes
: 
╜
!pairwise_scorer/mean_16/AssignAdd	AssignAddpairwise_scorer/mean_16/totalpairwise_scorer/mean_16/Sum*0
_class&
$"loc:@pairwise_scorer/mean_16/total*
_output_shapes
: *
T0
╫
#pairwise_scorer/mean_16/AssignAdd_1	AssignAddpairwise_scorer/mean_16/countpairwise_scorer/mean_16/Cast^pairwise_scorer/Mean*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_16/count
f
!pairwise_scorer/mean_16/Maximum/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
Т
pairwise_scorer/mean_16/MaximumMaximum"pairwise_scorer/mean_16/count/read!pairwise_scorer/mean_16/Maximum/y*
_output_shapes
: *
T0
П
pairwise_scorer/mean_16/valueDivNoNan"pairwise_scorer/mean_16/total/readpairwise_scorer/mean_16/Maximum*
T0*
_output_shapes
: 
h
#pairwise_scorer/mean_16/Maximum_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ч
!pairwise_scorer/mean_16/Maximum_1Maximum#pairwise_scorer/mean_16/AssignAdd_1#pairwise_scorer/mean_16/Maximum_1/y*
_output_shapes
: *
T0
Ф
!pairwise_scorer/mean_16/update_opDivNoNan!pairwise_scorer/mean_16/AssignAdd!pairwise_scorer/mean_16/Maximum_1*
_output_shapes
: *
T0
В
#pairwise_scorer/accuracy_50_50/tagsConst*/
value&B$ Bpairwise_scorer/accuracy_50_50*
dtype0*
_output_shapes
: 
Р
pairwise_scorer/accuracy_50_50ScalarSummary#pairwise_scorer/accuracy_50_50/tagspairwise_scorer/truediv_1*
_output_shapes
: *
T0
ж
/pairwise_scorer/mean_17/total/Initializer/zerosConst*
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_17/total*
dtype0*
_output_shapes
: 
П
pairwise_scorer/mean_17/total
VariableV2*
dtype0*
_output_shapes
: *
shape: *0
_class&
$"loc:@pairwise_scorer/mean_17/total
╤
$pairwise_scorer/mean_17/total/AssignAssignpairwise_scorer/mean_17/total/pairwise_scorer/mean_17/total/Initializer/zeros*0
_class&
$"loc:@pairwise_scorer/mean_17/total*
_output_shapes
: *
T0
а
"pairwise_scorer/mean_17/total/readIdentitypairwise_scorer/mean_17/total*0
_class&
$"loc:@pairwise_scorer/mean_17/total*
_output_shapes
: *
T0
ж
/pairwise_scorer/mean_17/count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *0
_class&
$"loc:@pairwise_scorer/mean_17/count
П
pairwise_scorer/mean_17/count
VariableV2*
shape: *0
_class&
$"loc:@pairwise_scorer/mean_17/count*
dtype0*
_output_shapes
: 
╤
$pairwise_scorer/mean_17/count/AssignAssignpairwise_scorer/mean_17/count/pairwise_scorer/mean_17/count/Initializer/zeros*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_17/count
а
"pairwise_scorer/mean_17/count/readIdentitypairwise_scorer/mean_17/count*
T0*0
_class&
$"loc:@pairwise_scorer/mean_17/count*
_output_shapes
: 
^
pairwise_scorer/mean_17/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
r
pairwise_scorer/mean_17/CastCastpairwise_scorer/mean_17/Size*

SrcT0*

DstT0*
_output_shapes
: 
`
pairwise_scorer/mean_17/ConstConst*
_output_shapes
: *
valueB *
dtype0
}
pairwise_scorer/mean_17/SumSumpairwise_scorer/truediv_1pairwise_scorer/mean_17/Const*
T0*
_output_shapes
: 
╜
!pairwise_scorer/mean_17/AssignAdd	AssignAddpairwise_scorer/mean_17/totalpairwise_scorer/mean_17/Sum*
T0*0
_class&
$"loc:@pairwise_scorer/mean_17/total*
_output_shapes
: 
▄
#pairwise_scorer/mean_17/AssignAdd_1	AssignAddpairwise_scorer/mean_17/countpairwise_scorer/mean_17/Cast^pairwise_scorer/truediv_1*
_output_shapes
: *
T0*0
_class&
$"loc:@pairwise_scorer/mean_17/count
f
!pairwise_scorer/mean_17/Maximum/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Т
pairwise_scorer/mean_17/MaximumMaximum"pairwise_scorer/mean_17/count/read!pairwise_scorer/mean_17/Maximum/y*
_output_shapes
: *
T0
П
pairwise_scorer/mean_17/valueDivNoNan"pairwise_scorer/mean_17/total/readpairwise_scorer/mean_17/Maximum*
T0*
_output_shapes
: 
h
#pairwise_scorer/mean_17/Maximum_1/yConst*
dtype0*
_output_shapes
: *
valueB
 *    
Ч
!pairwise_scorer/mean_17/Maximum_1Maximum#pairwise_scorer/mean_17/AssignAdd_1#pairwise_scorer/mean_17/Maximum_1/y*
_output_shapes
: *
T0
Ф
!pairwise_scorer/mean_17/update_opDivNoNan!pairwise_scorer/mean_17/AssignAdd!pairwise_scorer/mean_17/Maximum_1*
_output_shapes
: *
T0
Е

total_lossAddN2classifier/sparse_softmax_cross_entropy_loss/valueclassifier/mulclassifier/mul_1.pairwise_scorer/sigmoid_cross_entropy_loss/Sumpairwise_scorer/mulpairwise_scorer/mul_1pairwise_scorer/mul_2*
_output_shapes
: *
T0*
N
N
	loss/tagsConst*
valueB
 Bloss*
dtype0*
_output_shapes
: 
M
lossScalarSummary	loss/tags
total_loss*
_output_shapes
: *
T0
┤	
initNoOp^classifier/mean/count/Assign^classifier/mean/total/Assign^classifier/mean_1/count/Assign^classifier/mean_1/total/Assign^classifier/mean_2/count/Assign^classifier/mean_2/total/Assign^classifier/mean_3/count/Assign^classifier/mean_3/total/Assign&^classifier/mean_accuracy/count/Assign&^classifier/mean_accuracy/total/Assign%^pairwise_scorer/mean_10/count/Assign%^pairwise_scorer/mean_10/total/Assign%^pairwise_scorer/mean_11/count/Assign%^pairwise_scorer/mean_11/total/Assign%^pairwise_scorer/mean_12/count/Assign%^pairwise_scorer/mean_12/total/Assign%^pairwise_scorer/mean_13/count/Assign%^pairwise_scorer/mean_13/total/Assign%^pairwise_scorer/mean_14/count/Assign%^pairwise_scorer/mean_14/total/Assign%^pairwise_scorer/mean_15/count/Assign%^pairwise_scorer/mean_15/total/Assign%^pairwise_scorer/mean_16/count/Assign%^pairwise_scorer/mean_16/total/Assign%^pairwise_scorer/mean_17/count/Assign%^pairwise_scorer/mean_17/total/Assign$^pairwise_scorer/mean_7/count/Assign$^pairwise_scorer/mean_7/total/Assign$^pairwise_scorer/mean_8/count/Assign$^pairwise_scorer/mean_8/total/Assign$^pairwise_scorer/mean_9/count/Assign$^pairwise_scorer/mean_9/total/Assign
┘
init_all_tablesNoOp-^extractor/key_value_init/LookupTableImportV2/^extractor/key_value_init_1/LookupTableImportV2/^extractor/key_value_init_2/LookupTableImportV2/^extractor/key_value_init_3/LookupTableImportV2

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_1ead9ff6039848a58049f71e0fa3d4eb/part
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
с
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*Е
value√B°Bclassifier/dense/biasBclassifier/dense/kernelBclassifier/dense_1/biasBclassifier/dense_1/kernelBclassifier/dense_2/biasBclassifier/dense_2/kernelB/encoder/dilated_cnn_pairwise_encoder/dense/biasB1encoder/dilated_cnn_pairwise_encoder/dense/kernelB1encoder/dilated_cnn_pairwise_encoder/dense_1/biasB3encoder/dilated_cnn_pairwise_encoder/dense_1/kernelB1encoder/dilated_cnn_pairwise_encoder/dense_2/biasB3encoder/dilated_cnn_pairwise_encoder/dense_2/kernelBQencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biasesBRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weightsBSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biasesBTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weightsBSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biasesBTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weightsB3encoder/dilated_cnn_pairwise_encoder/goal_embeddingBPencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biasesBQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weightsBRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biasesBSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weightsBRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biasesBSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weightsB2encoder/dilated_cnn_pairwise_encoder/thm_embeddingBglobal_stepBpairwise_scorer/dense/biasBpairwise_scorer/dense/kernel
м
save/SaveV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
П
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesclassifier/dense/biasclassifier/dense/kernelclassifier/dense_1/biasclassifier/dense_1/kernelclassifier/dense_2/biasclassifier/dense_2/kernel/encoder/dilated_cnn_pairwise_encoder/dense/bias1encoder/dilated_cnn_pairwise_encoder/dense/kernel1encoder/dilated_cnn_pairwise_encoder/dense_1/bias3encoder/dilated_cnn_pairwise_encoder/dense_1/kernel1encoder/dilated_cnn_pairwise_encoder/dense_2/bias3encoder/dilated_cnn_pairwise_encoder/dense_2/kernelQencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biasesRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weightsSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biasesTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weightsSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biasesTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights3encoder/dilated_cnn_pairwise_encoder/goal_embeddingPencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biasesQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weightsRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biasesSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weightsRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biasesSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights2encoder/dilated_cnn_pairwise_encoder/thm_embeddingglobal_steppairwise_scorer/dense/biaspairwise_scorer/dense/kernel"/device:CPU:0*+
dtypes!
2	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
ф
save/RestoreV2/tensor_namesConst"/device:CPU:0*Е
value√B°Bclassifier/dense/biasBclassifier/dense/kernelBclassifier/dense_1/biasBclassifier/dense_1/kernelBclassifier/dense_2/biasBclassifier/dense_2/kernelB/encoder/dilated_cnn_pairwise_encoder/dense/biasB1encoder/dilated_cnn_pairwise_encoder/dense/kernelB1encoder/dilated_cnn_pairwise_encoder/dense_1/biasB3encoder/dilated_cnn_pairwise_encoder/dense_1/kernelB1encoder/dilated_cnn_pairwise_encoder/dense_2/biasB3encoder/dilated_cnn_pairwise_encoder/dense_2/kernelBQencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biasesBRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weightsBSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biasesBTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weightsBSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biasesBTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weightsB3encoder/dilated_cnn_pairwise_encoder/goal_embeddingBPencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biasesBQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weightsBRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biasesBSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weightsBRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biasesBSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weightsB2encoder/dilated_cnn_pairwise_encoder/thm_embeddingBglobal_stepBpairwise_scorer/dense/biasBpairwise_scorer/dense/kernel*
dtype0*
_output_shapes
:
п
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
м
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*+
dtypes!
2	*И
_output_shapesv
t:::::::::::::::::::::::::::::
Л
save/AssignAssignclassifier/dense/biassave/RestoreV2*
T0*(
_class
loc:@classifier/dense/bias*
_output_shapes
:
Ч
save/Assign_1Assignclassifier/dense/kernelsave/RestoreV2:1**
_class 
loc:@classifier/dense/kernel*
_output_shapes

:*
T0
У
save/Assign_2Assignclassifier/dense_1/biassave/RestoreV2:2*
_output_shapes
:*
T0**
_class 
loc:@classifier/dense_1/bias
Ы
save/Assign_3Assignclassifier/dense_1/kernelsave/RestoreV2:3*
_output_shapes

:*
T0*,
_class"
 loc:@classifier/dense_1/kernel
У
save/Assign_4Assignclassifier/dense_2/biassave/RestoreV2:4*
T0**
_class 
loc:@classifier/dense_2/bias*
_output_shapes
:)
Ы
save/Assign_5Assignclassifier/dense_2/kernelsave/RestoreV2:5*
T0*,
_class"
 loc:@classifier/dense_2/kernel*
_output_shapes

:)
├
save/Assign_6Assign/encoder/dilated_cnn_pairwise_encoder/dense/biassave/RestoreV2:6*
T0*B
_class8
64loc:@encoder/dilated_cnn_pairwise_encoder/dense/bias*
_output_shapes
:
╦
save/Assign_7Assign1encoder/dilated_cnn_pairwise_encoder/dense/kernelsave/RestoreV2:7*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense/kernel*
_output_shapes

:5*
T0
╟
save/Assign_8Assign1encoder/dilated_cnn_pairwise_encoder/dense_1/biassave/RestoreV2:8*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/bias*
_output_shapes
:*
T0
╧
save/Assign_9Assign3encoder/dilated_cnn_pairwise_encoder/dense_1/kernelsave/RestoreV2:9*
_output_shapes

:*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_1/kernel
╔
save/Assign_10Assign1encoder/dilated_cnn_pairwise_encoder/dense_2/biassave/RestoreV2:10*D
_class:
86loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/bias*
_output_shapes
:*
T0
╤
save/Assign_11Assign3encoder/dilated_cnn_pairwise_encoder/dense_2/kernelsave/RestoreV2:11*
T0*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/dense_2/kernel*
_output_shapes

:
Й
save/Assign_12AssignQencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biasessave/RestoreV2:12*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases*
_output_shapes
:*
T0
Ч
save/Assign_13AssignRencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weightssave/RestoreV2:13*&
_output_shapes
:*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights
Н
save/Assign_14AssignSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biasessave/RestoreV2:14*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases*
_output_shapes
:
Ы
save/Assign_15AssignTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weightssave/RestoreV2:15*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights*&
_output_shapes
:
Н
save/Assign_16AssignSencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biasessave/RestoreV2:16*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases*
_output_shapes
:
Ы
save/Assign_17AssignTencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weightssave/RestoreV2:17*&
_output_shapes
:*
T0*g
_class]
[Yloc:@encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights
╥
save/Assign_18Assign3encoder/dilated_cnn_pairwise_encoder/goal_embeddingsave/RestoreV2:18*F
_class<
:8loc:@encoder/dilated_cnn_pairwise_encoder/goal_embedding*
_output_shapes
:	и	*
T0
З
save/Assign_19AssignPencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biasessave/RestoreV2:19*c
_classY
WUloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases*
_output_shapes
:*
T0
Х
save/Assign_20AssignQencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weightssave/RestoreV2:20*d
_classZ
XVloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights*&
_output_shapes
:*
T0
Л
save/Assign_21AssignRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biasessave/RestoreV2:21*
_output_shapes
:*
T0*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases
Щ
save/Assign_22AssignSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weightssave/RestoreV2:22*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights*&
_output_shapes
:
Л
save/Assign_23AssignRencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biasessave/RestoreV2:23*e
_class[
YWloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases*
_output_shapes
:*
T0
Щ
save/Assign_24AssignSencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weightssave/RestoreV2:24*
T0*f
_class\
ZXloc:@encoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights*&
_output_shapes
:
╨
save/Assign_25Assign2encoder/dilated_cnn_pairwise_encoder/thm_embeddingsave/RestoreV2:25*
T0*E
_class;
97loc:@encoder/dilated_cnn_pairwise_encoder/thm_embedding*
_output_shapes
:	и	
y
save/Assign_26Assignglobal_stepsave/RestoreV2:26*
_class
loc:@global_step*
_output_shapes
: *
T0	
Ы
save/Assign_27Assignpairwise_scorer/dense/biassave/RestoreV2:27*-
_class#
!loc:@pairwise_scorer/dense/bias*
_output_shapes
:*
T0
г
save/Assign_28Assignpairwise_scorer/dense/kernelsave/RestoreV2:28*
T0*/
_class%
#!loc:@pairwise_scorer/dense/kernel*
_output_shapes

:
√
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard№3
▓
Q
_make_dataset_bAnwcCttt3A
modeldataset2Factory function for a dataset.И{
optimizationsConst*V
valueMBKBmap_and_batch_fusionBnoop_eliminationBshuffle_and_repeat_fusion*
dtype0З
!OptimizeDataset/extractor/Const_5Const*N
valueEBC B=/usr/local/google/home/smloos/deephol_tiny_data/thms_ls.train*
dtype0g
0OptimizeDataset/extractor/flat_filenames_1/shapeConst*
dtype0*
valueB:
         е
*OptimizeDataset/extractor/flat_filenames_1Reshape*OptimizeDataset/extractor/Const_5:output:09OptimizeDataset/extractor/flat_filenames_1/shape:output:0*
T0и
.OptimizeDataset/extractor/TensorSliceDataset_1TensorSliceDataset3OptimizeDataset/extractor/flat_filenames_1:output:0*
output_shapes
: *
Toutput_types
2я
*OptimizeDataset/extractor/FlatMapDataset_1FlatMapDataset7OptimizeDataset/extractor/TensorSliceDataset_1:handle:0*
output_shapes
: *
output_types
2*8
f3R1
/__inference_Dataset_flat_map_read_one_file_7824*

Targuments
 T
!OptimizeDataset/extractor/count_1Const*
valueB	 R
         *
dtype0	╔
)OptimizeDataset/extractor/RepeatDataset_1RepeatDataset3OptimizeDataset/extractor/FlatMapDataset_1:handle:0*OptimizeDataset/extractor/count_1:output:0*
output_shapes
: *
output_types
2R
'OptimizeDataset/extractor/buffer_size_1Const*
value
B	 Rш*
dtype0	J
 OptimizeDataset/extractor/seed_1Const*
value	B	 R *
dtype0	K
!OptimizeDataset/extractor/seed2_1Const*
dtype0	*
value	B	 R з
*OptimizeDataset/extractor/ShuffleDataset_1ShuffleDataset2OptimizeDataset/extractor/RepeatDataset_1:handle:00OptimizeDataset/extractor/buffer_size_1:output:0)OptimizeDataset/extractor/seed_1:output:0*OptimizeDataset/extractor/seed2_1:output:0*
output_shapes
: *
output_types
2P
&OptimizeDataset/extractor/batch_size_1Const*
value	B	 R*
dtype0	T
*OptimizeDataset/extractor/drop_remainder_1Const*
value	B
 Z *
dtype0
Т
*OptimizeDataset/extractor/BatchDatasetV2_1BatchDatasetV23OptimizeDataset/extractor/ShuffleDataset_1:handle:0/OptimizeDataset/extractor/batch_size_1:output:03OptimizeDataset/extractor/drop_remainder_1:output:0*"
output_shapes
:         *
output_types
2Є
OptimizeDatasetOptimizeDataset3OptimizeDataset/extractor/BatchDatasetV2_1:handle:0optimizations:output:0*
output_types
2*"
output_shapes
:         *F
optimization_configs.
,*map_vectorization:use_choose_fastest:falseq
ModelDatasetModelDatasetOptimizeDataset:handle:0*
output_types
2*"
output_shapes
:         "%
modeldatasetModelDataset:handle:0*#
_disable_call_shape_inference(
р
`
/__inference_Dataset_flat_map_read_one_file_7768

args_0
identityИвTextLineDatasetQ
compression_typeConst*
valueB B *
dtype0*
_output_shapes
: O
buffer_sizeConst*
valueB		 RАА*
dtype0	*
_output_shapes
: s
TextLineDatasetTextLineDatasetargs_0compression_type:output:0buffer_size:output:0*
_output_shapes
: a
IdentityIdentityTextLineDataset:handle:0^TextLineDataset*
_output_shapes
: *
T0"
identityIdentity:output:0*
_input_shapes
: 2"
TextLineDatasetTextLineDataset:& "
 
_user_specified_nameargs_0
■
Q
_make_dataset_PuUzmJZHmRc
modeldataset2Factory function for a dataset.И{
optimizationsConst*V
valueMBKBmap_and_batch_fusionBnoop_eliminationBshuffle_and_repeat_fusion*
dtype0З
!OptimizeDataset/extractor/Const_2Const*
dtype0*N
valueEBC B=/usr/local/google/home/smloos/deephol_tiny_data/thms_ls.traine
.OptimizeDataset/extractor/flat_filenames/shapeConst*
dtype0*
valueB:
         б
(OptimizeDataset/extractor/flat_filenamesReshape*OptimizeDataset/extractor/Const_2:output:07OptimizeDataset/extractor/flat_filenames/shape:output:0*
T0д
,OptimizeDataset/extractor/TensorSliceDatasetTensorSliceDataset1OptimizeDataset/extractor/flat_filenames:output:0*
Toutput_types
2*
output_shapes
: ы
(OptimizeDataset/extractor/FlatMapDatasetFlatMapDataset5OptimizeDataset/extractor/TensorSliceDataset:handle:0*
output_shapes
: *
output_types
2*8
f3R1
/__inference_Dataset_flat_map_read_one_file_7768*

Targuments
 R
OptimizeDataset/extractor/countConst*
valueB	 R
         *
dtype0	├
'OptimizeDataset/extractor/RepeatDatasetRepeatDataset1OptimizeDataset/extractor/FlatMapDataset:handle:0(OptimizeDataset/extractor/count:output:0*
output_shapes
: *
output_types
2P
%OptimizeDataset/extractor/buffer_sizeConst*
value
B	 Rш*
dtype0	H
OptimizeDataset/extractor/seedConst*
value	B	 R *
dtype0	I
OptimizeDataset/extractor/seed2Const*
dtype0	*
value	B	 R Э
(OptimizeDataset/extractor/ShuffleDatasetShuffleDataset0OptimizeDataset/extractor/RepeatDataset:handle:0.OptimizeDataset/extractor/buffer_size:output:0'OptimizeDataset/extractor/seed:output:0(OptimizeDataset/extractor/seed2:output:0*
output_shapes
: *
output_types
2N
$OptimizeDataset/extractor/batch_sizeConst*
value	B	 R*
dtype0	R
(OptimizeDataset/extractor/drop_remainderConst*
value	B
 Z *
dtype0
К
(OptimizeDataset/extractor/BatchDatasetV2BatchDatasetV21OptimizeDataset/extractor/ShuffleDataset:handle:0-OptimizeDataset/extractor/batch_size:output:01OptimizeDataset/extractor/drop_remainder:output:0*"
output_shapes
:         *
output_types
2Ё
OptimizeDatasetOptimizeDataset1OptimizeDataset/extractor/BatchDatasetV2:handle:0optimizations:output:0*
output_types
2*"
output_shapes
:         *F
optimization_configs.
,*map_vectorization:use_choose_fastest:falseq
ModelDatasetModelDatasetOptimizeDataset:handle:0*
output_types
2*"
output_shapes
:         "%
modeldatasetModelDataset:handle:0*#
_disable_call_shape_inference(
р
`
/__inference_Dataset_flat_map_read_one_file_7824

args_0
identityИвTextLineDatasetQ
compression_typeConst*
valueB B *
dtype0*
_output_shapes
: O
buffer_sizeConst*
valueB		 RАА*
dtype0	*
_output_shapes
: s
TextLineDatasetTextLineDatasetargs_0compression_type:output:0buffer_size:output:0*
_output_shapes
: a
IdentityIdentityTextLineDataset:handle:0^TextLineDataset*
_output_shapes
: *
T0"
identityIdentity:output:0*
_input_shapes
: 2"
TextLineDatasetTextLineDataset:& "
 
_user_specified_nameargs_0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"5
pairwise_score#
!
pairwise_scorer/dense/BiasAdd:0" 
goal_string

Placeholder:0"№=
	variablesю=ы=
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
Г
5encoder/dilated_cnn_pairwise_encoder/goal_embedding:0:encoder/dilated_cnn_pairwise_encoder/goal_embedding/Assign:encoder/dilated_cnn_pairwise_encoder/goal_embedding/read:02Pencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform:08
 
4encoder/dilated_cnn_pairwise_encoder/thm_embedding:09encoder/dilated_cnn_pairwise_encoder/thm_embedding/Assign9encoder/dilated_cnn_pairwise_encoder/thm_embedding/read:02Oencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform:08
 
Tencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights:0Yencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/AssignYencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/read:02oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform:08
Є
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases:0Xencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/AssignXencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/read:02eencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros:08
З
Vencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights:0[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Assign[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/read:02qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform:08
·
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases:0Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/AssignZencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/read:02gencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros:08
З
Vencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights:0[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Assign[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/read:02qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform:08
·
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases:0Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/AssignZencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/read:02gencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros:08
√
Sencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights:0Xencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/AssignXencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/read:02nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform:08
ю
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases:0Wencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/AssignWencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/read:02dencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros:08
Г
Uencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights:0Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/AssignZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/read:02pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform:08
Ў
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases:0Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/AssignYencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/read:02fencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros:08
Г
Uencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights:0Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/AssignZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/read:02pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform:08
Ў
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases:0Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/AssignYencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/read:02fencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros:08
√
3encoder/dilated_cnn_pairwise_encoder/dense/kernel:08encoder/dilated_cnn_pairwise_encoder/dense/kernel/Assign8encoder/dilated_cnn_pairwise_encoder/dense/kernel/read:02Nencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform:08
ъ
1encoder/dilated_cnn_pairwise_encoder/dense/bias:06encoder/dilated_cnn_pairwise_encoder/dense/bias/Assign6encoder/dilated_cnn_pairwise_encoder/dense/bias/read:02Cencoder/dilated_cnn_pairwise_encoder/dense/bias/Initializer/zeros:08
Г
5encoder/dilated_cnn_pairwise_encoder/dense_1/kernel:0:encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Assign:encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/read:02Pencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform:08
Є
3encoder/dilated_cnn_pairwise_encoder/dense_1/bias:08encoder/dilated_cnn_pairwise_encoder/dense_1/bias/Assign8encoder/dilated_cnn_pairwise_encoder/dense_1/bias/read:02Eencoder/dilated_cnn_pairwise_encoder/dense_1/bias/Initializer/zeros:08
Г
5encoder/dilated_cnn_pairwise_encoder/dense_2/kernel:0:encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Assign:encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/read:02Pencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform:08
Є
3encoder/dilated_cnn_pairwise_encoder/dense_2/bias:08encoder/dilated_cnn_pairwise_encoder/dense_2/bias/Assign8encoder/dilated_cnn_pairwise_encoder/dense_2/bias/read:02Eencoder/dilated_cnn_pairwise_encoder/dense_2/bias/Initializer/zeros:08
У
classifier/dense/kernel:0classifier/dense/kernel/Assignclassifier/dense/kernel/read:024classifier/dense/kernel/Initializer/random_uniform:08
В
classifier/dense/bias:0classifier/dense/bias/Assignclassifier/dense/bias/read:02)classifier/dense/bias/Initializer/zeros:08
Ы
classifier/dense_1/kernel:0 classifier/dense_1/kernel/Assign classifier/dense_1/kernel/read:026classifier/dense_1/kernel/Initializer/random_uniform:08
К
classifier/dense_1/bias:0classifier/dense_1/bias/Assignclassifier/dense_1/bias/read:02+classifier/dense_1/bias/Initializer/zeros:08
Ы
classifier/dense_2/kernel:0 classifier/dense_2/kernel/Assign classifier/dense_2/kernel/read:026classifier/dense_2/kernel/Initializer/random_uniform:08
К
classifier/dense_2/bias:0classifier/dense_2/bias/Assignclassifier/dense_2/bias/read:02+classifier/dense_2/bias/Initializer/zeros:08
з
pairwise_scorer/dense/kernel:0#pairwise_scorer/dense/kernel/Assign#pairwise_scorer/dense/kernel/read:029pairwise_scorer/dense/kernel/Initializer/random_uniform:08
Ц
pairwise_scorer/dense/bias:0!pairwise_scorer/dense/bias/Assign!pairwise_scorer/dense/bias/read:02.pairwise_scorer/dense/bias/Initializer/zeros:08"F
pfstate_and_tac3
1
/encoder/dilated_cnn_pairwise_encoder/concat_1:0"ўк
cond_contextхкск
╞
Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/cond_textZclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_t:0 *м
Mclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar:0
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:0
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:1
Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_t:0╕
Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0м
Mclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar:0[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:1
 _
\classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/cond_text_1Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_f:0*Ж-
rclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
rclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
sclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
sclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Цclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Цclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Цclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Пclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Мclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Иclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Уclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Оclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Кclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Йclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Дclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Оclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Нclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Нclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Зclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
}classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Аclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
Вclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
yclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0
[classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_f:0
Oclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rank:0
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape:0
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rank:0
Qclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape:0╕
Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0Zclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0ч
Qclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape:0Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0╫
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rank:0Вclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0╘
Oclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rank:0Аclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0ф
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape:0Пclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02┤%
▒%
tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_texttclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *╔"
Цclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Цclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Цclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Пclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Мclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Иclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Уclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Оclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Кclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Йclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Дclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Оclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Нclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Нclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Зclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
}classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape:0
Qclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape:0д
Пclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Пclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0щ
Qclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape:0Уclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1и
Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ц
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape:0Сclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1ь
tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02е
в
vclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*║
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
yclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Є
yclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0uclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0ь
tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0tclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
▌
Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/cond_textWclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Xclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t:0 *╠
bclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency:0
Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0
Xclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t:0▓
Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0
┼
Yclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/cond_text_1Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Xclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f:0*┤
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch:0
_classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1:0
_classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2:0
_classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3:0
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_0:0
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_1:0
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_2:0
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_4:0
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_5:0
]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_7:0
dclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency_1:0
Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0
Xclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f:0
Mclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar:0
Xclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge:0
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape:0
Qclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape:0┤
Qclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shape:0_classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1:0▓
Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Wclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0░
Mclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_scalar:0_classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3:0╣
Xclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge:0]classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch:0│
Pclassifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shape:0_classifier/sparse_softmax_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2:0
о
xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textxclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *║
kclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0ш
kclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1Ї
xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Ьw
zclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*Ф8
Рclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
Рclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
Сclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
Сclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
┤classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
┤classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
┤classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
нclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
кclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
жclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
▒classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
мclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
иclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
зclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
вclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
мclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
лclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
лclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
еclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Эclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Ыclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Юclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
аclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
Чclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
yclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
mclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rank:0
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank:0
oclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0г
oclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Ї
xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0xclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Р
mclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rank:0Юclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0У
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank:0аclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0а
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0нclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02ї-
Є-
Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textТclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *н*
┤classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
┤classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
┤classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
нclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
кclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
жclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
▒classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
мclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
иclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
зclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
вclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
мclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
лclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
лclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
еclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Эclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Ыclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
oclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0в
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1ф
пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0пclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0е
oclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0▒classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1р
нclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0нclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0к
Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02Щ
Ц
Фclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*╤

Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Чclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0к
Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Тclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0░
Чclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0Уclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
╬
uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_textuclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0vclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *у
Аclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
vclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0ю
uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
╩
wclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0vclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*▀
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
}classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
}classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
}classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
Вclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
vclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
kclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
vclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
oclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0я
nclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0}classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0Ё
oclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0}classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0ю
uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0uclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ї
vclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0{classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0ь
kclassifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0}classifier/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0"╫
table_initializer┴
╛
,extractor/key_value_init/LookupTableImportV2
.extractor/key_value_init_1/LookupTableImportV2
.extractor/key_value_init_2/LookupTableImportV2
.extractor/key_value_init_3/LookupTableImportV2"W
thm_embeddingF
D
Bencoder/dilated_cnn_pairwise_encoder/embedding_lookup_1/Identity:0"*
thm_ids

extractor/SparseToDense_1:0"╒
while_context├└
╜
!extractor/map/while/while_context
*extractor/map/while/LoopCond:02extractor/map/while/Merge:0:extractor/map/while/Identity:0Bextractor/map/while/Exit:0Bextractor/map/while/Exit_1:0Bextractor/map/while/Exit_2:0J─
extractor/map/TensorArray:0
Jextractor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
Lextractor/map/TensorArrayUnstack_1/TensorArrayScatter/TensorArrayScatterV3:0
extractor/map/TensorArray_1:0
extractor/map/TensorArray_2:0
extractor/map/strided_slice:0
extractor/map/while/Const:0
extractor/map/while/Enter:0
extractor/map/while/Enter_1:0
extractor/map/while/Enter_2:0
extractor/map/while/Equal:0
extractor/map/while/Exit:0
extractor/map/while/Exit_1:0
extractor/map/while/Exit_2:0
extractor/map/while/Identity:0
 extractor/map/while/Identity_1:0
 extractor/map/while/Identity_2:0
 extractor/map/while/Less/Enter:0
extractor/map/while/Less:0
extractor/map/while/Less_1:0
 extractor/map/while/LogicalAnd:0
extractor/map/while/LoopCond:0
extractor/map/while/Merge:0
extractor/map/while/Merge:1
extractor/map/while/Merge_1:0
extractor/map/while/Merge_1:1
extractor/map/while/Merge_2:0
extractor/map/while/Merge_2:1
#extractor/map/while/NextIteration:0
%extractor/map/while/NextIteration_1:0
%extractor/map/while/NextIteration_2:0
extractor/map/while/Switch:0
extractor/map/while/Switch:1
extractor/map/while/Switch_1:0
extractor/map/while/Switch_1:1
extractor/map/while/Switch_2:0
extractor/map/while/Switch_2:1
-extractor/map/while/TensorArrayReadV3/Enter:0
/extractor/map/while/TensorArrayReadV3/Enter_1:0
'extractor/map/while/TensorArrayReadV3:0
/extractor/map/while/TensorArrayReadV3_1/Enter:0
1extractor/map/while/TensorArrayReadV3_1/Enter_1:0
)extractor/map/while/TensorArrayReadV3_1:0
?extractor/map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
9extractor/map/while/TensorArrayWrite/TensorArrayWriteV3:0
extractor/map/while/add/y:0
extractor/map/while/add:0
extractor/map/while/add_1/y:0
extractor/map/while/add_1:0
 extractor/map/while/cond/Merge:0
 extractor/map/while/cond/Merge:1
!extractor/map/while/cond/Switch:0
!extractor/map/while/cond/Switch:1
#extractor/map/while/cond/Switch_1:0
#extractor/map/while/cond/Switch_1:1
#extractor/map/while/cond/Switch_2:0
#extractor/map/while/cond/Switch_2:1
"extractor/map/while/cond/pred_id:0
#extractor/map/while/cond/switch_f:0
#extractor/map/while/cond/switch_t:0}
Jextractor/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0/extractor/map/while/TensorArrayReadV3/Enter_1:0`
extractor/map/TensorArray_2:0?extractor/map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0P
extractor/map/TensorArray_1:0/extractor/map/while/TensorArrayReadV3_1/Enter:0L
extractor/map/TensorArray:0-extractor/map/while/TensorArrayReadV3/Enter:0Б
Lextractor/map/TensorArrayUnstack_1/TensorArrayScatter/TensorArrayScatterV3:01extractor/map/while/TensorArrayReadV3_1/Enter_1:0A
extractor/map/strided_slice:0 extractor/map/while/Less/Enter:0Rextractor/map/while/Enter:0Rextractor/map/while/Enter_1:0Rextractor/map/while/Enter_2:0Zextractor/map/strided_slice:0b╧
╠
"extractor/map/while/cond/cond_text"extractor/map/while/cond/pred_id:0#extractor/map/while/cond/switch_t:0 *┌
)extractor/map/while/TensorArrayReadV3_1:0
#extractor/map/while/cond/Switch_1:0
#extractor/map/while/cond/Switch_1:1
"extractor/map/while/cond/pred_id:0
#extractor/map/while/cond/switch_t:0P
)extractor/map/while/TensorArrayReadV3_1:0#extractor/map/while/cond/Switch_1:1H
"extractor/map/while/cond/pred_id:0"extractor/map/while/cond/pred_id:0b╦
╚
$extractor/map/while/cond/cond_text_1"extractor/map/while/cond/pred_id:0#extractor/map/while/cond/switch_f:0*╓
'extractor/map/while/TensorArrayReadV3:0
#extractor/map/while/cond/Switch_2:0
#extractor/map/while/cond/Switch_2:1
"extractor/map/while/cond/pred_id:0
#extractor/map/while/cond/switch_f:0N
'extractor/map/while/TensorArrayReadV3:0#extractor/map/while/cond/Switch_2:0H
"extractor/map/while/cond/pred_id:0"extractor/map/while/cond/pred_id:0"=

tactic_net/
-
+encoder/dilated_cnn_pairwise_encoder/Tile:0"1
tactic_logits 

classifier/dense_2/BiasAdd:0"&

thm_string

extractor/concat_1:0"F
thm_goal_fc7
5
3encoder/dilated_cnn_pairwise_encoder/dense_2/Relu:0"░
	summariesв
Я
classifier/log_prob_tactic:0
classifier/tactic_accuracy:0
classifier/weighted_topk:0
!classifier/tactic_topk_accuracy:0
classifier/target_tactics:0
classifier/predicted_tactics:0
pairwise_scorer/roc_loss_goal:0
pairwise_scorer/pos_logits:0
pairwise_scorer/neg_accuracy:0
#pairwise_scorer/log_prob_pairwise:0
pairwise_scorer/neg_pred:0
pairwise_scorer/neg_logits:0
 pairwise_scorer/roc_loss_batch:0
pairwise_scorer/pos_pred:0
pairwise_scorer/relative_pred:0
pairwise_scorer/pos_accuracy:0
 pairwise_scorer/accuracy_50_50:0
loss:0"А
metric_variablesы
ш
classifier/mean/total:0
classifier/mean/count:0
classifier/mean_1/total:0
classifier/mean_1/count:0
classifier/mean_2/total:0
classifier/mean_2/count:0
classifier/mean_3/total:0
classifier/mean_3/count:0
 classifier/mean_accuracy/total:0
 classifier/mean_accuracy/count:0
pairwise_scorer/mean_7/total:0
pairwise_scorer/mean_7/count:0
pairwise_scorer/mean_8/total:0
pairwise_scorer/mean_8/count:0
pairwise_scorer/mean_9/total:0
pairwise_scorer/mean_9/count:0
pairwise_scorer/mean_10/total:0
pairwise_scorer/mean_10/count:0
pairwise_scorer/mean_11/total:0
pairwise_scorer/mean_11/count:0
pairwise_scorer/mean_12/total:0
pairwise_scorer/mean_12/count:0
pairwise_scorer/mean_13/total:0
pairwise_scorer/mean_13/count:0
pairwise_scorer/mean_14/total:0
pairwise_scorer/mean_14/count:0
pairwise_scorer/mean_15/total:0
pairwise_scorer/mean_15/count:0
pairwise_scorer/mean_16/total:0
pairwise_scorer/mean_16/count:0
pairwise_scorer/mean_17/total:0
pairwise_scorer/mean_17/count:0")
goal_ids

extractor/SparseToDense:0"i
thm_net^
\
,encoder/dilated_cnn_pairwise_encoder/Max_1:0
,encoder/dilated_cnn_pairwise_encoder/Max_1:0"K
	iterators>
<
extractor/OneShotIterator:0
extractor/OneShotIterator_1:0"$
label_tac_id

extractor/Tile:0"к=
trainable_variablesТ=П=
Г
5encoder/dilated_cnn_pairwise_encoder/goal_embedding:0:encoder/dilated_cnn_pairwise_encoder/goal_embedding/Assign:encoder/dilated_cnn_pairwise_encoder/goal_embedding/read:02Pencoder/dilated_cnn_pairwise_encoder/goal_embedding/Initializer/random_uniform:08
 
4encoder/dilated_cnn_pairwise_encoder/thm_embedding:09encoder/dilated_cnn_pairwise_encoder/thm_embedding/Assign9encoder/dilated_cnn_pairwise_encoder/thm_embedding/read:02Oencoder/dilated_cnn_pairwise_encoder/thm_embedding/Initializer/random_uniform:08
 
Tencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights:0Yencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/AssignYencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/read:02oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform:08
Є
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases:0Xencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/AssignXencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/read:02eencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros:08
З
Vencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights:0[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Assign[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/read:02qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform:08
·
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases:0Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/AssignZencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/read:02gencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros:08
З
Vencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights:0[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Assign[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/read:02qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform:08
·
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases:0Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/AssignZencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/read:02gencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros:08
√
Sencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights:0Xencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/AssignXencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/read:02nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform:08
ю
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases:0Wencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/AssignWencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/read:02dencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros:08
Г
Uencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights:0Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/AssignZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/read:02pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform:08
Ў
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases:0Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/AssignYencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/read:02fencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros:08
Г
Uencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights:0Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/AssignZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/read:02pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform:08
Ў
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases:0Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/AssignYencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/read:02fencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros:08
√
3encoder/dilated_cnn_pairwise_encoder/dense/kernel:08encoder/dilated_cnn_pairwise_encoder/dense/kernel/Assign8encoder/dilated_cnn_pairwise_encoder/dense/kernel/read:02Nencoder/dilated_cnn_pairwise_encoder/dense/kernel/Initializer/random_uniform:08
ъ
1encoder/dilated_cnn_pairwise_encoder/dense/bias:06encoder/dilated_cnn_pairwise_encoder/dense/bias/Assign6encoder/dilated_cnn_pairwise_encoder/dense/bias/read:02Cencoder/dilated_cnn_pairwise_encoder/dense/bias/Initializer/zeros:08
Г
5encoder/dilated_cnn_pairwise_encoder/dense_1/kernel:0:encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Assign:encoder/dilated_cnn_pairwise_encoder/dense_1/kernel/read:02Pencoder/dilated_cnn_pairwise_encoder/dense_1/kernel/Initializer/random_uniform:08
Є
3encoder/dilated_cnn_pairwise_encoder/dense_1/bias:08encoder/dilated_cnn_pairwise_encoder/dense_1/bias/Assign8encoder/dilated_cnn_pairwise_encoder/dense_1/bias/read:02Eencoder/dilated_cnn_pairwise_encoder/dense_1/bias/Initializer/zeros:08
Г
5encoder/dilated_cnn_pairwise_encoder/dense_2/kernel:0:encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Assign:encoder/dilated_cnn_pairwise_encoder/dense_2/kernel/read:02Pencoder/dilated_cnn_pairwise_encoder/dense_2/kernel/Initializer/random_uniform:08
Є
3encoder/dilated_cnn_pairwise_encoder/dense_2/bias:08encoder/dilated_cnn_pairwise_encoder/dense_2/bias/Assign8encoder/dilated_cnn_pairwise_encoder/dense_2/bias/read:02Eencoder/dilated_cnn_pairwise_encoder/dense_2/bias/Initializer/zeros:08
У
classifier/dense/kernel:0classifier/dense/kernel/Assignclassifier/dense/kernel/read:024classifier/dense/kernel/Initializer/random_uniform:08
В
classifier/dense/bias:0classifier/dense/bias/Assignclassifier/dense/bias/read:02)classifier/dense/bias/Initializer/zeros:08
Ы
classifier/dense_1/kernel:0 classifier/dense_1/kernel/Assign classifier/dense_1/kernel/read:026classifier/dense_1/kernel/Initializer/random_uniform:08
К
classifier/dense_1/bias:0classifier/dense_1/bias/Assignclassifier/dense_1/bias/read:02+classifier/dense_1/bias/Initializer/zeros:08
Ы
classifier/dense_2/kernel:0 classifier/dense_2/kernel/Assign classifier/dense_2/kernel/read:026classifier/dense_2/kernel/Initializer/random_uniform:08
К
classifier/dense_2/bias:0classifier/dense_2/bias/Assignclassifier/dense_2/bias/read:02+classifier/dense_2/bias/Initializer/zeros:08
з
pairwise_scorer/dense/kernel:0#pairwise_scorer/dense/kernel/Assign#pairwise_scorer/dense/kernel/read:029pairwise_scorer/dense/kernel/Initializer/random_uniform:08
Ц
pairwise_scorer/dense/bias:0!pairwise_scorer/dense/bias/Assign!pairwise_scorer/dense/bias/read:02.pairwise_scorer/dense/bias/Initializer/zeros:08"G
encoding_net7
5
3encoder/dilated_cnn_pairwise_encoder/dense_2/Relu:0"Ч(
local_variablesГ(А(
Д
classifier/mean/total:0classifier/mean/total/Assignclassifier/mean/total/read:02)classifier/mean/total/Initializer/zeros:0@H
Д
classifier/mean/count:0classifier/mean/count/Assignclassifier/mean/count/read:02)classifier/mean/count/Initializer/zeros:0@H
М
classifier/mean_1/total:0classifier/mean_1/total/Assignclassifier/mean_1/total/read:02+classifier/mean_1/total/Initializer/zeros:0@H
М
classifier/mean_1/count:0classifier/mean_1/count/Assignclassifier/mean_1/count/read:02+classifier/mean_1/count/Initializer/zeros:0@H
М
classifier/mean_2/total:0classifier/mean_2/total/Assignclassifier/mean_2/total/read:02+classifier/mean_2/total/Initializer/zeros:0@H
М
classifier/mean_2/count:0classifier/mean_2/count/Assignclassifier/mean_2/count/read:02+classifier/mean_2/count/Initializer/zeros:0@H
М
classifier/mean_3/total:0classifier/mean_3/total/Assignclassifier/mean_3/total/read:02+classifier/mean_3/total/Initializer/zeros:0@H
М
classifier/mean_3/count:0classifier/mean_3/count/Assignclassifier/mean_3/count/read:02+classifier/mean_3/count/Initializer/zeros:0@H
и
 classifier/mean_accuracy/total:0%classifier/mean_accuracy/total/Assign%classifier/mean_accuracy/total/read:022classifier/mean_accuracy/total/Initializer/zeros:0@H
и
 classifier/mean_accuracy/count:0%classifier/mean_accuracy/count/Assign%classifier/mean_accuracy/count/read:022classifier/mean_accuracy/count/Initializer/zeros:0@H
а
pairwise_scorer/mean_7/total:0#pairwise_scorer/mean_7/total/Assign#pairwise_scorer/mean_7/total/read:020pairwise_scorer/mean_7/total/Initializer/zeros:0@H
а
pairwise_scorer/mean_7/count:0#pairwise_scorer/mean_7/count/Assign#pairwise_scorer/mean_7/count/read:020pairwise_scorer/mean_7/count/Initializer/zeros:0@H
а
pairwise_scorer/mean_8/total:0#pairwise_scorer/mean_8/total/Assign#pairwise_scorer/mean_8/total/read:020pairwise_scorer/mean_8/total/Initializer/zeros:0@H
а
pairwise_scorer/mean_8/count:0#pairwise_scorer/mean_8/count/Assign#pairwise_scorer/mean_8/count/read:020pairwise_scorer/mean_8/count/Initializer/zeros:0@H
а
pairwise_scorer/mean_9/total:0#pairwise_scorer/mean_9/total/Assign#pairwise_scorer/mean_9/total/read:020pairwise_scorer/mean_9/total/Initializer/zeros:0@H
а
pairwise_scorer/mean_9/count:0#pairwise_scorer/mean_9/count/Assign#pairwise_scorer/mean_9/count/read:020pairwise_scorer/mean_9/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_10/total:0$pairwise_scorer/mean_10/total/Assign$pairwise_scorer/mean_10/total/read:021pairwise_scorer/mean_10/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_10/count:0$pairwise_scorer/mean_10/count/Assign$pairwise_scorer/mean_10/count/read:021pairwise_scorer/mean_10/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_11/total:0$pairwise_scorer/mean_11/total/Assign$pairwise_scorer/mean_11/total/read:021pairwise_scorer/mean_11/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_11/count:0$pairwise_scorer/mean_11/count/Assign$pairwise_scorer/mean_11/count/read:021pairwise_scorer/mean_11/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_12/total:0$pairwise_scorer/mean_12/total/Assign$pairwise_scorer/mean_12/total/read:021pairwise_scorer/mean_12/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_12/count:0$pairwise_scorer/mean_12/count/Assign$pairwise_scorer/mean_12/count/read:021pairwise_scorer/mean_12/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_13/total:0$pairwise_scorer/mean_13/total/Assign$pairwise_scorer/mean_13/total/read:021pairwise_scorer/mean_13/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_13/count:0$pairwise_scorer/mean_13/count/Assign$pairwise_scorer/mean_13/count/read:021pairwise_scorer/mean_13/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_14/total:0$pairwise_scorer/mean_14/total/Assign$pairwise_scorer/mean_14/total/read:021pairwise_scorer/mean_14/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_14/count:0$pairwise_scorer/mean_14/count/Assign$pairwise_scorer/mean_14/count/read:021pairwise_scorer/mean_14/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_15/total:0$pairwise_scorer/mean_15/total/Assign$pairwise_scorer/mean_15/total/read:021pairwise_scorer/mean_15/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_15/count:0$pairwise_scorer/mean_15/count/Assign$pairwise_scorer/mean_15/count/read:021pairwise_scorer/mean_15/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_16/total:0$pairwise_scorer/mean_16/total/Assign$pairwise_scorer/mean_16/total/read:021pairwise_scorer/mean_16/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_16/count:0$pairwise_scorer/mean_16/count/Assign$pairwise_scorer/mean_16/count/read:021pairwise_scorer/mean_16/count/Initializer/zeros:0@H
д
pairwise_scorer/mean_17/total:0$pairwise_scorer/mean_17/total/Assign$pairwise_scorer/mean_17/total/read:021pairwise_scorer/mean_17/total/Initializer/zeros:0@H
д
pairwise_scorer/mean_17/count:0$pairwise_scorer/mean_17/count/Assign$pairwise_scorer/mean_17/count/read:021pairwise_scorer/mean_17/count/Initializer/zeros:0@H"х
losses┌
╫
4classifier/sparse_softmax_cross_entropy_loss/value:0
classifier/mul:0
classifier/mul_1:0
0pairwise_scorer/sigmoid_cross_entropy_loss/Sum:0
pairwise_scorer/mul:0
pairwise_scorer/mul_1:0
pairwise_scorer/mul_2:0"V
goal_embeddingD
B
@encoder/dilated_cnn_pairwise_encoder/embedding_lookup/Identity:0"%
saved_model_main_op


group_deps"G
label_tac_one_hot2
0
.encoder/dilated_cnn_pairwise_encoder/one_hot:0"g
goal_net[
Y
*encoder/dilated_cnn_pairwise_encoder/Max:0
+encoder/dilated_cnn_pairwise_encoder/Tile:0"Й$
model_variablesї#Є#
 
Tencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights:0Yencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/AssignYencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/read:02oencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform:08
Є
Sencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases:0Xencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/AssignXencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/read:02eencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros:08
З
Vencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights:0[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Assign[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/read:02qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform:08
·
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases:0Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/AssignZencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/read:02gencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros:08
З
Vencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights:0[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Assign[encoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/read:02qencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform:08
·
Uencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases:0Zencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/AssignZencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/read:02gencoder/dilated_cnn_pairwise_encoder/goal/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros:08
√
Sencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights:0Xencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/AssignXencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/read:02nencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/weights/Initializer/random_uniform:08
ю
Rencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases:0Wencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/AssignWencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/read:02dencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer/Conv/biases/Initializer/zeros:08
Г
Uencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights:0Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/AssignZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/read:02pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/weights/Initializer/random_uniform:08
Ў
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases:0Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/AssignYencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/read:02fencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_1/Conv/biases/Initializer/zeros:08
Г
Uencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights:0Zencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/AssignZencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/read:02pencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/weights/Initializer/random_uniform:08
Ў
Tencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases:0Yencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/AssignYencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/read:02fencoder/dilated_cnn_pairwise_encoder/thm/wavenet_block/wavenet_layer_2/Conv/biases/Initializer/zeros:08"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H*ю
serving_default┌
*
thms"
Placeholder_1:0         
,
tac_id"
Placeholder_3:0	         
(
goal 
Placeholder:0         
9
thms_hard_negatives"
Placeholder_2:0         ,
pos_accuracy
pairwise_scorer/Mean:0 *
pos_pred
pairwise_scorer/Mean_5:0 3
accuracy_50_50!
pairwise_scorer/truediv_1:0 ;
predicted_tactics&
classifier/ArgMax:0	         2
tactic_topk_accuracy
classifier/truediv:0 ,

neg_logits
pairwise_scorer/Mean_4:0 *
neg_pred
pairwise_scorer/Mean_6:0 /
relative_pred
pairwise_scorer/Mean_2:0 5
target_tactics#
extractor/Tile:0	         -
weighted_topk
classifier/truediv_2:0 .
neg_accuracy
pairwise_scorer/Mean_1:0 /
roc_loss_batch
pairwise_scorer/Const:0 /
tactic_accuracy
classifier/truediv_1:0 ,

pos_logits
pairwise_scorer/Mean_3:0 K
log_prob_pairwise6
0pairwise_scorer/sigmoid_cross_entropy_loss/Sum:0 M
log_prob_tactic:
4classifier/sparse_softmax_cross_entropy_loss/value:0 0
roc_loss_goal
pairwise_scorer/Const_1:0 tensorflow/serving/predict