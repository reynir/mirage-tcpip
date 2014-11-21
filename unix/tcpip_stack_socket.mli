(*
 * Copyright (c) 2014 Anil Madhavapeddy <anil@recoil.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *)

module Make(Console:V1_LWT.CONSOLE) : V1_LWT.NETSTACK
  with type console = Console.t
   and type netif   = Ipaddr.V4.t list
   and type mode    = unit
   and type tcpv4   = Tcpv4_socket.t
   and type udpv4   = Udpv4_socket.t
   and type ipv4    = unit
   and module UDPV4 = Udpv4_socket
   and module TCPV4 = Tcpv4_socket
   and module IPV4  = Ipv4_socket
   and type tcpv6   = Tcpv6_socket.t
   and type udpv6   = Udpv6_socket.t
   and type ipv6    = unit
   and module UDPV6 = Udpv6_socket
   and module TCPV6 = Tcpv6_socket
   and module IPV6  = Ipv6_socket
