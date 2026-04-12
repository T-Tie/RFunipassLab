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

@a = dso_local global [105 x [105 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
for.cond:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef align 16 @a, i8 noundef 0, i64 noundef 44100, i1 noundef false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 0, %1
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %j.0, %2
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z7guilingi(i32 noundef %1) #9
  unreachable

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noreturn nosync nounwind uwtable
define dso_local noundef i32 @_Z7guilingi(i32 noundef %n) local_unnamed_addr #4 {
for.cond:
  %j = alloca i32, align 4
  %j15 = alloca i32, align 4
  %cmp = icmp slt i32 0, %n
  br i1 %cmp, label %for.body, label %cleanup

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr @a, align 16, !tbaa !5, !invariant.load !12
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #7
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.body
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %if.end ]
  %cmp3 = icmp slt i32 1, %n
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %1 to i64
  %arrayidx9 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom8
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %cmp10 = icmp slt i32 %2, %min.0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %min.1 = phi i32 [ %2, %if.then ], [ %min.0, %for.body5 ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #10
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %j15) #7
  store i32 0, ptr %j15, align 4, !tbaa !5
  br label %for.body19

for.body19:                                       ; preds = %for.end, %for.body19
  %3 = load i32, ptr %j15, align 4, !tbaa !5
  %idxprom22 = sext i32 %3 to i64
  %arrayidx23 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom22
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j15) #10
  br label %for.body19

cleanup:                                          ; preds = %for.cond
  call void @_Z8xiaojiani(i32 noundef %n) #10
  %sub75 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z7guilingi(i32 noundef %sub75) #11
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #5 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %sub = sub nsw i32 %n, 1
  %cmp = icmp slt i32 1, %sub
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8, !tbaa !5, !invariant.load !12
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 840), align 8, !tbaa !5, !invariant.load !12
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @a, i64 420), align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %add18, %for.inc ]
  %cmp12 = icmp slt i32 %j.0, %sub
  br i1 %cmp12, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond10
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %add15 = add nsw i32 %2, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom16
  %add18 = add nsw i32 %j.0, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [105 x i32], ptr %arrayidx17, i64 0, i64 %idxprom19
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %idxprom21 = sext i32 %2 to i64
  %arrayidx22 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom21
  %idxprom23 = sext i32 %j.0 to i64
  %arrayidx24 = getelementptr inbounds [105 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  store i32 %3, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end:                                          ; preds = %for.cond10
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #10
  br label %for.cond

for.end27:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i) #7
  ret void
}

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #6 {
for.cond1.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc11 = add nsw i32 %1, 1
  store i32 %inc11, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noreturn nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { nofree nosync nounwind }
attributes #11 = { nofree noreturn nosync nounwind }

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
