; ModuleID = '/tmp/tmpumja0oed.cpp'
source_filename = "/tmp/tmpumja0oed.cpp"
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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup7
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond.cleanup3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #7
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %10, 1
  store i32 %sub, ptr %p, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc22, %for.end14
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %11, 0
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #7
  br label %for.end23

for.body18:                                       ; preds = %for.cond15
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %12 = load i32, ptr %p, align 4, !tbaa !5
  call void @_Z9make_zeroPA100_ii(ptr noundef %arraydecay, i32 noundef %12)
  %arrayidx19 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 1
  %arrayidx20 = getelementptr inbounds [100 x i32], ptr %arrayidx19, i64 0, i64 1
  %13 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %14 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %14, %13
  store i32 %add, ptr %sum, align 4, !tbaa !5
  %arraydecay21 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 0
  %15 = load i32, ptr %p, align 4, !tbaa !5
  call void @_Z6reducePA100_ii(ptr noundef %arraydecay21, i32 noundef %15)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %16 = load i32, ptr %p, align 4, !tbaa !5
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %p, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end23:                                        ; preds = %for.cond.cleanup17
  %17 = load i32, ptr %sum, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %17)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc26

for.inc26:                                        ; preds = %for.end23
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %18, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end28:                                        ; preds = %for.cond.cleanup
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z9make_zeroPA100_ii(ptr noundef %a, i32 noundef %p) #3 {
entry:
  %a.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %flag = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %j15 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !15
  store i32 %p, ptr %p.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #7
  store i32 0, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end9

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %p.addr, align 4, !tbaa !5
  %5 = load i32, ptr %flag, align 4, !tbaa !5
  %call = call noundef i32 @_Z3minPA100_iiii(ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  store i32 %call, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %8 = load i32, ptr %m, align 4, !tbaa !5
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %9, i64 %idxprom
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %8
  store i32 %sub, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !19

for.end9:                                         ; preds = %for.cond.cleanup
  store i32 1, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc28, %for.end9
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %16 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %15, %16
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end30

for.body13:                                       ; preds = %for.cond10
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %19 = load i32, ptr %p.addr, align 4, !tbaa !5
  %20 = load i32, ptr %flag, align 4, !tbaa !5
  %call14 = call noundef i32 @_Z3minPA100_iiii(ptr noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20)
  store i32 %call14, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j15) #7
  store i32 0, ptr %j15, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body13
  %21 = load i32, ptr %j15, align 4, !tbaa !5
  %22 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %21, %22
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18

for.cond.cleanup18:                               ; preds = %for.cond16
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j15) #7
  br label %for.end27

for.body19:                                       ; preds = %for.cond16
  %23 = load i32, ptr %m, align 4, !tbaa !5
  %24 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %25 = load i32, ptr %j15, align 4, !tbaa !5
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %24, i64 %idxprom20
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %27 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub24 = sub nsw i32 %27, %23
  store i32 %sub24, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %28 = load i32, ptr %j15, align 4, !tbaa !5
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, ptr %j15, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !20

for.end27:                                        ; preds = %for.cond.cleanup18
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %inc29 = add nsw i32 %29, 1
  store i32 %inc29, ptr %k, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !21

for.end30:                                        ; preds = %for.cond.cleanup12
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z6reducePA100_ii(ptr noundef %a, i32 noundef %p) #4 {
entry:
  %a.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %j18 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !15
  store i32 %p, ptr %p.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end13

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body4:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %4, i64 %idxprom
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %8, i64 %idxprom7
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i32 %7, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !22

for.end:                                          ; preds = %for.cond.cleanup3
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end13:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc35, %for.end13
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %14 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup16:                               ; preds = %for.cond14
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end37

for.body17:                                       ; preds = %for.cond14
  call void @llvm.lifetime.start.p0(i64 4, ptr %j18) #7
  store i32 1, ptr %j18, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc32, %for.body17
  %15 = load i32, ptr %j18, align 4, !tbaa !5
  %16 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %15, %16
  br i1 %cmp20, label %for.body22, label %for.cond.cleanup21

