; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3dqaugn1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %word = alloca [500 x [40 x i8]], align 16
  %para = alloca [50 x [82 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef %word) #7
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %word, i8 noundef 0, i64 noundef 20000, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4100, ptr noundef %para) #7
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %para, i8 noundef 0, i64 noundef 4100, i1 noundef false) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x [40 x i8]], ptr %word, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call7 = call ptr @strcat(ptr noundef %para, ptr noundef %word) #9
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc40, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc41, %for.inc40 ]
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %for.inc40 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %i.1, %1
  br i1 %cmp9, label %for.body10, label %for.end42

for.body10:                                       ; preds = %for.cond8
  %idxprom11 = sext i32 %k.0 to i64
  %arrayidx12 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom11
  %call14 = call i64 @strlen(ptr noundef %arrayidx12) #10
  %idxprom15 = sext i32 %i.1 to i64
  %arrayidx16 = getelementptr inbounds [500 x [40 x i8]], ptr %word, i64 0, i64 %idxprom15
  %call18 = call i64 @strlen(ptr noundef %arrayidx16) #10
  %add = add i64 %call14, %call18
  %add19 = add i64 %add, 1
  %cmp20 = icmp ule i64 %add19, 80
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body10
  %call24 = call ptr @strcat(ptr noundef %arrayidx12, ptr noundef @.str.2) #9
  br label %for.inc40

if.else:                                          ; preds = %for.body10
  %inc32 = add nsw i32 %k.0, 1
  br label %for.inc40

for.inc40:                                        ; preds = %if.then, %if.else
  %k.1 = phi i32 [ %k.0, %if.then ], [ %inc32, %if.else ]
  %idxprom33 = sext i32 %k.1 to i64
  %arrayidx34 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom33
  %call39 = call ptr @strcat(ptr noundef %arrayidx34, ptr noundef %arrayidx16) #9
  %inc41 = add nsw i32 %i.1, 1
  br label %for.cond8, !llvm.loop !12

for.end42:                                        ; preds = %for.cond8
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.end42
  %i.2 = phi i32 [ 0, %for.end42 ], [ %inc51, %for.inc50 ]
  %cmp44 = icmp sle i32 %i.2, %k.0
  br i1 %cmp44, label %for.inc50, label %for.end52

for.inc50:                                        ; preds = %for.cond43
  %idxprom46 = sext i32 %i.2 to i64
  %arrayidx47 = getelementptr inbounds [50 x [82 x i8]], ptr %para, i64 0, i64 %idxprom46
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arrayidx47)
  %inc51 = add nsw i32 %i.2, 1
  br label %for.cond43, !llvm.loop !13

for.end52:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 noundef 4100, ptr noundef %para) #9
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef %word) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nofree willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
