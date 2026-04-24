; ModuleID = '/tmp/tmpts2hjnp6.cpp'
source_filename = "/tmp/tmpts2hjnp6.cpp"
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

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@n = dso_local global i32 0, align 4
@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@temp = dso_local global i32 0, align 4
@sum = dso_local global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4zeroi(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %mi = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %k = alloca i32, align 4
  %k7 = alloca i32, align 4
  %k28 = alloca i32, align 4
  %j33 = alloca i32, align 4
  %j47 = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mi) #7
  store i32 1000, ptr %mi, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  %0 = load i32, ptr %i.addr, align 4, !tbaa !5
  store i32 %0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %2 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end27

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  %3 = load i32, ptr %i.addr, align 4, !tbaa !5
  store i32 %3, ptr %k, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %4, %5
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext
  %arraydecay = getelementptr inbounds [200 x i32], ptr %add.ptr, i64 0, i64 0
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idx.ext5 = sext i32 %7 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %arraydecay, i64 %idx.ext5
  %call = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %add.ptr6, ptr noundef nonnull align 4 dereferenceable(4) %mi)
  %8 = load i32, ptr %call, align 4, !tbaa !5
  store i32 %8, ptr %mi, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k7) #7
  %10 = load i32, ptr %i.addr, align 4, !tbaa !5
  store i32 %10, ptr %k7, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc22, %for.end
  %11 = load i32, ptr %k7, align 4, !tbaa !5
  %12 = load i32, ptr @n, align 4, !tbaa !5
  %cmp9 = icmp sle i32 %11, %12
  br i1 %cmp9, label %for.body11, label %for.cond.cleanup10

for.cond.cleanup10:                               ; preds = %for.cond8
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k7) #7
  br label %for.end24

for.body11:                                       ; preds = %for.cond8
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext12 = sext i32 %13 to i64
  %add.ptr13 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext12
  %arraydecay14 = getelementptr inbounds [200 x i32], ptr %add.ptr13, i64 0, i64 0
  %14 = load i32, ptr %k7, align 4, !tbaa !5
  %idx.ext15 = sext i32 %14 to i64
  %add.ptr16 = getelementptr inbounds i32, ptr %arraydecay14, i64 %idx.ext15
  %15 = load i32, ptr %add.ptr16, align 4, !tbaa !5
  %16 = load i32, ptr %mi, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %16
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext17 = sext i32 %17 to i64
  %add.ptr18 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext17
  %arraydecay19 = getelementptr inbounds [200 x i32], ptr %add.ptr18, i64 0, i64 0
  %18 = load i32, ptr %k7, align 4, !tbaa !5
  %idx.ext20 = sext i32 %18 to i64
  %add.ptr21 = getelementptr inbounds i32, ptr %arraydecay19, i64 %idx.ext20
  store i32 %sub, ptr %add.ptr21, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body11
  %19 = load i32, ptr %k7, align 4, !tbaa !5
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, ptr %k7, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end24:                                        ; preds = %for.cond.cleanup10
  store i32 1000, ptr %mi, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end27:                                        ; preds = %for.cond.cleanup
  store i32 1000, ptr %mi, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k28) #7
  %21 = load i32, ptr %i.addr, align 4, !tbaa !5
  store i32 %21, ptr %k28, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc66, %for.end27
  %22 = load i32, ptr %k28, align 4, !tbaa !5
  %23 = load i32, ptr @n, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %22, %23
  br i1 %cmp30, label %for.body32, label %for.cond.cleanup31

for.cond.cleanup31:                               ; preds = %for.cond29
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k28) #7
  br label %for.end68

for.body32:                                       ; preds = %for.cond29
  call void @llvm.lifetime.start.p0(i64 4, ptr %j33) #7
  %24 = load i32, ptr %i.addr, align 4, !tbaa !5
  store i32 %24, ptr %j33, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc44, %for.body32
  %25 = load i32, ptr %j33, align 4, !tbaa !5
  %26 = load i32, ptr @n, align 4, !tbaa !5
  %cmp35 = icmp sle i32 %25, %26
  br i1 %cmp35, label %for.body37, label %for.cond.cleanup36

