; ModuleID = '<stdin>'
source_filename = "/tmp/tmpovyyzfq6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [257 x i8], align 16
  %s = alloca [257 x i8], align 16
  %r = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %str) #6
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull align 16 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef nonnull %r) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %str, ptr noundef nonnull align 16 %s, ptr noundef nonnull %r)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %0 = load i8, ptr %s, align 16
  %1 = and i64 %call6, 4294967295
  %cmp27 = icmp ne i64 %1, 0
  br label %while.cond

while.cond:                                       ; preds = %if.end30, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end30 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %2, 0
  br i1 %cmp.not, label %if.else, label %while.body

while.body:                                       ; preds = %while.cond
  %cmp17 = icmp ne i8 %2, %0
  %brmerge = select i1 %cmp17, i1 true, i1 %cmp27
  br i1 %brmerge, label %if.end30, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %while.body
  %conv11.le = sext i8 %0 to i32
  %cmp34.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp34.not, label %for.end42, label %for.cond33

if.end30:                                         ; preds = %while.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !8

for.cond33:                                       ; preds = %for.cond33.preheader, %for.cond33
  %3 = phi i8 [ %.pre, %for.cond33 ], [ undef, %for.cond33.preheader ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.cond33 ], [ 0, %for.cond33.preheader ]
  %conv38 = sext i8 %3 to i32
  %putchar11 = call i32 @putchar(i32 noundef %conv38) #8
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %arrayidx37.phi.trans.insert = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv.next21
  %.pre = load i8, ptr %arrayidx37.phi.trans.insert, align 1, !tbaa !5, !invariant.load !11
  br label %for.cond33

for.end42:                                        ; preds = %for.cond33.preheader
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %r) #8
  %cmp47 = icmp sgt i32 %conv, 0
  br i1 %cmp47, label %for.cond46, label %if.end58

for.cond46:                                       ; preds = %for.end42, %for.cond46
  %putchar = call i32 @putchar(i32 noundef %conv11.le) #8
  br label %for.cond46

if.else:                                          ; preds = %while.cond
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %str) #8
  br label %if.end58

if.end58:                                         ; preds = %for.end42, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %r) #8
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef nonnull %str) #8
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{}
