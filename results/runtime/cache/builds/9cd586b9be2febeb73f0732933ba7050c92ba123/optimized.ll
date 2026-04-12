; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuqrb395n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [257 x i8], align 16
  %sub = alloca [257 x i8], align 16
  %rep = alloca [257 x i8], align 16
  %temp = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef align 16 %s) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %s, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %s, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef align 16 %sub) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %sub, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %sub, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef align 16 %rep) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %rep, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %rep, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 257, ptr noundef align 16 %temp) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %temp, i8 noundef 0, i64 noundef 257, i1 noundef false) #7
  store i8 48, ptr %temp, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 16 %s, ptr noundef align 16 %sub, ptr noundef align 16 %rep)
  %call4 = call i64 @strlen(ptr noundef %s) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef %sub) #8
  %conv7 = trunc i64 %call6 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %cmp = icmp slt i32 %i.0, %conv
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %i.1 = phi i32 [ %i.0, %for.body ], [ %inc13, %for.inc ]
  %cmp9 = icmp slt i32 %j.0, %conv7
  br i1 %cmp9, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond8
  %idxprom = sext i32 %i.1 to i64
  %arrayidx = getelementptr inbounds [257 x i8], ptr %s, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds [257 x i8], ptr %temp, i64 0, i64 %idxprom11
  store i8 %0, ptr %arrayidx12, align 1, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  %inc13 = add nsw i32 %i.1, 1
  br label %for.cond8, !llvm.loop !8

for.end:                                          ; preds = %for.cond8
  %call16 = call i32 @strcmp(ptr noundef readonly captures(none) %temp, ptr noundef %sub) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %for.end20, label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end20:                                        ; preds = %for.end, %for.cond
  %call23 = call i32 @strcmp(ptr noundef readonly captures(none) %temp, ptr noundef %sub) #8
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end37

if.then25:                                        ; preds = %for.end20
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %if.then25
  %j.1 = phi i32 [ 0, %if.then25 ], [ %inc35, %for.inc33 ]
  %i.2 = phi i32 [ %i.0, %if.then25 ], [ %inc34, %for.inc33 ]
  %add = add nsw i32 %i.0, %conv7
  %cmp27 = icmp slt i32 %i.2, %add
  br i1 %cmp27, label %for.inc33, label %if.end37

for.inc33:                                        ; preds = %for.cond26
  %idxprom29 = sext i32 %j.1 to i64
  %arrayidx30 = getelementptr inbounds [257 x i8], ptr %rep, i64 0, i64 %idxprom29
  %1 = load i8, ptr %arrayidx30, align 1, !tbaa !5
  %idxprom31 = sext i32 %i.2 to i64
  %arrayidx32 = getelementptr inbounds [257 x i8], ptr %s, i64 0, i64 %idxprom31
  store i8 %1, ptr %arrayidx32, align 1, !tbaa !5
  %inc34 = add nsw i32 %i.2, 1
  %inc35 = add nsw i32 %j.1, 1
  br label %for.cond26, !llvm.loop !12

if.end37:                                         ; preds = %for.cond26, %for.end20
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %s) #9
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %temp) #9
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %rep) #9
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %sub) #9
  call void @llvm.lifetime.end.p0(i64 noundef 257, ptr noundef %s) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

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
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nofree willreturn }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
