; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzrf_706h.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x [40 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not13 = icmp slt i32 %0, 0
  br i1 %cmp.not13, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [1000 x [40 x i8]], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %entry
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %a)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1419 = icmp sgt i32 %3, 1
  br i1 %cmp1419, label %for.body15.preheader, label %for.end32

for.body15.preheader:                             ; preds = %for.end
  %p.015 = getelementptr inbounds nuw i8, ptr %a, i64 40
  br label %for.body15

for.body15:                                       ; preds = %for.body15.preheader, %for.inc30
  %p.021 = phi ptr [ %p.0, %for.inc30 ], [ %p.015, %for.body15.preheader ]
  %sum.020 = phi i64 [ %sum.1, %for.inc30 ], [ %call4, %for.body15.preheader ]
  %call16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.021) #7
  %sext = shl i64 %sum.020, 32
  %conv17 = ashr exact i64 %sext, 32
  %add18 = add nsw i64 %conv17, -80
  %4 = add i64 %add18, %call16
  %cmp20 = icmp ult i64 %4, -81
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %p.021)
  %call22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.021) #7
  br label %for.inc30

if.end:                                           ; preds = %for.body15
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %p.021)
  %call25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p.021) #7
  %add27 = add nsw i64 %conv17, 1
  %inc29 = add i64 %add27, %call25
  br label %for.inc30

for.inc30:                                        ; preds = %if.end, %if.then
  %sum.1 = phi i64 [ %call22, %if.then ], [ %inc29, %if.end ]
  %p.0 = getelementptr inbounds nuw i8, ptr %p.021, i64 40
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %mul = mul nsw i32 %5, 40
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  %cmp14 = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp14, label %for.body15, label %for.end32, !llvm.loop !12

for.end32:                                        ; preds = %for.inc30, %for.end
  %a.pn.lcssa = phi ptr [ %a, %for.end ], [ %p.021, %for.inc30 ]
  %add.ptr33 = getelementptr inbounds nuw i8, ptr %a.pn.lcssa, i64 80
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %add.ptr33)
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
