; ModuleID = '<stdin>'
source_filename = "/tmp/tmpq120esm_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@month = dso_local local_unnamed_addr global [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@str = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3runi(i32 noundef %year) local_unnamed_addr #0 {
entry:
  %0 = and i32 %year, 3
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.then3, label %return

if.then3:                                         ; preds = %entry
  %rem4 = srem i32 %year, 100
  %cmp5 = icmp ne i32 %rem4, 0
  %rem7 = srem i32 %year, 400
  %cmp8 = icmp eq i32 %rem7, 0
  %or.cond = or i1 %cmp5, %cmp8
  %spec.select = zext i1 %or.cond to i32
  br label %return

return:                                           ; preds = %if.then3, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %date1 = alloca i32, align 4
  %date2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %date1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %date2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end5, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.cond15

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %date1, ptr noundef nonnull %date2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3runi(i32 noundef %1) #6
  %tobool.not = icmp eq i32 %call2, 0
  %spec.store.select = select i1 %tobool.not, i32 28, i32 29
  store i32 %spec.store.select, ptr getelementptr inbounds nuw (i8, ptr @month, i64 8), align 8
  %2 = load i32, ptr %date1, align 4, !tbaa !5
  %3 = load i32, ptr %date2, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %2, %3
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  store i32 %3, ptr %date1, align 4, !tbaa !5
  store i32 %2, ptr %date2, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body
  br label %for.cond

for.cond15:                                       ; preds = %for.cond, %if.end25
  %4 = phi i32 [ %.pre, %if.end25 ], [ %0, %for.cond ]
  %cmp17 = icmp sgt i32 %4, 0
  br i1 %cmp17, label %if.end25, label %for.end28

if.end25:                                         ; preds = %for.cond15
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15

for.end28:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %date2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %date1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
