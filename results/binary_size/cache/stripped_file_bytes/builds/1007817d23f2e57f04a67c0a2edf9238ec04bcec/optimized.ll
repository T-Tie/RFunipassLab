; ModuleID = '/tmp/tmpjm7fnr95.cpp'
source_filename = "/tmp/tmpjm7fnr95.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca [256 x i8], align 16
  %a = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #5
  %arraydecay = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay1)
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call6 = call i64 @strlen(ptr noundef %arraydecay5) #6
  %conv = trunc i64 %call6 to i32
  store i32 %conv, ptr %m, align 4, !tbaa !5
  %arraydecay7 = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 0
  %call8 = call i64 @strlen(ptr noundef %arraydecay7) #6
  %conv9 = trunc i64 %call8 to i32
  store i32 %conv9, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %d, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %2, %3
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [256 x i8], ptr %b, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv13 = sext i8 %5 to i32
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %6, %7
  %idxprom14 = sext i32 %add to i64
  %arrayidx15 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom14
  %8 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %8 to i32
  %cmp17 = icmp ne i32 %conv13, %conv16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body12
  store i32 0, ptr %d, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !10

for.end:                                          ; preds = %for.cond10
  %10 = load i32, ptr %d, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %10, 1
  br i1 %cmp18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %for.end
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %if.then19
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %11, %12
  br i1 %cmp21, label %for.body22, label %for.end30

for.body22:                                       ; preds = %for.cond20
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [256 x i8], ptr %c, i64 0, i64 %idxprom23
  %14 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %add25 = add nsw i32 %15, %16
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 %idxprom26
  store i8 %14, ptr %arrayidx27, align 1, !tbaa !9
  br label %for.inc28

for.inc28:                                        ; preds = %for.body22
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %17, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end30:                                        ; preds = %for.cond20
  br label %for.end34

if.end31:                                         ; preds = %for.end
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %18, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end34:                                        ; preds = %for.end30, %for.cond
  %arraydecay35 = getelementptr inbounds [256 x i8], ptr %a, i64 0, i64 0
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay35)
  %call37 = call i32 @getchar()
  %call38 = call i32 @getchar()
  %call39 = call i32 @getchar()
  %call40 = call i32 @getchar()
  %call41 = call i32 @getchar()
  %call42 = call i32 @getchar()
  %call43 = call i32 @getchar()
  %call44 = call i32 @getchar()
  %call45 = call i32 @getchar()
  %call46 = call i32 @getchar()
  %call47 = call i32 @getchar()
  %call48 = call i32 @getchar()
  %call49 = call i32 @getchar()
  %call50 = call i32 @getchar()
  %call51 = call i32 @getchar()
  %call52 = call i32 @getchar()
  %call53 = call i32 @getchar()
  %call54 = call i32 @getchar()
  %call55 = call i32 @getchar()
  %call56 = call i32 @getchar()
  %call57 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %a) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr %b) #5
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #4 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!14 = distinct !{!14, !11, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
