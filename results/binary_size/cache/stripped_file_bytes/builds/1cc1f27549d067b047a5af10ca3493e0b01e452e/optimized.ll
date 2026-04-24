; ModuleID = '/tmp/tmpld0gpy3p.cpp'
source_filename = "/tmp/tmpld0gpy3p.cpp"
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

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@sum = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %f = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #6
  store i32 1, ptr %f, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, ptr %f, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #6
  br label %for.end22

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc13, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end15

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub6 = sub nsw i32 %5, 1
  %cmp7 = icmp sle i32 %4, %sub6
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond5
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end

for.body9:                                        ; preds = %for.cond5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom10
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup8
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end15:                                        ; preds = %for.cond.cleanup3
  store i32 0, ptr @sum, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %10 = load i32, ptr %n, align 4, !tbaa !5
  call void @_Z11SubtractionPA100_ii(ptr noundef %arraydecay, i32 noundef %10)
  %11 = load i32, ptr %f, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %11, %12
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.end15
  %13 = load i32, ptr @sum, align 4, !tbaa !5
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  br label %if.end

if.else:                                          ; preds = %for.end15
  %14 = load i32, ptr @sum, align 4, !tbaa !5
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call18, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %15 = load i32, ptr %f, align 4, !tbaa !5
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, ptr %f, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end22:                                        ; preds = %for.cond.cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z11SubtractionPA100_ii(ptr noundef %m, i32 noundef %n) #3 {
entry:
  %m.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %min = alloca i32, align 4
  %j = alloca i32, align 4
  %j18 = alloca i32, align 4
  %i35 = alloca i32, align 4
  %min41 = alloca i32, align 4
  %j45 = alloca i32, align 4
  %j65 = alloca i32, align 4
  %mtuta = alloca [100 x [100 x i32]], align 16
  %i84 = alloca i32, align 4
  %j93 = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8, !tbaa !14
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end122

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %if.then
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %cmp1 = icmp sle i32 %1, %sub
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  br label %for.end34

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #6
  %3 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %3, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  store i32 %5, ptr %min, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %7, 1
  %cmp5 = icmp sle i32 %6, %sub4
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6
  br label %for.end

for.body7:                                        ; preds = %for.cond3
  %8 = load i32, ptr %min, align 4, !tbaa !5
  %9 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %9, i64 %idxprom8
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %12 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %8, %12
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %for.body7
  %13 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %13, i64 %idxprom14
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %16 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %16, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then13, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !17

for.end:                                          ; preds = %for.cond.cleanup6
  call void @llvm.lifetime.start.p0(i64 4, ptr %j18) #6
  store i32 0, ptr %j18, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc29, %for.end
  %18 = load i32, ptr %j18, align 4, !tbaa !5
  %19 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub20 = sub nsw i32 %19, 1
  %cmp21 = icmp sle i32 %18, %sub20
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond19
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j18) #6
  br label %for.end31

for.body23:                                       ; preds = %for.cond19
  %20 = load i32, ptr %min, align 4, !tbaa !5
  %21 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom24
  %23 = load i32, ptr %j18, align 4, !tbaa !5
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %24 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %sub28 = sub nsw i32 %24, %20
  store i32 %sub28, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body23
  %25 = load i32, ptr %j18, align 4, !tbaa !5
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, ptr %j18, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !18

for.end31:                                        ; preds = %for.cond.cleanup22
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #6
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %26, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !19

for.end34:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i35) #6
  store i32 0, ptr %i35, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc79, %for.end34
  %27 = load i32, ptr %i35, align 4, !tbaa !5
  %28 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub37 = sub nsw i32 %28, 1
  %cmp38 = icmp sle i32 %27, %sub37
  br i1 %cmp38, label %for.body40, label %for.cond.cleanup39

for.cond.cleanup39:                               ; preds = %for.cond36
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i35) #6
  br label %for.end81

