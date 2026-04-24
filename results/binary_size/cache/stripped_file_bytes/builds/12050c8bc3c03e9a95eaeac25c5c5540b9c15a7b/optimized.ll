; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo1jzqchv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7minlineiiPPi(i32 noundef %n, i32 noundef %u, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %a) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %a, align 8, !tbaa !5, !invariant.load !10
  %idxprom = sext i32 %u to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !11, !invariant.load !10
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z8mincrossiPi(i32 noundef %n, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %a) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !11, !invariant.load !10
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3ansiPPi(i32 noundef %n, ptr nofree noundef readonly captures(none) %pp) local_unnamed_addr #3 {
entry:
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %for.body5, label %for.end115

for.body5:                                        ; preds = %entry
  %0 = load ptr, ptr %pp, align 8, !tbaa !5, !invariant.load !10
  %1 = load i32, ptr %0, align 4, !tbaa !11, !invariant.load !10
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7, %for.body5
  %2 = phi i32 [ %.pre, %for.cond7 ], [ %1, %for.body5 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond7 ], [ 0, %for.body5 ]
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %0, i64 %indvars.iv
  %sub16 = sub nsw i32 %2, %1
  store i32 %sub16, ptr %arrayidx15, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx15.phi.trans.insert = getelementptr inbounds nuw i32, ptr %0, i64 %indvars.iv.next
  %.pre = load i32, ptr %arrayidx15.phi.trans.insert, align 4, !tbaa !11, !invariant.load !10
  br label %for.cond7

for.end115:                                       ; preds = %entry
  ret i32 0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  store i32 0, ptr %n, align 4, !tbaa !11
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !11
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #10
  %cmp = icmp sgt i32 %0, 0
  %mul3 = shl nuw nsw i64 %conv, 2
  br i1 %cmp, label %for.cond, label %for.cond5

for.cond:                                         ; preds = %entry, %for.cond
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.cond ], [ 0, %entry ]
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #10
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv20
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond

for.cond5:                                        ; preds = %entry, %_Z3ansiPPi.exit
  %1 = phi i32 [ %.pre, %_Z3ansiPPi.exit ], [ %0, %entry ]
  %cmp6 = icmp sgt i32 %1, 0
  br i1 %cmp6, label %for.cond10, label %for.cond35

for.cond10:                                       ; preds = %for.cond5, %for.inc26
  %2 = phi i32 [ %3, %for.inc26 ], [ %1, %for.cond5 ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc26 ], [ 0, %for.cond5 ]
  %cmp11 = icmp sgt i32 %2, 0
  br i1 %cmp11, label %for.cond14.preheader, label %_Z3ansiPPi.exit

for.cond14.preheader:                             ; preds = %for.cond10
  %arrayidx19 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv14
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc23
  %3 = phi i32 [ %2, %for.cond14.preheader ], [ %.pre24, %for.inc23 ]
  %indvars.iv = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next, %for.inc23 ]
  %cmp15 = icmp sgt i32 %3, 0
  br i1 %cmp15, label %for.inc23, label %for.inc26

for.inc23:                                        ; preds = %for.cond14
  %4 = load ptr, ptr %arrayidx19, align 8, !tbaa !5, !invariant.load !10
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %4, i64 %indvars.iv
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx21)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre24 = load i32, ptr %n, align 4, !tbaa !11
  br label %for.cond14

for.inc26:                                        ; preds = %for.cond14
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond10

_Z3ansiPPi.exit:                                  ; preds = %for.cond10
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0) #11
  %.pre = load i32, ptr %n, align 4, !tbaa !11
  br label %for.cond5

for.cond35:                                       ; preds = %for.cond5, %for.body38
  %5 = phi i32 [ %.pre23, %for.body38 ], [ %1, %for.cond5 ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body38 ], [ 0, %for.cond5 ]
  %cmp36 = icmp sgt i32 %5, 0
  br i1 %cmp36, label %for.body38, label %for.end43

for.body38:                                       ; preds = %for.cond35
  %arrayidx40 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv17
  %6 = load ptr, ptr %arrayidx40, align 8, !tbaa !5, !invariant.load !10
  call void @free(ptr noundef %6) #11
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %.pre23 = load i32, ptr %n, align 4, !tbaa !11
  br label %for.cond35

for.end43:                                        ; preds = %for.cond35
  call void @free(ptr noundef %call1) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #11
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
