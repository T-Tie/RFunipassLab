; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl90cwyka.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %s = alloca [110 x [110 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 12100, ptr noundef nonnull %s) #4
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

for.cond:                                         ; preds = %for.inc, %while.end
  %i.0 = phi i32 [ %sub4, %while.end ], [ %dec, %for.inc ]
  %cmp5 = icmp sgt i32 %i.0, -1
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom6 = zext nneg i32 %i.0 to i64
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i8]], ptr %s, i64 0, i64 %idxprom6
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %arrayidx7)
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %putchar = call i32 @putchar(i32 noundef 10) #5
  %call11 = call i32 @getchar()
  %call12 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 noundef 12100, ptr noundef nonnull %s) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
