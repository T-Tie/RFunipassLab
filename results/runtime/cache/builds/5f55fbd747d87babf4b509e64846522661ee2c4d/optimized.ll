; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo5jsx3ul.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3cuti(i32 noundef %t) local_unnamed_addr #0 {
entry:
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %t
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 9999, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, %t
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %3 = load i32, ptr %s, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %2, %3
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  store i32 %2, ptr %s, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc22, %for.end
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %4, %t
  br i1 %cmp12, label %for.inc22, label %for.inc25

for.inc22:                                        ; preds = %for.cond11
  %idxprom14 = sext i32 %0 to i64
  %arrayidx15 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom14
  %idxprom16 = sext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %6 = load i32, ptr %s, align 4, !tbaa !5
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %arrayidx17, align 4, !tbaa !5
  %inc23 = add nsw i32 %4, 1
  store i32 %inc23, ptr %j, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond11
  %inc26 = add nsw i32 %0, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end27:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc63, %for.end27
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %7, %t
  br i1 %cmp29, label %for.body30, label %for.end65

for.body30:                                       ; preds = %for.cond28
  store i32 9999, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc45, %for.body30
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %8, %t
  br i1 %cmp32, label %for.body33, label %for.end47

for.body33:                                       ; preds = %for.cond31
  %idxprom34 = sext i32 %8 to i64
  %arrayidx35 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom34
  %idxprom36 = sext i32 %7 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %9 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %10 = load i32, ptr %s, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %9, %10
  br i1 %cmp38, label %if.then39, label %for.inc45

if.then39:                                        ; preds = %for.body33
  store i32 %9, ptr %s, align 4, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %for.body33, %if.then39
  %inc46 = add nsw i32 %8, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !15

for.end47:                                        ; preds = %for.cond31
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc60, %for.end47
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %11, %t
  br i1 %cmp49, label %for.inc60, label %for.inc63

for.inc60:                                        ; preds = %for.cond48
  %idxprom51 = sext i32 %11 to i64
  %arrayidx52 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom51
  %idxprom53 = sext i32 %7 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %12 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !9
  %13 = load i32, ptr %s, align 4, !tbaa !5
  %sub55 = sub nsw i32 %12, %13
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %inc61 = add nsw i32 %11, 1
  store i32 %inc61, ptr %j, align 4, !tbaa !5
  br label %for.cond48, !llvm.loop !16

for.inc63:                                        ; preds = %for.cond48
  %inc64 = add nsw i32 %7, 1
  store i32 %inc64, ptr %i, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !17

for.end65:                                        ; preds = %for.cond28
  %dec = add nsw i32 %t, -1
  %cmp66 = icmp eq i32 %dec, 1
  %14 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.end65
  store i32 %14, ptr %sum, align 4
  br label %cleanup

if.end68:                                         ; preds = %for.end65
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc125, %if.end68
  %.sink = phi i32 [ 0, %if.end68 ], [ %inc126, %for.inc125 ]
  store i32 %.sink, ptr %i, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %.sink, %t
  br i1 %cmp70, label %for.body71, label %for.end127

for.body71:                                       ; preds = %for.cond69
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc122, %for.body71
  %.sink8 = phi i32 [ 0, %for.body71 ], [ %inc123, %for.inc122 ]
  store i32 %.sink8, ptr %j, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %.sink8, %t
  br i1 %cmp74, label %for.body75, label %for.inc125

for.body75:                                       ; preds = %for.cond72
  %cmp76 = icmp eq i32 %.sink, 0
  br i1 %cmp76, label %land.lhs.true, label %if.else79

land.lhs.true:                                    ; preds = %for.body75
  %cmp77 = icmp eq i32 %.sink8, 0
  br i1 %cmp77, label %for.inc122, label %lor.lhs.false

if.else79:                                        ; preds = %for.body75
  %cmp80 = icmp eq i32 %.sink, 1
  br i1 %cmp80, label %for.inc122, label %lor.lhs.false.thread

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp81 = icmp eq i32 %.sink8, 1
  br i1 %cmp81, label %for.inc122, label %if.then85

lor.lhs.false.thread:                             ; preds = %if.else79
  %cmp813 = icmp eq i32 %.sink8, 1
  br i1 %cmp813, label %for.inc122, label %if.else95

if.then85:                                        ; preds = %lor.lhs.false
  %idxprom88 = sext i32 %.sink8 to i64
  %arrayidx89 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom88
  %15 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  %sub92 = sub nsw i32 %.sink8, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom93
  store i32 %15, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.inc122

if.else95:                                        ; preds = %lor.lhs.false.thread
  %idxprom864 = sext i32 %.sink to i64
  %cmp96 = icmp eq i32 %.sink8, 0
  %idxprom100 = sext i32 %.sink8 to i64
  %16 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom864
  %17 = getelementptr inbounds [100 x i32], ptr %16, i64 0, i64 %idxprom100
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %sub102 = sub nsw i32 %.sink, 1
  %idxprom103 = sext i32 %sub102 to i64
  br i1 %cmp96, label %if.then97, label %if.else107

if.then97:                                        ; preds = %if.else95
  %arrayidx104 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom103
  %arrayidx106 = getelementptr inbounds [100 x i32], ptr %arrayidx104, i64 0, i64 %idxprom100
  store i32 %18, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc122

if.else107:                                       ; preds = %if.else95
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom103
  %sub115 = sub nsw i32 %.sink8, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom116
  store i32 %18, ptr %arrayidx117, align 4, !tbaa !5
  br label %for.inc122

for.inc122:                                       ; preds = %if.then85, %if.else107, %if.then97, %lor.lhs.false.thread, %if.else79, %lor.lhs.false, %land.lhs.true
  %inc123 = add nsw i32 %.sink8, 1
  br label %for.cond72, !llvm.loop !18

for.inc125:                                       ; preds = %for.cond72
  %inc126 = add nsw i32 %.sink, 1
  br label %for.cond69, !llvm.loop !19

for.end127:                                       ; preds = %for.cond69
  %call = call noundef i32 @_Z3cuti(i32 noundef %dec) #7
  %add128 = add nsw i32 %14, %call
  store i32 %add128, ptr %sum, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end127, %if.then67
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %s) #6
  %19 = load i32, ptr %sum, align 4
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %1
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %3, %1
  br i1 %cmp5, label %for.inc, label %for.inc9

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  store i32 0, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !20

for.inc9:                                         ; preds = %for.cond4
  %inc10 = add nsw i32 %2, 1
  store i32 %inc10, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !21

for.end11:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc26, %for.end11
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %4, %5
  br i1 %cmp13, label %for.body14, label %for.inc32

for.body14:                                       ; preds = %for.cond12
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.body14
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %6, %7
  br i1 %cmp16, label %for.inc23, label %for.inc26

for.inc23:                                        ; preds = %for.cond15
  %idxprom18 = sext i32 %4 to i64
  %arrayidx19 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom18
  %idxprom20 = sext i32 %6 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %call22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx21)
  %inc24 = add nsw i32 %6, 1
  store i32 %inc24, ptr %k, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !22

for.inc26:                                        ; preds = %for.cond15
  %inc27 = add nsw i32 %4, 1
  store i32 %inc27, ptr %j, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !23

for.inc32:                                        ; preds = %for.cond12
  %call29 = call noundef i32 @_Z3cuti(i32 noundef %5) #8
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call29)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc33 = add nsw i32 %0, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree nosync nounwind }
attributes #8 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
