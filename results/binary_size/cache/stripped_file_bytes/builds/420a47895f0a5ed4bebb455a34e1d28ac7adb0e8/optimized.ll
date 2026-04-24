; ModuleID = '/tmp/tmprtmy0paf.cpp'
source_filename = "/tmp/tmprtmy0paf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [100 x [100 x i8]], align 16
  %c = alloca i8, align 1
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 10000, ptr %str) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i8]], ptr %str, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [100 x i8], ptr %arrayidx, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %call1 = call i32 @getchar()
  %conv = trunc i32 %call1 to i8
  store i8 %conv, ptr %c, align 1, !tbaa !9
  %conv2 = sext i8 %conv to i32
  %cmp = icmp eq i32 %conv2, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %if.then
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %2, 0
  br i1 %cmp4, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond3
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [100 x [100 x i8]], ptr %str, i64 0, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [100 x i8], ptr %arrayidx6, i64 0, i64 0
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay7)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.end10:                                        ; preds = %for.cond3
  %arrayidx11 = getelementptr inbounds [100 x [100 x i8]], ptr %str, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [100 x i8], ptr %arrayidx11, i64 0, i64 0
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay12)
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 10000, ptr %str) #4
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !14
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS8_IO_FILE", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
