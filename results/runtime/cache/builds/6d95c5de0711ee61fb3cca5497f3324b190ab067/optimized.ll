; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv_bojfb7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [100 x [20 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(2000) %a, i8 noundef 0, i64 noundef 2000, i1 noundef false) #6
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x [20 x i8]], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = call i32 @getc(ptr noundef %0)
  %cmp = icmp eq i32 %call.i, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp, label %for.end, label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %arrayidx)
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc12 ], [ %indvars.iv, %for.end ]
  %cmp7 = icmp sgt i64 %indvars.iv7, 0
  br i1 %cmp7, label %for.inc12, label %for.end13

for.inc12:                                        ; preds = %for.cond6
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  %arrayidx9 = getelementptr inbounds nuw [100 x [20 x i8]], ptr %a, i64 0, i64 %indvars.iv.next8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %arrayidx9)
  br label %for.cond6, !llvm.loop !13

for.end13:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #4 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call = tail call i32 @getc(ptr noundef %0)
  ret i32 %call
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
