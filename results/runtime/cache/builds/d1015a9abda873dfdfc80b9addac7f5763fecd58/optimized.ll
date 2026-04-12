; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6pvgak07.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [10000 x i8] zeroinitializer, align 16
@i = dso_local local_unnamed_addr global i32 0, align 4
@bo = dso_local local_unnamed_addr global i32 0, align 4
@ctt = dso_local local_unnamed_addr global [10000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c=%d\0A\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull @a)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) @ctt, i8 noundef 0, i64 noundef 40000, i1 noundef false)
  store i32 0, ptr @bo, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %0 = phi i32 [ %5, %if.end ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %1, ptr @i, align 4, !tbaa !5
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @a) #4
  %cmp = icmp ugt i64 %call1, %indvars.iv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i8], ptr @a, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %cmp3 = icmp sgt i8 %2, 64
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %cmp7 = icmp samesign ult i8 %2, 91
  %3 = add nsw i8 %2, -97
  %or.cond = icmp ult i8 %3, 26
  %or.cond6 = select i1 %cmp7, i1 true, i1 %or.cond
  br i1 %or.cond6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %idxprom19 = zext nneg i8 %2 to i64
  %arrayidx20 = getelementptr inbounds nuw [10000 x i32], ptr @ctt, i64 0, i64 %idxprom19
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %arrayidx20, align 4, !tbaa !5
  store i32 1, ptr @bo, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body, %if.then
  %5 = phi i32 [ %0, %land.lhs.true ], [ %0, %for.body ], [ 1, %if.then ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.end
  br label %for.cond25

for.cond25:                                       ; preds = %if.end35, %if.end24
  %storemerge4 = phi i32 [ 65, %if.end24 ], [ %inc21.i1, %if.end35 ]
  store i32 %storemerge4, ptr @i, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %storemerge4, 91
  br i1 %cmp26, label %for.body27, label %for.cond39

for.body27:                                       ; preds = %for.cond25
  %idxprom28 = sext i32 %storemerge4 to i64
  %arrayidx29 = getelementptr inbounds [10000 x i32], ptr @ctt, i64 0, i64 %idxprom28
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %tobool30.not = icmp eq i32 %6, 0
  br i1 %tobool30.not, label %if.end35, label %if.then31

if.then31:                                        ; preds = %for.body27
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %storemerge4, i32 noundef %6)
  %.pre8 = load i32, ptr @i, align 4, !tbaa !5
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %for.body27
  %7 = phi i32 [ %.pre8, %if.then31 ], [ %storemerge4, %for.body27 ]
  %inc21.i1 = add nsw i32 %7, 1
  br label %for.cond25

for.cond39:                                       ; preds = %for.cond25, %if.end49
  %storemerge5 = phi i32 [ %inc21.i2, %if.end49 ], [ 97, %for.cond25 ]
  store i32 %storemerge5, ptr @i, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %storemerge5, 123
  br i1 %cmp40, label %for.body41, label %for.end52

for.body41:                                       ; preds = %for.cond39
  %idxprom42 = sext i32 %storemerge5 to i64
  %arrayidx43 = getelementptr inbounds [10000 x i32], ptr @ctt, i64 0, i64 %idxprom42
  %8 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %tobool44.not = icmp eq i32 %8, 0
  br i1 %tobool44.not, label %if.end49, label %if.then45

if.then45:                                        ; preds = %for.body41
  %call48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %storemerge5, i32 noundef %8)
  %.pre = load i32, ptr @i, align 4, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %for.body41
  %9 = phi i32 [ %.pre, %if.then45 ], [ %storemerge5, %for.body41 ]
  %inc21.i2 = add nsw i32 %9, 1
  br label %for.cond39

for.end52:                                        ; preds = %for.cond39
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

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
