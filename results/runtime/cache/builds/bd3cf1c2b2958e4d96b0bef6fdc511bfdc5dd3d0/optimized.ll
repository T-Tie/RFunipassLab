; ModuleID = '<stdin>'
source_filename = "/tmp/tmppxqc8soi.cpp"
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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit:
  %n = alloca i32, align 4
  %a = alloca [50 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 50, ptr noundef nonnull %a) #11
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  call void @outlined_ir_func_0(ptr %vbase.offset.ptr8.i, ptr %a)
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %a)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #12
  %conv = trunc i64 %call5 to i32
  %vtable7.i11 = load ptr, ptr @_ZSt3cin, align 8
  %vbase.offset.ptr8.i12 = getelementptr i8, ptr %vtable7.i11, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc68, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %i.0 = phi i32 [ 0, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %inc, %for.inc68 ]
  %sum.0 = phi i32 [ %conv, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit ], [ %sum.1, %for.inc68 ]
  %0 = load i32, ptr %n, align 4, !tbaa !9
  %sub = add nsw i32 %0, -1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29, label %for.end69

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29: ; preds = %for.cond
  call void @outlined_ir_func_0(ptr %vbase.offset.ptr8.i12, ptr %a)
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #12
  %conv10 = trunc i64 %call9 to i32
  %add = add nsw i32 %conv10, %sum.0
  %add11 = add nsw i32 %add, 1
  %cmp13 = icmp eq i32 %sum.0, 0
  br i1 %cmp13, label %for.cond15.preheader, label %if.else

for.cond15.preheader:                             ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29
  %sext57 = shl i64 %call9, 32
  %idx.ext = ashr exact i64 %sext57, 32
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %idx.ext
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc
  %p.0 = phi ptr [ %incdec.ptr, %for.inc ], [ %a, %for.cond15.preheader ]
  %cmp17 = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp17, label %for.inc, label %for.inc68

for.inc:                                          ; preds = %for.cond15
  %1 = load i8, ptr %p.0, align 1, !tbaa !12, !invariant.load !8
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %1)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  br label %for.cond15, !llvm.loop !13

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit29
  %cmp20 = icmp slt i32 %add, 79
  br i1 %cmp20, label %if.end51, label %if.end

if.end:                                           ; preds = %if.else
  %cmp36 = icmp eq i32 %add11, 80
  br i1 %cmp36, label %if.end51.thread, label %if.then53

if.end51.thread:                                  ; preds = %if.end
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  call void @outlined_ir_func_1(i64 %call9, ptr %a)
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc68

if.end51:                                         ; preds = %if.else
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  call void @outlined_ir_func_1(i64 %call9, ptr %a)
  br label %for.inc68

if.then53:                                        ; preds = %if.end
  %call54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @outlined_ir_func_1(i64 %call9, ptr %a)
  br label %for.inc68

for.inc68:                                        ; preds = %if.end51, %if.then53, %for.cond15, %if.end51.thread
  %sum.1 = phi i32 [ 0, %if.end51.thread ], [ %add11, %if.end51 ], [ %add, %for.cond15 ], [ %conv10, %if.then53 ]
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end69:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 50, ptr noundef nonnull %a) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal void @outlined_ir_func_0(ptr %0, ptr %1) #9 {
entry_to_outline:
  %vbase.offset9.i = load i64, ptr %0, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(50) %1, i64 noundef 50)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  br i1 %call16.i, label %land.lhs.true.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub

land.lhs.true.i:                                  ; preds = %entry_to_outline
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !17, !invariant.load !8
  %3 = add i64 %2, -51
  %or.cond.i = icmp ult i64 %3, -50
  br i1 %or.cond.i, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #11
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit.exitStub: ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i, %entry_to_outline
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal void @outlined_ir_func_1(i64 %0, ptr %1) #9 {
if.then23_to_outline:
  %sext = shl i64 %0, 32
  %idx.ext28 = ashr exact i64 %sext, 32
  %add.ptr29 = getelementptr inbounds i8, ptr %1, i64 %idx.ext28
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %if.then23_to_outline
  %p.1 = phi ptr [ %1, %if.then23_to_outline ], [ %incdec.ptr34, %for.inc33 ]
  %cmp30 = icmp ult ptr %p.1, %add.ptr29
  br i1 %cmp30, label %for.inc33, label %if.end.exitStub

for.inc33:                                        ; preds = %for.cond26
  %2 = load i8, ptr %p.1, align 1, !tbaa !12
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  %incdec.ptr34 = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  br label %for.cond26, !llvm.loop !28

if.end.exitStub:                                  ; preds = %for.cond26
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !11, i64 64, !10, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !11, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !11, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = distinct !{!28, !14, !15}
