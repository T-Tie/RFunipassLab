; ModuleID = '<stdin>'
source_filename = "/tmp/tmpckf559wh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [19 x i8] c" %d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end66, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end66 ]
  %ans.0 = phi i32 [ undef, %entry ], [ %ans.1, %if.end66 ]
  %exitcond.not = icmp eq i32 %i.0, 1000
  br i1 %exitcond.not, label %cleanup, label %for.body

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c, ptr noundef nonnull %d, ptr noundef nonnull %e, ptr noundef nonnull %f)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, 0
  %1 = load i32, ptr %b, align 4
  %cmp2 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp1, i1 %cmp2, i1 false
  %2 = load i32, ptr %c, align 4
  %cmp4 = icmp eq i32 %2, 0
  %or.cond1 = select i1 %or.cond, i1 %cmp4, i1 false
  %3 = load i32, ptr %d, align 4
  %cmp6 = icmp eq i32 %3, 0
  %or.cond2 = select i1 %or.cond1, i1 %cmp6, i1 false
  %4 = load i32, ptr %e, align 4
  %cmp8 = icmp eq i32 %4, 0
  %or.cond3 = select i1 %or.cond2, i1 %cmp8, i1 false
  %5 = load i32, ptr %f, align 4
  %cmp10 = icmp eq i32 %5, 0
  %or.cond4 = select i1 %or.cond3, i1 %cmp10, i1 false
  br i1 %or.cond4, label %cleanup, label %if.else

if.else:                                          ; preds = %for.body
  %cmp11.not = icmp sgt i32 %2, %5
  %cmp13.not = icmp sgt i32 %1, %4
  %or.cond21 = select i1 %cmp11.not, i1 true, i1 %cmp13.not
  br i1 %or.cond21, label %if.else21, label %if.then14

if.then14:                                        ; preds = %if.else
  %reass.sub = sub i32 %3, %0
  %6 = mul i32 %reass.sub, 3600
  %mul = add i32 %6, 43200
  %sub15 = sub nsw i32 %4, %1
  %mul16 = mul nuw nsw i32 %sub15, 60
  %add17 = sub i32 %5, %2
  %sub18 = add i32 %add17, %mul
  %add20 = add i32 %sub18, %mul16
  br label %if.end66

if.else21:                                        ; preds = %if.else
  %cmp22.not = icmp slt i32 %2, %5
  %brmerge = select i1 %cmp22.not, i1 true, i1 %cmp13.not
  br i1 %brmerge, label %if.else35, label %if.then25

if.then25:                                        ; preds = %if.else21
  %add26 = add nsw i32 %3, 12
  %sub27 = sub i32 %add26, %0
  %mul28 = mul nsw i32 %sub27, 3600
  %sub29 = sub nsw i32 %4, %1
  %mul30 = mul nuw nsw i32 %sub29, 60
  %add31 = sub i32 %5, %2
  %sub32 = add i32 %add31, %mul30
  %add34 = add i32 %sub32, %mul28
  br label %if.end66

if.else35:                                        ; preds = %if.else21
  %cmp38.not = icmp slt i32 %1, %4
  %or.cond22 = select i1 %cmp11.not, i1 true, i1 %cmp38.not
  br i1 %or.cond22, label %if.else49, label %if.then39

if.then39:                                        ; preds = %if.else35
  %add40 = add nsw i32 %3, 12
  %sub41 = sub i32 %add40, %0
  %mul42 = mul nsw i32 %sub41, 3600
  %sub43 = sub nsw i32 %4, %1
  %mul44 = mul nsw i32 %sub43, 60
  %add45 = sub i32 %5, %2
  %sub46 = add i32 %add45, %mul44
  %add48 = add i32 %sub46, %mul42
  br label %if.end66

if.else49:                                        ; preds = %if.else35
  %or.cond23 = select i1 %cmp22.not, i1 true, i1 %cmp38.not
  br i1 %or.cond23, label %if.end66, label %if.then53

if.then53:                                        ; preds = %if.else49
  %add54 = add nsw i32 %3, 12
  %sub55 = sub i32 %add54, %0
  %mul56 = mul nsw i32 %sub55, 3600
  %sub57 = sub nsw i32 %4, %1
  %mul58 = mul nsw i32 %sub57, 60
  %add59 = sub i32 %5, %2
  %sub60 = add i32 %add59, %mul58
  %add62 = add i32 %sub60, %mul56
  br label %if.end66

if.end66:                                         ; preds = %if.then14, %if.then39, %if.then53, %if.else49, %if.then25
  %ans.1 = phi i32 [ %add20, %if.then14 ], [ %add34, %if.then25 ], [ %add48, %if.then39 ], [ %add62, %if.then53 ], [ %ans.0, %if.else49 ]
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %ans.1)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

cleanup:                                          ; preds = %for.cond, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
