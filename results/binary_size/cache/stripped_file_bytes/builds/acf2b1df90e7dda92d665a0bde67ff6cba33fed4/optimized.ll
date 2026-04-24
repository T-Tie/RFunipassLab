; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7qo9lvwl.cpp"
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
entry:
  %str = alloca [260 x i8], align 16
  %subStr = alloca [260 x i8], align 16
  %replace = alloca [260 x i8], align 16
  %start = alloca ptr, align 8
  %node = alloca ptr, align 8
  %rep = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 260, ptr noundef nonnull align 16 captures(none) dereferenceable(260) %str) #9
  call void @llvm.lifetime.start.p0(i64 noundef 260, ptr noundef nonnull align 16 captures(none) dereferenceable(260) %subStr) #9
  call void @llvm.lifetime.start.p0(i64 noundef 260, ptr noundef nonnull align 16 captures(none) dereferenceable(260) %replace) #9
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %start) #9
  store ptr %str, ptr %start, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %node) #9
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %rep) #9
  store ptr %replace, ptr %rep, align 8, !tbaa !5
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !10, !invariant.load !12
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !12
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(260) %str, i64 noundef 260)
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i, label %land.lhs.true.i, label %if.then6.i12

land.lhs.true.i:                                  ; preds = %entry
  %_M_width.i5.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i5.i, align 8, !tbaa !13, !invariant.load !12
  %1 = add i64 %0, -261
  %or.cond.i = icmp ult i64 %1, -260
  br i1 %or.cond.i, label %if.then19.i, label %if.then6.i12

if.then19.i:                                      ; preds = %land.lhs.true.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i12, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i12

if.then6.i12:                                     ; preds = %if.then28.i, %if.then19.i, %land.lhs.true.i, %entry
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(260) %subStr, i64 noundef 260)
  %call16.i17 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i17, label %land.lhs.true.i18, label %if.then6.i39

land.lhs.true.i18:                                ; preds = %if.then6.i12
  %_M_width.i5.i19 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %2 = load i64, ptr %_M_width.i5.i19, align 8, !tbaa !13, !invariant.load !12
  %3 = add i64 %2, -261
  %or.cond.i22 = icmp ult i64 %3, -260
  br i1 %or.cond.i22, label %if.then19.i23, label %if.then6.i39

if.then19.i23:                                    ; preds = %land.lhs.true.i18
  %call24.i24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i24)
  %cmp.i.i26 = icmp eq i32 %call25.i25, -1
  %conv.i27 = zext i1 %cmp.i.i26 to i64
  %expval.i28 = call i64 @llvm.expect.i64(i64 noundef %conv.i27, i64 noundef 1)
  %tobool.not.i29 = icmp eq i64 %expval.i28, 0
  br i1 %tobool.not.i29, label %if.then6.i39, label %if.then28.i30

if.then28.i30:                                    ; preds = %if.then19.i23
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %if.then6.i39

if.then6.i39:                                     ; preds = %if.then28.i30, %if.then19.i23, %land.lhs.true.i18, %if.then6.i12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(260) %replace, i64 noundef 260)
  %call16.i44 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  br i1 %call16.i44, label %land.lhs.true.i45, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58

land.lhs.true.i45:                                ; preds = %if.then6.i39
  %_M_width.i5.i46 = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %4 = load i64, ptr %_M_width.i5.i46, align 8, !tbaa !13, !invariant.load !12
  %5 = add i64 %4, -261
  %or.cond.i49 = icmp ult i64 %5, -260
  br i1 %or.cond.i49, label %if.then19.i50, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58

if.then19.i50:                                    ; preds = %land.lhs.true.i45
  %call24.i51 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i) #10
  %call25.i52 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i51)
  %cmp.i.i53 = icmp eq i32 %call25.i52, -1
  %conv.i54 = zext i1 %cmp.i.i53 to i64
  %expval.i55 = call i64 @llvm.expect.i64(i64 noundef %conv.i54, i64 noundef 1)
  %tobool.not.i56 = icmp eq i64 %expval.i55, 0
  br i1 %tobool.not.i56, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58, label %if.then28.i57

if.then28.i57:                                    ; preds = %if.then19.i50
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10.i, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58: ; preds = %if.then6.i39, %land.lhs.true.i45, %if.then19.i50, %if.then28.i57
  %call9 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %str, ptr noundef nonnull dereferenceable(1) %subStr) #11
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58
  %call13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %subStr) #11
  br label %while.cond15

while.cond15:                                     ; preds = %while.body17, %if.else
  %6 = phi ptr [ %.pre, %while.body17 ], [ %str, %if.else ]
  %cmp16.not = icmp eq ptr %6, %call9
  br i1 %cmp16.not, label %while.end27, label %while.body17

while.body17:                                     ; preds = %while.cond15
  call fastcc void @outlined_ir_func_0.3(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %start)
  %.pre = load ptr, ptr %start, align 8, !tbaa !5
  br label %while.cond15

while.end27:                                      ; preds = %while.cond15
  call fastcc void @outlined_ir_func_0.2(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %rep)
  %sext = shl i64 %call13, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8, ptr %call9, i64 %idx.ext
  store ptr %add.ptr, ptr %node, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58, %while.end27
  %node.sink = phi ptr [ %node, %while.end27 ], [ %start, %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit58 ]
  call fastcc void @outlined_ir_func_0.2(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %node.sink)
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull captures(none) %rep) #10
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %node) #10
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %start) #10
  call void @llvm.lifetime.end.p0(i64 noundef 260, ptr noundef nonnull captures(none) %replace) #10
  call void @llvm.lifetime.end.p0(i64 noundef 260, ptr noundef nonnull captures(none) %subStr) #10
  call void @llvm.lifetime.end.p0(i64 noundef 260, ptr noundef nonnull captures(none) %str) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4 align 2

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0.2(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
while.end20_to_outline:
  br label %while.cond21

while.cond21:                                     ; preds = %while.body24, %while.end20_to_outline
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !24, !invariant.load !12
  %cmp23.not = icmp eq i8 %2, 0
  br i1 %cmp23.not, label %while.end27.exitStub, label %while.body24

while.body24:                                     ; preds = %while.cond21
  tail call fastcc void @outlined_ir_func_0.3(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0)
  br label %while.cond21

while.end27.exitStub:                             ; preds = %while.cond21
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0.3(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) unnamed_addr #8 {
while.cond15.exitStub:
  %1 = load ptr, ptr %0, align 8, !tbaa !5
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store ptr %incdec.ptr18, ptr %0, align 8, !tbaa !5
  %2 = load i8, ptr %1, align 1, !tbaa !24, !invariant.load !12
  %call19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !9, i64 0}
!12 = !{}
!13 = !{!14, !15, i64 16}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !19, i64 48, !8, i64 64, !20, i64 192, !21, i64 200, !22, i64 208}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !15, i64 8}
!20 = !{!"int", !8, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!22 = !{!"_ZTSSt6locale", !23, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!24 = !{!8, !8, i64 0}
