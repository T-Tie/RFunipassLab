; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0wd3iyfs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %a, ptr noundef align 16 %b, ptr noundef %c)
  %call4 = call i64 @strlen(ptr noundef %b) #6
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef %a) #6
  %conv7 = trunc i64 %call6 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc27, %for.inc26 ]
  %cmp = icmp slt i32 %i.0, %conv7
  br i1 %cmp, label %for.body, label %if.else

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %conv8 = sext i8 %0 to i32
  %1 = load i8, ptr %b, align 16, !tbaa !5
  %conv10 = sext i8 %1 to i32
  %cmp11 = icmp eq i32 %conv8, %conv10
  br i1 %cmp11, label %if.then, label %for.inc26

if.then:                                          ; preds = %for.body
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %if.then
  %j.0 = phi i32 [ %i.0, %if.then ], [ %inc, %for.inc ]
  %k.2 = phi i32 [ 1, %if.then ], [ %k.3, %for.inc ]
  %add = add nsw i32 %i.0, %conv
  %cmp13 = icmp slt i32 %j.0, %add
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %sub = sub nsw i32 %j.0, %i.0
  %idxprom15 = sext i32 %sub to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom15
  %2 = load i8, ptr %arrayidx16, align 1, !tbaa !5, !invariant.load !8
  %conv17 = sext i8 %2 to i32
  %idxprom18 = sext i32 %j.0 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom18
  %3 = load i8, ptr %arrayidx19, align 1, !tbaa !5, !invariant.load !8
  %conv20 = sext i8 %3 to i32
  %cmp21 = icmp ne i32 %conv17, %conv20
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %for.body14
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.then22
  %k.3 = phi i32 [ 0, %if.then22 ], [ %k.2, %for.body14 ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond12, !llvm.loop !9

for.end:                                          ; preds = %for.cond12
  %tobool = icmp ne i32 %k.2, 0
  br i1 %tobool, label %if.then30, label %for.inc26

for.inc26:                                        ; preds = %for.body, %for.end
  %inc27 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

if.then30:                                        ; preds = %for.end
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc38, %if.then30
  %i.1 = phi i32 [ 0, %if.then30 ], [ %inc39, %for.inc38 ]
  %cmp32 = icmp slt i32 %i.1, %i.0
  br i1 %cmp32, label %for.inc38, label %for.end40

for.inc38:                                        ; preds = %for.cond31
  %idxprom34 = sext i32 %i.1 to i64
  %arrayidx35 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom34
  %4 = load i8, ptr %arrayidx35, align 1, !tbaa !5, !invariant.load !8
  %conv36 = sext i8 %4 to i32
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv36) #7
  %inc39 = add nsw i32 %i.1, 1
  br label %for.cond31, !llvm.loop !13

for.end40:                                        ; preds = %for.cond31
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %c) #7
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc51, %for.end40
  %i.2 = phi i32 [ %add, %for.end40 ], [ %inc52, %for.inc51 ]
  %cmp45 = icmp slt i32 %i.2, %conv7
  br i1 %cmp45, label %for.inc51, label %if.end56

for.inc51:                                        ; preds = %for.cond44
  %idxprom47 = sext i32 %i.2 to i64
  %arrayidx48 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom47
  %5 = load i8, ptr %arrayidx48, align 1, !tbaa !5, !invariant.load !8
  %conv49 = sext i8 %5 to i32
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv49) #7
  %inc52 = add nsw i32 %i.2, 1
  br label %for.cond44, !llvm.loop !14

if.else:                                          ; preds = %for.cond
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %a) #7
  br label %if.end56

if.end56:                                         ; preds = %for.cond44, %if.else
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %a) #7
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
