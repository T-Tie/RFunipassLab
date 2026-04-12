; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnm6ajy2m.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc22, %while.body
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %7, %5
  br i1 %cmp4, label %for.body5, label %for.end24

for.body5:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %vla, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %8, %9
  br i1 %cmp10, label %if.then, label %for.inc22

if.then:                                          ; preds = %for.body5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #7
  store i32 %5, ptr %k, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %if.then
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 1
  %cmp12 = icmp slt i32 %10, %sub
  br i1 %cmp12, label %for.inc19, label %for.end21

for.inc19:                                        ; preds = %for.cond11
  %add = add nsw i32 %10, 1
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %vla, i64 %idxprom15
  %11 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !12
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %vla, i64 %idxprom17
  store i32 %11, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %add, ptr %k, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.end21:                                        ; preds = %for.cond11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #7
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %for.end24

for.inc22:                                        ; preds = %for.body5
  %inc23 = add nsw i32 %7, 1
  store i32 %inc23, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !14

for.end24:                                        ; preds = %for.cond3, %for.end21
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %12, %6
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.end24
  %inc27 = add nsw i32 %5, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.end24
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc37, %while.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %sub30 = sub nsw i32 %14, 1
  %cmp31 = icmp slt i32 %13, %sub30
  br i1 %cmp31, label %for.inc37, label %for.end39

for.inc37:                                        ; preds = %for.cond29
  %idxprom33 = sext i32 %13 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %vla, i64 %idxprom33
  %15 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %15)
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call35, ptr noundef @.str)
  %inc38 = add nsw i32 %13, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !16

for.end39:                                        ; preds = %for.cond29
  %idxprom41 = sext i32 %sub30 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %vla, i64 %idxprom41
  %16 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %16)
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call43, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
