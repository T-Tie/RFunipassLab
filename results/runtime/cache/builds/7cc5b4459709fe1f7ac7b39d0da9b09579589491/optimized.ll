; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj2hxcomj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z5rightPcii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %l, i32 noundef %t) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %l, %entry ], [ %dec, %for.inc ]
  %cmp = icmp sge i32 %i.0, %t
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %sub = sub nsw i32 %i.0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %a, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %a, i64 %idxprom1
  store i8 %0, ptr %arrayidx2, align 1, !tbaa !5
  %dec = add nsw i32 %i.0, -1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %add = add nsw i32 %l, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %a, i64 %idxprom3
  store i8 0, ptr %arrayidx4, align 1, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4leftPcii(ptr nofree noundef nonnull captures(none) %a, i32 noundef %l, i32 noundef %t) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ %t, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sle i32 %i.0, %l
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %sub = sub nsw i32 %i.0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, ptr %a, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %sub1 = sub nsw i32 %i.0, 2
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %a, i64 %idxprom2
  store i8 %0, ptr %arrayidx3, align 1, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %sub4 = sub nsw i32 %l, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %a, i64 %idxprom5
  store i8 0, ptr %arrayidx6, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 captures(none) dereferenceable(256) %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef nonnull align 16 dereferenceable(256) %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %c)
  %call6 = call i64 @strlen(ptr noundef nonnull align 16 dereferenceable(256) %a) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef %b) #7
  %conv9 = trunc i64 %call8 to i32
  %call11 = call i64 @strlen(ptr noundef %c) #7
  %conv12 = trunc i64 %call11 to i32
  %cmp = icmp sgt i32 %conv9, %conv12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %conv9, %conv12
  br label %if.end17

if.else:                                          ; preds = %entry
  %cmp13 = icmp eq i32 %conv9, %conv12
  br i1 %cmp13, label %if.end17, label %if.else15

if.else15:                                        ; preds = %if.else
  %sub16 = sub nsw i32 %conv12, %conv9
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.else, %if.then
  %phiofops3 = phi i1 [ false, %if.else ], [ true, %if.else15 ], [ false, %if.then ]
  %phiofops = phi i1 [ true, %if.then ], [ false, %if.else ], [ false, %if.else15 ]
  %r.0 = phi i32 [ %sub, %if.then ], [ %sub16, %if.else15 ], [ 0, %if.else ]
  store i32 1, ptr %i, align 4, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %if.end72, %if.end17
  %0 = load i32, ptr %i, align 4, !tbaa !12
  %cmp18 = icmp sle i32 %0, %conv
  br i1 %cmp18, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  %sub19 = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub19 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv20 = sext i8 %1 to i32
  %2 = load i8, ptr %b, align 16, !tbaa !5
  %conv22 = sext i8 %2 to i32
  %sub23 = sub nsw i32 %conv20, %conv22
  %cmp24 = icmp eq i32 %sub23, 0
  br i1 %cmp24, label %if.then25, label %if.end72

if.then25:                                        ; preds = %for.body
  store i32 1, ptr %j, align 4, !tbaa !12
  br label %for.cond26

for.cond26:                                       ; preds = %if.end40, %if.then25
  %d.0 = phi i32 [ 0, %if.then25 ], [ %d.1, %if.end40 ]
  %3 = load i32, ptr %j, align 4, !tbaa !12
  %sub27 = sub nsw i32 %conv9, 1
  %cmp28 = icmp sle i32 %3, %sub27
  br i1 %cmp28, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %add = add i32 %3, -1
  %sub30 = add i32 %add, %0
  %idxprom31 = sext i32 %sub30 to i64
  %arrayidx32 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom31
  %4 = load i8, ptr %arrayidx32, align 1, !tbaa !5, !invariant.load !14
  %conv33 = sext i8 %4 to i32
  %idxprom34 = sext i32 %3 to i64
  %arrayidx35 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom34
  %5 = load i8, ptr %arrayidx35, align 1, !tbaa !5
  %conv36 = sext i8 %5 to i32
  %sub37 = sub nsw i32 %conv33, %conv36
  %cmp38 = icmp ne i32 %sub37, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %for.body29
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %for.body29
  %d.1 = phi i32 [ 1, %if.then39 ], [ %d.0, %for.body29 ]
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  br label %for.cond26

for.end:                                          ; preds = %for.cond26
  %cmp41 = icmp eq i32 %d.0, 0
  br i1 %cmp41, label %if.then42, label %if.end72

if.then42:                                        ; preds = %for.end
  store i32 1, ptr %j, align 4, !tbaa !12
  br label %for.cond43

for.cond43:                                       ; preds = %if.end54, %if.then42
  %6 = load i32, ptr %j, align 4, !tbaa !12
  %cmp44 = icmp sle i32 %6, %r.0
  br i1 %cmp44, label %for.body45, label %for.end57

for.body45:                                       ; preds = %for.cond43
  br i1 %phiofops, label %if.then47, label %if.end50

if.then47:                                        ; preds = %for.body45
  %add49 = add nsw i32 %0, %conv9
  call void @_Z4leftPcii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(256) %a, i32 noundef %conv, i32 noundef %add49) #8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %for.body45
  br i1 %phiofops3, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @_Z5rightPcii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(256) %a, i32 noundef %conv, i32 noundef %0) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  br label %for.cond43

for.end57:                                        ; preds = %for.cond43
  store i32 1, ptr %j, align 4, !tbaa !12
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.end57
  %7 = load i32, ptr %j, align 4, !tbaa !12
  %cmp59 = icmp sle i32 %7, %conv12
  br i1 %cmp59, label %for.body60, label %for.end75

for.body60:                                       ; preds = %for.cond58
  %sub61 = sub nsw i32 %7, 1
  %idxprom62 = sext i32 %sub61 to i64
  %arrayidx63 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 %idxprom62
  %8 = load i8, ptr %arrayidx63, align 1, !tbaa !5
  %add64 = add i32 %7, -2
  %sub65 = add i32 %add64, %0
  %idxprom66 = sext i32 %sub65 to i64
  %arrayidx67 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom66
  store i8 %8, ptr %arrayidx67, align 1, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j) #8
  br label %for.cond58

if.end72:                                         ; preds = %for.end, %for.body
  call fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i) #8
  br label %for.cond

for.end75:                                        ; preds = %for.cond58, %for.cond
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef nonnull align 16 dereferenceable(256) %a)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef captures(none) %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef captures(none) %a) #8
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @outlined_ir_func_0(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #5 {
for.cond26.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !12
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !6, i64 0}
!14 = !{}
