; ModuleID = '/tmp/tmp6tyn91on.cpp'
source_filename = "/tmp/tmp6tyn91on.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j2) #10
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #10
  call void @llvm.lifetime.start.p0(i64 40000, ptr %b) #10
  call void @llvm.lifetime.start.p0(i64 40000, ptr %c) #10
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %8, %9
  br i1 %cmp14, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.body15
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %10, %11
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom19
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc25 = add nsw i32 %14, 1
  store i32 %inc25, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end26:                                        ; preds = %for.cond16
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %15, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !14

for.end29:                                        ; preds = %for.cond13
  store i32 0, ptr %i1, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc63, %for.end29
  %16 = load i32, ptr %i1, align 4, !tbaa !5
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %16, %17
  br i1 %cmp31, label %for.body32, label %for.end65

for.body32:                                       ; preds = %for.cond30
  store i32 0, ptr %j2, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc60, %for.body32
  %18 = load i32, ptr %j2, align 4, !tbaa !5
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %18, %19
  br i1 %cmp34, label %for.body35, label %for.end62

for.body35:                                       ; preds = %for.cond33
  store i32 0, ptr %j1, align 4, !tbaa !5
  store i32 0, ptr %i2, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc56, %for.body35
  %20 = load i32, ptr %j1, align 4, !tbaa !5
  %21 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %20, %21
  %22 = load i32, ptr %i2, align 4, !tbaa !5
  %23 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %22, %23
  br i1 %cmp38, label %for.body39, label %for.end59

for.body39:                                       ; preds = %for.cond36
  %24 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom40 = sext i32 %24 to i64
  %arrayidx41 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom40
  %25 = load i32, ptr %j1, align 4, !tbaa !5
  %idxprom42 = sext i32 %25 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %26 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %27 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom44 = sext i32 %27 to i64
  %arrayidx45 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %idxprom44
  %28 = load i32, ptr %j2, align 4, !tbaa !5
  %idxprom46 = sext i32 %28 to i64
  %arrayidx47 = getelementptr inbounds [100 x i32], ptr %arrayidx45, i64 0, i64 %idxprom46
  %29 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %mul = mul nsw i32 %26, %29
  %30 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom48 = sext i32 %30 to i64
  %arrayidx49 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom48
  %31 = load i32, ptr %j2, align 4, !tbaa !5
  %idxprom50 = sext i32 %31 to i64
  %arrayidx51 = getelementptr inbounds [100 x i32], ptr %arrayidx49, i64 0, i64 %idxprom50
  %32 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %add = add nsw i32 %mul, %32
  %33 = load i32, ptr %i1, align 4, !tbaa !5
  %idxprom52 = sext i32 %33 to i64
  %arrayidx53 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom52
  %34 = load i32, ptr %j2, align 4, !tbaa !5
  %idxprom54 = sext i32 %34 to i64
  %arrayidx55 = getelementptr inbounds [100 x i32], ptr %arrayidx53, i64 0, i64 %idxprom54
  store i32 %add, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.inc56

for.inc56:                                        ; preds = %for.body39
  %35 = load i32, ptr %j1, align 4, !tbaa !5
  %inc57 = add nsw i32 %35, 1
  store i32 %inc57, ptr %j1, align 4, !tbaa !5
  %36 = load i32, ptr %i2, align 4, !tbaa !5
  %inc58 = add nsw i32 %36, 1
  store i32 %inc58, ptr %i2, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !15

for.end59:                                        ; preds = %for.cond36
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %37 = load i32, ptr %j2, align 4, !tbaa !5
  %inc61 = add nsw i32 %37, 1
  store i32 %inc61, ptr %j2, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !16

for.end62:                                        ; preds = %for.cond33
  br label %for.inc63

for.inc63:                                        ; preds = %for.end62
  %38 = load i32, ptr %i1, align 4, !tbaa !5
  %inc64 = add nsw i32 %38, 1
  store i32 %inc64, ptr %i1, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !17

