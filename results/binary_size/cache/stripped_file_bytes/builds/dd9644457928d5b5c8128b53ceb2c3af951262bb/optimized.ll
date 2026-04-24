; ModuleID = '/tmp/tmpv1yohbld.cpp'
source_filename = "/tmp/tmpv1yohbld.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr %a) #9
  call void @llvm.lifetime.start.p0(i64 40804, ptr %b) #9
  call void @llvm.lifetime.start.p0(i64 40804, ptr %c) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
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
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %8, %9
  br i1 %cmp14, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond13
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.body15
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %10, %11
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [101 x [101 x i32]], ptr %b, i64 0, i64 %idxprom19
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [101 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
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
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc65, %for.end29
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31 = icmp sle i32 %16, %17
  br i1 %cmp31, label %for.body32, label %for.end67

for.body32:                                       ; preds = %for.cond30
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc62, %for.body32
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %18, %19
  br i1 %cmp34, label %for.body35, label %for.end64

for.body35:                                       ; preds = %for.cond33
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %20 to i64
  %arrayidx37 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom36
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom38 = sext i32 %21 to i64
  %arrayidx39 = getelementptr inbounds [101 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  store i32 0, ptr %arrayidx39, align 4, !tbaa !5
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc59, %for.body35
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %23 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp41 = icmp sle i32 %22, %23
  br i1 %cmp41, label %for.body42, label %for.end61

for.body42:                                       ; preds = %for.cond40
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom43 = sext i32 %24 to i64
  %arrayidx44 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom43
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [101 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %26 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom47 = sext i32 %27 to i64
  %arrayidx48 = getelementptr inbounds [101 x [101 x i32]], ptr %b, i64 0, i64 %idxprom47
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %28 to i64
  %arrayidx50 = getelementptr inbounds [101 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %29 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %mul = mul nsw i32 %26, %29
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom51
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom53 = sext i32 %31 to i64
  %arrayidx54 = getelementptr inbounds [101 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %32 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %add = add nsw i32 %mul, %32
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom55 = sext i32 %33 to i64
  %arrayidx56 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom55
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom57 = sext i32 %34 to i64
  %arrayidx58 = getelementptr inbounds [101 x i32], ptr %arrayidx56, i64 0, i64 %idxprom57
  store i32 %add, ptr %arrayidx58, align 4, !tbaa !5
  br label %for.inc59

for.inc59:                                        ; preds = %for.body42
  %35 = load i32, ptr %k, align 4, !tbaa !5
  %inc60 = add nsw i32 %35, 1
  store i32 %inc60, ptr %k, align 4, !tbaa !5
  br label %for.cond40, !llvm.loop !15

for.end61:                                        ; preds = %for.cond40
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %inc63 = add nsw i32 %36, 1
  store i32 %inc63, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !16

for.end64:                                        ; preds = %for.cond33
  br label %for.inc65

for.inc65:                                        ; preds = %for.end64
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc66 = add nsw i32 %37, 1
  store i32 %inc66, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !17

for.end67:                                        ; preds = %for.cond30
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc90, %for.end67
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp69 = icmp sle i32 %38, %39
  br i1 %cmp69, label %for.body70, label %for.end92

for.body70:                                       ; preds = %for.cond68
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc87, %for.body70
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp72 = icmp sle i32 %40, %41
  br i1 %cmp72, label %for.body73, label %for.end89

for.body73:                                       ; preds = %for.cond71
  %42 = load i32, ptr %j, align 4, !tbaa !5
  %43 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp74 = icmp ne i32 %42, %43
  br i1 %cmp74, label %if.then, label %if.else

if.then:                                          ; preds = %for.body73
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom75 = sext i32 %44 to i64
  %arrayidx76 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom75
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom77 = sext i32 %45 to i64
  %arrayidx78 = getelementptr inbounds [101 x i32], ptr %arrayidx76, i64 0, i64 %idxprom77
  %46 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %46)
  %call80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call79, ptr noundef @.str)
  br label %if.end

if.else:                                          ; preds = %for.body73
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom81 = sext i32 %47 to i64
  %arrayidx82 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %idxprom81
  %48 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom83 = sext i32 %48 to i64
  %arrayidx84 = getelementptr inbounds [101 x i32], ptr %arrayidx82, i64 0, i64 %idxprom83
  %49 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %49)
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc87

for.inc87:                                        ; preds = %if.end
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %inc88 = add nsw i32 %50, 1
  store i32 %inc88, ptr %j, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !18

for.end89:                                        ; preds = %for.cond71
  br label %for.inc90

for.inc90:                                        ; preds = %for.end89
  %51 = load i32, ptr %i, align 4, !tbaa !5
  %inc91 = add nsw i32 %51, 1
  store i32 %inc91, ptr %i, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !19

for.end92:                                        ; preds = %for.cond68
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #9
  call void @llvm.lifetime.end.p0(i64 40804, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 40804, ptr %b) #9
  call void @llvm.lifetime.end.p0(i64 40804, ptr %a) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #3 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !20
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !20
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
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
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !32
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !32
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !32
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !32
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !32
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !34
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #7

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #3 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !20, !nonnull !25, !align !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !43
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !44
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !43
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #3 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !51
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !43
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !52
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !43
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !43
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !43
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
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
declare void @_ZSt16__throw_bad_castv() #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSSo", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !22, i64 0}
!25 = !{}
!26 = !{i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!22, !22, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!34 = !{!35, !33, i64 32}
!35 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !37, i64 24, !33, i64 28, !33, i64 32, !38, i64 40, !39, i64 48, !7, i64 64, !6, i64 192, !40, i64 200, !41, i64 208}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !36, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!41 = !{!"_ZTSSt6locale", !42, i64 0}
!42 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!43 = !{!7, !7, i64 0}
!44 = !{!45, !48, i64 240}
!45 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !35, i64 0, !21, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!56 = !{!"p1 int", !22, i64 0}
!57 = !{!"p1 short", !22, i64 0}