for.cond.cleanup36:                               ; preds = %for.cond34
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j33) #7
  br label %for.end46

for.body37:                                       ; preds = %for.cond34
  %27 = load i32, ptr %j33, align 4, !tbaa !5
  %idx.ext38 = sext i32 %27 to i64
  %add.ptr39 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext38
  %arraydecay40 = getelementptr inbounds [200 x i32], ptr %add.ptr39, i64 0, i64 0
  %28 = load i32, ptr %k28, align 4, !tbaa !5
  %idx.ext41 = sext i32 %28 to i64
  %add.ptr42 = getelementptr inbounds i32, ptr %arraydecay40, i64 %idx.ext41
  %call43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %add.ptr42, ptr noundef nonnull align 4 dereferenceable(4) %mi)
  %29 = load i32, ptr %call43, align 4, !tbaa !5
  store i32 %29, ptr %mi, align 4, !tbaa !5
  br label %for.inc44

for.inc44:                                        ; preds = %for.body37
  %30 = load i32, ptr %j33, align 4, !tbaa !5
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, ptr %j33, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.end46:                                        ; preds = %for.cond.cleanup36
  call void @llvm.lifetime.start.p0(i64 4, ptr %j47) #7
  %31 = load i32, ptr %i.addr, align 4, !tbaa !5
  store i32 %31, ptr %j47, align 4, !tbaa !5
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc63, %for.end46
  %32 = load i32, ptr %j47, align 4, !tbaa !5
  %33 = load i32, ptr @n, align 4, !tbaa !5
  %cmp49 = icmp sle i32 %32, %33
  br i1 %cmp49, label %for.body51, label %for.cond.cleanup50

for.cond.cleanup50:                               ; preds = %for.cond48
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j47) #7
  br label %for.end65

for.body51:                                       ; preds = %for.cond48
  %34 = load i32, ptr %j47, align 4, !tbaa !5
  %idx.ext52 = sext i32 %34 to i64
  %add.ptr53 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext52
  %arraydecay54 = getelementptr inbounds [200 x i32], ptr %add.ptr53, i64 0, i64 0
  %35 = load i32, ptr %k28, align 4, !tbaa !5
  %idx.ext55 = sext i32 %35 to i64
  %add.ptr56 = getelementptr inbounds i32, ptr %arraydecay54, i64 %idx.ext55
  %36 = load i32, ptr %add.ptr56, align 4, !tbaa !5
  %37 = load i32, ptr %mi, align 4, !tbaa !5
  %sub57 = sub nsw i32 %36, %37
  %38 = load i32, ptr %j47, align 4, !tbaa !5
  %idx.ext58 = sext i32 %38 to i64
  %add.ptr59 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext58
  %arraydecay60 = getelementptr inbounds [200 x i32], ptr %add.ptr59, i64 0, i64 0
  %39 = load i32, ptr %k28, align 4, !tbaa !5
  %idx.ext61 = sext i32 %39 to i64
  %add.ptr62 = getelementptr inbounds i32, ptr %arraydecay60, i64 %idx.ext61
  store i32 %sub57, ptr %add.ptr62, align 4, !tbaa !5
  br label %for.inc63

for.inc63:                                        ; preds = %for.body51
  %40 = load i32, ptr %j47, align 4, !tbaa !5
  %inc64 = add nsw i32 %40, 1
  store i32 %inc64, ptr %j47, align 4, !tbaa !5
  br label %for.cond48, !llvm.loop !15

for.end65:                                        ; preds = %for.cond.cleanup50
  store i32 1000, ptr %mi, align 4, !tbaa !5
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %41 = load i32, ptr %k28, align 4, !tbaa !5
  %inc67 = add nsw i32 %41, 1
  store i32 %inc67, ptr %k28, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !16

for.end68:                                        ; preds = %for.cond.cleanup31
  call void @llvm.lifetime.end.p0(i64 4, ptr %mi) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #2 comdat {