for.end65:                                        ; preds = %for.cond30
  %arrayidx66 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 0
  %arrayidx67 = getelementptr inbounds [100 x i32], ptr %arrayidx66, i64 0, i64 0
  %39 = load i32, ptr %arrayidx67, align 16, !tbaa !5
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %39)
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc77, %for.end65
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %40, %41
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %arrayidx73 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 0
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom74 = sext i32 %42 to i64
  %arrayidx75 = getelementptr inbounds [100 x i32], ptr %arrayidx73, i64 0, i64 %idxprom74
  %43 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call72, i32 noundef %43)
  br label %for.inc77

for.inc77:                                        ; preds = %for.body71
  %44 = load i32, ptr %j, align 4, !tbaa !5
  %inc78 = add nsw i32 %44, 1
  store i32 %inc78, ptr %j, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !18

for.end79:                                        ; preds = %for.cond69
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc100, %for.end79
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %46 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %45, %46
  br i1 %cmp81, label %for.body82, label %for.end102

for.body82:                                       ; preds = %for.cond80
  %call83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom84 = sext i32 %47 to i64
  %arrayidx85 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [100 x i32], ptr %arrayidx85, i64 0, i64 0
  %48 = load i32, ptr %arrayidx86, align 16, !tbaa !5
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %48)
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond88

for.cond88:                                       ; preds = %for.inc97, %for.body82
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %50 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %49, %50
  br i1 %cmp89, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.cond88
  %call91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %51 to i64
  %arrayidx93 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %idxprom92
  %52 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom94 = sext i32 %52 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %arrayidx93, i64 0, i64 %idxprom94
  %53 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %call96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call91, i32 noundef %53)
  br label %for.inc97

for.inc97:                                        ; preds = %for.body90
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %inc98 = add nsw i32 %54, 1
  store i32 %inc98, ptr %j, align 4, !tbaa !5
  br label %for.cond88, !llvm.loop !19

for.end99:                                        ; preds = %for.cond88
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %inc101 = add nsw i32 %55, 1
  store i32 %inc101, ptr %i, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !20

for.end102:                                       ; preds = %for.cond80
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 40000, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 40000, ptr %b) #10
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !21
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !21, !nonnull !26, !align !27
  %vtable = load ptr, ptr %1, align 8, !tbaa !28
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !21, !nonnull !26, !align !27
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !21, !nonnull !26, !align !27
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !26, !align !27
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !26, !align !27
  %vtable = load ptr, ptr %1, align 8, !tbaa !28
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !31
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !33
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !33
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #6 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !24
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !24
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #7 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !33
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !33
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !33
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !33
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #6 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !31
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !35
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #8

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !21, !nonnull !26, !align !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !31
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !44
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !45
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !44
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !52
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !52
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !44
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !53
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !44
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !44
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !44
  %vtable = load ptr, ptr %this1, align 8, !tbaa !28
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %4 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %this1, i8 noundef signext %3)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, ptr %retval, align 1
  ret i8 %5
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #9

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSSo", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 omnipotent char", !23, i64 0}
!26 = !{}
!27 = !{i64 8}
!28 = !{!29, !29, i64 0}
!29 = !{!"vtable pointer", !8, i64 0}
!30 = !{!23, !23, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!35 = !{!36, !34, i64 32}
!36 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !38, i64 24, !34, i64 28, !34, i64 32, !39, i64 40, !40, i64 48, !7, i64 64, !6, i64 192, !41, i64 200, !42, i64 208}
!37 = !{!"long", !7, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !37, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!44 = !{!7, !7, i64 0}
!45 = !{!46, !49, i64 240}
!46 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !22, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!52 = !{!49, !49, i64 0}
!53 = !{!54, !7, i64 56}
!54 = !{!"_ZTSSt5ctypeIcE", !55, i64 0, !56, i64 16, !47, i64 24, !57, i64 32, !57, i64 40, !58, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!55 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!56 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!57 = !{!"p1 int", !23, i64 0}
!58 = !{!"p1 short", !23, i64 0}
