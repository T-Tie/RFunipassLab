; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjm7fnr95.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %b = alloca [256 x i8], align 16
  %a = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %cmp37 = icmp sgt i32 %conv, 0
  %conv9 = trunc i64 %call8 to i32
  %cmp1134 = icmp sgt i32 %conv9, 0
  %or.cond = select i1 %cmp37, i1 %cmp1134, i1 false
  br i1 %or.cond, label %for.cond10.preheader.us.preheader, label %for.end34

for.cond10.preheader.us.preheader:                ; preds = %entry
  %wide.trip.count48 = and i64 %call6, 2147483647
  %wide.trip.count = and i64 %call8, 2147483647
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %n.vec = and i64 %call8, 2147483644
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %for.cond10.preheader.us

for.cond10.preheader.us:                          ; preds = %for.cond10.preheader.us.preheader, %for.inc32.us
  %indvars.iv45 = phi i64 [ 0, %for.cond10.preheader.us.preheader ], [ %indvars.iv.next46, %for.inc32.us ]
  br i1 %min.iters.check, label %for.body12.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond10.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond10.preheader.us ]
  %vec.phi = phi <4 x i1> [ %4, %vector.body ], [ zeroinitializer, %for.cond10.preheader.us ]
  %0 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %0, align 4, !tbaa !5
  %1 = add nuw nsw i64 %index, %indvars.iv45
  %2 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %1
  %wide.load57 = load <4 x i8>, ptr %2, align 1, !tbaa !5
  %3 = icmp ne <4 x i8> %wide.load, %wide.load57
  %.fr = freeze <4 x i1> %3
  %4 = or <4 x i1> %vec.phi, %.fr
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %6 = bitcast <4 x i1> %4 to i4
  %.not = icmp eq i4 %6, 0
  %rdx.select = zext i1 %.not to i32
  br i1 %cmp.n, label %for.cond10.for.end_crit_edge.us, label %for.body12.us.preheader

for.body12.us.preheader:                          ; preds = %for.cond10.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond10.preheader.us ], [ %n.vec, %middle.block ]
  %d.036.us.ph = phi i32 [ 1, %for.cond10.preheader.us ], [ %rdx.select, %middle.block ]
  br label %for.body12.us

for.inc32.us:                                     ; preds = %for.cond10.for.end_crit_edge.us
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %for.end34, label %for.cond10.preheader.us, !llvm.loop !13

for.body12.us:                                    ; preds = %for.body12.us.preheader, %for.body12.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12.us ], [ %indvars.iv.ph, %for.body12.us.preheader ]
  %d.036.us = phi i32 [ %spec.select.us, %for.body12.us ], [ %d.036.us.ph, %for.body12.us.preheader ]
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %8 = add nuw nsw i64 %indvars.iv, %indvars.iv45
  %arrayidx15.us = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx15.us, align 1, !tbaa !5
  %cmp17.not.us = icmp eq i8 %7, %9
  %spec.select.us = select i1 %cmp17.not.us, i32 %d.036.us, i32 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.for.end_crit_edge.us, label %for.body12.us, !llvm.loop !14

for.cond10.for.end_crit_edge.us:                  ; preds = %for.body12.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select.us, %for.body12.us ]
  %cmp18.not.us = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %cmp18.not.us, label %for.inc32.us, label %for.body22.preheader

for.body22.preheader:                             ; preds = %for.cond10.for.end_crit_edge.us
  %10 = and i64 %indvars.iv45, 4294967295
  %scevgep = getelementptr i8, ptr %a, i64 %10
  %11 = and i64 %call8, 2147483647
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr nonnull align 16 %c, i64 %11, i1 false), !tbaa !5
  br label %for.end34

for.end34:                                        ; preds = %for.inc32.us, %for.body22.preheader, %entry
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %a)
  %12 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i = call i32 @getc(ptr noundef %12)
  %13 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i12 = call i32 @getc(ptr noundef %13)
  %14 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i13 = call i32 @getc(ptr noundef %14)
  %15 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i14 = call i32 @getc(ptr noundef %15)
  %16 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i15 = call i32 @getc(ptr noundef %16)
  %17 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i16 = call i32 @getc(ptr noundef %17)
  %18 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i17 = call i32 @getc(ptr noundef %18)
  %19 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i18 = call i32 @getc(ptr noundef %19)
  %20 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i19 = call i32 @getc(ptr noundef %20)
  %21 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i20 = call i32 @getc(ptr noundef %21)
  %22 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i21 = call i32 @getc(ptr noundef %22)
  %23 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i22 = call i32 @getc(ptr noundef %23)
  %24 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i23 = call i32 @getc(ptr noundef %24)
  %25 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i24 = call i32 @getc(ptr noundef %25)
  %26 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i25 = call i32 @getc(ptr noundef %26)
  %27 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i26 = call i32 @getc(ptr noundef %27)
  %28 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i27 = call i32 @getc(ptr noundef %28)
  %29 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i28 = call i32 @getc(ptr noundef %29)
  %30 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i29 = call i32 @getc(ptr noundef %30)
  %31 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i30 = call i32 @getc(ptr noundef %31)
  %32 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i31 = call i32 @getc(ptr noundef %32)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #6
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

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11, !12}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
