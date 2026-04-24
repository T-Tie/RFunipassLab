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
  br i1 %cmp.not, label %for.end55, label %for.cond

for.cond:                                         ; preds = %entry, %for.end
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.end ], [ 0, %entry ]
  %arrayidx10 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv15
  %2 = load i8, ptr %arrayidx10, align 1, !tbaa !5, !invariant.load !8
  %cmp12 = icmp eq i8 %1, %2
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond, %for.body17
  %indvars.iv = phi i64 [ 0, %for.cond ], [ %indvars.iv.next, %for.body17 ]
  br i1 %cmp12, label %land.end, label %for.end

land.end:                                         ; preds = %for.cond5
  %arrayidx14 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !5, !invariant.load !8
  %cmp16.not = icmp eq i8 %3, 0
  br i1 %cmp16.not, label %for.end, label %for.body17

for.body17:                                       ; preds = %land.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5

for.end:                                          ; preds = %for.cond5, %land.end
  %idxprom18 = and i64 %indvars.iv, 4294967295
  %arrayidx19 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %idxprom18
  %4 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  %cmp21 = icmp eq i8 %4, 0
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br i1 %cmp21, label %for.cond22.preheader, label %for.cond

for.cond22.preheader:                             ; preds = %for.end
  %cmp23.not = icmp eq i64 %indvars.iv15, 0
  br i1 %cmp23.not, label %for.end32, label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.cond22
  %5 = phi i8 [ %.pre, %for.cond22 ], [ %0, %for.cond22.preheader ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.cond22 ], [ 0, %for.cond22.preheader ]
  %conv28 = sext i8 %5 to i32
  %putchar11 = call i32 @putchar(i32 %conv28)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %arrayidx27.phi.trans.insert = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next19
  %.pre = load i8, ptr %arrayidx27.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %for.cond22

for.end32:                                        ; preds = %for.cond22.preheader
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %c)
  %arrayidx45 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %idxprom18
  br label %for.cond37

for.cond37:                                       ; preds = %for.body43, %for.end32
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body43 ], [ %indvars.iv, %for.end32 ]
  %arrayidx39 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv21
  %6 = load i8, ptr %arrayidx39, align 1, !tbaa !5, !invariant.load !8
  %cmp41.not = icmp eq i8 %6, 0
  br i1 %cmp41.not, label %cleanup58, label %for.body43

for.body43:                                       ; preds = %for.cond37
  %7 = load i8, ptr %arrayidx45, align 1, !tbaa !5, !invariant.load !8
  %conv46 = sext i8 %7 to i32
  %putchar = call i32 @putchar(i32 %conv46)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond37

for.end55:                                        ; preds = %entry
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %a)
  br label %cleanup58

cleanup58:                                        ; preds = %for.cond37, %for.end55
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #5
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
