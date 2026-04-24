; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj35o2k4s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
for.cond:
  %m = alloca [301 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 301, ptr noundef nonnull align 16 %m) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %m)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %m) #7
  %conv = trunc i64 %call2 to i32
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %for.body7, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond
  %cmp27 = icmp eq i32 %conv, 1
  br label %for.cond26

for.body7:                                        ; preds = %for.cond
  %arrayidx10 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 1
  %0 = load i8, ptr %arrayidx10, align 1, !tbaa !5, !invariant.load !8
  unreachable

if.then:                                          ; No predecessors!
  unreachable

if.end:                                           ; No predecessors!
  unreachable

for.cond26:                                       ; preds = %for.cond26.preheader, %if.end62
  %indvars.iv = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next, %if.end62 ]
  %sum.0 = phi i32 [ 0, %for.cond26.preheader ], [ %sum.1, %if.end62 ]
  br i1 %cmp27, label %for.body28, label %if.end69

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx30, align 1, !tbaa !5, !invariant.load !8
  %conv31 = sext i8 %1 to i32
  %cmp32 = icmp sgt i8 %1, 64
  br i1 %cmp32, label %land.lhs.true, label %if.end62

land.lhs.true:                                    ; preds = %for.body28
  %cmp36 = icmp samesign ult i8 %1, 91
  %2 = add nsw i8 %1, -97
  %or.cond = icmp ult i8 %2, 26
  %or.cond9 = select i1 %cmp36, i1 true, i1 %or.cond
  br i1 %or.cond9, label %if.then46, label %if.end62

if.then46:                                        ; preds = %land.lhs.true
  %inc47 = add nsw i32 %sum.0, 1
  %3 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx53 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx53, align 1, !tbaa !5, !invariant.load !8
  %cmp55.not = icmp eq i8 %1, %4
  br i1 %cmp55.not, label %if.end62, label %if.then56

if.then56:                                        ; preds = %if.then46
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv31, i32 noundef %inc47) #8
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true, %for.body28, %if.then46, %if.then56
  %sum.1 = phi i32 [ 0, %if.then56 ], [ %inc47, %if.then46 ], [ %sum.0, %for.body28 ], [ %sum.0, %land.lhs.true ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond26

if.end69:                                         ; preds = %for.cond26
  %call68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 301, ptr noundef nonnull %m) #8
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
!8 = !{}