entry:
  %retval = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !17
  store ptr %__b, ptr %__b.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %__b.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__a.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %__b.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %__a.addr, align 8, !tbaa !17, !nonnull !20, !align !21
  store ptr %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %i30 = alloca i32, align 4
  %i54 = alloca i32, align 4
  %k66 = alloca i32, align 4
  %j99 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  store i32 1, ptr %l, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc139, %entry
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  br label %for.end141

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [200 x i32], ptr @sum, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %5, %6
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext
  %arraydecay = getelementptr inbounds [200 x i32], ptr %add.ptr, i64 0, i64 0
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %idx.ext9 = sext i32 %8 to i64
  %add.ptr10 = getelementptr inbounds i32, ptr %arraydecay, i64 %idx.ext9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !22

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc13 = add nsw i32 %10, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !23

for.end14:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc27, %for.end14
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load i32, ptr @n, align 4, !tbaa !5
  %cmp16 = icmp sle i32 %11, %12
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end29

for.body18:                                       ; preds = %for.cond15
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext19 = sext i32 %13 to i64
  %add.ptr20 = getelementptr inbounds i32, ptr getelementptr inbounds ([200 x i32], ptr @a, i64 1), i64 %idx.ext19
  %14 = load i32, ptr %add.ptr20, align 4, !tbaa !5
  store i32 %14, ptr @temp, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext21 = sext i32 %15 to i64
  %add.ptr22 = getelementptr inbounds i32, ptr getelementptr inbounds ([200 x i32], ptr @a, i64 2), i64 %idx.ext21
  %16 = load i32, ptr %add.ptr22, align 4, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext23 = sext i32 %17 to i64
  %add.ptr24 = getelementptr inbounds i32, ptr getelementptr inbounds ([200 x i32], ptr @a, i64 1), i64 %idx.ext23
  store i32 %16, ptr %add.ptr24, align 4, !tbaa !5
  %18 = load i32, ptr @temp, align 4, !tbaa !5
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext25 = sext i32 %19 to i64
  %add.ptr26 = getelementptr inbounds i32, ptr getelementptr inbounds ([200 x i32], ptr @a, i64 2), i64 %idx.ext25
  store i32 %18, ptr %add.ptr26, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body18
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !24

for.end29:                                        ; preds = %for.cond.cleanup17
  call void @llvm.lifetime.start.p0(i64 4, ptr %i30) #7
  store i32 1, ptr %i30, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc51, %for.end29
  %21 = load i32, ptr %i30, align 4, !tbaa !5
  %22 = load i32, ptr @n, align 4, !tbaa !5
  %cmp32 = icmp sle i32 %21, %22
  br i1 %cmp32, label %for.body34, label %for.cond.cleanup33

for.cond.cleanup33:                               ; preds = %for.cond31
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i30) #7
  br label %for.end53

for.body34:                                       ; preds = %for.cond31
  %23 = load i32, ptr %i30, align 4, !tbaa !5
  %idx.ext35 = sext i32 %23 to i64
  %add.ptr36 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext35
  %arraydecay37 = getelementptr inbounds [200 x i32], ptr %add.ptr36, i64 0, i64 0
  %add.ptr38 = getelementptr inbounds i32, ptr %arraydecay37, i64 1
  %24 = load i32, ptr %add.ptr38, align 4, !tbaa !5
  store i32 %24, ptr @temp, align 4, !tbaa !5
  %25 = load i32, ptr %i30, align 4, !tbaa !5
  %idx.ext39 = sext i32 %25 to i64
  %add.ptr40 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext39
  %arraydecay41 = getelementptr inbounds [200 x i32], ptr %add.ptr40, i64 0, i64 0
  %add.ptr42 = getelementptr inbounds i32, ptr %arraydecay41, i64 2
  %26 = load i32, ptr %add.ptr42, align 4, !tbaa !5
  %27 = load i32, ptr %i30, align 4, !tbaa !5
  %idx.ext43 = sext i32 %27 to i64
  %add.ptr44 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext43
  %arraydecay45 = getelementptr inbounds [200 x i32], ptr %add.ptr44, i64 0, i64 0
  %add.ptr46 = getelementptr inbounds i32, ptr %arraydecay45, i64 1
  store i32 %26, ptr %add.ptr46, align 4, !tbaa !5
  %28 = load i32, ptr @temp, align 4, !tbaa !5
  %29 = load i32, ptr %i30, align 4, !tbaa !5
  %idx.ext47 = sext i32 %29 to i64
  %add.ptr48 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext47
  %arraydecay49 = getelementptr inbounds [200 x i32], ptr %add.ptr48, i64 0, i64 0
  %add.ptr50 = getelementptr inbounds i32, ptr %arraydecay49, i64 2
  store i32 %28, ptr %add.ptr50, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body34
  %30 = load i32, ptr %i30, align 4, !tbaa !5
  %inc52 = add nsw i32 %30, 1
  store i32 %inc52, ptr %i30, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !25

