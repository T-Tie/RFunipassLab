; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc8nifjc9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %histgram = alloca [101 x i32], align 16
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 404, ptr nonnull %histgram) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 101
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [101 x i32], ptr %histgram, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x)
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom2 = sext i32 %0 to i64
  %arrayidx3 = getelementptr inbounds [101 x i32], ptr %histgram, i64 0, i64 %idxprom2
  %1 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %inc4 = add nsw i32 %1, 1
  store i32 %inc4, ptr %arrayidx3, align 4, !tbaa !5
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  br label %for.cond6

for.cond6:                                        ; preds = %if.end, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc17, %if.end ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %2, -1
  %cmp7 = icmp slt i32 %i.1, %sub
  br i1 %cmp7, label %for.body8, label %for.end18

for.body8:                                        ; preds = %for.cond6
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x)
  %3 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom10 = sext i32 %3 to i64
  %arrayidx11 = getelementptr inbounds [101 x i32], ptr %histgram, i64 0, i64 %idxprom10
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %3)
  %.pre = load i32, ptr %x, align 4, !tbaa !5
  %idxprom13.phi.trans.insert = sext i32 %.pre to i64
  %arrayidx14.phi.trans.insert = getelementptr inbounds [101 x i32], ptr %histgram, i64 0, i64 %idxprom13.phi.trans.insert
  %.pre6 = load i32, ptr %arrayidx14.phi.trans.insert, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %idxprom13.pre-phi = phi i64 [ %idxprom13.phi.trans.insert, %if.then ], [ %idxprom10, %for.body8 ]
  %5 = phi i32 [ %.pre6, %if.then ], [ %4, %for.body8 ]
  %arrayidx14 = getelementptr inbounds [101 x i32], ptr %histgram, i64 0, i64 %idxprom13.pre-phi
  %inc15 = add nsw i32 %5, 1
  store i32 %inc15, ptr %arrayidx14, align 4, !tbaa !5
  %inc17 = add nuw nsw i32 %i.1, 1
  br label %for.cond6, !llvm.loop !12

for.end18:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #4
  call void @llvm.lifetime.end.p0(i64 404, ptr nonnull %histgram) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
