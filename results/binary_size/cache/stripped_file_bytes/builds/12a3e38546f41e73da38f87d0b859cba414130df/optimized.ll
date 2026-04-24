; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwsc_wcra.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@switch.table._Z3dayi = private unnamed_addr constant [11 x i32] [i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 4
@switch.table.main.2 = private unnamed_addr constant [11 x i16] [i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 335) i32 @_Z3dayi(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %switch.tableidx = add i32 %m, -2
  %0 = icmp ult i32 %switch.tableidx, 11
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %entry
  %1 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [11 x i32], ptr @switch.table._Z3dayi, i64 0, i64 %1
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry
  %d.0 = phi i32 [ 0, %entry ], [ %switch.load, %switch.lookup ]
  ret i32 %d.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec21 = add nsw i32 %0, -1
  store i32 %dec21, ptr %n, align 4, !tbaa !5
  %tobool.not22 = icmp eq i32 %0, 0
  br i1 %tobool.not22, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end14
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %switch.tableidx = add i32 %1, -2
  %2 = icmp ult i32 %switch.tableidx, 11
  br i1 %2, label %switch.lookup, label %_Z3dayi.exit

switch.lookup:                                    ; preds = %while.body
  %3 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.2, i64 0, i64 %3
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %_Z3dayi.exit

_Z3dayi.exit:                                     ; preds = %switch.lookup, %while.body
  %d.0.i = phi i16 [ 0, %while.body ], [ %switch.load, %switch.lookup ]
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %switch.tableidx24 = add i32 %4, -2
  %5 = icmp ult i32 %switch.tableidx24, 11
  br i1 %5, label %switch.lookup23, label %_Z3dayi.exit17

switch.lookup23:                                  ; preds = %_Z3dayi.exit
  %6 = zext nneg i32 %switch.tableidx24 to i64
  %switch.gep25 = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.2, i64 0, i64 %6
  %switch.load26 = load i16, ptr %switch.gep25, align 2
  br label %_Z3dayi.exit17

_Z3dayi.exit17:                                   ; preds = %switch.lookup23, %_Z3dayi.exit
  %d.0.i6 = phi i16 [ 0, %_Z3dayi.exit ], [ %switch.load26, %switch.lookup23 ]
  %7 = load i32, ptr %y, align 4, !tbaa !5
  %8 = and i32 %7, 3
  %cmp = icmp eq i32 %8, 0
  %rem4 = srem i32 %7, 100
  %cmp5.not = icmp ne i32 %rem4, 0
  %or.cond.not20 = and i1 %cmp, %cmp5.not
  %rem6 = srem i32 %7, 400
  %cmp7 = icmp eq i32 %rem6, 0
  %or.cond19 = or i1 %cmp7, %or.cond.not20
  br i1 %or.cond19, label %if.then, label %if.end14

if.then:                                          ; preds = %_Z3dayi.exit17
  %cmp8 = icmp sgt i32 %1, 2
  %inc = zext i1 %cmp8 to i16
  %spec.select = add nuw nsw i16 %d.0.i, %inc
  %cmp10 = icmp sgt i32 %4, 2
  %inc12 = zext i1 %cmp10 to i16
  %spec.select4 = add nuw nsw i16 %d.0.i6, %inc12
  br label %if.end14

if.end14:                                         ; preds = %_Z3dayi.exit17, %if.then
  %d1.0 = phi i16 [ %spec.select, %if.then ], [ %d.0.i, %_Z3dayi.exit17 ]
  %d2.0 = phi i16 [ %spec.select4, %if.then ], [ %d.0.i6, %_Z3dayi.exit17 ]
  %sub = sub nsw i16 %d1.0, %d2.0
  %rem1518 = srem i16 %sub, 7
  %cmp16 = icmp eq i16 %rem1518, 0
  %str.1.str = select i1 %cmp16, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %if.end14, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