for.end53:                                        ; preds = %for.cond.cleanup33
  call void @llvm.lifetime.start.p0(i64 4, ptr %i54) #7
  store i32 1, ptr %i54, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc132, %for.end53
  %31 = load i32, ptr %i54, align 4, !tbaa !5
  %32 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %32, 1
  %cmp56 = icmp sle i32 %31, %sub
  br i1 %cmp56, label %for.body58, label %for.cond.cleanup57

for.cond.cleanup57:                               ; preds = %for.cond55
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i54) #7
  br label %for.end134

for.body58:                                       ; preds = %for.cond55
  %33 = load i32, ptr %i54, align 4, !tbaa !5
  call void @_Z4zeroi(i32 noundef %33)
  %34 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext59 = sext i32 %34 to i64
  %add.ptr60 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext59
  %arraydecay61 = getelementptr inbounds [200 x i32], ptr %add.ptr60, i64 0, i64 0
  %35 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext62 = sext i32 %35 to i64
  %add.ptr63 = getelementptr inbounds i32, ptr %arraydecay61, i64 %idx.ext62
  %36 = load i32, ptr %add.ptr63, align 4, !tbaa !5
  %37 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom64 = sext i32 %37 to i64
  %arrayidx65 = getelementptr inbounds [200 x i32], ptr @sum, i64 0, i64 %idxprom64
  %38 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %add = add nsw i32 %38, %36
  store i32 %add, ptr %arrayidx65, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k66) #7
  %39 = load i32, ptr %i54, align 4, !tbaa !5
  %add67 = add nsw i32 %39, 1
  store i32 %add67, ptr %k66, align 4, !tbaa !5
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc96, %for.body58
  %40 = load i32, ptr %k66, align 4, !tbaa !5
  %41 = load i32, ptr @n, align 4, !tbaa !5
  %cmp69 = icmp sle i32 %40, %41
  br i1 %cmp69, label %for.body71, label %for.cond.cleanup70

for.cond.cleanup70:                               ; preds = %for.cond68
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k66) #7
  br label %for.end98

