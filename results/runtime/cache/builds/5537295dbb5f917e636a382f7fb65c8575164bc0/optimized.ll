; ModuleID = '<stdin>'
source_filename = "/tmp/tmphclkdo22.cpp"
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
  %s = alloca [300 x i8], align 16
  %rep = alloca [300 x i8], align 16
  %sub = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull %s) #8
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull %rep) #8
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull %sub) #8
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8, !invariant.load !8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i1.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i1.i, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %s, i64 noundef 300)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8, !invariant.load !8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %call16.i = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i) #9
  %1 = add i64 %0, -301
  %or.cond.i = icmp ult i64 %1, -300
  %or.cond = select i1 %call16.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %if.then19.i, label %if.then6.i10

if.then19.i:                                      ; preds = %entry
  %vtable20.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i = getelementptr i8, ptr %vtable20.i, i64 -24
  %vbase.offset22.i = load i64, ptr %vbase.offset.ptr21.i, align 8, !invariant.load !8
  %add.ptr23.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i
  %call24.i = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i) #9
  %call25.i = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i)
  %cmp.i.i = icmp eq i32 %call25.i, -1
  %conv.i = zext i1 %cmp.i.i to i64
  %expval.i = call i64 @llvm.expect.i64(i64 noundef %conv.i, i64 noundef 1)
  %tobool.not.i = icmp eq i64 %expval.i, 0
  br i1 %tobool.not.i, label %if.then6.i10, label %if.then28.i

if.then28.i:                                      ; preds = %if.then19.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8, !invariant.load !8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef 2)
  br label %if.then6.i10

if.then6.i10:                                     ; preds = %if.then28.i, %if.then19.i, %entry
  %vtable7.i11 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i12 = getelementptr i8, ptr %vtable7.i11, i64 -24
  %vbase.offset9.i13 = load i64, ptr %vbase.offset.ptr8.i12, align 8, !invariant.load !8
  %add.ptr10.i14 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i13
  %_M_width.i1.i15 = getelementptr inbounds nuw i8, ptr %add.ptr10.i14, i64 16
  %2 = load i64, ptr %_M_width.i1.i15, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %sub, i64 noundef 300)
  %vtable12.i16 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i17 = getelementptr i8, ptr %vtable12.i16, i64 -24
  %vbase.offset14.i18 = load i64, ptr %vbase.offset.ptr13.i17, align 8, !invariant.load !8
  %add.ptr15.i19 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i18
  %call16.i20 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i19) #9
  %3 = add i64 %2, -301
  %or.cond.i24 = icmp ult i64 %3, -300
  %or.cond83 = select i1 %call16.i20, i1 %or.cond.i24, i1 false
  br i1 %or.cond83, label %if.then19.i25, label %if.then6.i51

if.then19.i25:                                    ; preds = %if.then6.i10
  %vtable20.i26 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i27 = getelementptr i8, ptr %vtable20.i26, i64 -24
  %vbase.offset22.i28 = load i64, ptr %vbase.offset.ptr21.i27, align 8, !invariant.load !8
  %add.ptr23.i29 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i28
  %call24.i30 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i29) #9
  %call25.i31 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i30)
  %cmp.i.i32 = icmp eq i32 %call25.i31, -1
  %conv.i33 = zext i1 %cmp.i.i32 to i64
  %expval.i34 = call i64 @llvm.expect.i64(i64 noundef %conv.i33, i64 noundef 1)
  %tobool.not.i35 = icmp eq i64 %expval.i34, 0
  br i1 %tobool.not.i35, label %if.then6.i51, label %if.then28.i36

if.then28.i36:                                    ; preds = %if.then19.i25
  %vtable29.i37 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i38 = getelementptr i8, ptr %vtable29.i37, i64 -24
  %vbase.offset31.i39 = load i64, ptr %vbase.offset.ptr30.i38, align 8, !invariant.load !8
  %add.ptr32.i40 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i39
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i40, i32 noundef 2)
  br label %if.then6.i51

if.then6.i51:                                     ; preds = %if.then28.i36, %if.then19.i25, %if.then6.i10
  %vtable7.i52 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i53 = getelementptr i8, ptr %vtable7.i52, i64 -24
  %vbase.offset9.i54 = load i64, ptr %vbase.offset.ptr8.i53, align 8, !invariant.load !8
  %add.ptr10.i55 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i54
  %_M_width.i1.i56 = getelementptr inbounds nuw i8, ptr %add.ptr10.i55, i64 16
  %4 = load i64, ptr %_M_width.i1.i56, align 8, !tbaa !9
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %rep, i64 noundef 300)
  %vtable12.i57 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i58 = getelementptr i8, ptr %vtable12.i57, i64 -24
  %vbase.offset14.i59 = load i64, ptr %vbase.offset.ptr13.i58, align 8, !invariant.load !8
  %add.ptr15.i60 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i59
  %call16.i61 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15.i60) #9
  %5 = add i64 %4, -301
  %or.cond.i65 = icmp ult i64 %5, -300
  %or.cond84 = select i1 %call16.i61, i1 %or.cond.i65, i1 false
  br i1 %or.cond84, label %if.then19.i66, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82

if.then19.i66:                                    ; preds = %if.then6.i51
  %vtable20.i67 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr21.i68 = getelementptr i8, ptr %vtable20.i67, i64 -24
  %vbase.offset22.i69 = load i64, ptr %vbase.offset.ptr21.i68, align 8, !invariant.load !8
  %add.ptr23.i70 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset22.i69
  %call24.i71 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23.i70) #9
  %call25.i72 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24.i71)
  %cmp.i.i73 = icmp eq i32 %call25.i72, -1
  %conv.i74 = zext i1 %cmp.i.i73 to i64
  %expval.i75 = call i64 @llvm.expect.i64(i64 noundef %conv.i74, i64 noundef 1)
  %tobool.not.i76 = icmp eq i64 %expval.i75, 0
  br i1 %tobool.not.i76, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82, label %if.then28.i77

if.then28.i77:                                    ; preds = %if.then19.i66
  %vtable29.i78 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i79 = getelementptr i8, ptr %vtable29.i78, i64 -24
  %vbase.offset31.i80 = load i64, ptr %vbase.offset.ptr30.i79, align 8, !invariant.load !8
  %add.ptr32.i81 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i80
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i81, i32 noundef 2)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82: ; preds = %if.then6.i51, %if.then19.i66, %if.then28.i77
  %call7 = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %s, ptr noundef nonnull dereferenceable(1) %sub) #10
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82
  store i8 0, ptr %call7, align 1, !tbaa !22
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s)
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call12, ptr noundef nonnull %rep)
  %call16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #10
  %add.ptr = getelementptr inbounds nuw i8, ptr %call7, i64 %call16
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull %add.ptr)
  br label %if.end

if.else:                                          ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit82
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %s)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call20.sink = phi ptr [ %call20, %if.else ], [ %call17, %if.then ]
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call20.sink, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %sub) #9
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %rep) #9
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %s) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare noundef ptr @strstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !11, i64 16}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!12, !12, i64 0}
