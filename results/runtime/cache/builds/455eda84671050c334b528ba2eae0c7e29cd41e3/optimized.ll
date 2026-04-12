; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl90cwyka.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [110 x [110 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 12100, ptr nonnull %s) #5
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [110 x [110 x i8]], ptr %s, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %cmp.not = icmp eq i32 %call, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp.not, label %while.end, label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %sub = shl i64 %indvars.iv, 32
  %sext = add i64 %sub, -4294967296
  %idxprom1 = ashr exact i64 %sext, 32
  %arrayidx2 = getelementptr inbounds [110 x [110 x i8]], ptr %s, i64 0, i64 %idxprom1
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %arrayidx2)
  %sub4 = add nsw i32 %0, -2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.end
  %i.0 = phi i32 [ %sub4, %while.end ], [ %dec, %for.body ]
  %cmp5 = icmp sgt i32 %i.0, -1
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom6 = zext nneg i32 %i.0 to i64
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i8]], ptr %s, i64 0, i64 %idxprom6
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %arrayidx7)
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %putchar = call i32 @putchar(i32 10)
  %1 = load ptr, ptr @stdin, align 8, !tbaa !9
  %call.i = call i32 @getc(ptr noundef %1)
  %2 = load ptr, ptr @stdin, align 8, !tbaa !9
  %call.i6 = call i32 @getc(ptr noundef %2)
  call void @llvm.lifetime.end.p0(i64 12100, ptr nonnull %s) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