for.body40:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 4, ptr %min41) #6
  %29 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %arrayidx42 = getelementptr inbounds [100 x i32], ptr %29, i64 0
  %30 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [100 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %31 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  store i32 %31, ptr %min41, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j45) #6
  store i32 0, ptr %j45, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc62, %for.body40
  %32 = load i32, ptr %j45, align 4, !tbaa !5
  %33 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub47 = sub nsw i32 %33, 1
  %cmp48 = icmp sle i32 %32, %sub47
  br i1 %cmp48, label %for.body50, label %for.cond.cleanup49

for.cond.cleanup49:                               ; preds = %for.cond46
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j45) #6
  br label %for.end64

for.body50:                                       ; preds = %for.cond46
  %34 = load i32, ptr %min41, align 4, !tbaa !5
  %35 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %36 = load i32, ptr %j45, align 4, !tbaa !5
  %idxprom51 = sext i32 %36 to i64
  %arrayidx52 = getelementptr inbounds [100 x i32], ptr %35, i64 %idxprom51
  %37 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %38 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %cmp55 = icmp sgt i32 %34, %38
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %for.body50
  %39 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %40 = load i32, ptr %j45, align 4, !tbaa !5
  %idxprom57 = sext i32 %40 to i64
  %arrayidx58 = getelementptr inbounds [100 x i32], ptr %39, i64 %idxprom57
  %41 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom59 = sext i32 %41 to i64
  %arrayidx60 = getelementptr inbounds [100 x i32], ptr %arrayidx58, i64 0, i64 %idxprom59
  %42 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  store i32 %42, ptr %min41, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %for.body50
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %43 = load i32, ptr %j45, align 4, !tbaa !5
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, ptr %j45, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !20

for.end64:                                        ; preds = %for.cond.cleanup49
  call void @llvm.lifetime.start.p0(i64 4, ptr %j65) #6
  store i32 0, ptr %j65, align 4, !tbaa !5
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc76, %for.end64
  %44 = load i32, ptr %j65, align 4, !tbaa !5
  %45 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub67 = sub nsw i32 %45, 1
  %cmp68 = icmp sle i32 %44, %sub67
  br i1 %cmp68, label %for.body70, label %for.cond.cleanup69

for.cond.cleanup69:                               ; preds = %for.cond66
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j65) #6
  br label %for.end78

for.body70:                                       ; preds = %for.cond66
  %46 = load i32, ptr %min41, align 4, !tbaa !5
  %47 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %48 = load i32, ptr %j65, align 4, !tbaa !5
  %idxprom71 = sext i32 %48 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %47, i64 %idxprom71
  %49 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom73 = sext i32 %49 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  %50 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %sub75 = sub nsw i32 %50, %46
  store i32 %sub75, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.inc76

for.inc76:                                        ; preds = %for.body70
  %51 = load i32, ptr %j65, align 4, !tbaa !5
  %inc77 = add nsw i32 %51, 1
  store i32 %inc77, ptr %j65, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !21

for.end78:                                        ; preds = %for.cond.cleanup69
  call void @llvm.lifetime.end.p0(i64 4, ptr %min41) #6
  br label %for.inc79

for.inc79:                                        ; preds = %for.end78
  %52 = load i32, ptr %i35, align 4, !tbaa !5
  %inc80 = add nsw i32 %52, 1
  store i32 %inc80, ptr %i35, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !22

for.end81:                                        ; preds = %for.cond.cleanup39
  %53 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %arrayidx82 = getelementptr inbounds [100 x i32], ptr %53, i64 1
  %arrayidx83 = getelementptr inbounds [100 x i32], ptr %arrayidx82, i64 0, i64 1
  %54 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %55 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %55, %54
  store i32 %add, ptr @sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %mtuta) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i84) #6
  store i32 0, ptr %i84, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc118, %for.end81
  %56 = load i32, ptr %i84, align 4, !tbaa !5
  %57 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub86 = sub nsw i32 %57, 1
  %cmp87 = icmp sle i32 %56, %sub86
  br i1 %cmp87, label %for.body89, label %for.cond.cleanup88

for.cond.cleanup88:                               ; preds = %for.cond85
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i84) #6
  br label %for.end120

for.body89:                                       ; preds = %for.cond85
  %58 = load i32, ptr %i84, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %58, 1
  br i1 %cmp90, label %if.then91, label %if.end92

