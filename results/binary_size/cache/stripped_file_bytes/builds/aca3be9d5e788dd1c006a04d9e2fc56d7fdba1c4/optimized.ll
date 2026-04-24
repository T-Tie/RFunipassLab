; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwbm423v4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %p = alloca [300 x i8], align 16
  %j = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %p) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull captures(none) dereferenceable(1) %j) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %p)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %a.0 = phi i32 [ %a.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %p, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp4 = icmp sgt i8 %0, 64
  br i1 %cmp4, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cmp8 = icmp samesign ult i8 %0, 91
  %1 = add nsw i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  %or.cond20 = select i1 %cmp8, i1 true, i1 %or.cond
  %inc = zext i1 %or.cond20 to i32
  %spec.select = add nsw i32 %a.0, %inc
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %a.1 = phi i32 [ %a.0, %for.body ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %cmp19 = icmp eq i32 %a.0, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %for.end
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end80

if.else:                                          ; preds = %for.end
  store i8 65, ptr %j, align 1, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond26.preheader, %if.else
  %2 = phi i8 [ %.pre, %for.cond26.preheader ], [ 65, %if.else ]
  %cmp24 = icmp slt i8 %2, 91
  br i1 %cmp24, label %for.cond26.preheader, label %for.end50

for.cond26.preheader:                             ; preds = %for.cond22
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %j)
  %.pre = load i8, ptr %j, align 1, !tbaa !5
  br label %for.cond22

for.end50:                                        ; preds = %for.cond22
  store i8 97, ptr %j, align 1, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.cond55.preheader, %for.end50
  %3 = phi i8 [ %.pre29, %for.cond55.preheader ], [ 97, %for.end50 ]
  %cmp53 = icmp slt i8 %3, 123
  br i1 %cmp53, label %for.cond55.preheader, label %if.end80

for.cond55.preheader:                             ; preds = %for.cond51
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %j)
  %.pre29 = load i8, ptr %j, align 1, !tbaa !5
  br label %for.cond51

if.end80:                                         ; preds = %for.cond51, %if.then20
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull captures(none) dereferenceable(1) %j) #5
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %p) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull captures(none) dereferenceable(1) %0) unnamed_addr #3 {
for.cond22.exitStub:
  %1 = load i8, ptr %0, align 1, !tbaa !5
  %conv45 = sext i8 %1 to i32
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv45, i32 noundef undef)
  %inc49 = add i8 %1, 1
  store i8 %inc49, ptr %0, align 1, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
