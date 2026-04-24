; ModuleID = '<stdin>'
source_filename = "/tmp/tmp94w20kgz.cpp"
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
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.end ], [ 0, %entry ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %for.cond
  %7 = mul nuw nsw i64 %indvars.iv27, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %7
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %8 = load i32, ptr %y1, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %9
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %11 = zext i32 %10 to i64
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = zext i32 %12 to i64
  %14 = mul nuw i64 %13, %11
  %vla13 = alloca i32, i64 %14, align 16
  br label %for.cond14

for.cond14:                                       ; preds = %for.end27, %for.end10
  %15 = phi i32 [ %18, %for.end27 ], [ %12, %for.end10 ]
  %16 = phi i32 [ %.pre, %for.end27 ], [ %10, %for.end10 ]
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.end27 ], [ 0, %for.end10 ]
  %cmp15 = icmp sgt i32 %16, 0
  br i1 %cmp15, label %for.cond17.preheader, label %for.cond31

for.cond17.preheader:                             ; preds = %for.cond14
  %17 = mul nuw nsw i64 %indvars.iv33, %13
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla13, i64 %17
  br label %for.cond17

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc25
  %18 = phi i32 [ %15, %for.cond17.preheader ], [ %.pre37, %for.inc25 ]
  %indvars.iv30 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next31, %for.inc25 ]
  %19 = sext i32 %18 to i64
  %cmp18 = icmp slt i64 %indvars.iv30, %19
  br i1 %cmp18, label %for.inc25, label %for.end27

for.inc25:                                        ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %arrayidx21, i64 %indvars.iv30
  %call24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx23)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %.pre37 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !12

for.end27:                                        ; preds = %for.cond17
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond14

for.cond31:                                       ; preds = %for.cond34, %for.cond14
  %20 = phi i32 [ %15, %for.cond14 ], [ %22, %for.cond34 ]
  %21 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %21, 0
  br i1 %cmp32, label %for.cond34, label %for.end74

for.cond34:                                       ; preds = %for.cond31, %for.inc69
  %22 = phi i32 [ %.pre36, %for.inc69 ], [ %20, %for.cond31 ]
  %j.2 = phi i32 [ %inc70, %for.inc69 ], [ 0, %for.cond31 ]
  %cmp35 = icmp slt i32 %j.2, %22
  br i1 %cmp35, label %for.cond37.preheader, label %for.cond31

for.cond37.preheader:                             ; preds = %for.cond34
  %23 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %23, 1
  call void @llvm.assume(i1 %cmp38)
  %sub = add nsw i32 %22, -1
  %cmp55 = icmp slt i32 %j.2, %sub
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 undef)
  br i1 %cmp55, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond37.preheader
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull @.str)
  br label %for.inc69

if.else:                                          ; preds = %for.cond37.preheader
  %call68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc69

for.inc69:                                        ; preds = %if.then, %if.else
  %inc70 = add nuw nsw i32 %j.2, 1
  %.pre36 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !13

for.end74:                                        ; preds = %for.cond31
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

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
