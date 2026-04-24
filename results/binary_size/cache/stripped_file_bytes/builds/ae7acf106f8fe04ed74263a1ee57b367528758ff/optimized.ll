; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl6kg6zrb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %b = alloca [50 x i8], align 16
  %r = alloca [50 x i8], align 16
  %a = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull %r) #4
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull align 16 %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %s, ptr noundef nonnull %b, ptr noundef nonnull %r)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #5
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #5
  %conv7 = trunc i64 %call6 to i32
  %sext = shl i64 %call6, 32
  %idxprom17 = ashr exact i64 %sext, 32
  %arrayidx18 = getelementptr inbounds [50 x i8], ptr %a, i64 0, i64 %idxprom17
  %cmp.not = icmp slt i32 %conv, %conv7
  br i1 %cmp.not, label %for.end25.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp12 = icmp sgt i32 %conv7, 0
  br i1 %cmp12, label %for.cond11, label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %i.0 = phi i32 [ %inc.i1, %for.cond ], [ 0, %for.cond.preheader ]
  store i8 0, ptr %arrayidx18, align 1, !tbaa !5
  %call21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %a, ptr noundef nonnull dereferenceable(1) %b) #5
  %cmp22 = icmp eq i32 %call21, 0
  %inc.i1 = add nuw nsw i32 %i.0, 1
  br i1 %cmp22, label %for.end25.split, label %for.cond

for.cond11:                                       ; preds = %for.cond.preheader, %for.cond11
  %0 = phi i8 [ %.pre, %for.cond11 ], [ undef, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond11 ], [ 0, %for.cond.preheader ]
  %arrayidx16 = getelementptr inbounds nuw [50 x i8], ptr %a, i64 0, i64 %indvars.iv
  store i8 %0, ptr %arrayidx16, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.phi.trans.insert = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv.next
  %.pre = load i8, ptr %arrayidx.phi.trans.insert, align 1, !tbaa !5, !invariant.load !8
  br label %for.cond11

for.end25.split:                                  ; preds = %for.cond, %entry
  %n.0.split = phi i32 [ undef, %entry ], [ %i.0, %for.cond ]
  br label %for.cond26

for.cond26:                                       ; preds = %if.end, %for.end25.split
  %i.1 = phi i32 [ 0, %for.end25.split ], [ %i.2, %if.end ]
  %cmp27 = icmp slt i32 %i.1, %conv
  br i1 %cmp27, label %for.body28, label %for.end42

for.body28:                                       ; preds = %for.cond26
  %cmp29 = icmp eq i32 %i.1, %n.0.split
  br i1 %cmp29, label %if.then30, label %if.else35

if.then30:                                        ; preds = %for.body28
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %r)
  br label %if.end

if.else35:                                        ; preds = %for.body28
  %idxprom36 = sext i32 %i.1 to i64
  %arrayidx37 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %idxprom36
  %1 = load i8, ptr %arrayidx37, align 1, !tbaa !5, !invariant.load !8
  %conv38 = sext i8 %1 to i32
  %putchar = call i32 @putchar(i32 %conv38)
  br label %if.end

if.end:                                           ; preds = %if.else35, %if.then30
  %conv7.pn = phi i32 [ %conv7, %if.then30 ], [ 1, %if.else35 ]
  %i.2 = add nsw i32 %conv7.pn, %i.1
  br label %for.cond26

for.end42:                                        ; preds = %for.cond26
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %r) #6
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %s) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind willreturn memory(read) }
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
