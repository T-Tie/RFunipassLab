; ModuleID = '/tmp/tmp_aovzizq.cpp'
source_filename = "/tmp/tmp_aovzizq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %an = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %jjj = alloca i32, align 4
  %j = alloca i32, align 4
  %jj = alloca i32, align 4
  %mm = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  br label %if.end44

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 400, ptr %an) #4
  %arraydecay = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 400, i1 false)
  %arrayidx = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 0
  store i32 2, ptr %arrayidx, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %if.else
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.end30

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %jjj) #4
  store i32 0, ptr %jjj, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %jjj, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %3, 90
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %jjj) #4
  br label %for.end

for.body6:                                        ; preds = %for.cond3
  %4 = load i32, ptr %jjj, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %mul = mul nsw i32 2, %5
  %6 = load i32, ptr %jjj, align 4, !tbaa !5
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom8
  store i32 %mul, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %7 = load i32, ptr %jjj, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %jjj, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc25, %for.end
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, 90
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  br label %for.end27

for.body13:                                       ; preds = %for.cond10
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom14
  %10 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sge i32 %10, 10
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %for.body13
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom18
  %12 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %sub = sub nsw i32 %12, 10
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom20
  store i32 %sub, ptr %arrayidx21, align 4, !tbaa !5
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %14, 1
  %idxprom22 = sext i32 %add to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom22
  %15 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add nsw i32 %15, 1
  store i32 %add24, ptr %arrayidx23, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then17, %for.body13
  br label %for.inc25

for.inc25:                                        ; preds = %if.end
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %16, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !12

for.end27:                                        ; preds = %for.cond.cleanup12
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %17, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end30:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %jj) #4
  store i32 90, ptr %jj, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end30
  %18 = load i32, ptr %jj, align 4, !tbaa !5
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom31
  %19 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %19, 0
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, ptr %jj, align 4, !tbaa !5
  %dec = add nsw i32 %20, -1
  store i32 %dec, ptr %jj, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mm) #4
  %21 = load i32, ptr %jj, align 4, !tbaa !5
  store i32 %21, ptr %mm, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc41, %while.end
  %22 = load i32, ptr %mm, align 4, !tbaa !5
  %cmp35 = icmp sge i32 %22, 0
  br i1 %cmp35, label %for.body37, label %for.cond.cleanup36

for.cond.cleanup36:                               ; preds = %for.cond34
  store i32 13, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mm) #4
  br label %for.end43

for.body37:                                       ; preds = %for.cond34
  %23 = load i32, ptr %mm, align 4, !tbaa !5
  %idxprom38 = sext i32 %23 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom38
  %24 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %24)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body37
  %25 = load i32, ptr %mm, align 4, !tbaa !5
  %dec42 = add nsw i32 %25, -1
  store i32 %dec42, ptr %mm, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !15

for.end43:                                        ; preds = %for.cond.cleanup36
  call void @llvm.lifetime.end.p0(i64 4, ptr %jj) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr %an) #4
  br label %if.end44

if.end44:                                         ; preds = %for.end43, %if.then
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
