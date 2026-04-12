; ModuleID = '<stdin>'
source_filename = "/tmp/tmpce2ecbbi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.words = type { i32, [20 x i8] }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = mul nsw i64 %conv, 24
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #8
  %invariant.gep = getelementptr i8, ptr %call1, i64 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = phi i32 [ %.pre, %for.body ], [ %0, %entry ]
  %indvar = phi i64 [ %indvar.next, %for.body ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvar, %2
  br i1 %cmp, label %for.body, label %for.cond15

for.body:                                         ; preds = %for.cond
  %3 = mul nuw nsw i64 %indvar, 24
  %gep = getelementptr i8, ptr %invariant.gep, i64 %3
  %add.ptr = getelementptr inbounds nuw %struct.words, ptr %call1, i64 %indvar
  %word = getelementptr inbounds nuw i8, ptr %add.ptr, i64 4
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %word)
  %strlen = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %gep)
  %4 = trunc i64 %strlen to i32
  store i32 %4, ptr %add.ptr, align 4, !tbaa !9
  %indvar.next = add nuw nsw i64 %indvar, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.cond15:                                       ; preds = %for.cond, %for.inc46
  %5 = phi i32 [ %.pre27, %for.inc46 ], [ %1, %for.cond ]
  %count.0 = phi i32 [ %count.1, %for.inc46 ], [ 0, %for.cond ]
  %i.1 = phi i32 [ %inc47, %for.inc46 ], [ 0, %for.cond ]
  %cmp16 = icmp slt i32 %i.1, %5
  br i1 %cmp16, label %for.body17, label %for.end48

for.body17:                                       ; preds = %for.cond15
  %idx.ext18 = sext i32 %i.1 to i64
  %add.ptr19 = getelementptr inbounds %struct.words, ptr %call1, i64 %idx.ext18
  %6 = load i32, ptr %add.ptr19, align 4, !tbaa !9
  %add = add nsw i32 %6, %count.0
  %cmp22 = icmp sgt i32 %add, 79
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %for.body17
  %putchar = call i32 @putchar(i32 10)
  %dec = add nsw i32 %i.1, -1
  br label %for.inc46

if.else:                                          ; preds = %for.body17
  %cmp24 = icmp eq i32 %count.0, 0
  %word28 = getelementptr inbounds nuw i8, ptr %add.ptr19, i64 4
  br i1 %cmp24, label %if.then25, label %if.else34

if.then25:                                        ; preds = %if.else
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %word28)
  %7 = load i32, ptr %add.ptr19, align 4, !tbaa !9
  br label %for.inc46

if.else34:                                        ; preds = %if.else
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %word28)
  %8 = load i32, ptr %add.ptr19, align 4, !tbaa !9
  %add43 = add i32 %count.0, 1
  %add44 = add i32 %add43, %8
  br label %for.inc46

for.inc46:                                        ; preds = %if.then, %if.else34, %if.then25
  %count.1 = phi i32 [ 0, %if.then ], [ %7, %if.then25 ], [ %add44, %if.else34 ]
  %i.2 = phi i32 [ %dec, %if.then ], [ %i.1, %if.then25 ], [ %i.1, %if.else34 ]
  %inc47 = add nsw i32 %i.2, 1
  %.pre27 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !14

for.end48:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"_ZTS5words", !6, i64 0, !7, i64 4}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
