; ModuleID = '<stdin>'
source_filename = "/tmp/tmp53ktk9u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [105 x [105 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef align 16 @a, i8 noundef 0, i64 noundef 44100, i1 noundef false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %j.0, %4
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #9
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z7guilingi(i32 noundef %3) #9
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %k) #9
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %k) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z7guilingi(i32 noundef %n) local_unnamed_addr #4 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j15 = alloca i32, align 4
  %i30 = alloca i32, align 4
  %j38 = alloca i32, align 4
  %j57 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end26, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.body
  %min.0 = phi i32 [ %1, %for.body ], [ %min.1, %if.end ]
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %n
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %cmp10 = icmp slt i32 %3, %min.0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %min.1 = phi i32 [ %3, %if.then ], [ %min.0, %for.body5 ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j15) #8
  store i32 0, ptr %j15, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.body19, %for.end
  %4 = load i32, ptr %j15, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %4, %n
  br i1 %cmp17, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond16
  %idxprom22 = sext i32 %4 to i64
  %arrayidx23 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom22
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %5, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j15) #8
  br label %for.cond16

for.end26:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j15) #8
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  br label %for.cond

for.end29:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i30) #8
  store i32 0, ptr %i30, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.end69, %for.end29
  %6 = load i32, ptr %i30, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %6, %n
  br i1 %cmp32, label %for.body34, label %for.end72

for.body34:                                       ; preds = %for.cond31
  %idxprom36 = sext i32 %6 to i64
  %arrayidx37 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom36
  %7 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j38) #8
  store i32 1, ptr %j38, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %if.end53, %for.body34
  %min35.0 = phi i32 [ %7, %for.body34 ], [ %min35.1, %if.end53 ]
  %8 = load i32, ptr %j38, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %8, %n
  br i1 %cmp40, label %for.body42, label %for.end56

for.body42:                                       ; preds = %for.cond39
  %idxprom43 = sext i32 %8 to i64
  %arrayidx44 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom43
  %arrayidx46 = getelementptr inbounds [105 x i32], ptr %arrayidx44, i64 0, i64 %idxprom36
  %9 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !12
  %cmp47 = icmp slt i32 %9, %min35.0
  br i1 %cmp47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %for.body42
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %for.body42
  %min35.1 = phi i32 [ %9, %if.then48 ], [ %min35.0, %for.body42 ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j38) #8
  br label %for.cond39

for.end56:                                        ; preds = %for.cond39
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j38) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j57) #8
  store i32 0, ptr %j57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body61, %for.end56
  %10 = load i32, ptr %j57, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %10, %n
  br i1 %cmp59, label %for.body61, label %for.end69

for.body61:                                       ; preds = %for.cond58
  %idxprom62 = sext i32 %10 to i64
  %arrayidx63 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom62
  %arrayidx65 = getelementptr inbounds [105 x i32], ptr %arrayidx63, i64 0, i64 %idxprom36
  %11 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !12
  %sub66 = sub nsw i32 %11, %min35.0
  store i32 %sub66, ptr %arrayidx65, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j57) #8
  br label %for.cond58

for.end69:                                        ; preds = %for.cond58
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j57) #8
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i30) #8
  br label %for.cond31

for.end72:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i30) #8
  %12 = load i32, ptr getelementptr inbounds ([105 x i32], ptr getelementptr inbounds ([105 x [105 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 8, !tbaa !5
  %cmp73 = icmp eq i32 %n, 2
  br i1 %cmp73, label %cleanup, label %if.else

if.else:                                          ; preds = %for.end72
  call void @_Z8xiaojiani(i32 noundef %n) #8
  %sub75 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z7guilingi(i32 noundef %sub75) #10
  %add = add nsw i32 %call, %12
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %if.else
  %retval.0 = phi i32 [ %add, %if.else ], [ %12, %for.end72 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #4 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %n, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %0, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom1
  store i32 %1, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom1
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %add18, %for.inc ]
  %cmp12 = icmp slt i32 %j.0, %sub
  br i1 %cmp12, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond10
  %add18 = add nsw i32 %j.0, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [105 x i32], ptr %arrayidx5, i64 0, i64 %idxprom19
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %idxprom23 = sext i32 %j.0 to i64
  %arrayidx24 = getelementptr inbounds [105 x i32], ptr %arrayidx8, i64 0, i64 %idxprom23
  store i32 %3, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end:                                          ; preds = %for.cond10
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  br label %for.cond

for.end27:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  ret void
}

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #7 {
for.cond1.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc11 = add nsw i32 %1, 1
  store i32 %inc11, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nofree nosync nounwind }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
