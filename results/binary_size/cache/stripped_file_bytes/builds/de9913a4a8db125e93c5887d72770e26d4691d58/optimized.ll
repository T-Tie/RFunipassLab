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
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3dayi(i32 noundef %1)
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z3dayi(i32 noundef %2)
  %3 = load i32, ptr %y, align 4, !tbaa !5
  %4 = and i32 %3, 3
  %cmp = icmp eq i32 %4, 0
  %rem4 = srem i32 %3, 100
  %cmp5.not = icmp ne i32 %rem4, 0
  %or.cond.not7 = and i1 %cmp, %cmp5.not
  %rem6 = srem i32 %3, 400
  %cmp7 = icmp eq i32 %rem6, 0
  %or.cond6 = or i1 %cmp7, %or.cond.not7
  br i1 %or.cond6, label %if.then, label %if.end14

if.then:                                          ; preds = %while.body
  %cmp8 = icmp sgt i32 %1, 2
  %inc = zext i1 %cmp8 to i32
  %spec.select = add nuw nsw i32 %call2, %inc
  %cmp10 = icmp sgt i32 %2, 2
  %inc12 = zext i1 %cmp10 to i32
  %spec.select4 = add nuw nsw i32 %call3, %inc12
  br label %if.end14

if.end14:                                         ; preds = %while.body, %if.then
  %d1.0 = phi i32 [ %spec.select, %if.then ], [ %call2, %while.body ]
  %d2.0 = phi i32 [ %spec.select4, %if.then ], [ %call3, %while.body ]
  %sub = sub nsw i32 %d1.0, %d2.0
  %rem15.lhs.trunc = trunc nsw i32 %sub to i16
  %rem155 = srem i16 %rem15.lhs.trunc, 7
  %cmp16 = icmp eq i16 %rem155, 0
  %str.1.str = select i1 %cmp16, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
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
