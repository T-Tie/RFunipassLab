; ModuleID = '/tmp/tmpglrniazw.cpp'
source_filename = "/tmp/tmpglrniazw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ch = alloca i8, align 1
  %str = alloca [301 x i8], align 16
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %no = alloca i32, align 4
  %counter = alloca [26 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #6
  call void @llvm.lifetime.start.p0(i64 301, ptr %str) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %no) #6
  store i32 1, ptr %no, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 104, ptr %counter) #6
  call void @llvm.memset.p0.i64(ptr align 16 %counter, i8 0, i64 104, i1 false)
  %arraydecay = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #7
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %len, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %len, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9
  store i8 %3, ptr %ch, align 1, !tbaa !9
  %4 = load i8, ptr %ch, align 1, !tbaa !9
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp sge i32 %conv3, 97
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8, ptr %ch, align 1, !tbaa !9
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp sle i32 %conv5, 122
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8, ptr %ch, align 1, !tbaa !9
  %conv7 = sext i8 %6 to i32
  %sub = sub nsw i32 %conv7, 97
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [26 x i32], ptr %counter, i64 0, i64 %idxprom8
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %arrayidx9, align 4, !tbaa !5
  store i32 0, ptr %no, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i8 97, ptr %ch, align 1, !tbaa !9
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc28, %for.end
  %9 = load i8, ptr %ch, align 1, !tbaa !9
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp sle i32 %conv12, 122
  br i1 %cmp13, label %for.body14, label %for.end30

for.body14:                                       ; preds = %for.cond11
  %10 = load i8, ptr %ch, align 1, !tbaa !9
  %conv15 = sext i8 %10 to i32
  %sub16 = sub nsw i32 %conv15, 97
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [26 x i32], ptr %counter, i64 0, i64 %idxprom17
  %11 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %11, 0
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %for.body14
  %12 = load i8, ptr %ch, align 1, !tbaa !9
  %conv21 = sext i8 %12 to i32
  %13 = load i8, ptr %ch, align 1, !tbaa !9
  %conv22 = sext i8 %13 to i32
  %sub23 = sub nsw i32 %conv22, 97
  %idxprom24 = sext i32 %sub23 to i64
  %arrayidx25 = getelementptr inbounds [26 x i32], ptr %counter, i64 0, i64 %idxprom24
  %14 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv21, i32 noundef %14)
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %for.body14
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %15 = load i8, ptr %ch, align 1, !tbaa !9
  %inc29 = add i8 %15, 1
  store i8 %inc29, ptr %ch, align 1, !tbaa !9
  br label %for.cond11, !llvm.loop !13

for.end30:                                        ; preds = %for.cond11
  %16 = load i32, ptr %no, align 4, !tbaa !5
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then31, label %if.end33

if.then31:                                        ; preds = %for.end30
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %for.end30
  call void @llvm.lifetime.end.p0(i64 104, ptr %counter) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %no) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 301, ptr %str) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z13main_h5_1_ptrv() #5 {
entry:
  %p = alloca ptr, align 8
  %str = alloca [301 x i8], align 16
  %i = alloca i32, align 4
  %no = alloca i32, align 4
  %counter = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6
  call void @llvm.lifetime.start.p0(i64 301, ptr %str) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %no) #6
  store i32 1, ptr %no, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 104, ptr %counter) #6
  call void @llvm.memset.p0.i64(ptr align 16 %counter, i8 0, i64 104, i1 false)
  %arraydecay = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [301 x i8], ptr %str, i64 0, i64 0
  store ptr %arraydecay1, ptr %p, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %p, align 8, !tbaa !14
  %1 = load i8, ptr %0, align 1, !tbaa !9
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !14
  %3 = load i8, ptr %2, align 1, !tbaa !9
  %conv = sext i8 %3 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %p, align 8, !tbaa !14
  %5 = load i8, ptr %4, align 1, !tbaa !9
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %p, align 8, !tbaa !14
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %conv4 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv4, 97
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr %counter, i64 0, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %arrayidx, align 4, !tbaa !5
  store i32 0, ptr %no, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %p, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %p, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %no, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end22

if.else:                                          ; preds = %for.end
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %if.else
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %11, 26
  br i1 %cmp9, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond8
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [26 x i32], ptr %counter, i64 0, i64 %idxprom11
  %13 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %13, 0
  br i1 %cmp13, label %if.then14, label %if.end18

if.then14:                                        ; preds = %for.body10
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 97, %14
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [26 x i32], ptr %counter, i64 0, i64 %idxprom15
  %16 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add, i32 noundef %16)
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %for.body10
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !18

for.end21:                                        ; preds = %for.cond8
  br label %if.end22

if.end22:                                         ; preds = %for.end21, %if.then6
  call void @llvm.lifetime.end.p0(i64 104, ptr %counter) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %no) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6
  call void @llvm.lifetime.end.p0(i64 301, ptr %str) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6
  ret i32 0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
