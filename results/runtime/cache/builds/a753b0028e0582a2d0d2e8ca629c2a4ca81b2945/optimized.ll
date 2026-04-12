; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwhi9r9p6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %zfc = alloca [256 x i8], align 16
  %wt = alloca [256 x i8], align 16
  %tar = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %zfc) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %wt) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %tar) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %zfc)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %wt)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tar)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %zfc) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %wt) #7
  %conv9 = trunc i64 %call8 to i32
  %cmp.not = icmp slt i32 %conv, %conv9
  %0 = load i8, ptr %zfc, align 16
  br i1 %cmp.not, label %for.end37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp12 = icmp sgt i32 %conv9, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond10.preheader.split
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.cond10.preheader.split ]
  br i1 %cmp12, label %for.cond10.preheader.split, label %for.cond22.preheader

for.cond10.preheader.split:                       ; preds = %for.cond
  %1 = sub nsw i64 0, %indvars.iv
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr %wt, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx17, align 1, !tbaa !5
  %cmp19.not = icmp ne i8 %0, %2
  call void @llvm.assume(i1 noundef %cmp19.not)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.cond22.preheader:                             ; preds = %for.cond
  %3 = add i64 %indvars.iv, %call8
  %sext = shl i64 %3, 32
  %4 = ashr exact i64 %sext, 32
  %sext24 = shl i64 %indvars.iv, 32
  %5 = ashr exact i64 %sext24, 32
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body25
  %indvars.iv20 = phi i64 [ %indvars.iv, %for.cond22.preheader ], [ %indvars.iv.next21, %for.body25 ]
  %cmp24 = icmp slt i64 %indvars.iv20, %4
  br i1 %cmp24, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond22
  %6 = sub nuw nsw i64 %indvars.iv20, %5
  %arrayidx28 = getelementptr inbounds nuw [256 x i8], ptr %tar, i64 0, i64 %6
  %7 = load i8, ptr %arrayidx28, align 1, !tbaa !5
  %arrayidx30 = getelementptr inbounds nuw [256 x i8], ptr %zfc, i64 0, i64 %indvars.iv20
  store i8 %7, ptr %arrayidx30, align 1, !tbaa !5
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond22

for.end37:                                        ; preds = %for.cond22, %entry
  %call39 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %zfc) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %tar) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %wt) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %zfc) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