for.body71:                                       ; preds = %for.cond68
  %42 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext72 = sext i32 %42 to i64
  %add.ptr73 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext72
  %add.ptr74 = getelementptr inbounds [200 x i32], ptr %add.ptr73, i64 1
  %arraydecay75 = getelementptr inbounds [200 x i32], ptr %add.ptr74, i64 0, i64 0
  %43 = load i32, ptr %k66, align 4, !tbaa !5
  %idx.ext76 = sext i32 %43 to i64
  %add.ptr77 = getelementptr inbounds i32, ptr %arraydecay75, i64 %idx.ext76
  %44 = load i32, ptr %add.ptr77, align 4, !tbaa !5
  store i32 %44, ptr @temp, align 4, !tbaa !5
  %45 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext78 = sext i32 %45 to i64
  %add.ptr79 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext78
  %add.ptr80 = getelementptr inbounds [200 x i32], ptr %add.ptr79, i64 2
  %arraydecay81 = getelementptr inbounds [200 x i32], ptr %add.ptr80, i64 0, i64 0
  %46 = load i32, ptr %k66, align 4, !tbaa !5
  %idx.ext82 = sext i32 %46 to i64
  %add.ptr83 = getelementptr inbounds i32, ptr %arraydecay81, i64 %idx.ext82
  %47 = load i32, ptr %add.ptr83, align 4, !tbaa !5
  %48 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext84 = sext i32 %48 to i64
  %add.ptr85 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext84
  %add.ptr86 = getelementptr inbounds [200 x i32], ptr %add.ptr85, i64 1
  %arraydecay87 = getelementptr inbounds [200 x i32], ptr %add.ptr86, i64 0, i64 0
  %49 = load i32, ptr %k66, align 4, !tbaa !5
  %idx.ext88 = sext i32 %49 to i64
  %add.ptr89 = getelementptr inbounds i32, ptr %arraydecay87, i64 %idx.ext88
  store i32 %47, ptr %add.ptr89, align 4, !tbaa !5
  %50 = load i32, ptr @temp, align 4, !tbaa !5
  %51 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext90 = sext i32 %51 to i64
  %add.ptr91 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext90
  %add.ptr92 = getelementptr inbounds [200 x i32], ptr %add.ptr91, i64 2
  %arraydecay93 = getelementptr inbounds [200 x i32], ptr %add.ptr92, i64 0, i64 0
  %52 = load i32, ptr %k66, align 4, !tbaa !5
  %idx.ext94 = sext i32 %52 to i64
  %add.ptr95 = getelementptr inbounds i32, ptr %arraydecay93, i64 %idx.ext94
  store i32 %50, ptr %add.ptr95, align 4, !tbaa !5
  br label %for.inc96

for.inc96:                                        ; preds = %for.body71
  %53 = load i32, ptr %k66, align 4, !tbaa !5
  %inc97 = add nsw i32 %53, 1
  store i32 %inc97, ptr %k66, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !26

for.end98:                                        ; preds = %for.cond.cleanup70
  call void @llvm.lifetime.start.p0(i64 4, ptr %j99) #7
  %54 = load i32, ptr %i54, align 4, !tbaa !5
  %add100 = add nsw i32 %54, 1
  store i32 %add100, ptr %j99, align 4, !tbaa !5
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc129, %for.end98
  %55 = load i32, ptr %j99, align 4, !tbaa !5
  %56 = load i32, ptr @n, align 4, !tbaa !5
  %cmp102 = icmp sle i32 %55, %56
  br i1 %cmp102, label %for.body104, label %for.cond.cleanup103

for.cond.cleanup103:                              ; preds = %for.cond101
  store i32 23, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j99) #7
  br label %for.end131

for.body104:                                      ; preds = %for.cond101
  %57 = load i32, ptr %j99, align 4, !tbaa !5
  %idx.ext105 = sext i32 %57 to i64
  %add.ptr106 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext105
  %arraydecay107 = getelementptr inbounds [200 x i32], ptr %add.ptr106, i64 0, i64 0
  %58 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext108 = sext i32 %58 to i64
  %add.ptr109 = getelementptr inbounds i32, ptr %arraydecay107, i64 %idx.ext108
  %add.ptr110 = getelementptr inbounds i32, ptr %add.ptr109, i64 1
  %59 = load i32, ptr %add.ptr110, align 4, !tbaa !5
  store i32 %59, ptr @temp, align 4, !tbaa !5
  %60 = load i32, ptr %j99, align 4, !tbaa !5
  %idx.ext111 = sext i32 %60 to i64
  %add.ptr112 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext111
  %arraydecay113 = getelementptr inbounds [200 x i32], ptr %add.ptr112, i64 0, i64 0
  %61 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext114 = sext i32 %61 to i64
  %add.ptr115 = getelementptr inbounds i32, ptr %arraydecay113, i64 %idx.ext114
  %add.ptr116 = getelementptr inbounds i32, ptr %add.ptr115, i64 2
  %62 = load i32, ptr %add.ptr116, align 4, !tbaa !5
  %63 = load i32, ptr %j99, align 4, !tbaa !5
  %idx.ext117 = sext i32 %63 to i64
  %add.ptr118 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext117
  %arraydecay119 = getelementptr inbounds [200 x i32], ptr %add.ptr118, i64 0, i64 0
  %64 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext120 = sext i32 %64 to i64
  %add.ptr121 = getelementptr inbounds i32, ptr %arraydecay119, i64 %idx.ext120
  %add.ptr122 = getelementptr inbounds i32, ptr %add.ptr121, i64 1
  store i32 %62, ptr %add.ptr122, align 4, !tbaa !5
  %65 = load i32, ptr @temp, align 4, !tbaa !5
  %66 = load i32, ptr %j99, align 4, !tbaa !5
  %idx.ext123 = sext i32 %66 to i64
  %add.ptr124 = getelementptr inbounds [200 x i32], ptr @a, i64 %idx.ext123
  %arraydecay125 = getelementptr inbounds [200 x i32], ptr %add.ptr124, i64 0, i64 0
  %67 = load i32, ptr %i54, align 4, !tbaa !5
  %idx.ext126 = sext i32 %67 to i64
  %add.ptr127 = getelementptr inbounds i32, ptr %arraydecay125, i64 %idx.ext126
  %add.ptr128 = getelementptr inbounds i32, ptr %add.ptr127, i64 2
  store i32 %65, ptr %add.ptr128, align 4, !tbaa !5
  br label %for.inc129

