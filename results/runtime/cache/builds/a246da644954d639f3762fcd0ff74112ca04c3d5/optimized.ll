; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj2hxcomj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z5rightPcii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %l, i32 noundef %t) local_unnamed_addr #0 {
entry:
  %invariant.gep = getelementptr i8, ptr %a, i64 -1
  %0 = sext i32 %l to i64
  %1 = sext i32 %t to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %0, %entry ]
  %cmp.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %2 = load i8, ptr %gep, align 1, !tbaa !5
  %arrayidx2 = getelementptr inbounds i8, ptr %a, i64 %indvars.iv
  store i8 %2, ptr %arrayidx2, align 1, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %3 = getelementptr i8, ptr %a, i64 %0
  %arrayidx4 = getelementptr i8, ptr %3, i64 1
  store i8 0, ptr %arrayidx4, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4leftPcii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %l, i32 noundef %t) local_unnamed_addr #0 {
entry:
  %invariant.gep = getelementptr i8, ptr %a, i64 -1
  %invariant.gep1 = getelementptr i8, ptr %a, i64 -2
  %0 = sext i32 %t to i64
  %1 = sext i32 %l to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %0, %entry ]
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %2 = load i8, ptr %gep, align 1, !tbaa !5
  %gep2 = getelementptr i8, ptr %invariant.gep1, i64 %indvars.iv
  store i8 %2, ptr %gep2, align 1, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %3 = getelementptr i8, ptr %a, i64 %1
  %arrayidx6 = getelementptr i8, ptr %3, i64 -1
  store i8 0, ptr %arrayidx6, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %b) #8
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %c) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 dereferenceable(256) %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %call6 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %a) #9
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #9
  %conv9 = trunc i64 %call8 to i32
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %c) #9
  %conv12 = trunc i64 %call11 to i32
  %cmp.not = icmp sgt i32 %conv9, %conv12
  %phiofops1 = icmp slt i32 %conv9, %conv12
  %cmp18 = icmp sgt i32 %conv, 0
  br i1 %cmp18, label %for.cond.preheader, label %for.end75

for.cond.preheader:                               ; preds = %entry
  %0 = icmp eq i32 %conv12, %conv9
  %invariant.gep = getelementptr i8, ptr %a, i64 -1
  %invariant.gep22 = getelementptr inbounds nuw i8, ptr %a, i64 1
  %invariant.gep1.i = getelementptr i8, ptr %a, i64 -2
  %add49 = shl i64 %call8, 32
  %sext = add i64 %add49, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = and i64 %call6, 2147483647
  %gep = getelementptr i8, ptr %invariant.gep, i64 %2
  %gep23 = getelementptr i8, ptr %invariant.gep22, i64 %2
  br i1 %0, label %for.cond58.preheader, label %for.cond43

for.cond43:                                       ; preds = %for.cond.preheader, %if.end54
  br i1 %cmp.not, label %for.cond.i, label %if.end50

for.cond58.preheader:                             ; preds = %for.cond.preheader
  %cmp59 = icmp slt i32 %conv9, 1
  call void @llvm.assume(i1 %cmp59)
  br label %for.end75

for.cond.i:                                       ; preds = %for.cond43, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ %1, %for.cond43 ]
  %cmp.not.i = icmp sgt i64 %indvars.iv.i, %2
  br i1 %cmp.not.i, label %_Z4leftPcii.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.cond.i
  %gep.i = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i
  %3 = load i8, ptr %gep.i, align 1, !tbaa !5
  %gep2.i = getelementptr i8, ptr %invariant.gep1.i, i64 %indvars.iv.i
  store i8 %3, ptr %gep2.i, align 1, !tbaa !5
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !11

_Z4leftPcii.exit:                                 ; preds = %for.cond.i
  store i8 0, ptr %gep, align 1, !tbaa !5
  br label %if.end50

if.end50:                                         ; preds = %_Z4leftPcii.exit, %for.cond43
  br i1 %phiofops1, label %for.cond.i3, label %if.end54

for.cond.i3:                                      ; preds = %if.end50, %for.inc.i6
  %indvars.iv.i4 = phi i64 [ %indvars.iv.next.i8, %for.inc.i6 ], [ %2, %if.end50 ]
  %cmp.not.i5 = icmp slt i64 %indvars.iv.i4, 1
  br i1 %cmp.not.i5, label %_Z5rightPcii.exit, label %for.inc.i6

for.inc.i6:                                       ; preds = %for.cond.i3
  %gep.i7 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.i4
  %4 = load i8, ptr %gep.i7, align 1, !tbaa !5
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv.i4
  store i8 %4, ptr %arrayidx2.i, align 1, !tbaa !5
  %indvars.iv.next.i8 = add nsw i64 %indvars.iv.i4, -1
  br label %for.cond.i3, !llvm.loop !8

_Z5rightPcii.exit:                                ; preds = %for.cond.i3
  store i8 0, ptr %gep23, align 1, !tbaa !5
  br label %if.end54

if.end54:                                         ; preds = %_Z5rightPcii.exit, %if.end50
  br label %for.cond43

for.end75:                                        ; preds = %for.cond58.preheader, %entry
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull align 16 dereferenceable(256) %a) #10
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull captures(none) %a) #10
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
