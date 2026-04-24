; ModuleID = '<stdin>'
source_filename = "/tmp/tmp58lbywnm.cpp"
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
for.end29:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %y2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %num) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %i) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %j) #7
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x1, ptr noundef nonnull align 4 dereferenceable(4) %y1, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j, ptr noundef nonnull align 4 dereferenceable(4) %num)
  call fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %x2, ptr noundef nonnull align 4 dereferenceable(4) %y2, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %i, ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(4) %j, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %y2, align 4
  %smax15 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond30

for.cond30:                                       ; preds = %for.cond33.preheader, %for.end29
  %storemerge = phi i32 [ 0, %for.end29 ], [ %inc62, %for.cond33.preheader ]
  %exitcond.not = icmp eq i32 %storemerge, %smax15
  br i1 %exitcond.not, label %for.cond64, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.cond30
  %inc62 = add nuw i32 %storemerge, 1
  br label %for.cond30, !llvm.loop !9

for.cond64:                                       ; preds = %for.cond30, %for.end85
  %2 = phi i32 [ %4, %for.end85 ], [ %1, %for.cond30 ]
  %3 = phi i32 [ %.pre, %for.end85 ], [ %0, %for.cond30 ]
  %storemerge9 = phi i32 [ %inc87, %for.end85 ], [ 0, %for.cond30 ]
  %cmp65 = icmp slt i32 %storemerge9, %3
  br i1 %cmp65, label %for.cond67, label %for.end88

for.cond67:                                       ; preds = %for.cond64, %if.end
  %4 = phi i32 [ %.pre16, %if.end ], [ %2, %for.cond64 ]
  %storemerge10 = phi i32 [ %inc84, %if.end ], [ 0, %for.cond64 ]
  %cmp68 = icmp slt i32 %storemerge10, %4
  br i1 %cmp68, label %for.body69, label %for.end85

for.body69:                                       ; preds = %for.cond67
  %sub = add nsw i32 %4, -1
  %cmp70 = icmp slt i32 %storemerge10, %sub
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 undef)
  br i1 %cmp70, label %if.then, label %if.else

if.then:                                          ; preds = %for.body69
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef nonnull @.str)
  br label %if.end

if.else:                                          ; preds = %for.body69
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc84 = add nuw nsw i32 %storemerge10, 1
  %.pre16 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !12

for.end85:                                        ; preds = %for.cond67
  %inc87 = add nuw nsw i32 %storemerge9, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !13

for.end88:                                        ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %num) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull captures(none) %x1) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #5 {
entry_to_outline:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %0)
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry_to_outline
  %storemerge = phi i32 [ 0, %entry_to_outline ], [ %inc9, %for.end ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !5
  %5 = load i32, ptr %0, align 4, !tbaa !5
  %cmp = icmp slt i32 %storemerge, %5
  br i1 %cmp, label %for.cond2, label %for.end10.exitStub

for.cond2:                                        ; preds = %for.cond, %for.body4
  %storemerge1 = phi i32 [ %inc, %for.body4 ], [ 0, %for.cond ]
  store i32 %storemerge1, ptr %3, align 4, !tbaa !5
  %6 = load i32, ptr %1, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %storemerge1, %6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %call5 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %inc = add nuw nsw i32 %storemerge1, 1
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  %inc9 = add nuw nsw i32 %storemerge, 1
  br label %for.cond, !llvm.loop !15

for.end10.exitStub:                               ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