for.inc129:                                       ; preds = %for.body104
  %68 = load i32, ptr %j99, align 4, !tbaa !5
  %inc130 = add nsw i32 %68, 1
  store i32 %inc130, ptr %j99, align 4, !tbaa !5
  br label %for.cond101, !llvm.loop !27

for.end131:                                       ; preds = %for.cond.cleanup103
  br label %for.inc132

for.inc132:                                       ; preds = %for.end131
  %69 = load i32, ptr %i54, align 4, !tbaa !5
  %inc133 = add nsw i32 %69, 1
  store i32 %inc133, ptr %i54, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !28

for.end134:                                       ; preds = %for.cond.cleanup57
  %70 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom135 = sext i32 %70 to i64
  %arrayidx136 = getelementptr inbounds [200 x i32], ptr @sum, i64 0, i64 %idxprom135
  %71 = load i32, ptr %arrayidx136, align 4, !tbaa !5
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %71)
  %call138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call137, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc139

for.inc139:                                       ; preds = %for.end134
  %72 = load i32, ptr %l, align 4, !tbaa !5
  %inc140 = add nsw i32 %72, 1
  store i32 %inc140, ptr %l, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !29

for.end141:                                       ; preds = %for.cond.cleanup
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !20, !align !33
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !20, !align !33
  %vtable = load ptr, ptr %1, align 8, !tbaa !34
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !30
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !30, !nonnull !20, !align !33
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !36
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !38
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !39
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !55
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !55
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !55
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #0 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !55
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !38
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !56
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !38
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !38
  %vtable = load ptr, ptr %this1, align 8, !tbaa !34
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 int", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{}
!21 = !{i64 4}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSo", !19, i64 0}
!32 = !{!19, !19, i64 0}
!33 = !{i64 8}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !8, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0}
!38 = !{!7, !7, i64 0}
!39 = !{!40, !52, i64 240}
!40 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !41, i64 0, !31, i64 216, !7, i64 224, !50, i64 225, !51, i64 232, !52, i64 240, !53, i64 248, !54, i64 256}
!41 = !{!"_ZTSSt8ios_base", !42, i64 8, !42, i64 16, !43, i64 24, !44, i64 28, !44, i64 32, !45, i64 40, !46, i64 48, !7, i64 64, !6, i64 192, !47, i64 200, !48, i64 208}
!42 = !{!"long", !7, i64 0}
!43 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!44 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!45 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !42, i64 8}
!47 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!48 = !{!"_ZTSSt6locale", !49, i64 0}
!49 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!50 = !{!"bool", !7, i64 0}
!51 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!52 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!53 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!54 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!55 = !{!52, !52, i64 0}
!56 = !{!57, !7, i64 56}
!57 = !{!"_ZTSSt5ctypeIcE", !58, i64 0, !59, i64 16, !50, i64 24, !18, i64 32, !18, i64 40, !60, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!58 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!59 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!60 = !{!"p1 short", !19, i64 0}