if.then91:                                        ; preds = %for.body89
  br label %for.inc118

if.end92:                                         ; preds = %for.body89
  call void @llvm.lifetime.start.p0(i64 4, ptr %j93) #6
  store i32 0, ptr %j93, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %for.inc115, %if.end92
  %59 = load i32, ptr %j93, align 4, !tbaa !5
  %60 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub95 = sub nsw i32 %60, 1
  %cmp96 = icmp sle i32 %59, %sub95
  br i1 %cmp96, label %for.body98, label %for.cond.cleanup97

for.cond.cleanup97:                               ; preds = %for.cond94
  store i32 23, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j93) #6
  br label %for.end117

for.body98:                                       ; preds = %for.cond94
  %61 = load i32, ptr %j93, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %61, 1
  br i1 %cmp99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %for.body98
  br label %for.inc115

if.end101:                                        ; preds = %for.body98
  %62 = load ptr, ptr %m.addr, align 8, !tbaa !14
  %63 = load i32, ptr %i84, align 4, !tbaa !5
  %idxprom102 = sext i32 %63 to i64
  %arrayidx103 = getelementptr inbounds [100 x i32], ptr %62, i64 %idxprom102
  %64 = load i32, ptr %j93, align 4, !tbaa !5
  %idxprom104 = sext i32 %64 to i64
  %arrayidx105 = getelementptr inbounds [100 x i32], ptr %arrayidx103, i64 0, i64 %idxprom104
  %65 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %66 = load i32, ptr %i84, align 4, !tbaa !5
  %67 = load i32, ptr %i84, align 4, !tbaa !5
  %cmp106 = icmp ne i32 %67, 0
  %conv = zext i1 %cmp106 to i32
  %sub107 = sub nsw i32 %66, %conv
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr %mtuta, i64 0, i64 %idxprom108
  %68 = load i32, ptr %j93, align 4, !tbaa !5
  %69 = load i32, ptr %j93, align 4, !tbaa !5
  %cmp110 = icmp ne i32 %69, 0
  %conv111 = zext i1 %cmp110 to i32
  %sub112 = sub nsw i32 %68, %conv111
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 %idxprom113
  store i32 %65, ptr %arrayidx114, align 4, !tbaa !5
  br label %for.inc115

for.inc115:                                       ; preds = %if.end101, %if.then100
  %70 = load i32, ptr %j93, align 4, !tbaa !5
  %inc116 = add nsw i32 %70, 1
  store i32 %inc116, ptr %j93, align 4, !tbaa !5
  br label %for.cond94, !llvm.loop !23

for.end117:                                       ; preds = %for.cond.cleanup97
  br label %for.inc118

for.inc118:                                       ; preds = %for.end117, %if.then91
  %71 = load i32, ptr %i84, align 4, !tbaa !5
  %inc119 = add nsw i32 %71, 1
  store i32 %inc119, ptr %i84, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !24

for.end120:                                       ; preds = %for.cond.cleanup88
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %mtuta, i64 0, i64 0
  %72 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub121 = sub nsw i32 %72, 1
  call void @_Z11SubtractionPA100_ii(ptr noundef %arraydecay, i32 noundef %sub121)
  call void @llvm.lifetime.end.p0(i64 40000, ptr %mtuta) #6
  br label %if.end122

if.end122:                                        ; preds = %for.end120, %entry
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !27
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %vtable = load ptr, ptr %1, align 8, !tbaa !30
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !28, !align !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !35
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !34
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !51
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !52
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !34
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !34
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !34
  %vtable = load ptr, ptr %this1, align 8, !tbaa !30
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
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSSo", !16, i64 0}
!27 = !{!16, !16, i64 0}
!28 = !{}
!29 = !{i64 8}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !16, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !48, i64 240}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !37, i64 0, !26, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!37 = !{!"_ZTSSt8ios_base", !38, i64 8, !38, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!38 = !{!"long", !7, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !38, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !15, i64 32, !15, i64 40, !56, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!56 = !{!"p1 short", !16, i64 0}
