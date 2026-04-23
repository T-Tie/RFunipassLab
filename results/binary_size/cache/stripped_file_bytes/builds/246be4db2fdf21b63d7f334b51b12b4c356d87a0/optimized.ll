; ModuleID = '<stdin>'
source_filename = "/tmp/tmplypdr7bp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %0 = load i8, ptr %a, align 16, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  %1 = load i8, ptr %b, align 16
  %cmp21 = icmp eq i8 %1, 0
  br i1 %cmp.not, label %for.end55, label %for.cond

for.cond:                                         ; preds = %entry, %cleanup.cont
  %2 = phi i8 [ %.pre, %cleanup.cont ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup.cont ], [ 0, %entry ]
  %cmp12 = icmp eq i8 %1, %2
  br i1 %cmp12, label %for.cond5.preheader.split, label %for.end

for.cond5.preheader.split:                        ; preds = %for.cond
  call void @llvm.assume(i1 noundef %cmp21)
  %cmp23.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp23.not, label %for.end32, label %for.cond22

for.end:                                          ; preds = %for.cond
  br i1 %cmp21, label %for.end32, label %cleanup.cont

for.cond22:                                       ; preds = %for.cond5.preheader.split, %for.cond22
  %3 = phi i8 [ %.pre28, %for.cond22 ], [ %0, %for.cond5.preheader.split ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.cond22 ], [ 0, %for.cond5.preheader.split ]
  %conv28 = sext i8 %3 to i32
  %putchar10 = call i32 @putchar(i32 noundef %conv28) #6
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %arrayidx27.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next23
  %.pre28 = load i8, ptr %arrayidx27.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %for.cond22

for.end32:                                        ; preds = %for.end, %for.cond5.preheader.split
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %c)
  br label %for.cond37

for.cond37:                                       ; preds = %for.body43, %for.end32
  %4 = phi i8 [ %.pre29, %for.body43 ], [ %0, %for.end32 ]
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body43 ], [ 0, %for.end32 ]
  %cmp41.not = icmp eq i8 %4, 0
  br i1 %cmp41.not, label %cleanup58, label %for.body43

for.body43:                                       ; preds = %for.cond37
  %conv40 = sext i8 %4 to i32
  %putchar = call i32 @putchar(i32 noundef %conv40) #6
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %arrayidx39.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next26
  %.pre29 = load i8, ptr %arrayidx39.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %for.cond37

cleanup.cont:                                     ; preds = %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx10.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next
  %.pre = load i8, ptr %arrayidx10.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %for.cond

for.end55:                                        ; preds = %entry
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %a)
  br label %cleanup58

cleanup58:                                        ; preds = %for.cond37, %for.end55
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

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