for.cond.cleanup21:                               ; preds = %for.cond19
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j18) #7
  br label %for.end34

for.body22:                                       ; preds = %for.cond19
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %18 = load i32, ptr %j18, align 4, !tbaa !5
  %add23 = add nsw i32 %18, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %17, i64 %idxprom24
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %20 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %22 = load i32, ptr %j18, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom28
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  store i32 %20, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body22
  %24 = load i32, ptr %j18, align 4, !tbaa !5
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, ptr %j18, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !24

for.end34:                                        ; preds = %for.cond.cleanup21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %inc36 = add nsw i32 %25, 1
  store i32 %inc36, ptr %k, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !25

for.end37:                                        ; preds = %for.cond.cleanup16
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !26
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !28
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !28
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !26
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !26, !nonnull !29, !align !30
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !26, !nonnull !29, !align !30
  %vtable = load ptr, ptr %1, align 8, !tbaa !31
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3minPA100_iiii(ptr noundef %a, i32 noundef %i, i32 noundef %p, i32 noundef %flag) #4 {
entry:
  %a.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %j = alloca i32, align 4
  %j16 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !15
  store i32 %i, ptr %i.addr, align 4, !tbaa !5
  store i32 %p, ptr %p.addr, align 4, !tbaa !5
  store i32 %flag, ptr %flag.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #7
  %0 = load i32, ptr %flag.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %2 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %1, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  store i32 %3, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %7 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %6, i64 %idxprom3
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %arrayidx4, i64 0, i64 %idxprom5
  %9 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %10 = load i32, ptr %t, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %12 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %11, i64 %idxprom9
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %14 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %14, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end35

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %16, i64 0
  %17 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %18 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %18, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j16) #7
  store i32 0, ptr %j16, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc32, %if.else
  %19 = load i32, ptr %j16, align 4, !tbaa !5
  %20 = load i32, ptr %p.addr, align 4, !tbaa !5
  %cmp18 = icmp sle i32 %19, %20
  br i1 %cmp18, label %for.body20, label %for.cond.cleanup19

for.cond.cleanup19:                               ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %j16) #7
  br label %for.end34

for.body20:                                       ; preds = %for.cond17
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %22 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %21, i64 %idxprom21
  %23 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %24 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %25 = load i32, ptr %t, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %24, %25
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %for.body20
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !15
  %27 = load i32, ptr %j16, align 4, !tbaa !5
  %idxprom27 = sext i32 %27 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %26, i64 %idxprom27
  %28 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %29 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %29, ptr %t, align 4, !tbaa !5
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %for.body20
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %30 = load i32, ptr %j16, align 4, !tbaa !5
  %inc33 = add nsw i32 %30, 1
  store i32 %inc33, ptr %j16, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !34

for.end34:                                        ; preds = %for.cond.cleanup19
  br label %if.end35

if.end35:                                         ; preds = %for.end34, %for.end
  %31 = load i32, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #7
  ret i32 %31
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !26
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !26, !nonnull !29, !align !30
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !35
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !38
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !54
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !54
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !54
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !37
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !55
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !37
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !37
  %vtable = load ptr, ptr %this1, align 8, !tbaa !31
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

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTSSo", !17, i64 0}
!28 = !{!17, !17, i64 0}
!29 = !{}
!30 = !{i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"vtable pointer", !8, i64 0}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0}
!37 = !{!7, !7, i64 0}
!38 = !{!39, !51, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !27, i64 216, !7, i64 224, !49, i64 225, !50, i64 232, !51, i64 240, !52, i64 248, !53, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !45, i64 48, !7, i64 64, !6, i64 192, !46, i64 200, !47, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!45 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !41, i64 8}
!46 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!47 = !{!"_ZTSSt6locale", !48, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!49 = !{!"bool", !7, i64 0}
!50 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!51 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!52 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!53 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!54 = !{!51, !51, i64 0}
!55 = !{!56, !7, i64 56}
!56 = !{!"_ZTSSt5ctypeIcE", !57, i64 0, !58, i64 16, !49, i64 24, !16, i64 32, !16, i64 40, !59, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!57 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!58 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!59 = !{!"p1 short", !17, i64 0}
