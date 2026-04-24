; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnlbbsxmi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.d = private unnamed_addr constant [13 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31, i32 0], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.6 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %1 = load i32, ptr %b, align 16
  %2 = load i32, ptr %c, align 16
  %cmp13 = icmp sgt i32 %1, %2
  %3 = sext i32 %1 to i64
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %wide.trip.count = sext i32 %smax to i64
  %wide.trip.count17 = sext i32 %smax to i64
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b, ptr noundef nonnull %c)
  br label %for.cond

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end80
  %4 = phi i32 [ %0, %for.cond6.preheader ], [ %.pre, %if.end80 ]
  %cmp7 = icmp sgt i32 %4, 0
  br i1 %cmp7, label %for.body8, label %for.end83

for.body8:                                        ; preds = %for.cond6
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  store i32 %2, ptr %b, align 16, !tbaa !5
  store i32 %1, ptr %c, align 16, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %5 = load i32, ptr %a, align 16, !tbaa !5
  %rem = srem i32 %5, 400
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = and i32 %5, 3
  %cmp28 = icmp eq i32 %6, 0
  %rem31 = srem i32 %5, 100
  %cmp32 = icmp ne i32 %rem31, 0
  %or.cond = and i1 %cmp28, %cmp32
  br i1 %or.cond, label %if.then33, label %for.cond61

if.then33:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.cond38

for.cond38:                                       ; preds = %for.body42, %if.then33
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.body42 ], [ %3, %if.then33 ]
  %exitcond18.not = icmp eq i64 %indvars.iv12, %wide.trip.count17
  br i1 %exitcond18.not, label %if.end80, label %for.body42

for.body42:                                       ; preds = %for.cond38
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  br label %for.cond38

for.cond61:                                       ; preds = %lor.lhs.false, %for.body65
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body65 ], [ %3, %lor.lhs.false ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end80, label %for.body65

for.body65:                                       ; preds = %for.cond61
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond61

if.end80:                                         ; preds = %for.cond61, %for.cond38
  call fastcc void @outlined_ir_func_1(i32 0)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6

for.end83:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress nofree norecurse nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_1(i32 %0) unnamed_addr #4 {
for.end48_to_outline:
  %rem52 = srem i32 %0, 7
  %cmp53.not = icmp eq i32 %rem52, 0
  %str.str.6 = select i1 %cmp53.not, ptr @str, ptr @str.6
  %puts1 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.str.6)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { minsize mustprogress nofree norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
