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
  %conv9 = trunc i64 %call8 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 0)
  %smax41 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count42 = zext nneg i32 %smax41 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc32 ], [ 0, %entry ]
  %exitcond43.not = icmp eq i64 %indvars.iv38, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end34, label %for.cond10

for.cond10:                                       ; preds = %for.cond, %for.body12
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12 ], [ 0, %for.cond ]
  %d.0 = phi i32 [ %spec.select, %for.body12 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %1 = add nuw nsw i64 %indvars.iv, %indvars.iv38
  %arrayidx15 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx15, align 1, !tbaa !5
  %cmp17.not = icmp eq i8 %0, %2
  %spec.select = select i1 %cmp17.not, i32 %d.0, i32 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond10, !llvm.loop !8

for.end:                                          ; preds = %for.cond10
  %cmp18.not = icmp eq i32 %d.0, 0
  br i1 %cmp18.not, label %for.inc32, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.end
  %3 = and i64 %indvars.iv38, 4294967295
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv44 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next45, %for.body22 ]
  %exitcond49.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond49.not, label %for.end34, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds nuw [256 x i8], ptr %c, i64 0, i64 %indvars.iv44
  %4 = load i8, ptr %arrayidx24, align 1, !tbaa !5
  %5 = add nuw nsw i64 %indvars.iv44, %3
  %arrayidx27 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %5
  store i8 %4, ptr %arrayidx27, align 1, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond20, !llvm.loop !11

for.inc32:                                        ; preds = %for.end
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond, !llvm.loop !12

for.end34:                                        ; preds = %for.cond, %for.cond20
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %a)
  %6 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i = call i32 @getc(ptr noundef %6)
  %7 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i12 = call i32 @getc(ptr noundef %7)
  %8 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i13 = call i32 @getc(ptr noundef %8)
  %9 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i14 = call i32 @getc(ptr noundef %9)
  %10 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i15 = call i32 @getc(ptr noundef %10)
  %11 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i16 = call i32 @getc(ptr noundef %11)
  %12 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i17 = call i32 @getc(ptr noundef %12)
  %13 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i18 = call i32 @getc(ptr noundef %13)
  %14 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i19 = call i32 @getc(ptr noundef %14)
  %15 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i20 = call i32 @getc(ptr noundef %15)
  %16 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i21 = call i32 @getc(ptr noundef %16)
  %17 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i22 = call i32 @getc(ptr noundef %17)
  %18 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i23 = call i32 @getc(ptr noundef %18)
  %19 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i24 = call i32 @getc(ptr noundef %19)
  %20 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i25 = call i32 @getc(ptr noundef %20)
  %21 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i26 = call i32 @getc(ptr noundef %21)
  %22 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i27 = call i32 @getc(ptr noundef %22)
  %23 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i28 = call i32 @getc(ptr noundef %23)
  %24 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i29 = call i32 @getc(ptr noundef %24)
  %25 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i30 = call i32 @getc(ptr noundef %25)
  %26 = load ptr, ptr @stdin, align 8, !tbaa !13
  %call.i31 = call i32 @getc(ptr noundef %26)
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
