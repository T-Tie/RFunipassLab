; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz1g1_ufw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [40 x i8], align 16
  %s0 = alloca [40 x i8], align 16
  %s1 = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %s) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %s0) #7
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %s1) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10000) %s1, i8 0, i64 10000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %call6 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %s1, ptr noundef nonnull dereferenceable(1) %s) #7
  br label %for.cond

for.cond:                                         ; preds = %if.end43, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc45, %if.end43 ]
  %d.0 = phi i64 [ %call3, %entry ], [ %d.1, %if.end43 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %0, -1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  br label %for.cond9

for.cond9:                                        ; preds = %for.body12, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12 ], [ 0, %for.body ]
  %arrayidx = getelementptr inbounds nuw [40 x i8], ptr %s, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %cmp11.not = icmp eq i8 %1, 0
  br i1 %cmp11.not, label %for.end, label %for.body12

for.body12:                                       ; preds = %for.cond9
  %arrayidx16 = getelementptr inbounds nuw [40 x i8], ptr %s0, i64 0, i64 %indvars.iv
  store i8 %1, ptr %arrayidx16, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond9, !llvm.loop !10

for.end:                                          ; preds = %for.cond9
  %sext = shl i64 %d.0, 32
  %conv18 = ashr exact i64 %sext, 32
  %call20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %add = add nsw i64 %conv18, 1
  %add21 = add i64 %add, %call20
  %conv22 = trunc i64 %add21 to i32
  %cmp23 = icmp slt i32 %conv22, 81
  %idxprom24 = and i64 %indvars.iv, 4294967295
  %arrayidx25 = getelementptr inbounds nuw [40 x i8], ptr %s0, i64 0, i64 %idxprom24
  store i8 0, ptr %arrayidx25, align 1, !tbaa !9
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %s1)
  %endptr = getelementptr inbounds i8, ptr %s1, i64 %strlen
  br i1 %cmp23, label %if.end, label %if.then32

if.end:                                           ; preds = %for.end
  store i16 32, ptr %endptr, align 1
  %call30 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %s1, ptr noundef nonnull dereferenceable(1) %s0) #7
  br label %if.end43

if.then32:                                        ; preds = %for.end
  store i16 10, ptr %endptr, align 1
  %call39 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %s1, ptr noundef nonnull dereferenceable(1) %s0) #7
  %call41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s0) #8
  br label %if.end43

if.end43:                                         ; preds = %if.end, %if.then32
  %d.1 = phi i64 [ %call41, %if.then32 ], [ %add21, %if.end ]
  %inc45 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end46:                                        ; preds = %for.cond
  %call48 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %s1)
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %s1) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %s0) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %s) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
