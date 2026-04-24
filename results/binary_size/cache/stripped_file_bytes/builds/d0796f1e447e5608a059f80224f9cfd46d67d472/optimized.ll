; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn5sdzby2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv7 = trunc i64 %call6 to i32
  %sext = shl i64 %call4, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not23 = icmp sgt i32 %conv, 0
  br i1 %cmp.not23, label %for.cond8.preheader.lr.ph, label %if.then25

for.cond8.preheader.lr.ph:                        ; preds = %entry
  %cmp920 = icmp sgt i32 %conv7, 0
  br i1 %cmp920, label %for.cond8.preheader.us.preheader, label %for.end37

for.cond8.preheader.us.preheader:                 ; preds = %for.cond8.preheader.lr.ph
  %wide.trip.count35 = and i64 %call4, 2147483647
  %wide.trip.count = and i64 %call6, 2147483647
  br label %for.cond8.preheader.us

for.cond8.preheader.us:                           ; preds = %for.cond8.preheader.us.preheader, %for.inc21.us
  %indvars.iv32 = phi i64 [ 0, %for.cond8.preheader.us.preheader ], [ %indvars.iv.next33, %for.inc21.us ]
  br label %for.body10.us

for.cond8.us:                                     ; preds = %for.body10.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond28.preheader, label %for.body10.us, !llvm.loop !8

for.body10.us:                                    ; preds = %for.cond8.preheader.us, %for.cond8.us
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader.us ], [ %indvars.iv.next, %for.cond8.us ]
  %0 = add nuw nsw i64 %indvars.iv, %indvars.iv32
  %arrayidx12.us = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %0
  %1 = load i8, ptr %arrayidx12.us, align 1, !tbaa !5
  %arrayidx15.us = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx15.us, align 1, !tbaa !5
  %cmp17.not.us = icmp eq i8 %1, %2
  br i1 %cmp17.not.us, label %for.cond8.us, label %for.inc21.us

for.inc21.us:                                     ; preds = %for.body10.us
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %if.then25, label %for.cond8.preheader.us, !llvm.loop !11

for.cond28.preheader:                             ; preds = %for.cond8.us
  %3 = trunc nuw nsw i64 %indvars.iv32 to i32
  %cmp2925.not = icmp eq i64 %indvars.iv32, 0
  br i1 %cmp2925.not, label %for.end37, label %for.body30.preheader

for.body30.preheader:                             ; preds = %for.cond28.preheader
  %wide.trip.count40 = and i64 %indvars.iv32, 4294967295
  br label %for.body30

if.then25:                                        ; preds = %for.inc21.us, %entry
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %a)
  br label %if.end51

for.body30:                                       ; preds = %for.body30.preheader, %for.body30
  %indvars.iv37 = phi i64 [ 0, %for.body30.preheader ], [ %indvars.iv.next38, %for.body30 ]
  %arrayidx32 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv37
  %4 = load i8, ptr %arrayidx32, align 1, !tbaa !5
  %conv33 = sext i8 %4 to i32
  %putchar18 = call i32 @putchar(i32 %conv33)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %for.end37, label %for.body30, !llvm.loop !12

for.end37:                                        ; preds = %for.body30, %for.cond8.preheader.lr.ph, %for.cond28.preheader
  %i.0.lcssa1947 = phi i32 [ 0, %for.cond28.preheader ], [ 0, %for.cond8.preheader.lr.ph ], [ %3, %for.body30 ]
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %c)
  %add40 = add nsw i32 %i.0.lcssa1947, %conv7
  %cmp4227 = icmp slt i32 %add40, %conv
  br i1 %cmp4227, label %for.body43.preheader, label %if.end51

for.body43.preheader:                             ; preds = %for.end37
  %5 = sext i32 %add40 to i64
  %6 = and i64 %call4, 2147483647
  br label %for.body43

for.body43:                                       ; preds = %for.body43.preheader, %for.body43
  %indvars.iv42 = phi i64 [ %5, %for.body43.preheader ], [ %indvars.iv.next43, %for.body43 ]
  %arrayidx45 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %indvars.iv42
  %7 = load i8, ptr %arrayidx45, align 1, !tbaa !5
  %conv46 = sext i8 %7 to i32
  %putchar = call i32 @putchar(i32 %conv46)
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %cmp42 = icmp slt i64 %indvars.iv.next43, %6
  br i1 %cmp42, label %for.body43, label %if.end51, !llvm.loop !13

if.end51:                                         ; preds = %for.body43, %for.end37, %if.then25
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
