; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0in9dvb1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %a = alloca [100 x i8], align 16
  %b = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %s, ptr noundef nonnull align 16 %a, ptr noundef nonnull %b)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #6
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv7 = trunc i64 %call6 to i32
  %cmp.not = icmp slt i32 %conv, %conv7
  %0 = load i8, ptr %a, align 16
  %cmp16 = icmp sgt i32 %conv7, 1
  br i1 %cmp.not, label %if.then34, label %for.cond

for.cond:                                         ; preds = %entry, %if.end29
  %1 = phi i8 [ %.pre, %if.end29 ], [ undef, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end29 ], [ 0, %entry ]
  %cmp14 = icmp ne i8 %1, %0
  %brmerge = or i1 %cmp14, %cmp16
  br i1 %brmerge, label %if.end29, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond
  %cmp38.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp38.not, label %for.end46, label %for.cond37

if.end29:                                         ; preds = %for.cond
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.phi.trans.insert = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv.next
  %.pre = load i8, ptr %arrayidx.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %for.cond

if.then34:                                        ; preds = %entry
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %s)
  br label %if.end61

for.cond37:                                       ; preds = %for.cond37.preheader, %for.cond37
  %2 = phi i8 [ %.pre32, %for.cond37 ], [ undef, %for.cond37.preheader ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.cond37 ], [ 0, %for.cond37.preheader ]
  %conv42 = sext i8 %2 to i32
  %putchar19 = call i32 @putchar(i32 %conv42)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %arrayidx41.phi.trans.insert = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv.next27
  %.pre32 = load i8, ptr %arrayidx41.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %for.cond37

for.end46:                                        ; preds = %for.cond37.preheader
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %b)
  %cmp51 = icmp slt i32 %conv7, %conv
  br i1 %cmp51, label %for.cond50.preheader, label %for.end59

for.cond50.preheader:                             ; preds = %for.end46
  %sext = shl i64 %call6, 32
  %3 = ashr exact i64 %sext, 32
  br label %for.cond50

for.cond50:                                       ; preds = %for.cond50.preheader, %for.cond50
  %indvars.iv29 = phi i64 [ %3, %for.cond50.preheader ], [ %indvars.iv.next30, %for.cond50 ]
  %arrayidx54 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %indvars.iv29
  %4 = load i8, ptr %arrayidx54, align 1, !tbaa !5, !invariant.load !8
  %conv55 = sext i8 %4 to i32
  %putchar18 = call i32 @putchar(i32 %conv55)
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1
  br label %for.cond50

for.end59:                                        ; preds = %for.end46
  %putchar = call i32 @putchar(i32 10)
  br label %if.end61

if.end61:                                         ; preds = %for.end59, %if.then34
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %s) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!8 = !{}
