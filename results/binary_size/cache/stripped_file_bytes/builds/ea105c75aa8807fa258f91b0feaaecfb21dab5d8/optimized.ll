; ModuleID = '/tmp/tmpzw_yrf2m.cpp'
source_filename = "/tmp/tmpzw_yrf2m.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [30 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 0
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z1fPii(ptr noundef %arraydecay, i32 noundef %4)
  store i32 %call2, ptr %s, align 4, !tbaa !5
  %5 = load i32, ptr %s, align 4, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr %a) #5
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z1fPii(ptr noundef %a, i32 noundef %n) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !12
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i32, ptr %1, i64 1
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call = call noundef i32 @_Z1gPiii(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %4)
  %add = add nsw i32 %call, 1
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %add.ptr1 = getelementptr inbounds i32, ptr %5, i64 1
  %6 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %6, 1
  %call3 = call noundef i32 @_Z1fPii(ptr noundef %add.ptr1, i32 noundef %sub2)
  %call4 = call noundef i32 @_Z3maxii(i32 noundef %add, i32 noundef %call3)
  store i32 %call4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %x, i32 noundef %y) #4 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !5
  store i32 %y, ptr %y.addr, align 4, !tbaa !5
  %0 = load i32, ptr %x.addr, align 4, !tbaa !5
  %1 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %y.addr, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z1gPiii(ptr noundef %a, i32 noundef %n, i32 noundef %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !12
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store i32 %b, ptr %b.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else6

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %4 = load i32, ptr %b.addr, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

if.else5:                                         ; preds = %if.then2
  store i32 1, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.else
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %arrayidx7 = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %7 = load i32, ptr %b.addr, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %6, %7
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else6
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds i32, ptr %8, i64 1
  %9 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 1
  %10 = load i32, ptr %b.addr, align 4, !tbaa !5
  %call = call noundef i32 @_Z1gPiii(ptr noundef %add.ptr, i32 noundef %sub, i32 noundef %10)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else10:                                        ; preds = %if.else6
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %add.ptr11 = getelementptr inbounds i32, ptr %11, i64 1
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub12 = sub nsw i32 %12, 1
  %13 = load i32, ptr %b.addr, align 4, !tbaa !5
  %call13 = call noundef i32 @_Z1gPiii(ptr noundef %add.ptr11, i32 noundef %sub12, i32 noundef %13)
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %add.ptr14 = getelementptr inbounds i32, ptr %14, i64 1
  %15 = load i32, ptr %n.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %15, 1
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %arrayidx16 = getelementptr inbounds i32, ptr %16, i64 0
  %17 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %call17 = call noundef i32 @_Z1gPiii(ptr noundef %add.ptr14, i32 noundef %sub15, i32 noundef %17)
  %add = add nsw i32 %call17, 1
  %call18 = call noundef i32 @_Z3maxii(i32 noundef %call13, i32 noundef %add)
  store i32 %call18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else10, %if.then9, %if.else5, %if.then4, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 int", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
